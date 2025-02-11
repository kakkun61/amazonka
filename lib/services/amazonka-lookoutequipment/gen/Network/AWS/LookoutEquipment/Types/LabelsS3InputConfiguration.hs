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
-- Module      : Network.AWS.LookoutEquipment.Types.LabelsS3InputConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LookoutEquipment.Types.LabelsS3InputConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The location information (prefix and bucket name) for the s3 location
-- being used for label data.
--
-- /See:/ 'newLabelsS3InputConfiguration' smart constructor.
data LabelsS3InputConfiguration = LabelsS3InputConfiguration'
  { -- | The prefix for the S3 bucket used for the label data.
    prefix :: Prelude.Maybe Prelude.Text,
    -- | The name of the S3 bucket holding the label data.
    bucket :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LabelsS3InputConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'prefix', 'labelsS3InputConfiguration_prefix' - The prefix for the S3 bucket used for the label data.
--
-- 'bucket', 'labelsS3InputConfiguration_bucket' - The name of the S3 bucket holding the label data.
newLabelsS3InputConfiguration ::
  -- | 'bucket'
  Prelude.Text ->
  LabelsS3InputConfiguration
newLabelsS3InputConfiguration pBucket_ =
  LabelsS3InputConfiguration'
    { prefix =
        Prelude.Nothing,
      bucket = pBucket_
    }

-- | The prefix for the S3 bucket used for the label data.
labelsS3InputConfiguration_prefix :: Lens.Lens' LabelsS3InputConfiguration (Prelude.Maybe Prelude.Text)
labelsS3InputConfiguration_prefix = Lens.lens (\LabelsS3InputConfiguration' {prefix} -> prefix) (\s@LabelsS3InputConfiguration' {} a -> s {prefix = a} :: LabelsS3InputConfiguration)

-- | The name of the S3 bucket holding the label data.
labelsS3InputConfiguration_bucket :: Lens.Lens' LabelsS3InputConfiguration Prelude.Text
labelsS3InputConfiguration_bucket = Lens.lens (\LabelsS3InputConfiguration' {bucket} -> bucket) (\s@LabelsS3InputConfiguration' {} a -> s {bucket = a} :: LabelsS3InputConfiguration)

instance Core.FromJSON LabelsS3InputConfiguration where
  parseJSON =
    Core.withObject
      "LabelsS3InputConfiguration"
      ( \x ->
          LabelsS3InputConfiguration'
            Prelude.<$> (x Core..:? "Prefix")
            Prelude.<*> (x Core..: "Bucket")
      )

instance Prelude.Hashable LabelsS3InputConfiguration

instance Prelude.NFData LabelsS3InputConfiguration

instance Core.ToJSON LabelsS3InputConfiguration where
  toJSON LabelsS3InputConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Prefix" Core..=) Prelude.<$> prefix,
            Prelude.Just ("Bucket" Core..= bucket)
          ]
      )
