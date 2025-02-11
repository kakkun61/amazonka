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
-- Module      : Network.AWS.MacieV2.Types.JobScheduleFrequency
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MacieV2.Types.JobScheduleFrequency where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MacieV2.Types.DailySchedule
import Network.AWS.MacieV2.Types.MonthlySchedule
import Network.AWS.MacieV2.Types.WeeklySchedule
import qualified Network.AWS.Prelude as Prelude

-- | Specifies the recurrence pattern for running a classification job.
--
-- /See:/ 'newJobScheduleFrequency' smart constructor.
data JobScheduleFrequency = JobScheduleFrequency'
  { -- | Specifies a daily recurrence pattern for running the job.
    dailySchedule :: Prelude.Maybe DailySchedule,
    -- | Specifies a monthly recurrence pattern for running the job.
    monthlySchedule :: Prelude.Maybe MonthlySchedule,
    -- | Specifies a weekly recurrence pattern for running the job.
    weeklySchedule :: Prelude.Maybe WeeklySchedule
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'JobScheduleFrequency' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dailySchedule', 'jobScheduleFrequency_dailySchedule' - Specifies a daily recurrence pattern for running the job.
--
-- 'monthlySchedule', 'jobScheduleFrequency_monthlySchedule' - Specifies a monthly recurrence pattern for running the job.
--
-- 'weeklySchedule', 'jobScheduleFrequency_weeklySchedule' - Specifies a weekly recurrence pattern for running the job.
newJobScheduleFrequency ::
  JobScheduleFrequency
newJobScheduleFrequency =
  JobScheduleFrequency'
    { dailySchedule =
        Prelude.Nothing,
      monthlySchedule = Prelude.Nothing,
      weeklySchedule = Prelude.Nothing
    }

-- | Specifies a daily recurrence pattern for running the job.
jobScheduleFrequency_dailySchedule :: Lens.Lens' JobScheduleFrequency (Prelude.Maybe DailySchedule)
jobScheduleFrequency_dailySchedule = Lens.lens (\JobScheduleFrequency' {dailySchedule} -> dailySchedule) (\s@JobScheduleFrequency' {} a -> s {dailySchedule = a} :: JobScheduleFrequency)

-- | Specifies a monthly recurrence pattern for running the job.
jobScheduleFrequency_monthlySchedule :: Lens.Lens' JobScheduleFrequency (Prelude.Maybe MonthlySchedule)
jobScheduleFrequency_monthlySchedule = Lens.lens (\JobScheduleFrequency' {monthlySchedule} -> monthlySchedule) (\s@JobScheduleFrequency' {} a -> s {monthlySchedule = a} :: JobScheduleFrequency)

-- | Specifies a weekly recurrence pattern for running the job.
jobScheduleFrequency_weeklySchedule :: Lens.Lens' JobScheduleFrequency (Prelude.Maybe WeeklySchedule)
jobScheduleFrequency_weeklySchedule = Lens.lens (\JobScheduleFrequency' {weeklySchedule} -> weeklySchedule) (\s@JobScheduleFrequency' {} a -> s {weeklySchedule = a} :: JobScheduleFrequency)

instance Core.FromJSON JobScheduleFrequency where
  parseJSON =
    Core.withObject
      "JobScheduleFrequency"
      ( \x ->
          JobScheduleFrequency'
            Prelude.<$> (x Core..:? "dailySchedule")
            Prelude.<*> (x Core..:? "monthlySchedule")
            Prelude.<*> (x Core..:? "weeklySchedule")
      )

instance Prelude.Hashable JobScheduleFrequency

instance Prelude.NFData JobScheduleFrequency

instance Core.ToJSON JobScheduleFrequency where
  toJSON JobScheduleFrequency' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("dailySchedule" Core..=) Prelude.<$> dailySchedule,
            ("monthlySchedule" Core..=)
              Prelude.<$> monthlySchedule,
            ("weeklySchedule" Core..=)
              Prelude.<$> weeklySchedule
          ]
      )
