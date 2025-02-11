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
-- Module      : Network.AWS.Forecast.Types.PredictorExecutionDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Forecast.Types.PredictorExecutionDetails where

import qualified Network.AWS.Core as Core
import Network.AWS.Forecast.Types.PredictorExecution
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains details on the backtests performed to evaluate the accuracy of
-- the predictor. The tests are returned in descending order of accuracy,
-- with the most accurate backtest appearing first. You specify the number
-- of backtests to perform when you call the operation.
--
-- /See:/ 'newPredictorExecutionDetails' smart constructor.
data PredictorExecutionDetails = PredictorExecutionDetails'
  { -- | An array of the backtests performed to evaluate the accuracy of the
    -- predictor against a particular algorithm. The @NumberOfBacktestWindows@
    -- from the object determines the number of windows in the array.
    predictorExecutions :: Prelude.Maybe (Prelude.NonEmpty PredictorExecution)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PredictorExecutionDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'predictorExecutions', 'predictorExecutionDetails_predictorExecutions' - An array of the backtests performed to evaluate the accuracy of the
-- predictor against a particular algorithm. The @NumberOfBacktestWindows@
-- from the object determines the number of windows in the array.
newPredictorExecutionDetails ::
  PredictorExecutionDetails
newPredictorExecutionDetails =
  PredictorExecutionDetails'
    { predictorExecutions =
        Prelude.Nothing
    }

-- | An array of the backtests performed to evaluate the accuracy of the
-- predictor against a particular algorithm. The @NumberOfBacktestWindows@
-- from the object determines the number of windows in the array.
predictorExecutionDetails_predictorExecutions :: Lens.Lens' PredictorExecutionDetails (Prelude.Maybe (Prelude.NonEmpty PredictorExecution))
predictorExecutionDetails_predictorExecutions = Lens.lens (\PredictorExecutionDetails' {predictorExecutions} -> predictorExecutions) (\s@PredictorExecutionDetails' {} a -> s {predictorExecutions = a} :: PredictorExecutionDetails) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON PredictorExecutionDetails where
  parseJSON =
    Core.withObject
      "PredictorExecutionDetails"
      ( \x ->
          PredictorExecutionDetails'
            Prelude.<$> (x Core..:? "PredictorExecutions")
      )

instance Prelude.Hashable PredictorExecutionDetails

instance Prelude.NFData PredictorExecutionDetails
