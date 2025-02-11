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
-- Module      : Network.AWS.IoTEventsData.Types.DetectorState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTEventsData.Types.DetectorState where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTEventsData.Types.Timer
import Network.AWS.IoTEventsData.Types.Variable
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about the current state of the detector instance.
--
-- /See:/ 'newDetectorState' smart constructor.
data DetectorState = DetectorState'
  { -- | The name of the state.
    stateName :: Prelude.Text,
    -- | The current values of the detector\'s variables.
    variables :: [Variable],
    -- | The current state of the detector\'s timers.
    timers :: [Timer]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DetectorState' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'stateName', 'detectorState_stateName' - The name of the state.
--
-- 'variables', 'detectorState_variables' - The current values of the detector\'s variables.
--
-- 'timers', 'detectorState_timers' - The current state of the detector\'s timers.
newDetectorState ::
  -- | 'stateName'
  Prelude.Text ->
  DetectorState
newDetectorState pStateName_ =
  DetectorState'
    { stateName = pStateName_,
      variables = Prelude.mempty,
      timers = Prelude.mempty
    }

-- | The name of the state.
detectorState_stateName :: Lens.Lens' DetectorState Prelude.Text
detectorState_stateName = Lens.lens (\DetectorState' {stateName} -> stateName) (\s@DetectorState' {} a -> s {stateName = a} :: DetectorState)

-- | The current values of the detector\'s variables.
detectorState_variables :: Lens.Lens' DetectorState [Variable]
detectorState_variables = Lens.lens (\DetectorState' {variables} -> variables) (\s@DetectorState' {} a -> s {variables = a} :: DetectorState) Prelude.. Lens.coerced

-- | The current state of the detector\'s timers.
detectorState_timers :: Lens.Lens' DetectorState [Timer]
detectorState_timers = Lens.lens (\DetectorState' {timers} -> timers) (\s@DetectorState' {} a -> s {timers = a} :: DetectorState) Prelude.. Lens.coerced

instance Core.FromJSON DetectorState where
  parseJSON =
    Core.withObject
      "DetectorState"
      ( \x ->
          DetectorState'
            Prelude.<$> (x Core..: "stateName")
            Prelude.<*> (x Core..:? "variables" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "timers" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable DetectorState

instance Prelude.NFData DetectorState
