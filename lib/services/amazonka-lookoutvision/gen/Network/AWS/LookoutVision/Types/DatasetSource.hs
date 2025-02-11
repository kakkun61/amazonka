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
-- Module      : Network.AWS.LookoutVision.Types.DatasetSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LookoutVision.Types.DatasetSource where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LookoutVision.Types.DatasetGroundTruthManifest
import qualified Network.AWS.Prelude as Prelude

-- | Information about the location of a manifest file that Amazon Lookout
-- for Vision uses to to create a dataset.
--
-- /See:/ 'newDatasetSource' smart constructor.
data DatasetSource = DatasetSource'
  { -- | Location information for the manifest file.
    groundTruthManifest :: Prelude.Maybe DatasetGroundTruthManifest
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DatasetSource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'groundTruthManifest', 'datasetSource_groundTruthManifest' - Location information for the manifest file.
newDatasetSource ::
  DatasetSource
newDatasetSource =
  DatasetSource'
    { groundTruthManifest =
        Prelude.Nothing
    }

-- | Location information for the manifest file.
datasetSource_groundTruthManifest :: Lens.Lens' DatasetSource (Prelude.Maybe DatasetGroundTruthManifest)
datasetSource_groundTruthManifest = Lens.lens (\DatasetSource' {groundTruthManifest} -> groundTruthManifest) (\s@DatasetSource' {} a -> s {groundTruthManifest = a} :: DatasetSource)

instance Prelude.Hashable DatasetSource

instance Prelude.NFData DatasetSource

instance Core.ToJSON DatasetSource where
  toJSON DatasetSource' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("GroundTruthManifest" Core..=)
              Prelude.<$> groundTruthManifest
          ]
      )
