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
-- Module      : Network.AWS.IoTEvents.Types.AlarmEventActions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTEvents.Types.AlarmEventActions where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTEvents.Types.AlarmAction
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information about one or more alarm actions.
--
-- /See:/ 'newAlarmEventActions' smart constructor.
data AlarmEventActions = AlarmEventActions'
  { -- | Specifies one or more supported actions to receive notifications when
    -- the alarm state changes.
    alarmActions :: Prelude.Maybe [AlarmAction]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AlarmEventActions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'alarmActions', 'alarmEventActions_alarmActions' - Specifies one or more supported actions to receive notifications when
-- the alarm state changes.
newAlarmEventActions ::
  AlarmEventActions
newAlarmEventActions =
  AlarmEventActions' {alarmActions = Prelude.Nothing}

-- | Specifies one or more supported actions to receive notifications when
-- the alarm state changes.
alarmEventActions_alarmActions :: Lens.Lens' AlarmEventActions (Prelude.Maybe [AlarmAction])
alarmEventActions_alarmActions = Lens.lens (\AlarmEventActions' {alarmActions} -> alarmActions) (\s@AlarmEventActions' {} a -> s {alarmActions = a} :: AlarmEventActions) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON AlarmEventActions where
  parseJSON =
    Core.withObject
      "AlarmEventActions"
      ( \x ->
          AlarmEventActions'
            Prelude.<$> (x Core..:? "alarmActions" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable AlarmEventActions

instance Prelude.NFData AlarmEventActions

instance Core.ToJSON AlarmEventActions where
  toJSON AlarmEventActions' {..} =
    Core.object
      ( Prelude.catMaybes
          [("alarmActions" Core..=) Prelude.<$> alarmActions]
      )
