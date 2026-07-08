{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.BedrockRuntime.Types.DocumentSource
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types.DocumentSource where

import Amazonka.BedrockRuntime.Types.DocumentContentBlock
import Amazonka.BedrockRuntime.Types.S3Location
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Contains the content of a document.
--
-- /See:/ 'newDocumentSource' smart constructor.
data DocumentSource = DocumentSource'
  { -- | The raw bytes for the document. If you use an Amazon Web Services SDK,
    -- you don\'t need to encode the bytes in base64.
    bytes :: Prelude.Maybe Data.Base64,
    -- | The structured content of the document source, which may include various
    -- content blocks such as text, images, or other document elements.
    content :: Prelude.Maybe [DocumentContentBlock],
    -- | The location of a document object in an Amazon S3 bucket. To see which
    -- models support S3 uploads, see
    -- <https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference-supported-models-features.html Supported models and features for Converse>.
    s3Location :: Prelude.Maybe S3Location,
    -- | The text content of the document source.
    text :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DocumentSource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'bytes', 'documentSource_bytes' - The raw bytes for the document. If you use an Amazon Web Services SDK,
-- you don\'t need to encode the bytes in base64.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
--
-- 'content', 'documentSource_content' - The structured content of the document source, which may include various
-- content blocks such as text, images, or other document elements.
--
-- 's3Location', 'documentSource_s3Location' - The location of a document object in an Amazon S3 bucket. To see which
-- models support S3 uploads, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference-supported-models-features.html Supported models and features for Converse>.
--
-- 'text', 'documentSource_text' - The text content of the document source.
newDocumentSource ::
  DocumentSource
newDocumentSource =
  DocumentSource'
    { bytes = Prelude.Nothing,
      content = Prelude.Nothing,
      s3Location = Prelude.Nothing,
      text = Prelude.Nothing
    }

-- | The raw bytes for the document. If you use an Amazon Web Services SDK,
-- you don\'t need to encode the bytes in base64.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
documentSource_bytes :: Lens.Lens' DocumentSource (Prelude.Maybe Prelude.ByteString)
documentSource_bytes = Lens.lens (\DocumentSource' {bytes} -> bytes) (\s@DocumentSource' {} a -> s {bytes = a} :: DocumentSource) Prelude.. Lens.mapping Data._Base64

-- | The structured content of the document source, which may include various
-- content blocks such as text, images, or other document elements.
documentSource_content :: Lens.Lens' DocumentSource (Prelude.Maybe [DocumentContentBlock])
documentSource_content = Lens.lens (\DocumentSource' {content} -> content) (\s@DocumentSource' {} a -> s {content = a} :: DocumentSource) Prelude.. Lens.mapping Lens.coerced

-- | The location of a document object in an Amazon S3 bucket. To see which
-- models support S3 uploads, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference-supported-models-features.html Supported models and features for Converse>.
documentSource_s3Location :: Lens.Lens' DocumentSource (Prelude.Maybe S3Location)
documentSource_s3Location = Lens.lens (\DocumentSource' {s3Location} -> s3Location) (\s@DocumentSource' {} a -> s {s3Location = a} :: DocumentSource)

-- | The text content of the document source.
documentSource_text :: Lens.Lens' DocumentSource (Prelude.Maybe Prelude.Text)
documentSource_text = Lens.lens (\DocumentSource' {text} -> text) (\s@DocumentSource' {} a -> s {text = a} :: DocumentSource)

instance Data.FromJSON DocumentSource where
  parseJSON =
    Data.withObject
      "DocumentSource"
      ( \x ->
          DocumentSource'
            Prelude.<$> (x Data..:? "bytes")
            Prelude.<*> (x Data..:? "content" Data..!= Prelude.mempty)
            Prelude.<*> (x Data..:? "s3Location")
            Prelude.<*> (x Data..:? "text")
      )

instance Prelude.Hashable DocumentSource where
  hashWithSalt _salt DocumentSource' {..} =
    _salt
      `Prelude.hashWithSalt` bytes
      `Prelude.hashWithSalt` content
      `Prelude.hashWithSalt` s3Location
      `Prelude.hashWithSalt` text

instance Prelude.NFData DocumentSource where
  rnf DocumentSource' {..} =
    Prelude.rnf bytes `Prelude.seq`
      Prelude.rnf content `Prelude.seq`
        Prelude.rnf s3Location `Prelude.seq`
          Prelude.rnf text

instance Data.ToJSON DocumentSource where
  toJSON DocumentSource' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("bytes" Data..=) Prelude.<$> bytes,
            ("content" Data..=) Prelude.<$> content,
            ("s3Location" Data..=) Prelude.<$> s3Location,
            ("text" Data..=) Prelude.<$> text
          ]
      )
