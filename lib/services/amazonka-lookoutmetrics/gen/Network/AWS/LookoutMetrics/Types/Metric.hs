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
-- Module      : Network.AWS.LookoutMetrics.Types.Metric
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LookoutMetrics.Types.Metric where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LookoutMetrics.Types.AggregationFunction
import qualified Network.AWS.Prelude as Prelude

-- | A calculation made by contrasting a measure and a dimension from your
-- source data.
--
-- /See:/ 'newMetric' smart constructor.
data Metric = Metric'
  { -- | The namespace for the metric.
    namespace :: Prelude.Maybe Prelude.Text,
    -- | The name of the metric.
    metricName :: Prelude.Text,
    -- | The function with which the metric is calculated.
    aggregationFunction :: AggregationFunction
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Metric' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'namespace', 'metric_namespace' - The namespace for the metric.
--
-- 'metricName', 'metric_metricName' - The name of the metric.
--
-- 'aggregationFunction', 'metric_aggregationFunction' - The function with which the metric is calculated.
newMetric ::
  -- | 'metricName'
  Prelude.Text ->
  -- | 'aggregationFunction'
  AggregationFunction ->
  Metric
newMetric pMetricName_ pAggregationFunction_ =
  Metric'
    { namespace = Prelude.Nothing,
      metricName = pMetricName_,
      aggregationFunction = pAggregationFunction_
    }

-- | The namespace for the metric.
metric_namespace :: Lens.Lens' Metric (Prelude.Maybe Prelude.Text)
metric_namespace = Lens.lens (\Metric' {namespace} -> namespace) (\s@Metric' {} a -> s {namespace = a} :: Metric)

-- | The name of the metric.
metric_metricName :: Lens.Lens' Metric Prelude.Text
metric_metricName = Lens.lens (\Metric' {metricName} -> metricName) (\s@Metric' {} a -> s {metricName = a} :: Metric)

-- | The function with which the metric is calculated.
metric_aggregationFunction :: Lens.Lens' Metric AggregationFunction
metric_aggregationFunction = Lens.lens (\Metric' {aggregationFunction} -> aggregationFunction) (\s@Metric' {} a -> s {aggregationFunction = a} :: Metric)

instance Core.FromJSON Metric where
  parseJSON =
    Core.withObject
      "Metric"
      ( \x ->
          Metric'
            Prelude.<$> (x Core..:? "Namespace")
            Prelude.<*> (x Core..: "MetricName")
            Prelude.<*> (x Core..: "AggregationFunction")
      )

instance Prelude.Hashable Metric

instance Prelude.NFData Metric

instance Core.ToJSON Metric where
  toJSON Metric' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Namespace" Core..=) Prelude.<$> namespace,
            Prelude.Just ("MetricName" Core..= metricName),
            Prelude.Just
              ("AggregationFunction" Core..= aggregationFunction)
          ]
      )
