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
-- Module      : Network.AWS.LookoutEquipment.Types.InferenceOutputConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LookoutEquipment.Types.InferenceOutputConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LookoutEquipment.Types.InferenceS3OutputConfiguration
import qualified Network.AWS.Prelude as Prelude

-- | Specifies configuration information for the output results from for the
-- inference, including KMS key ID and output S3 location.
--
-- /See:/ 'newInferenceOutputConfiguration' smart constructor.
data InferenceOutputConfiguration = InferenceOutputConfiguration'
  { -- | The ID number for the AWS KMS key used to encrypt the inference output.
    kmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | Specifies configuration information for the output results from for the
    -- inference, output S3 location.
    s3OutputConfiguration :: InferenceS3OutputConfiguration
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InferenceOutputConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'kmsKeyId', 'inferenceOutputConfiguration_kmsKeyId' - The ID number for the AWS KMS key used to encrypt the inference output.
--
-- 's3OutputConfiguration', 'inferenceOutputConfiguration_s3OutputConfiguration' - Specifies configuration information for the output results from for the
-- inference, output S3 location.
newInferenceOutputConfiguration ::
  -- | 's3OutputConfiguration'
  InferenceS3OutputConfiguration ->
  InferenceOutputConfiguration
newInferenceOutputConfiguration
  pS3OutputConfiguration_ =
    InferenceOutputConfiguration'
      { kmsKeyId =
          Prelude.Nothing,
        s3OutputConfiguration =
          pS3OutputConfiguration_
      }

-- | The ID number for the AWS KMS key used to encrypt the inference output.
inferenceOutputConfiguration_kmsKeyId :: Lens.Lens' InferenceOutputConfiguration (Prelude.Maybe Prelude.Text)
inferenceOutputConfiguration_kmsKeyId = Lens.lens (\InferenceOutputConfiguration' {kmsKeyId} -> kmsKeyId) (\s@InferenceOutputConfiguration' {} a -> s {kmsKeyId = a} :: InferenceOutputConfiguration)

-- | Specifies configuration information for the output results from for the
-- inference, output S3 location.
inferenceOutputConfiguration_s3OutputConfiguration :: Lens.Lens' InferenceOutputConfiguration InferenceS3OutputConfiguration
inferenceOutputConfiguration_s3OutputConfiguration = Lens.lens (\InferenceOutputConfiguration' {s3OutputConfiguration} -> s3OutputConfiguration) (\s@InferenceOutputConfiguration' {} a -> s {s3OutputConfiguration = a} :: InferenceOutputConfiguration)

instance Core.FromJSON InferenceOutputConfiguration where
  parseJSON =
    Core.withObject
      "InferenceOutputConfiguration"
      ( \x ->
          InferenceOutputConfiguration'
            Prelude.<$> (x Core..:? "KmsKeyId")
            Prelude.<*> (x Core..: "S3OutputConfiguration")
      )

instance
  Prelude.Hashable
    InferenceOutputConfiguration

instance Prelude.NFData InferenceOutputConfiguration

instance Core.ToJSON InferenceOutputConfiguration where
  toJSON InferenceOutputConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("KmsKeyId" Core..=) Prelude.<$> kmsKeyId,
            Prelude.Just
              ( "S3OutputConfiguration"
                  Core..= s3OutputConfiguration
              )
          ]
      )
