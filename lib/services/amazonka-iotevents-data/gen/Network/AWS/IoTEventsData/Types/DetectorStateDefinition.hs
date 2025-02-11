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
-- Module      : Network.AWS.IoTEventsData.Types.DetectorStateDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTEventsData.Types.DetectorStateDefinition where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTEventsData.Types.TimerDefinition
import Network.AWS.IoTEventsData.Types.VariableDefinition
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The new state, variable values, and timer settings of the detector
-- (instance).
--
-- /See:/ 'newDetectorStateDefinition' smart constructor.
data DetectorStateDefinition = DetectorStateDefinition'
  { -- | The name of the new state of the detector (instance).
    stateName :: Prelude.Text,
    -- | The new values of the detector\'s variables. Any variable whose value
    -- isn\'t specified is cleared.
    variables :: [VariableDefinition],
    -- | The new values of the detector\'s timers. Any timer whose value isn\'t
    -- specified is cleared, and its timeout event won\'t occur.
    timers :: [TimerDefinition]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DetectorStateDefinition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'stateName', 'detectorStateDefinition_stateName' - The name of the new state of the detector (instance).
--
-- 'variables', 'detectorStateDefinition_variables' - The new values of the detector\'s variables. Any variable whose value
-- isn\'t specified is cleared.
--
-- 'timers', 'detectorStateDefinition_timers' - The new values of the detector\'s timers. Any timer whose value isn\'t
-- specified is cleared, and its timeout event won\'t occur.
newDetectorStateDefinition ::
  -- | 'stateName'
  Prelude.Text ->
  DetectorStateDefinition
newDetectorStateDefinition pStateName_ =
  DetectorStateDefinition'
    { stateName = pStateName_,
      variables = Prelude.mempty,
      timers = Prelude.mempty
    }

-- | The name of the new state of the detector (instance).
detectorStateDefinition_stateName :: Lens.Lens' DetectorStateDefinition Prelude.Text
detectorStateDefinition_stateName = Lens.lens (\DetectorStateDefinition' {stateName} -> stateName) (\s@DetectorStateDefinition' {} a -> s {stateName = a} :: DetectorStateDefinition)

-- | The new values of the detector\'s variables. Any variable whose value
-- isn\'t specified is cleared.
detectorStateDefinition_variables :: Lens.Lens' DetectorStateDefinition [VariableDefinition]
detectorStateDefinition_variables = Lens.lens (\DetectorStateDefinition' {variables} -> variables) (\s@DetectorStateDefinition' {} a -> s {variables = a} :: DetectorStateDefinition) Prelude.. Lens.coerced

-- | The new values of the detector\'s timers. Any timer whose value isn\'t
-- specified is cleared, and its timeout event won\'t occur.
detectorStateDefinition_timers :: Lens.Lens' DetectorStateDefinition [TimerDefinition]
detectorStateDefinition_timers = Lens.lens (\DetectorStateDefinition' {timers} -> timers) (\s@DetectorStateDefinition' {} a -> s {timers = a} :: DetectorStateDefinition) Prelude.. Lens.coerced

instance Prelude.Hashable DetectorStateDefinition

instance Prelude.NFData DetectorStateDefinition

instance Core.ToJSON DetectorStateDefinition where
  toJSON DetectorStateDefinition' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("stateName" Core..= stateName),
            Prelude.Just ("variables" Core..= variables),
            Prelude.Just ("timers" Core..= timers)
          ]
      )
