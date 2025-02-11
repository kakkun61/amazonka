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
-- Module      : Network.AWS.CloudWatchLogs.Types.MetricTransformation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchLogs.Types.MetricTransformation where

import Network.AWS.CloudWatchLogs.Types.StandardUnit
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Indicates how to transform ingested log events to metric data in a
-- CloudWatch metric.
--
-- /See:/ 'newMetricTransformation' smart constructor.
data MetricTransformation = MetricTransformation'
  { -- | (Optional) The value to emit when a filter pattern does not match a log
    -- event. This value can be null.
    defaultValue :: Prelude.Maybe Prelude.Double,
    -- | The fields to use as dimensions for the metric. One metric filter can
    -- include as many as three dimensions.
    --
    -- Metrics extracted from log events are charged as custom metrics. To
    -- prevent unexpected high charges, do not specify high-cardinality fields
    -- such as @IPAddress@ or @requestID@ as dimensions. Each different value
    -- found for a dimension is treated as a separate metric and accrues
    -- charges as a separate custom metric.
    --
    -- To help prevent accidental high charges, Amazon disables a metric filter
    -- if it generates 1000 different name\/value pairs for the dimensions that
    -- you have specified within a certain amount of time.
    --
    -- You can also set up a billing alarm to alert you if your charges are
    -- higher than expected. For more information, see
    -- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/monitor_estimated_charges_with_cloudwatch.html Creating a Billing Alarm to Monitor Your Estimated Amazon Web Services Charges>.
    dimensions :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The unit to assign to the metric. If you omit this, the unit is set as
    -- @None@.
    unit :: Prelude.Maybe StandardUnit,
    -- | The name of the CloudWatch metric.
    metricName :: Prelude.Text,
    -- | A custom namespace to contain your metric in CloudWatch. Use namespaces
    -- to group together metrics that are similar. For more information, see
    -- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Namespace Namespaces>.
    metricNamespace :: Prelude.Text,
    -- | The value to publish to the CloudWatch metric when a filter pattern
    -- matches a log event.
    metricValue :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MetricTransformation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'defaultValue', 'metricTransformation_defaultValue' - (Optional) The value to emit when a filter pattern does not match a log
-- event. This value can be null.
--
-- 'dimensions', 'metricTransformation_dimensions' - The fields to use as dimensions for the metric. One metric filter can
-- include as many as three dimensions.
--
-- Metrics extracted from log events are charged as custom metrics. To
-- prevent unexpected high charges, do not specify high-cardinality fields
-- such as @IPAddress@ or @requestID@ as dimensions. Each different value
-- found for a dimension is treated as a separate metric and accrues
-- charges as a separate custom metric.
--
-- To help prevent accidental high charges, Amazon disables a metric filter
-- if it generates 1000 different name\/value pairs for the dimensions that
-- you have specified within a certain amount of time.
--
-- You can also set up a billing alarm to alert you if your charges are
-- higher than expected. For more information, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/monitor_estimated_charges_with_cloudwatch.html Creating a Billing Alarm to Monitor Your Estimated Amazon Web Services Charges>.
--
-- 'unit', 'metricTransformation_unit' - The unit to assign to the metric. If you omit this, the unit is set as
-- @None@.
--
-- 'metricName', 'metricTransformation_metricName' - The name of the CloudWatch metric.
--
-- 'metricNamespace', 'metricTransformation_metricNamespace' - A custom namespace to contain your metric in CloudWatch. Use namespaces
-- to group together metrics that are similar. For more information, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Namespace Namespaces>.
--
-- 'metricValue', 'metricTransformation_metricValue' - The value to publish to the CloudWatch metric when a filter pattern
-- matches a log event.
newMetricTransformation ::
  -- | 'metricName'
  Prelude.Text ->
  -- | 'metricNamespace'
  Prelude.Text ->
  -- | 'metricValue'
  Prelude.Text ->
  MetricTransformation
newMetricTransformation
  pMetricName_
  pMetricNamespace_
  pMetricValue_ =
    MetricTransformation'
      { defaultValue =
          Prelude.Nothing,
        dimensions = Prelude.Nothing,
        unit = Prelude.Nothing,
        metricName = pMetricName_,
        metricNamespace = pMetricNamespace_,
        metricValue = pMetricValue_
      }

-- | (Optional) The value to emit when a filter pattern does not match a log
-- event. This value can be null.
metricTransformation_defaultValue :: Lens.Lens' MetricTransformation (Prelude.Maybe Prelude.Double)
metricTransformation_defaultValue = Lens.lens (\MetricTransformation' {defaultValue} -> defaultValue) (\s@MetricTransformation' {} a -> s {defaultValue = a} :: MetricTransformation)

-- | The fields to use as dimensions for the metric. One metric filter can
-- include as many as three dimensions.
--
-- Metrics extracted from log events are charged as custom metrics. To
-- prevent unexpected high charges, do not specify high-cardinality fields
-- such as @IPAddress@ or @requestID@ as dimensions. Each different value
-- found for a dimension is treated as a separate metric and accrues
-- charges as a separate custom metric.
--
-- To help prevent accidental high charges, Amazon disables a metric filter
-- if it generates 1000 different name\/value pairs for the dimensions that
-- you have specified within a certain amount of time.
--
-- You can also set up a billing alarm to alert you if your charges are
-- higher than expected. For more information, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/monitor_estimated_charges_with_cloudwatch.html Creating a Billing Alarm to Monitor Your Estimated Amazon Web Services Charges>.
metricTransformation_dimensions :: Lens.Lens' MetricTransformation (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
metricTransformation_dimensions = Lens.lens (\MetricTransformation' {dimensions} -> dimensions) (\s@MetricTransformation' {} a -> s {dimensions = a} :: MetricTransformation) Prelude.. Lens.mapping Lens.coerced

-- | The unit to assign to the metric. If you omit this, the unit is set as
-- @None@.
metricTransformation_unit :: Lens.Lens' MetricTransformation (Prelude.Maybe StandardUnit)
metricTransformation_unit = Lens.lens (\MetricTransformation' {unit} -> unit) (\s@MetricTransformation' {} a -> s {unit = a} :: MetricTransformation)

-- | The name of the CloudWatch metric.
metricTransformation_metricName :: Lens.Lens' MetricTransformation Prelude.Text
metricTransformation_metricName = Lens.lens (\MetricTransformation' {metricName} -> metricName) (\s@MetricTransformation' {} a -> s {metricName = a} :: MetricTransformation)

-- | A custom namespace to contain your metric in CloudWatch. Use namespaces
-- to group together metrics that are similar. For more information, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Namespace Namespaces>.
metricTransformation_metricNamespace :: Lens.Lens' MetricTransformation Prelude.Text
metricTransformation_metricNamespace = Lens.lens (\MetricTransformation' {metricNamespace} -> metricNamespace) (\s@MetricTransformation' {} a -> s {metricNamespace = a} :: MetricTransformation)

-- | The value to publish to the CloudWatch metric when a filter pattern
-- matches a log event.
metricTransformation_metricValue :: Lens.Lens' MetricTransformation Prelude.Text
metricTransformation_metricValue = Lens.lens (\MetricTransformation' {metricValue} -> metricValue) (\s@MetricTransformation' {} a -> s {metricValue = a} :: MetricTransformation)

instance Core.FromJSON MetricTransformation where
  parseJSON =
    Core.withObject
      "MetricTransformation"
      ( \x ->
          MetricTransformation'
            Prelude.<$> (x Core..:? "defaultValue")
            Prelude.<*> (x Core..:? "dimensions" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "unit")
            Prelude.<*> (x Core..: "metricName")
            Prelude.<*> (x Core..: "metricNamespace")
            Prelude.<*> (x Core..: "metricValue")
      )

instance Prelude.Hashable MetricTransformation

instance Prelude.NFData MetricTransformation

instance Core.ToJSON MetricTransformation where
  toJSON MetricTransformation' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("defaultValue" Core..=) Prelude.<$> defaultValue,
            ("dimensions" Core..=) Prelude.<$> dimensions,
            ("unit" Core..=) Prelude.<$> unit,
            Prelude.Just ("metricName" Core..= metricName),
            Prelude.Just
              ("metricNamespace" Core..= metricNamespace),
            Prelude.Just ("metricValue" Core..= metricValue)
          ]
      )
