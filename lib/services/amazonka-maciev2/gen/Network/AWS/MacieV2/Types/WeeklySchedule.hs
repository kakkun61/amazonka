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
-- Module      : Network.AWS.MacieV2.Types.WeeklySchedule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MacieV2.Types.WeeklySchedule where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MacieV2.Types.DayOfWeek
import qualified Network.AWS.Prelude as Prelude

-- | Specifies a weekly recurrence pattern for running a classification job.
--
-- /See:/ 'newWeeklySchedule' smart constructor.
data WeeklySchedule = WeeklySchedule'
  { -- | The day of the week when Amazon Macie runs the job.
    dayOfWeek :: Prelude.Maybe DayOfWeek
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'WeeklySchedule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dayOfWeek', 'weeklySchedule_dayOfWeek' - The day of the week when Amazon Macie runs the job.
newWeeklySchedule ::
  WeeklySchedule
newWeeklySchedule =
  WeeklySchedule' {dayOfWeek = Prelude.Nothing}

-- | The day of the week when Amazon Macie runs the job.
weeklySchedule_dayOfWeek :: Lens.Lens' WeeklySchedule (Prelude.Maybe DayOfWeek)
weeklySchedule_dayOfWeek = Lens.lens (\WeeklySchedule' {dayOfWeek} -> dayOfWeek) (\s@WeeklySchedule' {} a -> s {dayOfWeek = a} :: WeeklySchedule)

instance Core.FromJSON WeeklySchedule where
  parseJSON =
    Core.withObject
      "WeeklySchedule"
      ( \x ->
          WeeklySchedule' Prelude.<$> (x Core..:? "dayOfWeek")
      )

instance Prelude.Hashable WeeklySchedule

instance Prelude.NFData WeeklySchedule

instance Core.ToJSON WeeklySchedule where
  toJSON WeeklySchedule' {..} =
    Core.object
      ( Prelude.catMaybes
          [("dayOfWeek" Core..=) Prelude.<$> dayOfWeek]
      )
