# Hand-written modules in amazonka-bedrock-runtime

This package is mostly generated (see `gen/`), but the two
`vnd.amazon.eventstream` streaming operations are **maintained by hand** in
`src/`, because the code generator cannot render event stream operations:
the eventstream union shapes reference exception shapes that the generator
does not render as type modules, so the generated code does not compile.
Instead, the streaming operations are written by hand on top of the general
decoder in `amazonka-core` (`Amazonka.Data.EventStream`).

The generator annex (`configs/annexes/bedrock-runtime.json`) therefore
**keeps** `ConverseStream`, `InvokeModelWithResponseStream` and
`InvokeModelWithBidirectionalStream` marked `deprecated: true`. This is
load-bearing: it stops the generator from emitting broken duplicates of the
hand-written modules. Do not remove those annex entries unless the
generator learns to render event streams. (The `serviceAbbreviation` and
`Body.sensitive` annex entries are unrelated and also load-bearing.)

`InvokeModelWithBidirectionalStream` remains dropped entirely — it needs
bidirectional (request *and* response) event streaming, which neither the
generator nor `Amazonka.Data.EventStream` supports yet.

## Hand-written files (in `src/`)

Operations:

- `Amazonka/BedrockRuntime/ConverseStream.hs`
- `Amazonka/BedrockRuntime/InvokeModelWithResponseStream.hs`

Types (shapes only referenced by the streaming operations, so absent from
`gen/`):

- `Amazonka/BedrockRuntime/Types/CitationSourceContentDelta.hs`
- `Amazonka/BedrockRuntime/Types/CitationsDelta.hs`
- `Amazonka/BedrockRuntime/Types/ContentBlockDelta.hs`
- `Amazonka/BedrockRuntime/Types/ContentBlockDeltaEvent.hs`
- `Amazonka/BedrockRuntime/Types/ContentBlockStart.hs`
- `Amazonka/BedrockRuntime/Types/ContentBlockStartEvent.hs`
- `Amazonka/BedrockRuntime/Types/ContentBlockStopEvent.hs`
- `Amazonka/BedrockRuntime/Types/ConverseStreamMetadataEvent.hs`
- `Amazonka/BedrockRuntime/Types/ConverseStreamMetrics.hs`
- `Amazonka/BedrockRuntime/Types/ConverseStreamOutput.hs`
- `Amazonka/BedrockRuntime/Types/ConverseStreamTrace.hs`
- `Amazonka/BedrockRuntime/Types/GuardrailStreamConfiguration.hs`
- `Amazonka/BedrockRuntime/Types/GuardrailStreamProcessingMode.hs`
- `Amazonka/BedrockRuntime/Types/MessageStartEvent.hs`
- `Amazonka/BedrockRuntime/Types/MessageStopEvent.hs`
- `Amazonka/BedrockRuntime/Types/PayloadPart.hs`
- `Amazonka/BedrockRuntime/Types/ReasoningContentBlockDelta.hs`
- `Amazonka/BedrockRuntime/Types/ResponseStream.hs`
- `Amazonka/BedrockRuntime/Types/ToolUseBlockDelta.hs`
- `Amazonka/BedrockRuntime/Types/ToolUseBlockStart.hs`

(`Amazonka/BedrockRuntime/Types/Document.hs` is a separate, older
hand-written module — the `Document` shape replacement wired up through
`typeModules`/`typeOverrides` in `configs/services/bedrock-runtime.json`.)

Tests (hand-added in the scaffolded hand-test slot):

- `test/Test/Amazonka/BedrockRuntime.hs` — decodes one event of each
  `:event-type` through the `FromEventStream` instances.

## Design notes

- The eventstream unions (`ConverseStreamOutput`, `ResponseStream`) are
  modelled as **sum types** (one constructor per event member, named
  `ConverseStreamOutput_MessageStart` etc. in the pattern-synonym naming
  style), not the all-`Maybe` record style used for ordinary unions —
  exactly one member arrives per stream event.
- The **exception members** of those unions (`internalServerException`,
  `modelStreamErrorException`, `validationException`,
  `throttlingException`, `serviceUnavailableException`, and — for
  `ResponseStream` only — `modelTimeoutException`) are deliberately *not*
  constructors.
  In-stream exceptions arrive as `:message-type: exception` frames and are
  thrown as `EventStreamError` (`EventStreamException`) while the stream
  is consumed. This is what lets these modules exist at all — amazonka
  never renders exception shapes as data types.
- Responses carry an `Amazonka.Data.EventStream.EventStream a` field and
  are produced with `Amazonka.Response.receiveEventStream`; like S3's
  `GetObjectResponse` they derive only `Show`/`Generic` (no
  `Eq`/`NFData`), and the stream must be consumed inside the request's
  `ResourceT` scope.
- Unknown members *within* JSON payload unions (e.g. a future
  `ContentBlockDelta` member) decode to a record with all fields
  `Nothing`, like generated unions. An unknown *event type* fails the
  stream loudly (`EventParseError`), matching aws-sdk-go-v2's
  `UnknownUnionMember` behaviour.
- The shapes were transcribed from botocore's
  `bedrock-runtime/2023-09-30/service-2.json`. Members whose payload
  types are newer than the generated snapshot (`ContentBlockStart.toolResult`,
  `ContentBlockStart.image`, `ContentBlockDelta.toolResult`,
  `ContentBlockDelta.image`) are omitted; they degrade to all-`Nothing`
  records if the service ever sends them.

## After regenerating this package

Regeneration rewrites `amazonka-bedrock-runtime.cabal`,
`gen/Amazonka/BedrockRuntime.hs` and `gen/Amazonka/BedrockRuntime/Types.hs`
from templates, which will drop the hand-written wiring. Restore it by:

1. Re-adding the modules listed above to `exposed-modules` in the cabal
   file (they live in `src/`, which is already in `hs-source-dirs`).
2. Re-adding the import + re-export lines for the hand-written modules to
   `gen/Amazonka/BedrockRuntime.hs` and
   `gen/Amazonka/BedrockRuntime/Types.hs` (search this repo's history for
   "hand-written event stream types").
3. Checking whether newly generated shapes collide with the hand-written
   ones (e.g. if the generator snapshot advances and starts rendering
   `GuardrailStreamConfiguration` for a non-streaming operation, prefer
   the generated one and delete the hand-written copy).

These modules were intentionally *not* added to `operationModules` /
`typeModules` in `configs/services/bedrock-runtime.json`: that mechanism
injects them as imports into every generated module, and since the
hand-written types themselves import generated types (`StopReason`,
`TokenUsage`, ...), it would create import cycles at the next generator
run (the `extraBootShapes` hs-boot machinery would be needed, which is not
worth it for modules the generator never references).
