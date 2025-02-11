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
-- Module      : Network.AWS.Connect.Types.HoursOfOperationConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.HoursOfOperationConfig where

import Network.AWS.Connect.Types.HoursOfOperationDays
import Network.AWS.Connect.Types.HoursOfOperationTimeSlice
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information about the hours of operation.
--
-- /See:/ 'newHoursOfOperationConfig' smart constructor.
data HoursOfOperationConfig = HoursOfOperationConfig'
  { -- | The day that the hours of operation applies to.
    day :: HoursOfOperationDays,
    -- | The start time that your contact center opens.
    startTime :: HoursOfOperationTimeSlice,
    -- | The end time that your contact center closes.
    endTime :: HoursOfOperationTimeSlice
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'HoursOfOperationConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'day', 'hoursOfOperationConfig_day' - The day that the hours of operation applies to.
--
-- 'startTime', 'hoursOfOperationConfig_startTime' - The start time that your contact center opens.
--
-- 'endTime', 'hoursOfOperationConfig_endTime' - The end time that your contact center closes.
newHoursOfOperationConfig ::
  -- | 'day'
  HoursOfOperationDays ->
  -- | 'startTime'
  HoursOfOperationTimeSlice ->
  -- | 'endTime'
  HoursOfOperationTimeSlice ->
  HoursOfOperationConfig
newHoursOfOperationConfig pDay_ pStartTime_ pEndTime_ =
  HoursOfOperationConfig'
    { day = pDay_,
      startTime = pStartTime_,
      endTime = pEndTime_
    }

-- | The day that the hours of operation applies to.
hoursOfOperationConfig_day :: Lens.Lens' HoursOfOperationConfig HoursOfOperationDays
hoursOfOperationConfig_day = Lens.lens (\HoursOfOperationConfig' {day} -> day) (\s@HoursOfOperationConfig' {} a -> s {day = a} :: HoursOfOperationConfig)

-- | The start time that your contact center opens.
hoursOfOperationConfig_startTime :: Lens.Lens' HoursOfOperationConfig HoursOfOperationTimeSlice
hoursOfOperationConfig_startTime = Lens.lens (\HoursOfOperationConfig' {startTime} -> startTime) (\s@HoursOfOperationConfig' {} a -> s {startTime = a} :: HoursOfOperationConfig)

-- | The end time that your contact center closes.
hoursOfOperationConfig_endTime :: Lens.Lens' HoursOfOperationConfig HoursOfOperationTimeSlice
hoursOfOperationConfig_endTime = Lens.lens (\HoursOfOperationConfig' {endTime} -> endTime) (\s@HoursOfOperationConfig' {} a -> s {endTime = a} :: HoursOfOperationConfig)

instance Core.FromJSON HoursOfOperationConfig where
  parseJSON =
    Core.withObject
      "HoursOfOperationConfig"
      ( \x ->
          HoursOfOperationConfig'
            Prelude.<$> (x Core..: "Day")
            Prelude.<*> (x Core..: "StartTime")
            Prelude.<*> (x Core..: "EndTime")
      )

instance Prelude.Hashable HoursOfOperationConfig

instance Prelude.NFData HoursOfOperationConfig

instance Core.ToJSON HoursOfOperationConfig where
  toJSON HoursOfOperationConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Day" Core..= day),
            Prelude.Just ("StartTime" Core..= startTime),
            Prelude.Just ("EndTime" Core..= endTime)
          ]
      )
