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
-- Module      : Network.AWS.IoTEvents.Types.DetectorModel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTEvents.Types.DetectorModel where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTEvents.Types.DetectorModelConfiguration
import Network.AWS.IoTEvents.Types.DetectorModelDefinition
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about the detector model.
--
-- /See:/ 'newDetectorModel' smart constructor.
data DetectorModel = DetectorModel'
  { -- | Information about how the detector is configured.
    detectorModelConfiguration :: Prelude.Maybe DetectorModelConfiguration,
    -- | Information that defines how a detector operates.
    detectorModelDefinition :: Prelude.Maybe DetectorModelDefinition
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DetectorModel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'detectorModelConfiguration', 'detectorModel_detectorModelConfiguration' - Information about how the detector is configured.
--
-- 'detectorModelDefinition', 'detectorModel_detectorModelDefinition' - Information that defines how a detector operates.
newDetectorModel ::
  DetectorModel
newDetectorModel =
  DetectorModel'
    { detectorModelConfiguration =
        Prelude.Nothing,
      detectorModelDefinition = Prelude.Nothing
    }

-- | Information about how the detector is configured.
detectorModel_detectorModelConfiguration :: Lens.Lens' DetectorModel (Prelude.Maybe DetectorModelConfiguration)
detectorModel_detectorModelConfiguration = Lens.lens (\DetectorModel' {detectorModelConfiguration} -> detectorModelConfiguration) (\s@DetectorModel' {} a -> s {detectorModelConfiguration = a} :: DetectorModel)

-- | Information that defines how a detector operates.
detectorModel_detectorModelDefinition :: Lens.Lens' DetectorModel (Prelude.Maybe DetectorModelDefinition)
detectorModel_detectorModelDefinition = Lens.lens (\DetectorModel' {detectorModelDefinition} -> detectorModelDefinition) (\s@DetectorModel' {} a -> s {detectorModelDefinition = a} :: DetectorModel)

instance Core.FromJSON DetectorModel where
  parseJSON =
    Core.withObject
      "DetectorModel"
      ( \x ->
          DetectorModel'
            Prelude.<$> (x Core..:? "detectorModelConfiguration")
            Prelude.<*> (x Core..:? "detectorModelDefinition")
      )

instance Prelude.Hashable DetectorModel

instance Prelude.NFData DetectorModel
