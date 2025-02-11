{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ApplicationAutoScaling.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ApplicationAutoScaling.Lens
  ( -- * Operations

    -- ** DeleteScalingPolicy
    deleteScalingPolicy_policyName,
    deleteScalingPolicy_serviceNamespace,
    deleteScalingPolicy_resourceId,
    deleteScalingPolicy_scalableDimension,
    deleteScalingPolicyResponse_httpStatus,

    -- ** PutScalingPolicy
    putScalingPolicy_policyType,
    putScalingPolicy_targetTrackingScalingPolicyConfiguration,
    putScalingPolicy_stepScalingPolicyConfiguration,
    putScalingPolicy_policyName,
    putScalingPolicy_serviceNamespace,
    putScalingPolicy_resourceId,
    putScalingPolicy_scalableDimension,
    putScalingPolicyResponse_alarms,
    putScalingPolicyResponse_httpStatus,
    putScalingPolicyResponse_policyARN,

    -- ** RegisterScalableTarget
    registerScalableTarget_suspendedState,
    registerScalableTarget_maxCapacity,
    registerScalableTarget_minCapacity,
    registerScalableTarget_roleARN,
    registerScalableTarget_serviceNamespace,
    registerScalableTarget_resourceId,
    registerScalableTarget_scalableDimension,
    registerScalableTargetResponse_httpStatus,

    -- ** DescribeScalingPolicies
    describeScalingPolicies_policyNames,
    describeScalingPolicies_scalableDimension,
    describeScalingPolicies_resourceId,
    describeScalingPolicies_nextToken,
    describeScalingPolicies_maxResults,
    describeScalingPolicies_serviceNamespace,
    describeScalingPoliciesResponse_nextToken,
    describeScalingPoliciesResponse_scalingPolicies,
    describeScalingPoliciesResponse_httpStatus,

    -- ** PutScheduledAction
    putScheduledAction_startTime,
    putScheduledAction_schedule,
    putScheduledAction_endTime,
    putScheduledAction_scalableTargetAction,
    putScheduledAction_timezone,
    putScheduledAction_serviceNamespace,
    putScheduledAction_scheduledActionName,
    putScheduledAction_resourceId,
    putScheduledAction_scalableDimension,
    putScheduledActionResponse_httpStatus,

    -- ** DeleteScheduledAction
    deleteScheduledAction_serviceNamespace,
    deleteScheduledAction_scheduledActionName,
    deleteScheduledAction_resourceId,
    deleteScheduledAction_scalableDimension,
    deleteScheduledActionResponse_httpStatus,

    -- ** DescribeScheduledActions
    describeScheduledActions_scalableDimension,
    describeScheduledActions_resourceId,
    describeScheduledActions_nextToken,
    describeScheduledActions_scheduledActionNames,
    describeScheduledActions_maxResults,
    describeScheduledActions_serviceNamespace,
    describeScheduledActionsResponse_nextToken,
    describeScheduledActionsResponse_scheduledActions,
    describeScheduledActionsResponse_httpStatus,

    -- ** DescribeScalableTargets
    describeScalableTargets_resourceIds,
    describeScalableTargets_scalableDimension,
    describeScalableTargets_nextToken,
    describeScalableTargets_maxResults,
    describeScalableTargets_serviceNamespace,
    describeScalableTargetsResponse_nextToken,
    describeScalableTargetsResponse_scalableTargets,
    describeScalableTargetsResponse_httpStatus,

    -- ** DescribeScalingActivities
    describeScalingActivities_scalableDimension,
    describeScalingActivities_resourceId,
    describeScalingActivities_nextToken,
    describeScalingActivities_maxResults,
    describeScalingActivities_serviceNamespace,
    describeScalingActivitiesResponse_scalingActivities,
    describeScalingActivitiesResponse_nextToken,
    describeScalingActivitiesResponse_httpStatus,

    -- ** DeregisterScalableTarget
    deregisterScalableTarget_serviceNamespace,
    deregisterScalableTarget_resourceId,
    deregisterScalableTarget_scalableDimension,
    deregisterScalableTargetResponse_httpStatus,

    -- * Types

    -- ** Alarm
    alarm_alarmName,
    alarm_alarmARN,

    -- ** CustomizedMetricSpecification
    customizedMetricSpecification_dimensions,
    customizedMetricSpecification_unit,
    customizedMetricSpecification_metricName,
    customizedMetricSpecification_namespace,
    customizedMetricSpecification_statistic,

    -- ** MetricDimension
    metricDimension_name,
    metricDimension_value,

    -- ** PredefinedMetricSpecification
    predefinedMetricSpecification_resourceLabel,
    predefinedMetricSpecification_predefinedMetricType,

    -- ** ScalableTarget
    scalableTarget_suspendedState,
    scalableTarget_serviceNamespace,
    scalableTarget_resourceId,
    scalableTarget_scalableDimension,
    scalableTarget_minCapacity,
    scalableTarget_maxCapacity,
    scalableTarget_roleARN,
    scalableTarget_creationTime,

    -- ** ScalableTargetAction
    scalableTargetAction_maxCapacity,
    scalableTargetAction_minCapacity,

    -- ** ScalingActivity
    scalingActivity_statusMessage,
    scalingActivity_endTime,
    scalingActivity_details,
    scalingActivity_activityId,
    scalingActivity_serviceNamespace,
    scalingActivity_resourceId,
    scalingActivity_scalableDimension,
    scalingActivity_description,
    scalingActivity_cause,
    scalingActivity_startTime,
    scalingActivity_statusCode,

    -- ** ScalingPolicy
    scalingPolicy_targetTrackingScalingPolicyConfiguration,
    scalingPolicy_stepScalingPolicyConfiguration,
    scalingPolicy_alarms,
    scalingPolicy_policyARN,
    scalingPolicy_policyName,
    scalingPolicy_serviceNamespace,
    scalingPolicy_resourceId,
    scalingPolicy_scalableDimension,
    scalingPolicy_policyType,
    scalingPolicy_creationTime,

    -- ** ScheduledAction
    scheduledAction_scalableDimension,
    scheduledAction_startTime,
    scheduledAction_endTime,
    scheduledAction_scalableTargetAction,
    scheduledAction_timezone,
    scheduledAction_scheduledActionName,
    scheduledAction_scheduledActionARN,
    scheduledAction_serviceNamespace,
    scheduledAction_schedule,
    scheduledAction_resourceId,
    scheduledAction_creationTime,

    -- ** StepAdjustment
    stepAdjustment_metricIntervalLowerBound,
    stepAdjustment_metricIntervalUpperBound,
    stepAdjustment_scalingAdjustment,

    -- ** StepScalingPolicyConfiguration
    stepScalingPolicyConfiguration_stepAdjustments,
    stepScalingPolicyConfiguration_adjustmentType,
    stepScalingPolicyConfiguration_cooldown,
    stepScalingPolicyConfiguration_metricAggregationType,
    stepScalingPolicyConfiguration_minAdjustmentMagnitude,

    -- ** SuspendedState
    suspendedState_dynamicScalingInSuspended,
    suspendedState_scheduledScalingSuspended,
    suspendedState_dynamicScalingOutSuspended,

    -- ** TargetTrackingScalingPolicyConfiguration
    targetTrackingScalingPolicyConfiguration_predefinedMetricSpecification,
    targetTrackingScalingPolicyConfiguration_scaleInCooldown,
    targetTrackingScalingPolicyConfiguration_customizedMetricSpecification,
    targetTrackingScalingPolicyConfiguration_disableScaleIn,
    targetTrackingScalingPolicyConfiguration_scaleOutCooldown,
    targetTrackingScalingPolicyConfiguration_targetValue,
  )
where

import Network.AWS.ApplicationAutoScaling.DeleteScalingPolicy
import Network.AWS.ApplicationAutoScaling.DeleteScheduledAction
import Network.AWS.ApplicationAutoScaling.DeregisterScalableTarget
import Network.AWS.ApplicationAutoScaling.DescribeScalableTargets
import Network.AWS.ApplicationAutoScaling.DescribeScalingActivities
import Network.AWS.ApplicationAutoScaling.DescribeScalingPolicies
import Network.AWS.ApplicationAutoScaling.DescribeScheduledActions
import Network.AWS.ApplicationAutoScaling.PutScalingPolicy
import Network.AWS.ApplicationAutoScaling.PutScheduledAction
import Network.AWS.ApplicationAutoScaling.RegisterScalableTarget
import Network.AWS.ApplicationAutoScaling.Types.Alarm
import Network.AWS.ApplicationAutoScaling.Types.CustomizedMetricSpecification
import Network.AWS.ApplicationAutoScaling.Types.MetricDimension
import Network.AWS.ApplicationAutoScaling.Types.PredefinedMetricSpecification
import Network.AWS.ApplicationAutoScaling.Types.ScalableTarget
import Network.AWS.ApplicationAutoScaling.Types.ScalableTargetAction
import Network.AWS.ApplicationAutoScaling.Types.ScalingActivity
import Network.AWS.ApplicationAutoScaling.Types.ScalingPolicy
import Network.AWS.ApplicationAutoScaling.Types.ScheduledAction
import Network.AWS.ApplicationAutoScaling.Types.StepAdjustment
import Network.AWS.ApplicationAutoScaling.Types.StepScalingPolicyConfiguration
import Network.AWS.ApplicationAutoScaling.Types.SuspendedState
import Network.AWS.ApplicationAutoScaling.Types.TargetTrackingScalingPolicyConfiguration
