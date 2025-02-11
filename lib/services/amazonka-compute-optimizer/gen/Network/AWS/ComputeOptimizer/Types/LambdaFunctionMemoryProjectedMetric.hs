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
-- Module      : Network.AWS.ComputeOptimizer.Types.LambdaFunctionMemoryProjectedMetric
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ComputeOptimizer.Types.LambdaFunctionMemoryProjectedMetric where

import Network.AWS.ComputeOptimizer.Types.LambdaFunctionMemoryMetricName
import Network.AWS.ComputeOptimizer.Types.LambdaFunctionMemoryMetricStatistic
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes a projected utilization metric of an Lambda function
-- recommendation option.
--
-- /See:/ 'newLambdaFunctionMemoryProjectedMetric' smart constructor.
data LambdaFunctionMemoryProjectedMetric = LambdaFunctionMemoryProjectedMetric'
  { -- | The values of the projected utilization metrics.
    value :: Prelude.Maybe Prelude.Double,
    -- | The name of the projected utilization metric.
    name :: Prelude.Maybe LambdaFunctionMemoryMetricName,
    -- | The statistic of the projected utilization metric.
    statistic :: Prelude.Maybe LambdaFunctionMemoryMetricStatistic
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LambdaFunctionMemoryProjectedMetric' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'value', 'lambdaFunctionMemoryProjectedMetric_value' - The values of the projected utilization metrics.
--
-- 'name', 'lambdaFunctionMemoryProjectedMetric_name' - The name of the projected utilization metric.
--
-- 'statistic', 'lambdaFunctionMemoryProjectedMetric_statistic' - The statistic of the projected utilization metric.
newLambdaFunctionMemoryProjectedMetric ::
  LambdaFunctionMemoryProjectedMetric
newLambdaFunctionMemoryProjectedMetric =
  LambdaFunctionMemoryProjectedMetric'
    { value =
        Prelude.Nothing,
      name = Prelude.Nothing,
      statistic = Prelude.Nothing
    }

-- | The values of the projected utilization metrics.
lambdaFunctionMemoryProjectedMetric_value :: Lens.Lens' LambdaFunctionMemoryProjectedMetric (Prelude.Maybe Prelude.Double)
lambdaFunctionMemoryProjectedMetric_value = Lens.lens (\LambdaFunctionMemoryProjectedMetric' {value} -> value) (\s@LambdaFunctionMemoryProjectedMetric' {} a -> s {value = a} :: LambdaFunctionMemoryProjectedMetric)

-- | The name of the projected utilization metric.
lambdaFunctionMemoryProjectedMetric_name :: Lens.Lens' LambdaFunctionMemoryProjectedMetric (Prelude.Maybe LambdaFunctionMemoryMetricName)
lambdaFunctionMemoryProjectedMetric_name = Lens.lens (\LambdaFunctionMemoryProjectedMetric' {name} -> name) (\s@LambdaFunctionMemoryProjectedMetric' {} a -> s {name = a} :: LambdaFunctionMemoryProjectedMetric)

-- | The statistic of the projected utilization metric.
lambdaFunctionMemoryProjectedMetric_statistic :: Lens.Lens' LambdaFunctionMemoryProjectedMetric (Prelude.Maybe LambdaFunctionMemoryMetricStatistic)
lambdaFunctionMemoryProjectedMetric_statistic = Lens.lens (\LambdaFunctionMemoryProjectedMetric' {statistic} -> statistic) (\s@LambdaFunctionMemoryProjectedMetric' {} a -> s {statistic = a} :: LambdaFunctionMemoryProjectedMetric)

instance
  Core.FromJSON
    LambdaFunctionMemoryProjectedMetric
  where
  parseJSON =
    Core.withObject
      "LambdaFunctionMemoryProjectedMetric"
      ( \x ->
          LambdaFunctionMemoryProjectedMetric'
            Prelude.<$> (x Core..:? "value")
            Prelude.<*> (x Core..:? "name")
            Prelude.<*> (x Core..:? "statistic")
      )

instance
  Prelude.Hashable
    LambdaFunctionMemoryProjectedMetric

instance
  Prelude.NFData
    LambdaFunctionMemoryProjectedMetric
