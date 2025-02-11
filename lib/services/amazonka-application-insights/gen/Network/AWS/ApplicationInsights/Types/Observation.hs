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
-- Module      : Network.AWS.ApplicationInsights.Types.Observation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ApplicationInsights.Types.Observation where

import Network.AWS.ApplicationInsights.Types.CloudWatchEventSource
import Network.AWS.ApplicationInsights.Types.LogFilter
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes an anomaly or error with the application.
--
-- /See:/ 'newObservation' smart constructor.
data Observation = Observation'
  { -- | The CodeDeploy application to which the deployment belongs.
    codeDeployApplication :: Prelude.Maybe Prelude.Text,
    -- | The message of an RDS event.
    rdsEventMessage :: Prelude.Maybe Prelude.Text,
    -- | The deployment ID of the CodeDeploy-based observation related to the
    -- detected problem.
    codeDeployDeploymentId :: Prelude.Maybe Prelude.Text,
    -- | The time when the observation was first detected, in epoch seconds.
    startTime :: Prelude.Maybe Core.POSIX,
    -- | The source type of the observation.
    sourceType :: Prelude.Maybe Prelude.Text,
    -- | The source resource ARN of the observation.
    sourceARN :: Prelude.Maybe Prelude.Text,
    -- | The X-Ray node request average latency for this node.
    xRayRequestAverageLatency :: Prelude.Maybe Prelude.Integer,
    -- | The status of the step function-related observation.
    statesStatus :: Prelude.Maybe Prelude.Text,
    -- | The deployment group to which the CodeDeploy deployment belongs.
    codeDeployDeploymentGroup :: Prelude.Maybe Prelude.Text,
    -- | The category of the AWS Health event, such as @issue@.
    healthEventTypeCategory :: Prelude.Maybe Prelude.Text,
    -- | The X-Ray request count for this node.
    xRayRequestCount :: Prelude.Maybe Prelude.Int,
    -- | The name of the S3 CloudWatch Event-based observation.
    s3EventName :: Prelude.Maybe Prelude.Text,
    -- | The name of the observation metric.
    metricName :: Prelude.Maybe Prelude.Text,
    -- | The state of the instance, such as @STOPPING@ or @TERMINATING@.
    ec2State :: Prelude.Maybe Prelude.Text,
    -- | The log group name.
    logGroup :: Prelude.Maybe Prelude.Text,
    -- | The value of the source observation metric.
    value :: Prelude.Maybe Prelude.Double,
    -- | The description of the AWS Health event provided by the service, such as
    -- Amazon EC2.
    healthEventDescription :: Prelude.Maybe Prelude.Text,
    -- | The source of the CloudWatch Event.
    cloudWatchEventSource :: Prelude.Maybe CloudWatchEventSource,
    -- | The status of the CodeDeploy deployment, for example @SUCCESS@ or
    -- @ FAILURE@.
    codeDeployState :: Prelude.Maybe Prelude.Text,
    -- | The X-Ray request error percentage for this node.
    xRayErrorPercent :: Prelude.Maybe Prelude.Int,
    -- | The Amazon Resource Name (ARN) of the step function-based observation.
    statesArn :: Prelude.Maybe Prelude.Text,
    -- | The ID of the CloudWatch Event-based observation related to the detected
    -- problem.
    cloudWatchEventId :: Prelude.Maybe Prelude.Text,
    -- | The log text of the observation.
    logText :: Prelude.Maybe Prelude.Text,
    -- | The log filter of the observation.
    logFilter :: Prelude.Maybe LogFilter,
    -- | The namespace of the observation metric.
    metricNamespace :: Prelude.Maybe Prelude.Text,
    -- | The category of an RDS event.
    rdsEventCategories :: Prelude.Maybe Prelude.Text,
    -- | The type of the X-Ray node.
    xRayNodeType :: Prelude.Maybe Prelude.Text,
    -- | The time when the observation ended, in epoch seconds.
    endTime :: Prelude.Maybe Core.POSIX,
    -- | The input to the step function-based observation.
    statesInput :: Prelude.Maybe Prelude.Text,
    -- | The name of the X-Ray node.
    xRayNodeName :: Prelude.Maybe Prelude.Text,
    -- | The ID of the observation type.
    id :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the AWS Health Event-based
    -- observation.
    healthEventArn :: Prelude.Maybe Prelude.Text,
    -- | The type of the AWS Health event, for example,
    -- @AWS_EC2_POWER_CONNECTIVITY_ISSUE@.
    healthEventTypeCode :: Prelude.Maybe Prelude.Text,
    -- | The result of an EBS CloudWatch event, such as @failed@ or @succeeded@.
    ebsResult :: Prelude.Maybe Prelude.Text,
    -- | The detail type of the CloudWatch Event-based observation, for example,
    -- @EC2 Instance State-change Notification@.
    cloudWatchEventDetailType :: Prelude.Maybe Prelude.Text,
    -- | The instance group to which the CodeDeploy instance belongs.
    codeDeployInstanceGroupId :: Prelude.Maybe Prelude.Text,
    -- | The cause of an EBS CloudWatch event.
    ebsCause :: Prelude.Maybe Prelude.Text,
    -- | The type of EBS CloudWatch event, such as @createVolume@, @deleteVolume@
    -- or @attachVolume@.
    ebsEvent :: Prelude.Maybe Prelude.Text,
    -- | The request ID of an EBS CloudWatch event.
    ebsRequestId :: Prelude.Maybe Prelude.Text,
    -- | The X-Ray request fault percentage for this node.
    xRayFaultPercent :: Prelude.Maybe Prelude.Int,
    -- | The Amazon Resource Name (ARN) of the step function execution-based
    -- observation.
    statesExecutionArn :: Prelude.Maybe Prelude.Text,
    -- | The timestamp in the CloudWatch Logs that specifies when the matched
    -- line occurred.
    lineTime :: Prelude.Maybe Core.POSIX,
    -- | The unit of the source observation metric.
    unit :: Prelude.Maybe Prelude.Text,
    -- | The X-Ray request throttle percentage for this node.
    xRayThrottlePercent :: Prelude.Maybe Prelude.Int,
    -- | The service to which the AWS Health Event belongs, such as EC2.
    healthService :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Observation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'codeDeployApplication', 'observation_codeDeployApplication' - The CodeDeploy application to which the deployment belongs.
--
-- 'rdsEventMessage', 'observation_rdsEventMessage' - The message of an RDS event.
--
-- 'codeDeployDeploymentId', 'observation_codeDeployDeploymentId' - The deployment ID of the CodeDeploy-based observation related to the
-- detected problem.
--
-- 'startTime', 'observation_startTime' - The time when the observation was first detected, in epoch seconds.
--
-- 'sourceType', 'observation_sourceType' - The source type of the observation.
--
-- 'sourceARN', 'observation_sourceARN' - The source resource ARN of the observation.
--
-- 'xRayRequestAverageLatency', 'observation_xRayRequestAverageLatency' - The X-Ray node request average latency for this node.
--
-- 'statesStatus', 'observation_statesStatus' - The status of the step function-related observation.
--
-- 'codeDeployDeploymentGroup', 'observation_codeDeployDeploymentGroup' - The deployment group to which the CodeDeploy deployment belongs.
--
-- 'healthEventTypeCategory', 'observation_healthEventTypeCategory' - The category of the AWS Health event, such as @issue@.
--
-- 'xRayRequestCount', 'observation_xRayRequestCount' - The X-Ray request count for this node.
--
-- 's3EventName', 'observation_s3EventName' - The name of the S3 CloudWatch Event-based observation.
--
-- 'metricName', 'observation_metricName' - The name of the observation metric.
--
-- 'ec2State', 'observation_ec2State' - The state of the instance, such as @STOPPING@ or @TERMINATING@.
--
-- 'logGroup', 'observation_logGroup' - The log group name.
--
-- 'value', 'observation_value' - The value of the source observation metric.
--
-- 'healthEventDescription', 'observation_healthEventDescription' - The description of the AWS Health event provided by the service, such as
-- Amazon EC2.
--
-- 'cloudWatchEventSource', 'observation_cloudWatchEventSource' - The source of the CloudWatch Event.
--
-- 'codeDeployState', 'observation_codeDeployState' - The status of the CodeDeploy deployment, for example @SUCCESS@ or
-- @ FAILURE@.
--
-- 'xRayErrorPercent', 'observation_xRayErrorPercent' - The X-Ray request error percentage for this node.
--
-- 'statesArn', 'observation_statesArn' - The Amazon Resource Name (ARN) of the step function-based observation.
--
-- 'cloudWatchEventId', 'observation_cloudWatchEventId' - The ID of the CloudWatch Event-based observation related to the detected
-- problem.
--
-- 'logText', 'observation_logText' - The log text of the observation.
--
-- 'logFilter', 'observation_logFilter' - The log filter of the observation.
--
-- 'metricNamespace', 'observation_metricNamespace' - The namespace of the observation metric.
--
-- 'rdsEventCategories', 'observation_rdsEventCategories' - The category of an RDS event.
--
-- 'xRayNodeType', 'observation_xRayNodeType' - The type of the X-Ray node.
--
-- 'endTime', 'observation_endTime' - The time when the observation ended, in epoch seconds.
--
-- 'statesInput', 'observation_statesInput' - The input to the step function-based observation.
--
-- 'xRayNodeName', 'observation_xRayNodeName' - The name of the X-Ray node.
--
-- 'id', 'observation_id' - The ID of the observation type.
--
-- 'healthEventArn', 'observation_healthEventArn' - The Amazon Resource Name (ARN) of the AWS Health Event-based
-- observation.
--
-- 'healthEventTypeCode', 'observation_healthEventTypeCode' - The type of the AWS Health event, for example,
-- @AWS_EC2_POWER_CONNECTIVITY_ISSUE@.
--
-- 'ebsResult', 'observation_ebsResult' - The result of an EBS CloudWatch event, such as @failed@ or @succeeded@.
--
-- 'cloudWatchEventDetailType', 'observation_cloudWatchEventDetailType' - The detail type of the CloudWatch Event-based observation, for example,
-- @EC2 Instance State-change Notification@.
--
-- 'codeDeployInstanceGroupId', 'observation_codeDeployInstanceGroupId' - The instance group to which the CodeDeploy instance belongs.
--
-- 'ebsCause', 'observation_ebsCause' - The cause of an EBS CloudWatch event.
--
-- 'ebsEvent', 'observation_ebsEvent' - The type of EBS CloudWatch event, such as @createVolume@, @deleteVolume@
-- or @attachVolume@.
--
-- 'ebsRequestId', 'observation_ebsRequestId' - The request ID of an EBS CloudWatch event.
--
-- 'xRayFaultPercent', 'observation_xRayFaultPercent' - The X-Ray request fault percentage for this node.
--
-- 'statesExecutionArn', 'observation_statesExecutionArn' - The Amazon Resource Name (ARN) of the step function execution-based
-- observation.
--
-- 'lineTime', 'observation_lineTime' - The timestamp in the CloudWatch Logs that specifies when the matched
-- line occurred.
--
-- 'unit', 'observation_unit' - The unit of the source observation metric.
--
-- 'xRayThrottlePercent', 'observation_xRayThrottlePercent' - The X-Ray request throttle percentage for this node.
--
-- 'healthService', 'observation_healthService' - The service to which the AWS Health Event belongs, such as EC2.
newObservation ::
  Observation
newObservation =
  Observation'
    { codeDeployApplication =
        Prelude.Nothing,
      rdsEventMessage = Prelude.Nothing,
      codeDeployDeploymentId = Prelude.Nothing,
      startTime = Prelude.Nothing,
      sourceType = Prelude.Nothing,
      sourceARN = Prelude.Nothing,
      xRayRequestAverageLatency = Prelude.Nothing,
      statesStatus = Prelude.Nothing,
      codeDeployDeploymentGroup = Prelude.Nothing,
      healthEventTypeCategory = Prelude.Nothing,
      xRayRequestCount = Prelude.Nothing,
      s3EventName = Prelude.Nothing,
      metricName = Prelude.Nothing,
      ec2State = Prelude.Nothing,
      logGroup = Prelude.Nothing,
      value = Prelude.Nothing,
      healthEventDescription = Prelude.Nothing,
      cloudWatchEventSource = Prelude.Nothing,
      codeDeployState = Prelude.Nothing,
      xRayErrorPercent = Prelude.Nothing,
      statesArn = Prelude.Nothing,
      cloudWatchEventId = Prelude.Nothing,
      logText = Prelude.Nothing,
      logFilter = Prelude.Nothing,
      metricNamespace = Prelude.Nothing,
      rdsEventCategories = Prelude.Nothing,
      xRayNodeType = Prelude.Nothing,
      endTime = Prelude.Nothing,
      statesInput = Prelude.Nothing,
      xRayNodeName = Prelude.Nothing,
      id = Prelude.Nothing,
      healthEventArn = Prelude.Nothing,
      healthEventTypeCode = Prelude.Nothing,
      ebsResult = Prelude.Nothing,
      cloudWatchEventDetailType = Prelude.Nothing,
      codeDeployInstanceGroupId = Prelude.Nothing,
      ebsCause = Prelude.Nothing,
      ebsEvent = Prelude.Nothing,
      ebsRequestId = Prelude.Nothing,
      xRayFaultPercent = Prelude.Nothing,
      statesExecutionArn = Prelude.Nothing,
      lineTime = Prelude.Nothing,
      unit = Prelude.Nothing,
      xRayThrottlePercent = Prelude.Nothing,
      healthService = Prelude.Nothing
    }

-- | The CodeDeploy application to which the deployment belongs.
observation_codeDeployApplication :: Lens.Lens' Observation (Prelude.Maybe Prelude.Text)
observation_codeDeployApplication = Lens.lens (\Observation' {codeDeployApplication} -> codeDeployApplication) (\s@Observation' {} a -> s {codeDeployApplication = a} :: Observation)

-- | The message of an RDS event.
observation_rdsEventMessage :: Lens.Lens' Observation (Prelude.Maybe Prelude.Text)
observation_rdsEventMessage = Lens.lens (\Observation' {rdsEventMessage} -> rdsEventMessage) (\s@Observation' {} a -> s {rdsEventMessage = a} :: Observation)

-- | The deployment ID of the CodeDeploy-based observation related to the
-- detected problem.
observation_codeDeployDeploymentId :: Lens.Lens' Observation (Prelude.Maybe Prelude.Text)
observation_codeDeployDeploymentId = Lens.lens (\Observation' {codeDeployDeploymentId} -> codeDeployDeploymentId) (\s@Observation' {} a -> s {codeDeployDeploymentId = a} :: Observation)

-- | The time when the observation was first detected, in epoch seconds.
observation_startTime :: Lens.Lens' Observation (Prelude.Maybe Prelude.UTCTime)
observation_startTime = Lens.lens (\Observation' {startTime} -> startTime) (\s@Observation' {} a -> s {startTime = a} :: Observation) Prelude.. Lens.mapping Core._Time

-- | The source type of the observation.
observation_sourceType :: Lens.Lens' Observation (Prelude.Maybe Prelude.Text)
observation_sourceType = Lens.lens (\Observation' {sourceType} -> sourceType) (\s@Observation' {} a -> s {sourceType = a} :: Observation)

-- | The source resource ARN of the observation.
observation_sourceARN :: Lens.Lens' Observation (Prelude.Maybe Prelude.Text)
observation_sourceARN = Lens.lens (\Observation' {sourceARN} -> sourceARN) (\s@Observation' {} a -> s {sourceARN = a} :: Observation)

-- | The X-Ray node request average latency for this node.
observation_xRayRequestAverageLatency :: Lens.Lens' Observation (Prelude.Maybe Prelude.Integer)
observation_xRayRequestAverageLatency = Lens.lens (\Observation' {xRayRequestAverageLatency} -> xRayRequestAverageLatency) (\s@Observation' {} a -> s {xRayRequestAverageLatency = a} :: Observation)

-- | The status of the step function-related observation.
observation_statesStatus :: Lens.Lens' Observation (Prelude.Maybe Prelude.Text)
observation_statesStatus = Lens.lens (\Observation' {statesStatus} -> statesStatus) (\s@Observation' {} a -> s {statesStatus = a} :: Observation)

-- | The deployment group to which the CodeDeploy deployment belongs.
observation_codeDeployDeploymentGroup :: Lens.Lens' Observation (Prelude.Maybe Prelude.Text)
observation_codeDeployDeploymentGroup = Lens.lens (\Observation' {codeDeployDeploymentGroup} -> codeDeployDeploymentGroup) (\s@Observation' {} a -> s {codeDeployDeploymentGroup = a} :: Observation)

-- | The category of the AWS Health event, such as @issue@.
observation_healthEventTypeCategory :: Lens.Lens' Observation (Prelude.Maybe Prelude.Text)
observation_healthEventTypeCategory = Lens.lens (\Observation' {healthEventTypeCategory} -> healthEventTypeCategory) (\s@Observation' {} a -> s {healthEventTypeCategory = a} :: Observation)

-- | The X-Ray request count for this node.
observation_xRayRequestCount :: Lens.Lens' Observation (Prelude.Maybe Prelude.Int)
observation_xRayRequestCount = Lens.lens (\Observation' {xRayRequestCount} -> xRayRequestCount) (\s@Observation' {} a -> s {xRayRequestCount = a} :: Observation)

-- | The name of the S3 CloudWatch Event-based observation.
observation_s3EventName :: Lens.Lens' Observation (Prelude.Maybe Prelude.Text)
observation_s3EventName = Lens.lens (\Observation' {s3EventName} -> s3EventName) (\s@Observation' {} a -> s {s3EventName = a} :: Observation)

-- | The name of the observation metric.
observation_metricName :: Lens.Lens' Observation (Prelude.Maybe Prelude.Text)
observation_metricName = Lens.lens (\Observation' {metricName} -> metricName) (\s@Observation' {} a -> s {metricName = a} :: Observation)

-- | The state of the instance, such as @STOPPING@ or @TERMINATING@.
observation_ec2State :: Lens.Lens' Observation (Prelude.Maybe Prelude.Text)
observation_ec2State = Lens.lens (\Observation' {ec2State} -> ec2State) (\s@Observation' {} a -> s {ec2State = a} :: Observation)

-- | The log group name.
observation_logGroup :: Lens.Lens' Observation (Prelude.Maybe Prelude.Text)
observation_logGroup = Lens.lens (\Observation' {logGroup} -> logGroup) (\s@Observation' {} a -> s {logGroup = a} :: Observation)

-- | The value of the source observation metric.
observation_value :: Lens.Lens' Observation (Prelude.Maybe Prelude.Double)
observation_value = Lens.lens (\Observation' {value} -> value) (\s@Observation' {} a -> s {value = a} :: Observation)

-- | The description of the AWS Health event provided by the service, such as
-- Amazon EC2.
observation_healthEventDescription :: Lens.Lens' Observation (Prelude.Maybe Prelude.Text)
observation_healthEventDescription = Lens.lens (\Observation' {healthEventDescription} -> healthEventDescription) (\s@Observation' {} a -> s {healthEventDescription = a} :: Observation)

-- | The source of the CloudWatch Event.
observation_cloudWatchEventSource :: Lens.Lens' Observation (Prelude.Maybe CloudWatchEventSource)
observation_cloudWatchEventSource = Lens.lens (\Observation' {cloudWatchEventSource} -> cloudWatchEventSource) (\s@Observation' {} a -> s {cloudWatchEventSource = a} :: Observation)

-- | The status of the CodeDeploy deployment, for example @SUCCESS@ or
-- @ FAILURE@.
observation_codeDeployState :: Lens.Lens' Observation (Prelude.Maybe Prelude.Text)
observation_codeDeployState = Lens.lens (\Observation' {codeDeployState} -> codeDeployState) (\s@Observation' {} a -> s {codeDeployState = a} :: Observation)

-- | The X-Ray request error percentage for this node.
observation_xRayErrorPercent :: Lens.Lens' Observation (Prelude.Maybe Prelude.Int)
observation_xRayErrorPercent = Lens.lens (\Observation' {xRayErrorPercent} -> xRayErrorPercent) (\s@Observation' {} a -> s {xRayErrorPercent = a} :: Observation)

-- | The Amazon Resource Name (ARN) of the step function-based observation.
observation_statesArn :: Lens.Lens' Observation (Prelude.Maybe Prelude.Text)
observation_statesArn = Lens.lens (\Observation' {statesArn} -> statesArn) (\s@Observation' {} a -> s {statesArn = a} :: Observation)

-- | The ID of the CloudWatch Event-based observation related to the detected
-- problem.
observation_cloudWatchEventId :: Lens.Lens' Observation (Prelude.Maybe Prelude.Text)
observation_cloudWatchEventId = Lens.lens (\Observation' {cloudWatchEventId} -> cloudWatchEventId) (\s@Observation' {} a -> s {cloudWatchEventId = a} :: Observation)

-- | The log text of the observation.
observation_logText :: Lens.Lens' Observation (Prelude.Maybe Prelude.Text)
observation_logText = Lens.lens (\Observation' {logText} -> logText) (\s@Observation' {} a -> s {logText = a} :: Observation)

-- | The log filter of the observation.
observation_logFilter :: Lens.Lens' Observation (Prelude.Maybe LogFilter)
observation_logFilter = Lens.lens (\Observation' {logFilter} -> logFilter) (\s@Observation' {} a -> s {logFilter = a} :: Observation)

-- | The namespace of the observation metric.
observation_metricNamespace :: Lens.Lens' Observation (Prelude.Maybe Prelude.Text)
observation_metricNamespace = Lens.lens (\Observation' {metricNamespace} -> metricNamespace) (\s@Observation' {} a -> s {metricNamespace = a} :: Observation)

-- | The category of an RDS event.
observation_rdsEventCategories :: Lens.Lens' Observation (Prelude.Maybe Prelude.Text)
observation_rdsEventCategories = Lens.lens (\Observation' {rdsEventCategories} -> rdsEventCategories) (\s@Observation' {} a -> s {rdsEventCategories = a} :: Observation)

-- | The type of the X-Ray node.
observation_xRayNodeType :: Lens.Lens' Observation (Prelude.Maybe Prelude.Text)
observation_xRayNodeType = Lens.lens (\Observation' {xRayNodeType} -> xRayNodeType) (\s@Observation' {} a -> s {xRayNodeType = a} :: Observation)

-- | The time when the observation ended, in epoch seconds.
observation_endTime :: Lens.Lens' Observation (Prelude.Maybe Prelude.UTCTime)
observation_endTime = Lens.lens (\Observation' {endTime} -> endTime) (\s@Observation' {} a -> s {endTime = a} :: Observation) Prelude.. Lens.mapping Core._Time

-- | The input to the step function-based observation.
observation_statesInput :: Lens.Lens' Observation (Prelude.Maybe Prelude.Text)
observation_statesInput = Lens.lens (\Observation' {statesInput} -> statesInput) (\s@Observation' {} a -> s {statesInput = a} :: Observation)

-- | The name of the X-Ray node.
observation_xRayNodeName :: Lens.Lens' Observation (Prelude.Maybe Prelude.Text)
observation_xRayNodeName = Lens.lens (\Observation' {xRayNodeName} -> xRayNodeName) (\s@Observation' {} a -> s {xRayNodeName = a} :: Observation)

-- | The ID of the observation type.
observation_id :: Lens.Lens' Observation (Prelude.Maybe Prelude.Text)
observation_id = Lens.lens (\Observation' {id} -> id) (\s@Observation' {} a -> s {id = a} :: Observation)

-- | The Amazon Resource Name (ARN) of the AWS Health Event-based
-- observation.
observation_healthEventArn :: Lens.Lens' Observation (Prelude.Maybe Prelude.Text)
observation_healthEventArn = Lens.lens (\Observation' {healthEventArn} -> healthEventArn) (\s@Observation' {} a -> s {healthEventArn = a} :: Observation)

-- | The type of the AWS Health event, for example,
-- @AWS_EC2_POWER_CONNECTIVITY_ISSUE@.
observation_healthEventTypeCode :: Lens.Lens' Observation (Prelude.Maybe Prelude.Text)
observation_healthEventTypeCode = Lens.lens (\Observation' {healthEventTypeCode} -> healthEventTypeCode) (\s@Observation' {} a -> s {healthEventTypeCode = a} :: Observation)

-- | The result of an EBS CloudWatch event, such as @failed@ or @succeeded@.
observation_ebsResult :: Lens.Lens' Observation (Prelude.Maybe Prelude.Text)
observation_ebsResult = Lens.lens (\Observation' {ebsResult} -> ebsResult) (\s@Observation' {} a -> s {ebsResult = a} :: Observation)

-- | The detail type of the CloudWatch Event-based observation, for example,
-- @EC2 Instance State-change Notification@.
observation_cloudWatchEventDetailType :: Lens.Lens' Observation (Prelude.Maybe Prelude.Text)
observation_cloudWatchEventDetailType = Lens.lens (\Observation' {cloudWatchEventDetailType} -> cloudWatchEventDetailType) (\s@Observation' {} a -> s {cloudWatchEventDetailType = a} :: Observation)

-- | The instance group to which the CodeDeploy instance belongs.
observation_codeDeployInstanceGroupId :: Lens.Lens' Observation (Prelude.Maybe Prelude.Text)
observation_codeDeployInstanceGroupId = Lens.lens (\Observation' {codeDeployInstanceGroupId} -> codeDeployInstanceGroupId) (\s@Observation' {} a -> s {codeDeployInstanceGroupId = a} :: Observation)

-- | The cause of an EBS CloudWatch event.
observation_ebsCause :: Lens.Lens' Observation (Prelude.Maybe Prelude.Text)
observation_ebsCause = Lens.lens (\Observation' {ebsCause} -> ebsCause) (\s@Observation' {} a -> s {ebsCause = a} :: Observation)

-- | The type of EBS CloudWatch event, such as @createVolume@, @deleteVolume@
-- or @attachVolume@.
observation_ebsEvent :: Lens.Lens' Observation (Prelude.Maybe Prelude.Text)
observation_ebsEvent = Lens.lens (\Observation' {ebsEvent} -> ebsEvent) (\s@Observation' {} a -> s {ebsEvent = a} :: Observation)

-- | The request ID of an EBS CloudWatch event.
observation_ebsRequestId :: Lens.Lens' Observation (Prelude.Maybe Prelude.Text)
observation_ebsRequestId = Lens.lens (\Observation' {ebsRequestId} -> ebsRequestId) (\s@Observation' {} a -> s {ebsRequestId = a} :: Observation)

-- | The X-Ray request fault percentage for this node.
observation_xRayFaultPercent :: Lens.Lens' Observation (Prelude.Maybe Prelude.Int)
observation_xRayFaultPercent = Lens.lens (\Observation' {xRayFaultPercent} -> xRayFaultPercent) (\s@Observation' {} a -> s {xRayFaultPercent = a} :: Observation)

-- | The Amazon Resource Name (ARN) of the step function execution-based
-- observation.
observation_statesExecutionArn :: Lens.Lens' Observation (Prelude.Maybe Prelude.Text)
observation_statesExecutionArn = Lens.lens (\Observation' {statesExecutionArn} -> statesExecutionArn) (\s@Observation' {} a -> s {statesExecutionArn = a} :: Observation)

-- | The timestamp in the CloudWatch Logs that specifies when the matched
-- line occurred.
observation_lineTime :: Lens.Lens' Observation (Prelude.Maybe Prelude.UTCTime)
observation_lineTime = Lens.lens (\Observation' {lineTime} -> lineTime) (\s@Observation' {} a -> s {lineTime = a} :: Observation) Prelude.. Lens.mapping Core._Time

-- | The unit of the source observation metric.
observation_unit :: Lens.Lens' Observation (Prelude.Maybe Prelude.Text)
observation_unit = Lens.lens (\Observation' {unit} -> unit) (\s@Observation' {} a -> s {unit = a} :: Observation)

-- | The X-Ray request throttle percentage for this node.
observation_xRayThrottlePercent :: Lens.Lens' Observation (Prelude.Maybe Prelude.Int)
observation_xRayThrottlePercent = Lens.lens (\Observation' {xRayThrottlePercent} -> xRayThrottlePercent) (\s@Observation' {} a -> s {xRayThrottlePercent = a} :: Observation)

-- | The service to which the AWS Health Event belongs, such as EC2.
observation_healthService :: Lens.Lens' Observation (Prelude.Maybe Prelude.Text)
observation_healthService = Lens.lens (\Observation' {healthService} -> healthService) (\s@Observation' {} a -> s {healthService = a} :: Observation)

instance Core.FromJSON Observation where
  parseJSON =
    Core.withObject
      "Observation"
      ( \x ->
          Observation'
            Prelude.<$> (x Core..:? "CodeDeployApplication")
            Prelude.<*> (x Core..:? "RdsEventMessage")
            Prelude.<*> (x Core..:? "CodeDeployDeploymentId")
            Prelude.<*> (x Core..:? "StartTime")
            Prelude.<*> (x Core..:? "SourceType")
            Prelude.<*> (x Core..:? "SourceARN")
            Prelude.<*> (x Core..:? "XRayRequestAverageLatency")
            Prelude.<*> (x Core..:? "StatesStatus")
            Prelude.<*> (x Core..:? "CodeDeployDeploymentGroup")
            Prelude.<*> (x Core..:? "HealthEventTypeCategory")
            Prelude.<*> (x Core..:? "XRayRequestCount")
            Prelude.<*> (x Core..:? "S3EventName")
            Prelude.<*> (x Core..:? "MetricName")
            Prelude.<*> (x Core..:? "Ec2State")
            Prelude.<*> (x Core..:? "LogGroup")
            Prelude.<*> (x Core..:? "Value")
            Prelude.<*> (x Core..:? "HealthEventDescription")
            Prelude.<*> (x Core..:? "CloudWatchEventSource")
            Prelude.<*> (x Core..:? "CodeDeployState")
            Prelude.<*> (x Core..:? "XRayErrorPercent")
            Prelude.<*> (x Core..:? "StatesArn")
            Prelude.<*> (x Core..:? "CloudWatchEventId")
            Prelude.<*> (x Core..:? "LogText")
            Prelude.<*> (x Core..:? "LogFilter")
            Prelude.<*> (x Core..:? "MetricNamespace")
            Prelude.<*> (x Core..:? "RdsEventCategories")
            Prelude.<*> (x Core..:? "XRayNodeType")
            Prelude.<*> (x Core..:? "EndTime")
            Prelude.<*> (x Core..:? "StatesInput")
            Prelude.<*> (x Core..:? "XRayNodeName")
            Prelude.<*> (x Core..:? "Id")
            Prelude.<*> (x Core..:? "HealthEventArn")
            Prelude.<*> (x Core..:? "HealthEventTypeCode")
            Prelude.<*> (x Core..:? "EbsResult")
            Prelude.<*> (x Core..:? "CloudWatchEventDetailType")
            Prelude.<*> (x Core..:? "CodeDeployInstanceGroupId")
            Prelude.<*> (x Core..:? "EbsCause")
            Prelude.<*> (x Core..:? "EbsEvent")
            Prelude.<*> (x Core..:? "EbsRequestId")
            Prelude.<*> (x Core..:? "XRayFaultPercent")
            Prelude.<*> (x Core..:? "StatesExecutionArn")
            Prelude.<*> (x Core..:? "LineTime")
            Prelude.<*> (x Core..:? "Unit")
            Prelude.<*> (x Core..:? "XRayThrottlePercent")
            Prelude.<*> (x Core..:? "HealthService")
      )

instance Prelude.Hashable Observation

instance Prelude.NFData Observation
