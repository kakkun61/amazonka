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
-- Module      : Network.AWS.Synthetics.Types.S3EncryptionConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Synthetics.Types.S3EncryptionConfig where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Synthetics.Types.EncryptionMode

-- | A structure that contains the configuration of encryption-at-rest
-- settings for canary artifacts that the canary uploads to Amazon S3.
--
-- For more information, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_artifact_encryption.html Encrypting canary artifacts>
--
-- /See:/ 'newS3EncryptionConfig' smart constructor.
data S3EncryptionConfig = S3EncryptionConfig'
  { -- | The ARN of the customer-managed KMS key to use, if you specify @SSE-KMS@
    -- for @EncryptionMode@
    kmsKeyArn :: Prelude.Maybe Prelude.Text,
    -- | The encryption method to use for artifacts created by this canary.
    -- Specify @SSE_S3@ to use server-side encryption (SSE) with an Amazon
    -- S3-managed key. Specify @SSE-KMS@ to use server-side encryption with a
    -- customer-managed KMS key.
    --
    -- If you omit this parameter, an Amazon Web Services-managed KMS key is
    -- used.
    encryptionMode :: Prelude.Maybe EncryptionMode
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'S3EncryptionConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'kmsKeyArn', 's3EncryptionConfig_kmsKeyArn' - The ARN of the customer-managed KMS key to use, if you specify @SSE-KMS@
-- for @EncryptionMode@
--
-- 'encryptionMode', 's3EncryptionConfig_encryptionMode' - The encryption method to use for artifacts created by this canary.
-- Specify @SSE_S3@ to use server-side encryption (SSE) with an Amazon
-- S3-managed key. Specify @SSE-KMS@ to use server-side encryption with a
-- customer-managed KMS key.
--
-- If you omit this parameter, an Amazon Web Services-managed KMS key is
-- used.
newS3EncryptionConfig ::
  S3EncryptionConfig
newS3EncryptionConfig =
  S3EncryptionConfig'
    { kmsKeyArn = Prelude.Nothing,
      encryptionMode = Prelude.Nothing
    }

-- | The ARN of the customer-managed KMS key to use, if you specify @SSE-KMS@
-- for @EncryptionMode@
s3EncryptionConfig_kmsKeyArn :: Lens.Lens' S3EncryptionConfig (Prelude.Maybe Prelude.Text)
s3EncryptionConfig_kmsKeyArn = Lens.lens (\S3EncryptionConfig' {kmsKeyArn} -> kmsKeyArn) (\s@S3EncryptionConfig' {} a -> s {kmsKeyArn = a} :: S3EncryptionConfig)

-- | The encryption method to use for artifacts created by this canary.
-- Specify @SSE_S3@ to use server-side encryption (SSE) with an Amazon
-- S3-managed key. Specify @SSE-KMS@ to use server-side encryption with a
-- customer-managed KMS key.
--
-- If you omit this parameter, an Amazon Web Services-managed KMS key is
-- used.
s3EncryptionConfig_encryptionMode :: Lens.Lens' S3EncryptionConfig (Prelude.Maybe EncryptionMode)
s3EncryptionConfig_encryptionMode = Lens.lens (\S3EncryptionConfig' {encryptionMode} -> encryptionMode) (\s@S3EncryptionConfig' {} a -> s {encryptionMode = a} :: S3EncryptionConfig)

instance Core.FromJSON S3EncryptionConfig where
  parseJSON =
    Core.withObject
      "S3EncryptionConfig"
      ( \x ->
          S3EncryptionConfig'
            Prelude.<$> (x Core..:? "KmsKeyArn")
            Prelude.<*> (x Core..:? "EncryptionMode")
      )

instance Prelude.Hashable S3EncryptionConfig

instance Prelude.NFData S3EncryptionConfig

instance Core.ToJSON S3EncryptionConfig where
  toJSON S3EncryptionConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("KmsKeyArn" Core..=) Prelude.<$> kmsKeyArn,
            ("EncryptionMode" Core..=)
              Prelude.<$> encryptionMode
          ]
      )
