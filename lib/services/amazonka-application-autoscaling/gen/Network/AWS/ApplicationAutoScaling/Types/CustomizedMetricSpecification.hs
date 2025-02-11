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
-- Module      : Network.AWS.ApplicationAutoScaling.Types.CustomizedMetricSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ApplicationAutoScaling.Types.CustomizedMetricSpecification where

import Network.AWS.ApplicationAutoScaling.Types.MetricDimension
import Network.AWS.ApplicationAutoScaling.Types.MetricStatistic
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Represents a CloudWatch metric of your choosing for a target tracking
-- scaling policy to use with Application Auto Scaling.
--
-- For information about the available metrics for a service, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/aws-services-cloudwatch-metrics.html Amazon Web Services Services That Publish CloudWatch Metrics>
-- in the /Amazon CloudWatch User Guide/.
--
-- To create your customized metric specification:
--
-- -   Add values for each required parameter from CloudWatch. You can use
--     an existing metric, or a new metric that you create. To use your own
--     metric, you must first publish the metric to CloudWatch. For more
--     information, see
--     <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html Publish Custom Metrics>
--     in the /Amazon CloudWatch User Guide/.
--
-- -   Choose a metric that changes proportionally with capacity. The value
--     of the metric should increase or decrease in inverse proportion to
--     the number of capacity units. That is, the value of the metric
--     should decrease when capacity increases, and increase when capacity
--     decreases.
--
-- For more information about CloudWatch, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html Amazon CloudWatch Concepts>.
--
-- /See:/ 'newCustomizedMetricSpecification' smart constructor.
data CustomizedMetricSpecification = CustomizedMetricSpecification'
  { -- | The dimensions of the metric.
    --
    -- Conditional: If you published your metric with dimensions, you must
    -- specify the same dimensions in your scaling policy.
    dimensions :: Prelude.Maybe [MetricDimension],
    -- | The unit of the metric.
    unit :: Prelude.Maybe Prelude.Text,
    -- | The name of the metric.
    metricName :: Prelude.Text,
    -- | The namespace of the metric.
    namespace :: Prelude.Text,
    -- | The statistic of the metric.
    statistic :: MetricStatistic
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CustomizedMetricSpecification' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dimensions', 'customizedMetricSpecification_dimensions' - The dimensions of the metric.
--
-- Conditional: If you published your metric with dimensions, you must
-- specify the same dimensions in your scaling policy.
--
-- 'unit', 'customizedMetricSpecification_unit' - The unit of the metric.
--
-- 'metricName', 'customizedMetricSpecification_metricName' - The name of the metric.
--
-- 'namespace', 'customizedMetricSpecification_namespace' - The namespace of the metric.
--
-- 'statistic', 'customizedMetricSpecification_statistic' - The statistic of the metric.
newCustomizedMetricSpecification ::
  -- | 'metricName'
  Prelude.Text ->
  -- | 'namespace'
  Prelude.Text ->
  -- | 'statistic'
  MetricStatistic ->
  CustomizedMetricSpecification
newCustomizedMetricSpecification
  pMetricName_
  pNamespace_
  pStatistic_ =
    CustomizedMetricSpecification'
      { dimensions =
          Prelude.Nothing,
        unit = Prelude.Nothing,
        metricName = pMetricName_,
        namespace = pNamespace_,
        statistic = pStatistic_
      }

-- | The dimensions of the metric.
--
-- Conditional: If you published your metric with dimensions, you must
-- specify the same dimensions in your scaling policy.
customizedMetricSpecification_dimensions :: Lens.Lens' CustomizedMetricSpecification (Prelude.Maybe [MetricDimension])
customizedMetricSpecification_dimensions = Lens.lens (\CustomizedMetricSpecification' {dimensions} -> dimensions) (\s@CustomizedMetricSpecification' {} a -> s {dimensions = a} :: CustomizedMetricSpecification) Prelude.. Lens.mapping Lens.coerced

-- | The unit of the metric.
customizedMetricSpecification_unit :: Lens.Lens' CustomizedMetricSpecification (Prelude.Maybe Prelude.Text)
customizedMetricSpecification_unit = Lens.lens (\CustomizedMetricSpecification' {unit} -> unit) (\s@CustomizedMetricSpecification' {} a -> s {unit = a} :: CustomizedMetricSpecification)

-- | The name of the metric.
customizedMetricSpecification_metricName :: Lens.Lens' CustomizedMetricSpecification Prelude.Text
customizedMetricSpecification_metricName = Lens.lens (\CustomizedMetricSpecification' {metricName} -> metricName) (\s@CustomizedMetricSpecification' {} a -> s {metricName = a} :: CustomizedMetricSpecification)

-- | The namespace of the metric.
customizedMetricSpecification_namespace :: Lens.Lens' CustomizedMetricSpecification Prelude.Text
customizedMetricSpecification_namespace = Lens.lens (\CustomizedMetricSpecification' {namespace} -> namespace) (\s@CustomizedMetricSpecification' {} a -> s {namespace = a} :: CustomizedMetricSpecification)

-- | The statistic of the metric.
customizedMetricSpecification_statistic :: Lens.Lens' CustomizedMetricSpecification MetricStatistic
customizedMetricSpecification_statistic = Lens.lens (\CustomizedMetricSpecification' {statistic} -> statistic) (\s@CustomizedMetricSpecification' {} a -> s {statistic = a} :: CustomizedMetricSpecification)

instance Core.FromJSON CustomizedMetricSpecification where
  parseJSON =
    Core.withObject
      "CustomizedMetricSpecification"
      ( \x ->
          CustomizedMetricSpecification'
            Prelude.<$> (x Core..:? "Dimensions" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "Unit")
            Prelude.<*> (x Core..: "MetricName")
            Prelude.<*> (x Core..: "Namespace")
            Prelude.<*> (x Core..: "Statistic")
      )

instance
  Prelude.Hashable
    CustomizedMetricSpecification

instance Prelude.NFData CustomizedMetricSpecification

instance Core.ToJSON CustomizedMetricSpecification where
  toJSON CustomizedMetricSpecification' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Dimensions" Core..=) Prelude.<$> dimensions,
            ("Unit" Core..=) Prelude.<$> unit,
            Prelude.Just ("MetricName" Core..= metricName),
            Prelude.Just ("Namespace" Core..= namespace),
            Prelude.Just ("Statistic" Core..= statistic)
          ]
      )
