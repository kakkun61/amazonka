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
-- Module      : Network.AWS.Transfer.Types.ExecutionResults
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transfer.Types.ExecutionResults where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Transfer.Types.ExecutionStepResult

-- | Specifies the steps in the workflow, as well as the steps to execute in
-- case of any errors during workflow execution.
--
-- /See:/ 'newExecutionResults' smart constructor.
data ExecutionResults = ExecutionResults'
  { -- | Specifies the steps (actions) to take if errors are encountered during
    -- execution of the workflow.
    onExceptionSteps :: Prelude.Maybe (Prelude.NonEmpty ExecutionStepResult),
    -- | Specifies the details for the steps that are in the specified workflow.
    steps :: Prelude.Maybe (Prelude.NonEmpty ExecutionStepResult)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ExecutionResults' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'onExceptionSteps', 'executionResults_onExceptionSteps' - Specifies the steps (actions) to take if errors are encountered during
-- execution of the workflow.
--
-- 'steps', 'executionResults_steps' - Specifies the details for the steps that are in the specified workflow.
newExecutionResults ::
  ExecutionResults
newExecutionResults =
  ExecutionResults'
    { onExceptionSteps =
        Prelude.Nothing,
      steps = Prelude.Nothing
    }

-- | Specifies the steps (actions) to take if errors are encountered during
-- execution of the workflow.
executionResults_onExceptionSteps :: Lens.Lens' ExecutionResults (Prelude.Maybe (Prelude.NonEmpty ExecutionStepResult))
executionResults_onExceptionSteps = Lens.lens (\ExecutionResults' {onExceptionSteps} -> onExceptionSteps) (\s@ExecutionResults' {} a -> s {onExceptionSteps = a} :: ExecutionResults) Prelude.. Lens.mapping Lens.coerced

-- | Specifies the details for the steps that are in the specified workflow.
executionResults_steps :: Lens.Lens' ExecutionResults (Prelude.Maybe (Prelude.NonEmpty ExecutionStepResult))
executionResults_steps = Lens.lens (\ExecutionResults' {steps} -> steps) (\s@ExecutionResults' {} a -> s {steps = a} :: ExecutionResults) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON ExecutionResults where
  parseJSON =
    Core.withObject
      "ExecutionResults"
      ( \x ->
          ExecutionResults'
            Prelude.<$> (x Core..:? "OnExceptionSteps")
            Prelude.<*> (x Core..:? "Steps")
      )

instance Prelude.Hashable ExecutionResults

instance Prelude.NFData ExecutionResults
