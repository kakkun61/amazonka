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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.CodeContent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.CodeContent where

import qualified Network.AWS.Core as Core
import Network.AWS.KinesisAnalyticsV2.Types.S3ContentLocation
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Specifies either the application code, or the location of the
-- application code, for a Flink-based Kinesis Data Analytics application.
--
-- /See:/ 'newCodeContent' smart constructor.
data CodeContent = CodeContent'
  { -- | The text-format code for a Flink-based Kinesis Data Analytics
    -- application.
    textContent :: Prelude.Maybe Prelude.Text,
    -- | Information about the Amazon S3 bucket that contains the application
    -- code.
    s3ContentLocation :: Prelude.Maybe S3ContentLocation,
    -- | The zip-format code for a Flink-based Kinesis Data Analytics
    -- application.
    zipFileContent :: Prelude.Maybe Core.Base64
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CodeContent' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'textContent', 'codeContent_textContent' - The text-format code for a Flink-based Kinesis Data Analytics
-- application.
--
-- 's3ContentLocation', 'codeContent_s3ContentLocation' - Information about the Amazon S3 bucket that contains the application
-- code.
--
-- 'zipFileContent', 'codeContent_zipFileContent' - The zip-format code for a Flink-based Kinesis Data Analytics
-- application.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
newCodeContent ::
  CodeContent
newCodeContent =
  CodeContent'
    { textContent = Prelude.Nothing,
      s3ContentLocation = Prelude.Nothing,
      zipFileContent = Prelude.Nothing
    }

-- | The text-format code for a Flink-based Kinesis Data Analytics
-- application.
codeContent_textContent :: Lens.Lens' CodeContent (Prelude.Maybe Prelude.Text)
codeContent_textContent = Lens.lens (\CodeContent' {textContent} -> textContent) (\s@CodeContent' {} a -> s {textContent = a} :: CodeContent)

-- | Information about the Amazon S3 bucket that contains the application
-- code.
codeContent_s3ContentLocation :: Lens.Lens' CodeContent (Prelude.Maybe S3ContentLocation)
codeContent_s3ContentLocation = Lens.lens (\CodeContent' {s3ContentLocation} -> s3ContentLocation) (\s@CodeContent' {} a -> s {s3ContentLocation = a} :: CodeContent)

-- | The zip-format code for a Flink-based Kinesis Data Analytics
-- application.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
codeContent_zipFileContent :: Lens.Lens' CodeContent (Prelude.Maybe Prelude.ByteString)
codeContent_zipFileContent = Lens.lens (\CodeContent' {zipFileContent} -> zipFileContent) (\s@CodeContent' {} a -> s {zipFileContent = a} :: CodeContent) Prelude.. Lens.mapping Core._Base64

instance Prelude.Hashable CodeContent

instance Prelude.NFData CodeContent

instance Core.ToJSON CodeContent where
  toJSON CodeContent' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("TextContent" Core..=) Prelude.<$> textContent,
            ("S3ContentLocation" Core..=)
              Prelude.<$> s3ContentLocation,
            ("ZipFileContent" Core..=)
              Prelude.<$> zipFileContent
          ]
      )
