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
-- Module      : Network.AWS.IoTEvents.Types.SetTimerAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTEvents.Types.SetTimerAction where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information needed to set the timer.
--
-- /See:/ 'newSetTimerAction' smart constructor.
data SetTimerAction = SetTimerAction'
  { -- | The duration of the timer, in seconds. You can use a string expression
    -- that includes numbers, variables (@$variable.\<variable-name>@), and
    -- input values (@$input.\<input-name>.\<path-to-datum>@) as the duration.
    -- The range of the duration is 1-31622400 seconds. To ensure accuracy, the
    -- minimum duration is 60 seconds. The evaluated result of the duration is
    -- rounded down to the nearest whole number.
    durationExpression :: Prelude.Maybe Prelude.Text,
    -- | The number of seconds until the timer expires. The minimum value is 60
    -- seconds to ensure accuracy. The maximum value is 31622400 seconds.
    seconds :: Prelude.Maybe Prelude.Natural,
    -- | The name of the timer.
    timerName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SetTimerAction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'durationExpression', 'setTimerAction_durationExpression' - The duration of the timer, in seconds. You can use a string expression
-- that includes numbers, variables (@$variable.\<variable-name>@), and
-- input values (@$input.\<input-name>.\<path-to-datum>@) as the duration.
-- The range of the duration is 1-31622400 seconds. To ensure accuracy, the
-- minimum duration is 60 seconds. The evaluated result of the duration is
-- rounded down to the nearest whole number.
--
-- 'seconds', 'setTimerAction_seconds' - The number of seconds until the timer expires. The minimum value is 60
-- seconds to ensure accuracy. The maximum value is 31622400 seconds.
--
-- 'timerName', 'setTimerAction_timerName' - The name of the timer.
newSetTimerAction ::
  -- | 'timerName'
  Prelude.Text ->
  SetTimerAction
newSetTimerAction pTimerName_ =
  SetTimerAction'
    { durationExpression =
        Prelude.Nothing,
      seconds = Prelude.Nothing,
      timerName = pTimerName_
    }

-- | The duration of the timer, in seconds. You can use a string expression
-- that includes numbers, variables (@$variable.\<variable-name>@), and
-- input values (@$input.\<input-name>.\<path-to-datum>@) as the duration.
-- The range of the duration is 1-31622400 seconds. To ensure accuracy, the
-- minimum duration is 60 seconds. The evaluated result of the duration is
-- rounded down to the nearest whole number.
setTimerAction_durationExpression :: Lens.Lens' SetTimerAction (Prelude.Maybe Prelude.Text)
setTimerAction_durationExpression = Lens.lens (\SetTimerAction' {durationExpression} -> durationExpression) (\s@SetTimerAction' {} a -> s {durationExpression = a} :: SetTimerAction)

-- | The number of seconds until the timer expires. The minimum value is 60
-- seconds to ensure accuracy. The maximum value is 31622400 seconds.
setTimerAction_seconds :: Lens.Lens' SetTimerAction (Prelude.Maybe Prelude.Natural)
setTimerAction_seconds = Lens.lens (\SetTimerAction' {seconds} -> seconds) (\s@SetTimerAction' {} a -> s {seconds = a} :: SetTimerAction)

-- | The name of the timer.
setTimerAction_timerName :: Lens.Lens' SetTimerAction Prelude.Text
setTimerAction_timerName = Lens.lens (\SetTimerAction' {timerName} -> timerName) (\s@SetTimerAction' {} a -> s {timerName = a} :: SetTimerAction)

instance Core.FromJSON SetTimerAction where
  parseJSON =
    Core.withObject
      "SetTimerAction"
      ( \x ->
          SetTimerAction'
            Prelude.<$> (x Core..:? "durationExpression")
            Prelude.<*> (x Core..:? "seconds")
            Prelude.<*> (x Core..: "timerName")
      )

instance Prelude.Hashable SetTimerAction

instance Prelude.NFData SetTimerAction

instance Core.ToJSON SetTimerAction where
  toJSON SetTimerAction' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("durationExpression" Core..=)
              Prelude.<$> durationExpression,
            ("seconds" Core..=) Prelude.<$> seconds,
            Prelude.Just ("timerName" Core..= timerName)
          ]
      )
