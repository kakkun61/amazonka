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
-- Module      : Network.AWS.HealthLake.Types.S3Configuration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.HealthLake.Types.S3Configuration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The configuration of the S3 bucket for either an import or export job.
-- This includes assigning permissions for access.
--
-- /See:/ 'newS3Configuration' smart constructor.
data S3Configuration = S3Configuration'
  { -- | The S3Uri is the user specified S3 location of the FHIR data to be
    -- imported into Amazon HealthLake.
    s3Uri :: Prelude.Text,
    -- | The KMS key ID used to access the S3 bucket.
    kmsKeyId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'S3Configuration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 's3Uri', 's3Configuration_s3Uri' - The S3Uri is the user specified S3 location of the FHIR data to be
-- imported into Amazon HealthLake.
--
-- 'kmsKeyId', 's3Configuration_kmsKeyId' - The KMS key ID used to access the S3 bucket.
newS3Configuration ::
  -- | 's3Uri'
  Prelude.Text ->
  -- | 'kmsKeyId'
  Prelude.Text ->
  S3Configuration
newS3Configuration pS3Uri_ pKmsKeyId_ =
  S3Configuration'
    { s3Uri = pS3Uri_,
      kmsKeyId = pKmsKeyId_
    }

-- | The S3Uri is the user specified S3 location of the FHIR data to be
-- imported into Amazon HealthLake.
s3Configuration_s3Uri :: Lens.Lens' S3Configuration Prelude.Text
s3Configuration_s3Uri = Lens.lens (\S3Configuration' {s3Uri} -> s3Uri) (\s@S3Configuration' {} a -> s {s3Uri = a} :: S3Configuration)

-- | The KMS key ID used to access the S3 bucket.
s3Configuration_kmsKeyId :: Lens.Lens' S3Configuration Prelude.Text
s3Configuration_kmsKeyId = Lens.lens (\S3Configuration' {kmsKeyId} -> kmsKeyId) (\s@S3Configuration' {} a -> s {kmsKeyId = a} :: S3Configuration)

instance Core.FromJSON S3Configuration where
  parseJSON =
    Core.withObject
      "S3Configuration"
      ( \x ->
          S3Configuration'
            Prelude.<$> (x Core..: "S3Uri")
            Prelude.<*> (x Core..: "KmsKeyId")
      )

instance Prelude.Hashable S3Configuration

instance Prelude.NFData S3Configuration

instance Core.ToJSON S3Configuration where
  toJSON S3Configuration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("S3Uri" Core..= s3Uri),
            Prelude.Just ("KmsKeyId" Core..= kmsKeyId)
          ]
      )
