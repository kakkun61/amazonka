{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KafkaConnect.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KafkaConnect.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ConflictException,
    _ForbiddenException,
    _NotFoundException,
    _TooManyRequestsException,
    _InternalServerErrorException,
    _ServiceUnavailableException,
    _UnauthorizedException,
    _BadRequestException,

    -- * ConnectorState
    ConnectorState (..),

    -- * CustomPluginContentType
    CustomPluginContentType (..),

    -- * CustomPluginState
    CustomPluginState (..),

    -- * KafkaClusterClientAuthenticationType
    KafkaClusterClientAuthenticationType (..),

    -- * KafkaClusterEncryptionInTransitType
    KafkaClusterEncryptionInTransitType (..),

    -- * ApacheKafkaCluster
    ApacheKafkaCluster (..),
    newApacheKafkaCluster,
    apacheKafkaCluster_bootstrapServers,
    apacheKafkaCluster_vpc,

    -- * ApacheKafkaClusterDescription
    ApacheKafkaClusterDescription (..),
    newApacheKafkaClusterDescription,
    apacheKafkaClusterDescription_bootstrapServers,
    apacheKafkaClusterDescription_vpc,

    -- * AutoScaling
    AutoScaling (..),
    newAutoScaling,
    autoScaling_scaleInPolicy,
    autoScaling_scaleOutPolicy,
    autoScaling_maxWorkerCount,
    autoScaling_mcuCount,
    autoScaling_minWorkerCount,

    -- * AutoScalingDescription
    AutoScalingDescription (..),
    newAutoScalingDescription,
    autoScalingDescription_scaleInPolicy,
    autoScalingDescription_mcuCount,
    autoScalingDescription_scaleOutPolicy,
    autoScalingDescription_maxWorkerCount,
    autoScalingDescription_minWorkerCount,

    -- * AutoScalingUpdate
    AutoScalingUpdate (..),
    newAutoScalingUpdate,
    autoScalingUpdate_maxWorkerCount,
    autoScalingUpdate_mcuCount,
    autoScalingUpdate_minWorkerCount,
    autoScalingUpdate_scaleInPolicy,
    autoScalingUpdate_scaleOutPolicy,

    -- * Capacity
    Capacity (..),
    newCapacity,
    capacity_autoScaling,
    capacity_provisionedCapacity,

    -- * CapacityDescription
    CapacityDescription (..),
    newCapacityDescription,
    capacityDescription_autoScaling,
    capacityDescription_provisionedCapacity,

    -- * CapacityUpdate
    CapacityUpdate (..),
    newCapacityUpdate,
    capacityUpdate_autoScaling,
    capacityUpdate_provisionedCapacity,

    -- * CloudWatchLogsLogDelivery
    CloudWatchLogsLogDelivery (..),
    newCloudWatchLogsLogDelivery,
    cloudWatchLogsLogDelivery_logGroup,
    cloudWatchLogsLogDelivery_enabled,

    -- * CloudWatchLogsLogDeliveryDescription
    CloudWatchLogsLogDeliveryDescription (..),
    newCloudWatchLogsLogDeliveryDescription,
    cloudWatchLogsLogDeliveryDescription_enabled,
    cloudWatchLogsLogDeliveryDescription_logGroup,

    -- * ConnectorSummary
    ConnectorSummary (..),
    newConnectorSummary,
    connectorSummary_creationTime,
    connectorSummary_kafkaCluster,
    connectorSummary_kafkaConnectVersion,
    connectorSummary_logDelivery,
    connectorSummary_currentVersion,
    connectorSummary_workerConfiguration,
    connectorSummary_connectorArn,
    connectorSummary_connectorName,
    connectorSummary_connectorState,
    connectorSummary_capacity,
    connectorSummary_plugins,
    connectorSummary_connectorDescription,
    connectorSummary_kafkaClusterClientAuthentication,
    connectorSummary_kafkaClusterEncryptionInTransit,
    connectorSummary_serviceExecutionRoleArn,

    -- * CustomPlugin
    CustomPlugin (..),
    newCustomPlugin,
    customPlugin_customPluginArn,
    customPlugin_revision,

    -- * CustomPluginDescription
    CustomPluginDescription (..),
    newCustomPluginDescription,
    customPluginDescription_customPluginArn,
    customPluginDescription_revision,

    -- * CustomPluginFileDescription
    CustomPluginFileDescription (..),
    newCustomPluginFileDescription,
    customPluginFileDescription_fileMd5,
    customPluginFileDescription_fileSize,

    -- * CustomPluginLocation
    CustomPluginLocation (..),
    newCustomPluginLocation,
    customPluginLocation_s3Location,

    -- * CustomPluginLocationDescription
    CustomPluginLocationDescription (..),
    newCustomPluginLocationDescription,
    customPluginLocationDescription_s3Location,

    -- * CustomPluginRevisionSummary
    CustomPluginRevisionSummary (..),
    newCustomPluginRevisionSummary,
    customPluginRevisionSummary_creationTime,
    customPluginRevisionSummary_location,
    customPluginRevisionSummary_fileDescription,
    customPluginRevisionSummary_revision,
    customPluginRevisionSummary_description,
    customPluginRevisionSummary_contentType,

    -- * CustomPluginSummary
    CustomPluginSummary (..),
    newCustomPluginSummary,
    customPluginSummary_creationTime,
    customPluginSummary_latestRevision,
    customPluginSummary_name,
    customPluginSummary_customPluginArn,
    customPluginSummary_customPluginState,
    customPluginSummary_description,

    -- * FirehoseLogDelivery
    FirehoseLogDelivery (..),
    newFirehoseLogDelivery,
    firehoseLogDelivery_deliveryStream,
    firehoseLogDelivery_enabled,

    -- * FirehoseLogDeliveryDescription
    FirehoseLogDeliveryDescription (..),
    newFirehoseLogDeliveryDescription,
    firehoseLogDeliveryDescription_enabled,
    firehoseLogDeliveryDescription_deliveryStream,

    -- * KafkaCluster
    KafkaCluster (..),
    newKafkaCluster,
    kafkaCluster_apacheKafkaCluster,

    -- * KafkaClusterClientAuthentication
    KafkaClusterClientAuthentication (..),
    newKafkaClusterClientAuthentication,
    kafkaClusterClientAuthentication_authenticationType,

    -- * KafkaClusterClientAuthenticationDescription
    KafkaClusterClientAuthenticationDescription (..),
    newKafkaClusterClientAuthenticationDescription,
    kafkaClusterClientAuthenticationDescription_authenticationType,

    -- * KafkaClusterDescription
    KafkaClusterDescription (..),
    newKafkaClusterDescription,
    kafkaClusterDescription_apacheKafkaCluster,

    -- * KafkaClusterEncryptionInTransit
    KafkaClusterEncryptionInTransit (..),
    newKafkaClusterEncryptionInTransit,
    kafkaClusterEncryptionInTransit_encryptionType,

    -- * KafkaClusterEncryptionInTransitDescription
    KafkaClusterEncryptionInTransitDescription (..),
    newKafkaClusterEncryptionInTransitDescription,
    kafkaClusterEncryptionInTransitDescription_encryptionType,

    -- * LogDelivery
    LogDelivery (..),
    newLogDelivery,
    logDelivery_workerLogDelivery,

    -- * LogDeliveryDescription
    LogDeliveryDescription (..),
    newLogDeliveryDescription,
    logDeliveryDescription_workerLogDelivery,

    -- * Plugin
    Plugin (..),
    newPlugin,
    plugin_customPlugin,

    -- * PluginDescription
    PluginDescription (..),
    newPluginDescription,
    pluginDescription_customPlugin,

    -- * ProvisionedCapacity
    ProvisionedCapacity (..),
    newProvisionedCapacity,
    provisionedCapacity_mcuCount,
    provisionedCapacity_workerCount,

    -- * ProvisionedCapacityDescription
    ProvisionedCapacityDescription (..),
    newProvisionedCapacityDescription,
    provisionedCapacityDescription_workerCount,
    provisionedCapacityDescription_mcuCount,

    -- * ProvisionedCapacityUpdate
    ProvisionedCapacityUpdate (..),
    newProvisionedCapacityUpdate,
    provisionedCapacityUpdate_mcuCount,
    provisionedCapacityUpdate_workerCount,

    -- * S3Location
    S3Location (..),
    newS3Location,
    s3Location_objectVersion,
    s3Location_bucketArn,
    s3Location_fileKey,

    -- * S3LocationDescription
    S3LocationDescription (..),
    newS3LocationDescription,
    s3LocationDescription_objectVersion,
    s3LocationDescription_bucketArn,
    s3LocationDescription_fileKey,

    -- * S3LogDelivery
    S3LogDelivery (..),
    newS3LogDelivery,
    s3LogDelivery_prefix,
    s3LogDelivery_bucket,
    s3LogDelivery_enabled,

    -- * S3LogDeliveryDescription
    S3LogDeliveryDescription (..),
    newS3LogDeliveryDescription,
    s3LogDeliveryDescription_enabled,
    s3LogDeliveryDescription_prefix,
    s3LogDeliveryDescription_bucket,

    -- * ScaleInPolicy
    ScaleInPolicy (..),
    newScaleInPolicy,
    scaleInPolicy_cpuUtilizationPercentage,

    -- * ScaleInPolicyDescription
    ScaleInPolicyDescription (..),
    newScaleInPolicyDescription,
    scaleInPolicyDescription_cpuUtilizationPercentage,

    -- * ScaleInPolicyUpdate
    ScaleInPolicyUpdate (..),
    newScaleInPolicyUpdate,
    scaleInPolicyUpdate_cpuUtilizationPercentage,

    -- * ScaleOutPolicy
    ScaleOutPolicy (..),
    newScaleOutPolicy,
    scaleOutPolicy_cpuUtilizationPercentage,

    -- * ScaleOutPolicyDescription
    ScaleOutPolicyDescription (..),
    newScaleOutPolicyDescription,
    scaleOutPolicyDescription_cpuUtilizationPercentage,

    -- * ScaleOutPolicyUpdate
    ScaleOutPolicyUpdate (..),
    newScaleOutPolicyUpdate,
    scaleOutPolicyUpdate_cpuUtilizationPercentage,

    -- * Vpc
    Vpc (..),
    newVpc,
    vpc_securityGroups,
    vpc_subnets,

    -- * VpcDescription
    VpcDescription (..),
    newVpcDescription,
    vpcDescription_securityGroups,
    vpcDescription_subnets,

    -- * WorkerConfiguration
    WorkerConfiguration (..),
    newWorkerConfiguration,
    workerConfiguration_revision,
    workerConfiguration_workerConfigurationArn,

    -- * WorkerConfigurationDescription
    WorkerConfigurationDescription (..),
    newWorkerConfigurationDescription,
    workerConfigurationDescription_workerConfigurationArn,
    workerConfigurationDescription_revision,

    -- * WorkerConfigurationRevisionDescription
    WorkerConfigurationRevisionDescription (..),
    newWorkerConfigurationRevisionDescription,
    workerConfigurationRevisionDescription_creationTime,
    workerConfigurationRevisionDescription_revision,
    workerConfigurationRevisionDescription_propertiesFileContent,
    workerConfigurationRevisionDescription_description,

    -- * WorkerConfigurationRevisionSummary
    WorkerConfigurationRevisionSummary (..),
    newWorkerConfigurationRevisionSummary,
    workerConfigurationRevisionSummary_creationTime,
    workerConfigurationRevisionSummary_revision,
    workerConfigurationRevisionSummary_description,

    -- * WorkerConfigurationSummary
    WorkerConfigurationSummary (..),
    newWorkerConfigurationSummary,
    workerConfigurationSummary_creationTime,
    workerConfigurationSummary_latestRevision,
    workerConfigurationSummary_name,
    workerConfigurationSummary_workerConfigurationArn,
    workerConfigurationSummary_description,

    -- * WorkerLogDelivery
    WorkerLogDelivery (..),
    newWorkerLogDelivery,
    workerLogDelivery_cloudWatchLogs,
    workerLogDelivery_firehose,
    workerLogDelivery_s3,

    -- * WorkerLogDeliveryDescription
    WorkerLogDeliveryDescription (..),
    newWorkerLogDeliveryDescription,
    workerLogDeliveryDescription_cloudWatchLogs,
    workerLogDeliveryDescription_firehose,
    workerLogDeliveryDescription_s3,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.KafkaConnect.Types.ApacheKafkaCluster
import Network.AWS.KafkaConnect.Types.ApacheKafkaClusterDescription
import Network.AWS.KafkaConnect.Types.AutoScaling
import Network.AWS.KafkaConnect.Types.AutoScalingDescription
import Network.AWS.KafkaConnect.Types.AutoScalingUpdate
import Network.AWS.KafkaConnect.Types.Capacity
import Network.AWS.KafkaConnect.Types.CapacityDescription
import Network.AWS.KafkaConnect.Types.CapacityUpdate
import Network.AWS.KafkaConnect.Types.CloudWatchLogsLogDelivery
import Network.AWS.KafkaConnect.Types.CloudWatchLogsLogDeliveryDescription
import Network.AWS.KafkaConnect.Types.ConnectorState
import Network.AWS.KafkaConnect.Types.ConnectorSummary
import Network.AWS.KafkaConnect.Types.CustomPlugin
import Network.AWS.KafkaConnect.Types.CustomPluginContentType
import Network.AWS.KafkaConnect.Types.CustomPluginDescription
import Network.AWS.KafkaConnect.Types.CustomPluginFileDescription
import Network.AWS.KafkaConnect.Types.CustomPluginLocation
import Network.AWS.KafkaConnect.Types.CustomPluginLocationDescription
import Network.AWS.KafkaConnect.Types.CustomPluginRevisionSummary
import Network.AWS.KafkaConnect.Types.CustomPluginState
import Network.AWS.KafkaConnect.Types.CustomPluginSummary
import Network.AWS.KafkaConnect.Types.FirehoseLogDelivery
import Network.AWS.KafkaConnect.Types.FirehoseLogDeliveryDescription
import Network.AWS.KafkaConnect.Types.KafkaCluster
import Network.AWS.KafkaConnect.Types.KafkaClusterClientAuthentication
import Network.AWS.KafkaConnect.Types.KafkaClusterClientAuthenticationDescription
import Network.AWS.KafkaConnect.Types.KafkaClusterClientAuthenticationType
import Network.AWS.KafkaConnect.Types.KafkaClusterDescription
import Network.AWS.KafkaConnect.Types.KafkaClusterEncryptionInTransit
import Network.AWS.KafkaConnect.Types.KafkaClusterEncryptionInTransitDescription
import Network.AWS.KafkaConnect.Types.KafkaClusterEncryptionInTransitType
import Network.AWS.KafkaConnect.Types.LogDelivery
import Network.AWS.KafkaConnect.Types.LogDeliveryDescription
import Network.AWS.KafkaConnect.Types.Plugin
import Network.AWS.KafkaConnect.Types.PluginDescription
import Network.AWS.KafkaConnect.Types.ProvisionedCapacity
import Network.AWS.KafkaConnect.Types.ProvisionedCapacityDescription
import Network.AWS.KafkaConnect.Types.ProvisionedCapacityUpdate
import Network.AWS.KafkaConnect.Types.S3Location
import Network.AWS.KafkaConnect.Types.S3LocationDescription
import Network.AWS.KafkaConnect.Types.S3LogDelivery
import Network.AWS.KafkaConnect.Types.S3LogDeliveryDescription
import Network.AWS.KafkaConnect.Types.ScaleInPolicy
import Network.AWS.KafkaConnect.Types.ScaleInPolicyDescription
import Network.AWS.KafkaConnect.Types.ScaleInPolicyUpdate
import Network.AWS.KafkaConnect.Types.ScaleOutPolicy
import Network.AWS.KafkaConnect.Types.ScaleOutPolicyDescription
import Network.AWS.KafkaConnect.Types.ScaleOutPolicyUpdate
import Network.AWS.KafkaConnect.Types.Vpc
import Network.AWS.KafkaConnect.Types.VpcDescription
import Network.AWS.KafkaConnect.Types.WorkerConfiguration
import Network.AWS.KafkaConnect.Types.WorkerConfigurationDescription
import Network.AWS.KafkaConnect.Types.WorkerConfigurationRevisionDescription
import Network.AWS.KafkaConnect.Types.WorkerConfigurationRevisionSummary
import Network.AWS.KafkaConnect.Types.WorkerConfigurationSummary
import Network.AWS.KafkaConnect.Types.WorkerLogDelivery
import Network.AWS.KafkaConnect.Types.WorkerLogDeliveryDescription
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2021-09-14@ of the Amazon Managed Streaming for Kafka Connect SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "KafkaConnect",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "kafkaconnect",
      Core._serviceSigningName = "kafkaconnect",
      Core._serviceVersion = "2021-09-14",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "KafkaConnect",
      Core._serviceRetry = retry
    }
  where
    retry =
      Core.Exponential
        { Core._retryBase = 5.0e-2,
          Core._retryGrowth = 2,
          Core._retryAttempts = 5,
          Core._retryCheck = check
        }
    check e
      | Lens.has
          ( Core.hasCode "ThrottledException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttled_exception"
      | Lens.has (Core.hasStatus 429) e =
        Prelude.Just "too_many_requests"
      | Lens.has
          ( Core.hasCode "ThrottlingException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttling_exception"
      | Lens.has
          ( Core.hasCode "Throttling"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttling"
      | Lens.has
          ( Core.hasCode
              "ProvisionedThroughputExceededException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throughput_exceeded"
      | Lens.has (Core.hasStatus 504) e =
        Prelude.Just "gateway_timeout"
      | Lens.has
          ( Core.hasCode "RequestThrottledException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "request_throttled_exception"
      | Lens.has (Core.hasStatus 502) e =
        Prelude.Just "bad_gateway"
      | Lens.has (Core.hasStatus 503) e =
        Prelude.Just "service_unavailable"
      | Lens.has (Core.hasStatus 500) e =
        Prelude.Just "general_server_error"
      | Lens.has (Core.hasStatus 509) e =
        Prelude.Just "limit_exceeded"
      | Prelude.otherwise = Prelude.Nothing

-- | HTTP Status Code 409: Conflict. A resource with this name already
-- exists. Retry your request with another name.
_ConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConflictException =
  Core._MatchServiceError
    defaultService
    "ConflictException"
    Prelude.. Core.hasStatus 409

-- | HTTP Status Code 403: Access forbidden. Correct your credentials and
-- then retry your request.
_ForbiddenException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ForbiddenException =
  Core._MatchServiceError
    defaultService
    "ForbiddenException"
    Prelude.. Core.hasStatus 403

-- | HTTP Status Code 404: Resource not found due to incorrect input. Correct
-- your request and then retry it.
_NotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NotFoundException =
  Core._MatchServiceError
    defaultService
    "NotFoundException"
    Prelude.. Core.hasStatus 404

-- | HTTP Status Code 429: Limit exceeded. Resource limit reached.
_TooManyRequestsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_TooManyRequestsException =
  Core._MatchServiceError
    defaultService
    "TooManyRequestsException"
    Prelude.. Core.hasStatus 429

-- | HTTP Status Code 500: Unexpected internal server error. Retrying your
-- request might resolve the issue.
_InternalServerErrorException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerErrorException =
  Core._MatchServiceError
    defaultService
    "InternalServerErrorException"
    Prelude.. Core.hasStatus 500

-- | HTTP Status Code 503: Service Unavailable. Retrying your request in some
-- time might resolve the issue.
_ServiceUnavailableException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceUnavailableException =
  Core._MatchServiceError
    defaultService
    "ServiceUnavailableException"
    Prelude.. Core.hasStatus 503

-- | HTTP Status Code 401: Unauthorized request. The provided credentials
-- couldn\'t be validated.
_UnauthorizedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_UnauthorizedException =
  Core._MatchServiceError
    defaultService
    "UnauthorizedException"
    Prelude.. Core.hasStatus 401

-- | HTTP Status Code 400: Bad request due to incorrect input. Correct your
-- request and then retry it.
_BadRequestException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_BadRequestException =
  Core._MatchServiceError
    defaultService
    "BadRequestException"
    Prelude.. Core.hasStatus 400
