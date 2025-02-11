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
-- Module      : Network.AWS.MediaLive.Types.NielsenWatermarksSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.NielsenWatermarksSettings where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaLive.Types.NielsenCBET
import Network.AWS.MediaLive.Types.NielsenNaesIiNw
import Network.AWS.MediaLive.Types.NielsenWatermarksDistributionTypes
import qualified Network.AWS.Prelude as Prelude

-- | Nielsen Watermarks Settings
--
-- /See:/ 'newNielsenWatermarksSettings' smart constructor.
data NielsenWatermarksSettings = NielsenWatermarksSettings'
  { -- | Complete these fields only if you want to insert watermarks of type
    -- Nielsen CBET
    nielsenCbetSettings :: Prelude.Maybe NielsenCBET,
    -- | Complete these fields only if you want to insert watermarks of type
    -- Nielsen NAES II (N2) and Nielsen NAES VI (NW).
    nielsenNaesIiNwSettings :: Prelude.Maybe NielsenNaesIiNw,
    -- | Choose the distribution types that you want to assign to the watermarks:
    -- - PROGRAM_CONTENT - FINAL_DISTRIBUTOR
    nielsenDistributionType :: Prelude.Maybe NielsenWatermarksDistributionTypes
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'NielsenWatermarksSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nielsenCbetSettings', 'nielsenWatermarksSettings_nielsenCbetSettings' - Complete these fields only if you want to insert watermarks of type
-- Nielsen CBET
--
-- 'nielsenNaesIiNwSettings', 'nielsenWatermarksSettings_nielsenNaesIiNwSettings' - Complete these fields only if you want to insert watermarks of type
-- Nielsen NAES II (N2) and Nielsen NAES VI (NW).
--
-- 'nielsenDistributionType', 'nielsenWatermarksSettings_nielsenDistributionType' - Choose the distribution types that you want to assign to the watermarks:
-- - PROGRAM_CONTENT - FINAL_DISTRIBUTOR
newNielsenWatermarksSettings ::
  NielsenWatermarksSettings
newNielsenWatermarksSettings =
  NielsenWatermarksSettings'
    { nielsenCbetSettings =
        Prelude.Nothing,
      nielsenNaesIiNwSettings = Prelude.Nothing,
      nielsenDistributionType = Prelude.Nothing
    }

-- | Complete these fields only if you want to insert watermarks of type
-- Nielsen CBET
nielsenWatermarksSettings_nielsenCbetSettings :: Lens.Lens' NielsenWatermarksSettings (Prelude.Maybe NielsenCBET)
nielsenWatermarksSettings_nielsenCbetSettings = Lens.lens (\NielsenWatermarksSettings' {nielsenCbetSettings} -> nielsenCbetSettings) (\s@NielsenWatermarksSettings' {} a -> s {nielsenCbetSettings = a} :: NielsenWatermarksSettings)

-- | Complete these fields only if you want to insert watermarks of type
-- Nielsen NAES II (N2) and Nielsen NAES VI (NW).
nielsenWatermarksSettings_nielsenNaesIiNwSettings :: Lens.Lens' NielsenWatermarksSettings (Prelude.Maybe NielsenNaesIiNw)
nielsenWatermarksSettings_nielsenNaesIiNwSettings = Lens.lens (\NielsenWatermarksSettings' {nielsenNaesIiNwSettings} -> nielsenNaesIiNwSettings) (\s@NielsenWatermarksSettings' {} a -> s {nielsenNaesIiNwSettings = a} :: NielsenWatermarksSettings)

-- | Choose the distribution types that you want to assign to the watermarks:
-- - PROGRAM_CONTENT - FINAL_DISTRIBUTOR
nielsenWatermarksSettings_nielsenDistributionType :: Lens.Lens' NielsenWatermarksSettings (Prelude.Maybe NielsenWatermarksDistributionTypes)
nielsenWatermarksSettings_nielsenDistributionType = Lens.lens (\NielsenWatermarksSettings' {nielsenDistributionType} -> nielsenDistributionType) (\s@NielsenWatermarksSettings' {} a -> s {nielsenDistributionType = a} :: NielsenWatermarksSettings)

instance Core.FromJSON NielsenWatermarksSettings where
  parseJSON =
    Core.withObject
      "NielsenWatermarksSettings"
      ( \x ->
          NielsenWatermarksSettings'
            Prelude.<$> (x Core..:? "nielsenCbetSettings")
            Prelude.<*> (x Core..:? "nielsenNaesIiNwSettings")
            Prelude.<*> (x Core..:? "nielsenDistributionType")
      )

instance Prelude.Hashable NielsenWatermarksSettings

instance Prelude.NFData NielsenWatermarksSettings

instance Core.ToJSON NielsenWatermarksSettings where
  toJSON NielsenWatermarksSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nielsenCbetSettings" Core..=)
              Prelude.<$> nielsenCbetSettings,
            ("nielsenNaesIiNwSettings" Core..=)
              Prelude.<$> nielsenNaesIiNwSettings,
            ("nielsenDistributionType" Core..=)
              Prelude.<$> nielsenDistributionType
          ]
      )
