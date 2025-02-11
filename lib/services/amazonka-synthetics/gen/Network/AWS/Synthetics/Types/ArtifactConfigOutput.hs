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
-- Module      : Network.AWS.Synthetics.Types.ArtifactConfigOutput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Synthetics.Types.ArtifactConfigOutput where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Synthetics.Types.S3EncryptionConfig

-- | A structure that contains the configuration for canary artifacts,
-- including the encryption-at-rest settings for artifacts that the canary
-- uploads to Amazon S3.
--
-- /See:/ 'newArtifactConfigOutput' smart constructor.
data ArtifactConfigOutput = ArtifactConfigOutput'
  { -- | A structure that contains the configuration of encryption settings for
    -- canary artifacts that are stored in Amazon S3.
    s3Encryption :: Prelude.Maybe S3EncryptionConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ArtifactConfigOutput' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 's3Encryption', 'artifactConfigOutput_s3Encryption' - A structure that contains the configuration of encryption settings for
-- canary artifacts that are stored in Amazon S3.
newArtifactConfigOutput ::
  ArtifactConfigOutput
newArtifactConfigOutput =
  ArtifactConfigOutput'
    { s3Encryption =
        Prelude.Nothing
    }

-- | A structure that contains the configuration of encryption settings for
-- canary artifacts that are stored in Amazon S3.
artifactConfigOutput_s3Encryption :: Lens.Lens' ArtifactConfigOutput (Prelude.Maybe S3EncryptionConfig)
artifactConfigOutput_s3Encryption = Lens.lens (\ArtifactConfigOutput' {s3Encryption} -> s3Encryption) (\s@ArtifactConfigOutput' {} a -> s {s3Encryption = a} :: ArtifactConfigOutput)

instance Core.FromJSON ArtifactConfigOutput where
  parseJSON =
    Core.withObject
      "ArtifactConfigOutput"
      ( \x ->
          ArtifactConfigOutput'
            Prelude.<$> (x Core..:? "S3Encryption")
      )

instance Prelude.Hashable ArtifactConfigOutput

instance Prelude.NFData ArtifactConfigOutput
