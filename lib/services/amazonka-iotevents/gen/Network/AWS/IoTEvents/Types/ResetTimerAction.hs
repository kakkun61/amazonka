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
-- Module      : Network.AWS.IoTEvents.Types.ResetTimerAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTEvents.Types.ResetTimerAction where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information required to reset the timer. The timer is reset to the
-- previously evaluated result of the duration. The duration expression
-- isn\'t reevaluated when you reset the timer.
--
-- /See:/ 'newResetTimerAction' smart constructor.
data ResetTimerAction = ResetTimerAction'
  { -- | The name of the timer to reset.
    timerName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ResetTimerAction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'timerName', 'resetTimerAction_timerName' - The name of the timer to reset.
newResetTimerAction ::
  -- | 'timerName'
  Prelude.Text ->
  ResetTimerAction
newResetTimerAction pTimerName_ =
  ResetTimerAction' {timerName = pTimerName_}

-- | The name of the timer to reset.
resetTimerAction_timerName :: Lens.Lens' ResetTimerAction Prelude.Text
resetTimerAction_timerName = Lens.lens (\ResetTimerAction' {timerName} -> timerName) (\s@ResetTimerAction' {} a -> s {timerName = a} :: ResetTimerAction)

instance Core.FromJSON ResetTimerAction where
  parseJSON =
    Core.withObject
      "ResetTimerAction"
      ( \x ->
          ResetTimerAction'
            Prelude.<$> (x Core..: "timerName")
      )

instance Prelude.Hashable ResetTimerAction

instance Prelude.NFData ResetTimerAction

instance Core.ToJSON ResetTimerAction where
  toJSON ResetTimerAction' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("timerName" Core..= timerName)]
      )
