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
-- Module      : Network.AWS.ApplicationAutoScaling.Types.TargetTrackingScalingPolicyConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ApplicationAutoScaling.Types.TargetTrackingScalingPolicyConfiguration where

import Network.AWS.ApplicationAutoScaling.Types.CustomizedMetricSpecification
import Network.AWS.ApplicationAutoScaling.Types.PredefinedMetricSpecification
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Represents a target tracking scaling policy configuration to use with
-- Application Auto Scaling.
--
-- /See:/ 'newTargetTrackingScalingPolicyConfiguration' smart constructor.
data TargetTrackingScalingPolicyConfiguration = TargetTrackingScalingPolicyConfiguration'
  { -- | A predefined metric. You can specify either a predefined metric or a
    -- customized metric.
    predefinedMetricSpecification :: Prelude.Maybe PredefinedMetricSpecification,
    -- | The amount of time, in seconds, after a scale-in activity completes
    -- before another scale-in activity can start.
    --
    -- With the /scale-in cooldown period/, the intention is to scale in
    -- conservatively to protect your application’s availability, so scale-in
    -- activities are blocked until the cooldown period has expired. However,
    -- if another alarm triggers a scale-out activity during the scale-in
    -- cooldown period, Application Auto Scaling scales out the target
    -- immediately. In this case, the scale-in cooldown period stops and
    -- doesn\'t complete.
    --
    -- Application Auto Scaling provides a default value of 600 for Amazon
    -- ElastiCache replication groups and a default value of 300 for the
    -- following scalable targets:
    --
    -- -   AppStream 2.0 fleets
    --
    -- -   Aurora DB clusters
    --
    -- -   ECS services
    --
    -- -   EMR clusters
    --
    -- -   Neptune clusters
    --
    -- -   SageMaker endpoint variants
    --
    -- -   Spot Fleets
    --
    -- -   Custom resources
    --
    -- For all other scalable targets, the default value is 0:
    --
    -- -   Amazon Comprehend document classification and entity recognizer
    --     endpoints
    --
    -- -   DynamoDB tables and global secondary indexes
    --
    -- -   Amazon Keyspaces tables
    --
    -- -   Lambda provisioned concurrency
    --
    -- -   Amazon MSK broker storage
    scaleInCooldown :: Prelude.Maybe Prelude.Int,
    -- | A customized metric. You can specify either a predefined metric or a
    -- customized metric.
    customizedMetricSpecification :: Prelude.Maybe CustomizedMetricSpecification,
    -- | Indicates whether scale in by the target tracking scaling policy is
    -- disabled. If the value is @true@, scale in is disabled and the target
    -- tracking scaling policy won\'t remove capacity from the scalable target.
    -- Otherwise, scale in is enabled and the target tracking scaling policy
    -- can remove capacity from the scalable target. The default value is
    -- @false@.
    disableScaleIn :: Prelude.Maybe Prelude.Bool,
    -- | The amount of time, in seconds, to wait for a previous scale-out
    -- activity to take effect.
    --
    -- With the /scale-out cooldown period/, the intention is to continuously
    -- (but not excessively) scale out. After Application Auto Scaling
    -- successfully scales out using a target tracking scaling policy, it
    -- starts to calculate the cooldown time. The scaling policy won\'t
    -- increase the desired capacity again unless either a larger scale out is
    -- triggered or the cooldown period ends. While the cooldown period is in
    -- effect, the capacity added by the initiating scale-out activity is
    -- calculated as part of the desired capacity for the next scale-out
    -- activity.
    --
    -- Application Auto Scaling provides a default value of 600 for Amazon
    -- ElastiCache replication groups and a default value of 300 for the
    -- following scalable targets:
    --
    -- -   AppStream 2.0 fleets
    --
    -- -   Aurora DB clusters
    --
    -- -   ECS services
    --
    -- -   EMR clusters
    --
    -- -   Neptune clusters
    --
    -- -   SageMaker endpoint variants
    --
    -- -   Spot Fleets
    --
    -- -   Custom resources
    --
    -- For all other scalable targets, the default value is 0:
    --
    -- -   Amazon Comprehend document classification and entity recognizer
    --     endpoints
    --
    -- -   DynamoDB tables and global secondary indexes
    --
    -- -   Amazon Keyspaces tables
    --
    -- -   Lambda provisioned concurrency
    --
    -- -   Amazon MSK broker storage
    scaleOutCooldown :: Prelude.Maybe Prelude.Int,
    -- | The target value for the metric. Although this property accepts numbers
    -- of type Double, it won\'t accept values that are either too small or too
    -- large. Values must be in the range of -2^360 to 2^360. The value must be
    -- a valid number based on the choice of metric. For example, if the metric
    -- is CPU utilization, then the target value is a percent value that
    -- represents how much of the CPU can be used before scaling out.
    targetValue :: Prelude.Double
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TargetTrackingScalingPolicyConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'predefinedMetricSpecification', 'targetTrackingScalingPolicyConfiguration_predefinedMetricSpecification' - A predefined metric. You can specify either a predefined metric or a
-- customized metric.
--
-- 'scaleInCooldown', 'targetTrackingScalingPolicyConfiguration_scaleInCooldown' - The amount of time, in seconds, after a scale-in activity completes
-- before another scale-in activity can start.
--
-- With the /scale-in cooldown period/, the intention is to scale in
-- conservatively to protect your application’s availability, so scale-in
-- activities are blocked until the cooldown period has expired. However,
-- if another alarm triggers a scale-out activity during the scale-in
-- cooldown period, Application Auto Scaling scales out the target
-- immediately. In this case, the scale-in cooldown period stops and
-- doesn\'t complete.
--
-- Application Auto Scaling provides a default value of 600 for Amazon
-- ElastiCache replication groups and a default value of 300 for the
-- following scalable targets:
--
-- -   AppStream 2.0 fleets
--
-- -   Aurora DB clusters
--
-- -   ECS services
--
-- -   EMR clusters
--
-- -   Neptune clusters
--
-- -   SageMaker endpoint variants
--
-- -   Spot Fleets
--
-- -   Custom resources
--
-- For all other scalable targets, the default value is 0:
--
-- -   Amazon Comprehend document classification and entity recognizer
--     endpoints
--
-- -   DynamoDB tables and global secondary indexes
--
-- -   Amazon Keyspaces tables
--
-- -   Lambda provisioned concurrency
--
-- -   Amazon MSK broker storage
--
-- 'customizedMetricSpecification', 'targetTrackingScalingPolicyConfiguration_customizedMetricSpecification' - A customized metric. You can specify either a predefined metric or a
-- customized metric.
--
-- 'disableScaleIn', 'targetTrackingScalingPolicyConfiguration_disableScaleIn' - Indicates whether scale in by the target tracking scaling policy is
-- disabled. If the value is @true@, scale in is disabled and the target
-- tracking scaling policy won\'t remove capacity from the scalable target.
-- Otherwise, scale in is enabled and the target tracking scaling policy
-- can remove capacity from the scalable target. The default value is
-- @false@.
--
-- 'scaleOutCooldown', 'targetTrackingScalingPolicyConfiguration_scaleOutCooldown' - The amount of time, in seconds, to wait for a previous scale-out
-- activity to take effect.
--
-- With the /scale-out cooldown period/, the intention is to continuously
-- (but not excessively) scale out. After Application Auto Scaling
-- successfully scales out using a target tracking scaling policy, it
-- starts to calculate the cooldown time. The scaling policy won\'t
-- increase the desired capacity again unless either a larger scale out is
-- triggered or the cooldown period ends. While the cooldown period is in
-- effect, the capacity added by the initiating scale-out activity is
-- calculated as part of the desired capacity for the next scale-out
-- activity.
--
-- Application Auto Scaling provides a default value of 600 for Amazon
-- ElastiCache replication groups and a default value of 300 for the
-- following scalable targets:
--
-- -   AppStream 2.0 fleets
--
-- -   Aurora DB clusters
--
-- -   ECS services
--
-- -   EMR clusters
--
-- -   Neptune clusters
--
-- -   SageMaker endpoint variants
--
-- -   Spot Fleets
--
-- -   Custom resources
--
-- For all other scalable targets, the default value is 0:
--
-- -   Amazon Comprehend document classification and entity recognizer
--     endpoints
--
-- -   DynamoDB tables and global secondary indexes
--
-- -   Amazon Keyspaces tables
--
-- -   Lambda provisioned concurrency
--
-- -   Amazon MSK broker storage
--
-- 'targetValue', 'targetTrackingScalingPolicyConfiguration_targetValue' - The target value for the metric. Although this property accepts numbers
-- of type Double, it won\'t accept values that are either too small or too
-- large. Values must be in the range of -2^360 to 2^360. The value must be
-- a valid number based on the choice of metric. For example, if the metric
-- is CPU utilization, then the target value is a percent value that
-- represents how much of the CPU can be used before scaling out.
newTargetTrackingScalingPolicyConfiguration ::
  -- | 'targetValue'
  Prelude.Double ->
  TargetTrackingScalingPolicyConfiguration
newTargetTrackingScalingPolicyConfiguration
  pTargetValue_ =
    TargetTrackingScalingPolicyConfiguration'
      { predefinedMetricSpecification =
          Prelude.Nothing,
        scaleInCooldown = Prelude.Nothing,
        customizedMetricSpecification =
          Prelude.Nothing,
        disableScaleIn = Prelude.Nothing,
        scaleOutCooldown =
          Prelude.Nothing,
        targetValue = pTargetValue_
      }

-- | A predefined metric. You can specify either a predefined metric or a
-- customized metric.
targetTrackingScalingPolicyConfiguration_predefinedMetricSpecification :: Lens.Lens' TargetTrackingScalingPolicyConfiguration (Prelude.Maybe PredefinedMetricSpecification)
targetTrackingScalingPolicyConfiguration_predefinedMetricSpecification = Lens.lens (\TargetTrackingScalingPolicyConfiguration' {predefinedMetricSpecification} -> predefinedMetricSpecification) (\s@TargetTrackingScalingPolicyConfiguration' {} a -> s {predefinedMetricSpecification = a} :: TargetTrackingScalingPolicyConfiguration)

-- | The amount of time, in seconds, after a scale-in activity completes
-- before another scale-in activity can start.
--
-- With the /scale-in cooldown period/, the intention is to scale in
-- conservatively to protect your application’s availability, so scale-in
-- activities are blocked until the cooldown period has expired. However,
-- if another alarm triggers a scale-out activity during the scale-in
-- cooldown period, Application Auto Scaling scales out the target
-- immediately. In this case, the scale-in cooldown period stops and
-- doesn\'t complete.
--
-- Application Auto Scaling provides a default value of 600 for Amazon
-- ElastiCache replication groups and a default value of 300 for the
-- following scalable targets:
--
-- -   AppStream 2.0 fleets
--
-- -   Aurora DB clusters
--
-- -   ECS services
--
-- -   EMR clusters
--
-- -   Neptune clusters
--
-- -   SageMaker endpoint variants
--
-- -   Spot Fleets
--
-- -   Custom resources
--
-- For all other scalable targets, the default value is 0:
--
-- -   Amazon Comprehend document classification and entity recognizer
--     endpoints
--
-- -   DynamoDB tables and global secondary indexes
--
-- -   Amazon Keyspaces tables
--
-- -   Lambda provisioned concurrency
--
-- -   Amazon MSK broker storage
targetTrackingScalingPolicyConfiguration_scaleInCooldown :: Lens.Lens' TargetTrackingScalingPolicyConfiguration (Prelude.Maybe Prelude.Int)
targetTrackingScalingPolicyConfiguration_scaleInCooldown = Lens.lens (\TargetTrackingScalingPolicyConfiguration' {scaleInCooldown} -> scaleInCooldown) (\s@TargetTrackingScalingPolicyConfiguration' {} a -> s {scaleInCooldown = a} :: TargetTrackingScalingPolicyConfiguration)

-- | A customized metric. You can specify either a predefined metric or a
-- customized metric.
targetTrackingScalingPolicyConfiguration_customizedMetricSpecification :: Lens.Lens' TargetTrackingScalingPolicyConfiguration (Prelude.Maybe CustomizedMetricSpecification)
targetTrackingScalingPolicyConfiguration_customizedMetricSpecification = Lens.lens (\TargetTrackingScalingPolicyConfiguration' {customizedMetricSpecification} -> customizedMetricSpecification) (\s@TargetTrackingScalingPolicyConfiguration' {} a -> s {customizedMetricSpecification = a} :: TargetTrackingScalingPolicyConfiguration)

-- | Indicates whether scale in by the target tracking scaling policy is
-- disabled. If the value is @true@, scale in is disabled and the target
-- tracking scaling policy won\'t remove capacity from the scalable target.
-- Otherwise, scale in is enabled and the target tracking scaling policy
-- can remove capacity from the scalable target. The default value is
-- @false@.
targetTrackingScalingPolicyConfiguration_disableScaleIn :: Lens.Lens' TargetTrackingScalingPolicyConfiguration (Prelude.Maybe Prelude.Bool)
targetTrackingScalingPolicyConfiguration_disableScaleIn = Lens.lens (\TargetTrackingScalingPolicyConfiguration' {disableScaleIn} -> disableScaleIn) (\s@TargetTrackingScalingPolicyConfiguration' {} a -> s {disableScaleIn = a} :: TargetTrackingScalingPolicyConfiguration)

-- | The amount of time, in seconds, to wait for a previous scale-out
-- activity to take effect.
--
-- With the /scale-out cooldown period/, the intention is to continuously
-- (but not excessively) scale out. After Application Auto Scaling
-- successfully scales out using a target tracking scaling policy, it
-- starts to calculate the cooldown time. The scaling policy won\'t
-- increase the desired capacity again unless either a larger scale out is
-- triggered or the cooldown period ends. While the cooldown period is in
-- effect, the capacity added by the initiating scale-out activity is
-- calculated as part of the desired capacity for the next scale-out
-- activity.
--
-- Application Auto Scaling provides a default value of 600 for Amazon
-- ElastiCache replication groups and a default value of 300 for the
-- following scalable targets:
--
-- -   AppStream 2.0 fleets
--
-- -   Aurora DB clusters
--
-- -   ECS services
--
-- -   EMR clusters
--
-- -   Neptune clusters
--
-- -   SageMaker endpoint variants
--
-- -   Spot Fleets
--
-- -   Custom resources
--
-- For all other scalable targets, the default value is 0:
--
-- -   Amazon Comprehend document classification and entity recognizer
--     endpoints
--
-- -   DynamoDB tables and global secondary indexes
--
-- -   Amazon Keyspaces tables
--
-- -   Lambda provisioned concurrency
--
-- -   Amazon MSK broker storage
targetTrackingScalingPolicyConfiguration_scaleOutCooldown :: Lens.Lens' TargetTrackingScalingPolicyConfiguration (Prelude.Maybe Prelude.Int)
targetTrackingScalingPolicyConfiguration_scaleOutCooldown = Lens.lens (\TargetTrackingScalingPolicyConfiguration' {scaleOutCooldown} -> scaleOutCooldown) (\s@TargetTrackingScalingPolicyConfiguration' {} a -> s {scaleOutCooldown = a} :: TargetTrackingScalingPolicyConfiguration)

-- | The target value for the metric. Although this property accepts numbers
-- of type Double, it won\'t accept values that are either too small or too
-- large. Values must be in the range of -2^360 to 2^360. The value must be
-- a valid number based on the choice of metric. For example, if the metric
-- is CPU utilization, then the target value is a percent value that
-- represents how much of the CPU can be used before scaling out.
targetTrackingScalingPolicyConfiguration_targetValue :: Lens.Lens' TargetTrackingScalingPolicyConfiguration Prelude.Double
targetTrackingScalingPolicyConfiguration_targetValue = Lens.lens (\TargetTrackingScalingPolicyConfiguration' {targetValue} -> targetValue) (\s@TargetTrackingScalingPolicyConfiguration' {} a -> s {targetValue = a} :: TargetTrackingScalingPolicyConfiguration)

instance
  Core.FromJSON
    TargetTrackingScalingPolicyConfiguration
  where
  parseJSON =
    Core.withObject
      "TargetTrackingScalingPolicyConfiguration"
      ( \x ->
          TargetTrackingScalingPolicyConfiguration'
            Prelude.<$> (x Core..:? "PredefinedMetricSpecification")
            Prelude.<*> (x Core..:? "ScaleInCooldown")
            Prelude.<*> (x Core..:? "CustomizedMetricSpecification")
            Prelude.<*> (x Core..:? "DisableScaleIn")
            Prelude.<*> (x Core..:? "ScaleOutCooldown")
            Prelude.<*> (x Core..: "TargetValue")
      )

instance
  Prelude.Hashable
    TargetTrackingScalingPolicyConfiguration

instance
  Prelude.NFData
    TargetTrackingScalingPolicyConfiguration

instance
  Core.ToJSON
    TargetTrackingScalingPolicyConfiguration
  where
  toJSON TargetTrackingScalingPolicyConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("PredefinedMetricSpecification" Core..=)
              Prelude.<$> predefinedMetricSpecification,
            ("ScaleInCooldown" Core..=)
              Prelude.<$> scaleInCooldown,
            ("CustomizedMetricSpecification" Core..=)
              Prelude.<$> customizedMetricSpecification,
            ("DisableScaleIn" Core..=)
              Prelude.<$> disableScaleIn,
            ("ScaleOutCooldown" Core..=)
              Prelude.<$> scaleOutCooldown,
            Prelude.Just ("TargetValue" Core..= targetValue)
          ]
      )
