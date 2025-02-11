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
-- Module      : Network.AWS.MacieV2.Types.ClassificationExportConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MacieV2.Types.ClassificationExportConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MacieV2.Types.S3Destination
import qualified Network.AWS.Prelude as Prelude

-- | Specifies where to store data classification results, and the encryption
-- settings to use when storing results in that location. Currently, you
-- can store classification results only in an S3 bucket.
--
-- /See:/ 'newClassificationExportConfiguration' smart constructor.
data ClassificationExportConfiguration = ClassificationExportConfiguration'
  { -- | The S3 bucket to store data classification results in, and the
    -- encryption settings to use when storing results in that bucket.
    s3Destination :: Prelude.Maybe S3Destination
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ClassificationExportConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 's3Destination', 'classificationExportConfiguration_s3Destination' - The S3 bucket to store data classification results in, and the
-- encryption settings to use when storing results in that bucket.
newClassificationExportConfiguration ::
  ClassificationExportConfiguration
newClassificationExportConfiguration =
  ClassificationExportConfiguration'
    { s3Destination =
        Prelude.Nothing
    }

-- | The S3 bucket to store data classification results in, and the
-- encryption settings to use when storing results in that bucket.
classificationExportConfiguration_s3Destination :: Lens.Lens' ClassificationExportConfiguration (Prelude.Maybe S3Destination)
classificationExportConfiguration_s3Destination = Lens.lens (\ClassificationExportConfiguration' {s3Destination} -> s3Destination) (\s@ClassificationExportConfiguration' {} a -> s {s3Destination = a} :: ClassificationExportConfiguration)

instance
  Core.FromJSON
    ClassificationExportConfiguration
  where
  parseJSON =
    Core.withObject
      "ClassificationExportConfiguration"
      ( \x ->
          ClassificationExportConfiguration'
            Prelude.<$> (x Core..:? "s3Destination")
      )

instance
  Prelude.Hashable
    ClassificationExportConfiguration

instance
  Prelude.NFData
    ClassificationExportConfiguration

instance
  Core.ToJSON
    ClassificationExportConfiguration
  where
  toJSON ClassificationExportConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("s3Destination" Core..=)
              Prelude.<$> s3Destination
          ]
      )
