# Generating `amazonka-bedrock-runtime` locally

Steps to generate the (not yet upstream-released) `amazonka-bedrock-runtime`
library from botocore definitions, so it can be vendored without waiting for
an official release. Upstream context: bedrock support is tracked in
[#1037](https://github.com/brendanhay/amazonka/issues/1037), blocked by the
generator rework in [#888](https://github.com/brendanhay/amazonka/issues/888).

## 1. Get a botocore checkout that contains bedrock-runtime

The botocore revision pinned in `flake.nix` is from January 2023 and predates
Bedrock entirely. Don't touch the pin — `scripts/generate` reads the
`$BOTOCORE` env var, which can point at any checkout:

```bash
git clone --depth 1 https://github.com/boto/botocore /tmp/botocore
```

(This experiment used commit `028ebfb9fd241860842cfb6ee086c5b92c39a8ab`.)

## 2. Create the service config

`configs/services/bedrock-runtime.json`:

```json
{
  "libraryName": "amazonka-bedrock-runtime"
}
```

## 3. Create the annex

The annex is deep-merged onto the botocore JSON before parsing
(`gen/src/Gen/JSON.hs`: annex values win on conflicts, objects merge
recursively; keys can be overridden but never deleted).

`configs/annexes/bedrock-runtime.json`:

```json
{
  "metadata": {
    "serviceAbbreviation": "BedrockRuntime"
  },
  "shapes": {
    "Body": {
      "sensitive": false
    }
  },
  "operations": {
    "ConverseStream": {
      "deprecated": true
    },
    "InvokeModelWithResponseStream": {
      "deprecated": true
    },
    "InvokeModelWithBidirectionalStream": {
      "deprecated": true
    }
  }
}
```

Each entry fixes a concrete failure discovered by iterating on
generate → build:

- **`serviceAbbreviation`** — required by the generator's `Metadata` parser
  (`gen/src/Gen/Types/Service.hs`), but absent from the bedrock-runtime
  model's metadata. Without it, generation fails immediately. It becomes the
  module namespace (`Amazonka.BedrockRuntime`).

- **Streaming operations marked `deprecated`** — the generator's `deprecate`
  pass drops operations flagged `"deprecated": true`, and orphan-pruning then
  removes all shapes only they reference. Without this, the eventstream union
  shapes (`ResponseStream`, `ConverseStreamOutput`, ...) fail to compile:
  their members include *exception* shapes, and the generated modules import
  `Amazonka.BedrockRuntime.Types.InternalServerException` etc., which don't
  exist (exceptions are rendered as error matchers in `Types.hs`, not as type
  modules). Amazonka has no eventstream decoder anyway, so these operations
  could never work at runtime; dropping them entirely is the honest option.

- **`Body` made non-sensitive** — `InvokeModel`'s request/response payload is
  a blob marked `"sensitive": true`. The generated response parser produces a
  plain `ByteString` where the record field is `Sensitive ByteString`, which
  doesn't typecheck. Cost of the workaround: payloads appear in `Show` output
  and debug logs.

## 4. Run the generator

Inside `nix develop` (provides `cabal-fmt`, `ormolu`, GNU `parallel`, and
builds `amazonka-gen`), overriding the `BOTOCORE` the dev shell sets:

```bash
nix develop --command bash -c 'BOTOCORE=/tmp/botocore ./scripts/generate bedrock-runtime'
```

Output lands in `lib/services/amazonka-bedrock-runtime/`. When re-running
after an annex change, `rm -rf lib/services/amazonka-bedrock-runtime` first —
the script only replaces the `gen/` subdirectory wholesale, so files belonging
to since-removed operations (e.g. fixtures) would otherwise linger.

## 5. Build it

`cabal.project` already has `optional-packages: lib/services/*/`, so no
project changes are needed:

```bash
cabal build amazonka-bedrock-runtime
```

If it fails, adjust the annex and go back to step 4. (Beware masking exit
codes: `cabal build ... | tail` reports `tail`'s exit code.)

## 6. Example usage

`examples/src/BedrockRuntime.hs` (module added to `exposed-modules` and
`amazonka-bedrock-runtime` to `build-depends` in `examples/examples.cabal`)
asks Claude Haiku 4.5 a question via the Converse API:

```bash
cabal build examples
```

API shape notes for writing code against the generated library:

- `newConverse` takes the model ID; `#messages` is `Maybe [Message]` (use `?~`).
- `newMessage ConversationRole_User` + `#content .~ [newContentBlock & #text ?~ prompt]`.
- Response: `#output . #message` is `Maybe Message`; each `ContentBlock`'s
  `#text` is `Maybe Text`; `#stopReason` / `#usage` are required fields.
- Model ID is the Bedrock-style versioned ID, usually via a cross-region
  inference profile, e.g. `us.anthropic.claude-haiku-4-5-20251001-v1:0`
  (`eu.` / `apac.` prefix depending on the calling region).

## Known limitations of the generated library

- The three streaming operations are absent by design (no eventstream support
  in amazonka-core).
- Union shapes (`ContentBlock`, `ConverseOutput`, ... — `"union": true` in the
  model) degrade to all-`Maybe` records. Wire-compatible, but the one-member
  invariant isn't enforced by the types.
- The `Document` shape (arbitrary JSON: `toolUse.input`,
  `additionalModelRequestFields`, tool-result `json`) is generated as an
  *empty record*, so tool-use round-trips would silently drop JSON content.
  Plain text conversations and raw `InvokeModel` (whose body is a blob) are
  unaffected. Fixing this would be the next annex iteration — the established
  trick is `{"type": "json"}` (→ `ByteString`, precedent in the apigateway /
  lambda / iot-data annexes), but those uses are whole-body payloads; an
  embedded field is unverified.

## Vendoring into another project

The generated cabal file depends on `amazonka-core == 2.0.*`, so the package
slots into a build plan using Hackage amazonka 2.0: copy
`lib/services/amazonka-bedrock-runtime` into the project and add it as a
`packages:` entry in `cabal.project`.
