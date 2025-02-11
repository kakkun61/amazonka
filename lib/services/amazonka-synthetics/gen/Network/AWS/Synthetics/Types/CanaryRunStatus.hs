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
-- Module      : Network.AWS.Synthetics.Types.CanaryRunStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Synthetics.Types.CanaryRunStatus where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Synthetics.Types.CanaryRunState
import Network.AWS.Synthetics.Types.CanaryRunStateReasonCode

-- | This structure contains the status information about a canary run.
--
-- /See:/ 'newCanaryRunStatus' smart constructor.
data CanaryRunStatus = CanaryRunStatus'
  { -- | The current state of the run.
    state :: Prelude.Maybe CanaryRunState,
    -- | If run of the canary failed, this field contains the reason for the
    -- error.
    stateReason :: Prelude.Maybe Prelude.Text,
    -- | If this value is @CANARY_FAILURE@, an exception occurred in the canary
    -- code. If this value is @EXECUTION_FAILURE@, an exception occurred in
    -- CloudWatch Synthetics.
    stateReasonCode :: Prelude.Maybe CanaryRunStateReasonCode
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CanaryRunStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'state', 'canaryRunStatus_state' - The current state of the run.
--
-- 'stateReason', 'canaryRunStatus_stateReason' - If run of the canary failed, this field contains the reason for the
-- error.
--
-- 'stateReasonCode', 'canaryRunStatus_stateReasonCode' - If this value is @CANARY_FAILURE@, an exception occurred in the canary
-- code. If this value is @EXECUTION_FAILURE@, an exception occurred in
-- CloudWatch Synthetics.
newCanaryRunStatus ::
  CanaryRunStatus
newCanaryRunStatus =
  CanaryRunStatus'
    { state = Prelude.Nothing,
      stateReason = Prelude.Nothing,
      stateReasonCode = Prelude.Nothing
    }

-- | The current state of the run.
canaryRunStatus_state :: Lens.Lens' CanaryRunStatus (Prelude.Maybe CanaryRunState)
canaryRunStatus_state = Lens.lens (\CanaryRunStatus' {state} -> state) (\s@CanaryRunStatus' {} a -> s {state = a} :: CanaryRunStatus)

-- | If run of the canary failed, this field contains the reason for the
-- error.
canaryRunStatus_stateReason :: Lens.Lens' CanaryRunStatus (Prelude.Maybe Prelude.Text)
canaryRunStatus_stateReason = Lens.lens (\CanaryRunStatus' {stateReason} -> stateReason) (\s@CanaryRunStatus' {} a -> s {stateReason = a} :: CanaryRunStatus)

-- | If this value is @CANARY_FAILURE@, an exception occurred in the canary
-- code. If this value is @EXECUTION_FAILURE@, an exception occurred in
-- CloudWatch Synthetics.
canaryRunStatus_stateReasonCode :: Lens.Lens' CanaryRunStatus (Prelude.Maybe CanaryRunStateReasonCode)
canaryRunStatus_stateReasonCode = Lens.lens (\CanaryRunStatus' {stateReasonCode} -> stateReasonCode) (\s@CanaryRunStatus' {} a -> s {stateReasonCode = a} :: CanaryRunStatus)

instance Core.FromJSON CanaryRunStatus where
  parseJSON =
    Core.withObject
      "CanaryRunStatus"
      ( \x ->
          CanaryRunStatus'
            Prelude.<$> (x Core..:? "State")
            Prelude.<*> (x Core..:? "StateReason")
            Prelude.<*> (x Core..:? "StateReasonCode")
      )

instance Prelude.Hashable CanaryRunStatus

instance Prelude.NFData CanaryRunStatus
