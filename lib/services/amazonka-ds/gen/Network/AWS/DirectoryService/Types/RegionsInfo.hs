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
-- Module      : Network.AWS.DirectoryService.Types.RegionsInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.RegionsInfo where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Provides information about the Regions that are configured for
-- multi-Region replication.
--
-- /See:/ 'newRegionsInfo' smart constructor.
data RegionsInfo = RegionsInfo'
  { -- | The Region where the Managed Microsoft AD directory was originally
    -- created.
    primaryRegion :: Prelude.Maybe Prelude.Text,
    -- | Lists the Regions where the directory has been replicated, excluding the
    -- primary Region.
    additionalRegions :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RegionsInfo' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'primaryRegion', 'regionsInfo_primaryRegion' - The Region where the Managed Microsoft AD directory was originally
-- created.
--
-- 'additionalRegions', 'regionsInfo_additionalRegions' - Lists the Regions where the directory has been replicated, excluding the
-- primary Region.
newRegionsInfo ::
  RegionsInfo
newRegionsInfo =
  RegionsInfo'
    { primaryRegion = Prelude.Nothing,
      additionalRegions = Prelude.Nothing
    }

-- | The Region where the Managed Microsoft AD directory was originally
-- created.
regionsInfo_primaryRegion :: Lens.Lens' RegionsInfo (Prelude.Maybe Prelude.Text)
regionsInfo_primaryRegion = Lens.lens (\RegionsInfo' {primaryRegion} -> primaryRegion) (\s@RegionsInfo' {} a -> s {primaryRegion = a} :: RegionsInfo)

-- | Lists the Regions where the directory has been replicated, excluding the
-- primary Region.
regionsInfo_additionalRegions :: Lens.Lens' RegionsInfo (Prelude.Maybe [Prelude.Text])
regionsInfo_additionalRegions = Lens.lens (\RegionsInfo' {additionalRegions} -> additionalRegions) (\s@RegionsInfo' {} a -> s {additionalRegions = a} :: RegionsInfo) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON RegionsInfo where
  parseJSON =
    Core.withObject
      "RegionsInfo"
      ( \x ->
          RegionsInfo'
            Prelude.<$> (x Core..:? "PrimaryRegion")
            Prelude.<*> ( x Core..:? "AdditionalRegions"
                            Core..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable RegionsInfo

instance Prelude.NFData RegionsInfo
