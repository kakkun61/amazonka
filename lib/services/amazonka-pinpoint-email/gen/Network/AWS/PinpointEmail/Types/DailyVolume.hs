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
-- Module      : Network.AWS.PinpointEmail.Types.DailyVolume
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.PinpointEmail.Types.DailyVolume where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.PinpointEmail.Types.DomainIspPlacement
import Network.AWS.PinpointEmail.Types.VolumeStatistics
import qualified Network.AWS.Prelude as Prelude

-- | An object that contains information about the volume of email sent on
-- each day of the analysis period.
--
-- /See:/ 'newDailyVolume' smart constructor.
data DailyVolume = DailyVolume'
  { -- | An object that contains inbox placement metrics for a specified day in
    -- the analysis period, broken out by the recipient\'s email provider.
    domainIspPlacements :: Prelude.Maybe [DomainIspPlacement],
    -- | The date that the DailyVolume metrics apply to, in Unix time.
    startDate :: Prelude.Maybe Core.POSIX,
    -- | An object that contains inbox placement metrics for a specific day in
    -- the analysis period.
    volumeStatistics :: Prelude.Maybe VolumeStatistics
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DailyVolume' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domainIspPlacements', 'dailyVolume_domainIspPlacements' - An object that contains inbox placement metrics for a specified day in
-- the analysis period, broken out by the recipient\'s email provider.
--
-- 'startDate', 'dailyVolume_startDate' - The date that the DailyVolume metrics apply to, in Unix time.
--
-- 'volumeStatistics', 'dailyVolume_volumeStatistics' - An object that contains inbox placement metrics for a specific day in
-- the analysis period.
newDailyVolume ::
  DailyVolume
newDailyVolume =
  DailyVolume'
    { domainIspPlacements = Prelude.Nothing,
      startDate = Prelude.Nothing,
      volumeStatistics = Prelude.Nothing
    }

-- | An object that contains inbox placement metrics for a specified day in
-- the analysis period, broken out by the recipient\'s email provider.
dailyVolume_domainIspPlacements :: Lens.Lens' DailyVolume (Prelude.Maybe [DomainIspPlacement])
dailyVolume_domainIspPlacements = Lens.lens (\DailyVolume' {domainIspPlacements} -> domainIspPlacements) (\s@DailyVolume' {} a -> s {domainIspPlacements = a} :: DailyVolume) Prelude.. Lens.mapping Lens.coerced

-- | The date that the DailyVolume metrics apply to, in Unix time.
dailyVolume_startDate :: Lens.Lens' DailyVolume (Prelude.Maybe Prelude.UTCTime)
dailyVolume_startDate = Lens.lens (\DailyVolume' {startDate} -> startDate) (\s@DailyVolume' {} a -> s {startDate = a} :: DailyVolume) Prelude.. Lens.mapping Core._Time

-- | An object that contains inbox placement metrics for a specific day in
-- the analysis period.
dailyVolume_volumeStatistics :: Lens.Lens' DailyVolume (Prelude.Maybe VolumeStatistics)
dailyVolume_volumeStatistics = Lens.lens (\DailyVolume' {volumeStatistics} -> volumeStatistics) (\s@DailyVolume' {} a -> s {volumeStatistics = a} :: DailyVolume)

instance Core.FromJSON DailyVolume where
  parseJSON =
    Core.withObject
      "DailyVolume"
      ( \x ->
          DailyVolume'
            Prelude.<$> ( x Core..:? "DomainIspPlacements"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "StartDate")
            Prelude.<*> (x Core..:? "VolumeStatistics")
      )

instance Prelude.Hashable DailyVolume

instance Prelude.NFData DailyVolume
