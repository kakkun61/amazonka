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
-- Module      : Network.AWS.Forecast.Types.EvaluationResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Forecast.Types.EvaluationResult where

import qualified Network.AWS.Core as Core
import Network.AWS.Forecast.Types.WindowSummary
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The results of evaluating an algorithm. Returned as part of the
-- GetAccuracyMetrics response.
--
-- /See:/ 'newEvaluationResult' smart constructor.
data EvaluationResult = EvaluationResult'
  { -- | The Amazon Resource Name (ARN) of the algorithm that was evaluated.
    algorithmArn :: Prelude.Maybe Prelude.Text,
    -- | The array of test windows used for evaluating the algorithm. The
    -- @NumberOfBacktestWindows@ from the EvaluationParameters object
    -- determines the number of windows in the array.
    testWindows :: Prelude.Maybe [WindowSummary]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EvaluationResult' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'algorithmArn', 'evaluationResult_algorithmArn' - The Amazon Resource Name (ARN) of the algorithm that was evaluated.
--
-- 'testWindows', 'evaluationResult_testWindows' - The array of test windows used for evaluating the algorithm. The
-- @NumberOfBacktestWindows@ from the EvaluationParameters object
-- determines the number of windows in the array.
newEvaluationResult ::
  EvaluationResult
newEvaluationResult =
  EvaluationResult'
    { algorithmArn = Prelude.Nothing,
      testWindows = Prelude.Nothing
    }

-- | The Amazon Resource Name (ARN) of the algorithm that was evaluated.
evaluationResult_algorithmArn :: Lens.Lens' EvaluationResult (Prelude.Maybe Prelude.Text)
evaluationResult_algorithmArn = Lens.lens (\EvaluationResult' {algorithmArn} -> algorithmArn) (\s@EvaluationResult' {} a -> s {algorithmArn = a} :: EvaluationResult)

-- | The array of test windows used for evaluating the algorithm. The
-- @NumberOfBacktestWindows@ from the EvaluationParameters object
-- determines the number of windows in the array.
evaluationResult_testWindows :: Lens.Lens' EvaluationResult (Prelude.Maybe [WindowSummary])
evaluationResult_testWindows = Lens.lens (\EvaluationResult' {testWindows} -> testWindows) (\s@EvaluationResult' {} a -> s {testWindows = a} :: EvaluationResult) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON EvaluationResult where
  parseJSON =
    Core.withObject
      "EvaluationResult"
      ( \x ->
          EvaluationResult'
            Prelude.<$> (x Core..:? "AlgorithmArn")
            Prelude.<*> (x Core..:? "TestWindows" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable EvaluationResult

instance Prelude.NFData EvaluationResult
