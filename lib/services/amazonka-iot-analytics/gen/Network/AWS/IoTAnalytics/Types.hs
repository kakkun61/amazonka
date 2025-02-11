{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _InvalidRequestException,
    _ResourceAlreadyExistsException,
    _ThrottlingException,
    _InternalFailureException,
    _ServiceUnavailableException,
    _ResourceNotFoundException,
    _LimitExceededException,

    -- * ChannelStatus
    ChannelStatus (..),

    -- * ComputeType
    ComputeType (..),

    -- * DatasetActionType
    DatasetActionType (..),

    -- * DatasetContentState
    DatasetContentState (..),

    -- * DatasetStatus
    DatasetStatus (..),

    -- * DatastoreStatus
    DatastoreStatus (..),

    -- * FileFormatType
    FileFormatType (..),

    -- * LoggingLevel
    LoggingLevel (..),

    -- * ReprocessingStatus
    ReprocessingStatus (..),

    -- * AddAttributesActivity
    AddAttributesActivity (..),
    newAddAttributesActivity,
    addAttributesActivity_next,
    addAttributesActivity_name,
    addAttributesActivity_attributes,

    -- * BatchPutMessageErrorEntry
    BatchPutMessageErrorEntry (..),
    newBatchPutMessageErrorEntry,
    batchPutMessageErrorEntry_errorCode,
    batchPutMessageErrorEntry_errorMessage,
    batchPutMessageErrorEntry_messageId,

    -- * Channel
    Channel (..),
    newChannel,
    channel_creationTime,
    channel_status,
    channel_lastMessageArrivalTime,
    channel_arn,
    channel_storage,
    channel_retentionPeriod,
    channel_name,
    channel_lastUpdateTime,

    -- * ChannelActivity
    ChannelActivity (..),
    newChannelActivity,
    channelActivity_next,
    channelActivity_name,
    channelActivity_channelName,

    -- * ChannelMessages
    ChannelMessages (..),
    newChannelMessages,
    channelMessages_s3Paths,

    -- * ChannelStatistics
    ChannelStatistics (..),
    newChannelStatistics,
    channelStatistics_size,

    -- * ChannelStorage
    ChannelStorage (..),
    newChannelStorage,
    channelStorage_serviceManagedS3,
    channelStorage_customerManagedS3,

    -- * ChannelStorageSummary
    ChannelStorageSummary (..),
    newChannelStorageSummary,
    channelStorageSummary_serviceManagedS3,
    channelStorageSummary_customerManagedS3,

    -- * ChannelSummary
    ChannelSummary (..),
    newChannelSummary,
    channelSummary_creationTime,
    channelSummary_status,
    channelSummary_lastMessageArrivalTime,
    channelSummary_channelName,
    channelSummary_channelStorage,
    channelSummary_lastUpdateTime,

    -- * Column
    Column (..),
    newColumn,
    column_name,
    column_type,

    -- * ContainerDatasetAction
    ContainerDatasetAction (..),
    newContainerDatasetAction,
    containerDatasetAction_variables,
    containerDatasetAction_image,
    containerDatasetAction_executionRoleArn,
    containerDatasetAction_resourceConfiguration,

    -- * CustomerManagedChannelS3Storage
    CustomerManagedChannelS3Storage (..),
    newCustomerManagedChannelS3Storage,
    customerManagedChannelS3Storage_keyPrefix,
    customerManagedChannelS3Storage_bucket,
    customerManagedChannelS3Storage_roleArn,

    -- * CustomerManagedChannelS3StorageSummary
    CustomerManagedChannelS3StorageSummary (..),
    newCustomerManagedChannelS3StorageSummary,
    customerManagedChannelS3StorageSummary_bucket,
    customerManagedChannelS3StorageSummary_keyPrefix,
    customerManagedChannelS3StorageSummary_roleArn,

    -- * CustomerManagedDatastoreS3Storage
    CustomerManagedDatastoreS3Storage (..),
    newCustomerManagedDatastoreS3Storage,
    customerManagedDatastoreS3Storage_keyPrefix,
    customerManagedDatastoreS3Storage_bucket,
    customerManagedDatastoreS3Storage_roleArn,

    -- * CustomerManagedDatastoreS3StorageSummary
    CustomerManagedDatastoreS3StorageSummary (..),
    newCustomerManagedDatastoreS3StorageSummary,
    customerManagedDatastoreS3StorageSummary_bucket,
    customerManagedDatastoreS3StorageSummary_keyPrefix,
    customerManagedDatastoreS3StorageSummary_roleArn,

    -- * Dataset
    Dataset (..),
    newDataset,
    dataset_creationTime,
    dataset_status,
    dataset_versioningConfiguration,
    dataset_arn,
    dataset_actions,
    dataset_triggers,
    dataset_retentionPeriod,
    dataset_lateDataRules,
    dataset_name,
    dataset_contentDeliveryRules,
    dataset_lastUpdateTime,

    -- * DatasetAction
    DatasetAction (..),
    newDatasetAction,
    datasetAction_queryAction,
    datasetAction_actionName,
    datasetAction_containerAction,

    -- * DatasetActionSummary
    DatasetActionSummary (..),
    newDatasetActionSummary,
    datasetActionSummary_actionName,
    datasetActionSummary_actionType,

    -- * DatasetContentDeliveryDestination
    DatasetContentDeliveryDestination (..),
    newDatasetContentDeliveryDestination,
    datasetContentDeliveryDestination_s3DestinationConfiguration,
    datasetContentDeliveryDestination_iotEventsDestinationConfiguration,

    -- * DatasetContentDeliveryRule
    DatasetContentDeliveryRule (..),
    newDatasetContentDeliveryRule,
    datasetContentDeliveryRule_entryName,
    datasetContentDeliveryRule_destination,

    -- * DatasetContentStatus
    DatasetContentStatus (..),
    newDatasetContentStatus,
    datasetContentStatus_state,
    datasetContentStatus_reason,

    -- * DatasetContentSummary
    DatasetContentSummary (..),
    newDatasetContentSummary,
    datasetContentSummary_creationTime,
    datasetContentSummary_status,
    datasetContentSummary_scheduleTime,
    datasetContentSummary_completionTime,
    datasetContentSummary_version,

    -- * DatasetContentVersionValue
    DatasetContentVersionValue (..),
    newDatasetContentVersionValue,
    datasetContentVersionValue_datasetName,

    -- * DatasetEntry
    DatasetEntry (..),
    newDatasetEntry,
    datasetEntry_entryName,
    datasetEntry_dataURI,

    -- * DatasetSummary
    DatasetSummary (..),
    newDatasetSummary,
    datasetSummary_creationTime,
    datasetSummary_status,
    datasetSummary_actions,
    datasetSummary_triggers,
    datasetSummary_datasetName,
    datasetSummary_lastUpdateTime,

    -- * DatasetTrigger
    DatasetTrigger (..),
    newDatasetTrigger,
    datasetTrigger_dataset,
    datasetTrigger_schedule,

    -- * Datastore
    Datastore (..),
    newDatastore,
    datastore_creationTime,
    datastore_status,
    datastore_lastMessageArrivalTime,
    datastore_arn,
    datastore_fileFormatConfiguration,
    datastore_datastorePartitions,
    datastore_storage,
    datastore_retentionPeriod,
    datastore_name,
    datastore_lastUpdateTime,

    -- * DatastoreActivity
    DatastoreActivity (..),
    newDatastoreActivity,
    datastoreActivity_name,
    datastoreActivity_datastoreName,

    -- * DatastoreIotSiteWiseMultiLayerStorage
    DatastoreIotSiteWiseMultiLayerStorage (..),
    newDatastoreIotSiteWiseMultiLayerStorage,
    datastoreIotSiteWiseMultiLayerStorage_customerManagedS3Storage,

    -- * DatastoreIotSiteWiseMultiLayerStorageSummary
    DatastoreIotSiteWiseMultiLayerStorageSummary (..),
    newDatastoreIotSiteWiseMultiLayerStorageSummary,
    datastoreIotSiteWiseMultiLayerStorageSummary_customerManagedS3Storage,

    -- * DatastorePartition
    DatastorePartition (..),
    newDatastorePartition,
    datastorePartition_attributePartition,
    datastorePartition_timestampPartition,

    -- * DatastorePartitions
    DatastorePartitions (..),
    newDatastorePartitions,
    datastorePartitions_partitions,

    -- * DatastoreStatistics
    DatastoreStatistics (..),
    newDatastoreStatistics,
    datastoreStatistics_size,

    -- * DatastoreStorage
    DatastoreStorage (..),
    newDatastoreStorage,
    datastoreStorage_serviceManagedS3,
    datastoreStorage_customerManagedS3,
    datastoreStorage_iotSiteWiseMultiLayerStorage,

    -- * DatastoreStorageSummary
    DatastoreStorageSummary (..),
    newDatastoreStorageSummary,
    datastoreStorageSummary_serviceManagedS3,
    datastoreStorageSummary_customerManagedS3,
    datastoreStorageSummary_iotSiteWiseMultiLayerStorage,

    -- * DatastoreSummary
    DatastoreSummary (..),
    newDatastoreSummary,
    datastoreSummary_creationTime,
    datastoreSummary_status,
    datastoreSummary_lastMessageArrivalTime,
    datastoreSummary_datastoreName,
    datastoreSummary_datastorePartitions,
    datastoreSummary_fileFormatType,
    datastoreSummary_lastUpdateTime,
    datastoreSummary_datastoreStorage,

    -- * DeltaTime
    DeltaTime (..),
    newDeltaTime,
    deltaTime_offsetSeconds,
    deltaTime_timeExpression,

    -- * DeltaTimeSessionWindowConfiguration
    DeltaTimeSessionWindowConfiguration (..),
    newDeltaTimeSessionWindowConfiguration,
    deltaTimeSessionWindowConfiguration_timeoutInMinutes,

    -- * DeviceRegistryEnrichActivity
    DeviceRegistryEnrichActivity (..),
    newDeviceRegistryEnrichActivity,
    deviceRegistryEnrichActivity_next,
    deviceRegistryEnrichActivity_name,
    deviceRegistryEnrichActivity_attribute,
    deviceRegistryEnrichActivity_thingName,
    deviceRegistryEnrichActivity_roleArn,

    -- * DeviceShadowEnrichActivity
    DeviceShadowEnrichActivity (..),
    newDeviceShadowEnrichActivity,
    deviceShadowEnrichActivity_next,
    deviceShadowEnrichActivity_name,
    deviceShadowEnrichActivity_attribute,
    deviceShadowEnrichActivity_thingName,
    deviceShadowEnrichActivity_roleArn,

    -- * EstimatedResourceSize
    EstimatedResourceSize (..),
    newEstimatedResourceSize,
    estimatedResourceSize_estimatedOn,
    estimatedResourceSize_estimatedSizeInBytes,

    -- * FileFormatConfiguration
    FileFormatConfiguration (..),
    newFileFormatConfiguration,
    fileFormatConfiguration_jsonConfiguration,
    fileFormatConfiguration_parquetConfiguration,

    -- * FilterActivity
    FilterActivity (..),
    newFilterActivity,
    filterActivity_next,
    filterActivity_name,
    filterActivity_filter,

    -- * GlueConfiguration
    GlueConfiguration (..),
    newGlueConfiguration,
    glueConfiguration_tableName,
    glueConfiguration_databaseName,

    -- * IotEventsDestinationConfiguration
    IotEventsDestinationConfiguration (..),
    newIotEventsDestinationConfiguration,
    iotEventsDestinationConfiguration_inputName,
    iotEventsDestinationConfiguration_roleArn,

    -- * IotSiteWiseCustomerManagedDatastoreS3Storage
    IotSiteWiseCustomerManagedDatastoreS3Storage (..),
    newIotSiteWiseCustomerManagedDatastoreS3Storage,
    iotSiteWiseCustomerManagedDatastoreS3Storage_keyPrefix,
    iotSiteWiseCustomerManagedDatastoreS3Storage_bucket,

    -- * IotSiteWiseCustomerManagedDatastoreS3StorageSummary
    IotSiteWiseCustomerManagedDatastoreS3StorageSummary (..),
    newIotSiteWiseCustomerManagedDatastoreS3StorageSummary,
    iotSiteWiseCustomerManagedDatastoreS3StorageSummary_bucket,
    iotSiteWiseCustomerManagedDatastoreS3StorageSummary_keyPrefix,

    -- * JsonConfiguration
    JsonConfiguration (..),
    newJsonConfiguration,

    -- * LambdaActivity
    LambdaActivity (..),
    newLambdaActivity,
    lambdaActivity_next,
    lambdaActivity_name,
    lambdaActivity_lambdaName,
    lambdaActivity_batchSize,

    -- * LateDataRule
    LateDataRule (..),
    newLateDataRule,
    lateDataRule_ruleName,
    lateDataRule_ruleConfiguration,

    -- * LateDataRuleConfiguration
    LateDataRuleConfiguration (..),
    newLateDataRuleConfiguration,
    lateDataRuleConfiguration_deltaTimeSessionWindowConfiguration,

    -- * LoggingOptions
    LoggingOptions (..),
    newLoggingOptions,
    loggingOptions_roleArn,
    loggingOptions_level,
    loggingOptions_enabled,

    -- * MathActivity
    MathActivity (..),
    newMathActivity,
    mathActivity_next,
    mathActivity_name,
    mathActivity_attribute,
    mathActivity_math,

    -- * Message
    Message (..),
    newMessage,
    message_messageId,
    message_payload,

    -- * OutputFileUriValue
    OutputFileUriValue (..),
    newOutputFileUriValue,
    outputFileUriValue_fileName,

    -- * ParquetConfiguration
    ParquetConfiguration (..),
    newParquetConfiguration,
    parquetConfiguration_schemaDefinition,

    -- * Partition
    Partition (..),
    newPartition,
    partition_attributeName,

    -- * Pipeline
    Pipeline (..),
    newPipeline,
    pipeline_creationTime,
    pipeline_arn,
    pipeline_activities,
    pipeline_name,
    pipeline_reprocessingSummaries,
    pipeline_lastUpdateTime,

    -- * PipelineActivity
    PipelineActivity (..),
    newPipelineActivity,
    pipelineActivity_selectAttributes,
    pipelineActivity_channel,
    pipelineActivity_addAttributes,
    pipelineActivity_deviceRegistryEnrich,
    pipelineActivity_removeAttributes,
    pipelineActivity_lambda,
    pipelineActivity_datastore,
    pipelineActivity_deviceShadowEnrich,
    pipelineActivity_filter,
    pipelineActivity_math,

    -- * PipelineSummary
    PipelineSummary (..),
    newPipelineSummary,
    pipelineSummary_creationTime,
    pipelineSummary_pipelineName,
    pipelineSummary_reprocessingSummaries,
    pipelineSummary_lastUpdateTime,

    -- * QueryFilter
    QueryFilter (..),
    newQueryFilter,
    queryFilter_deltaTime,

    -- * RemoveAttributesActivity
    RemoveAttributesActivity (..),
    newRemoveAttributesActivity,
    removeAttributesActivity_next,
    removeAttributesActivity_name,
    removeAttributesActivity_attributes,

    -- * ReprocessingSummary
    ReprocessingSummary (..),
    newReprocessingSummary,
    reprocessingSummary_creationTime,
    reprocessingSummary_status,
    reprocessingSummary_id,

    -- * ResourceConfiguration
    ResourceConfiguration (..),
    newResourceConfiguration,
    resourceConfiguration_computeType,
    resourceConfiguration_volumeSizeInGB,

    -- * RetentionPeriod
    RetentionPeriod (..),
    newRetentionPeriod,
    retentionPeriod_unlimited,
    retentionPeriod_numberOfDays,

    -- * S3DestinationConfiguration
    S3DestinationConfiguration (..),
    newS3DestinationConfiguration,
    s3DestinationConfiguration_glueConfiguration,
    s3DestinationConfiguration_bucket,
    s3DestinationConfiguration_key,
    s3DestinationConfiguration_roleArn,

    -- * Schedule
    Schedule (..),
    newSchedule,
    schedule_expression,

    -- * SchemaDefinition
    SchemaDefinition (..),
    newSchemaDefinition,
    schemaDefinition_columns,

    -- * SelectAttributesActivity
    SelectAttributesActivity (..),
    newSelectAttributesActivity,
    selectAttributesActivity_next,
    selectAttributesActivity_name,
    selectAttributesActivity_attributes,

    -- * ServiceManagedChannelS3Storage
    ServiceManagedChannelS3Storage (..),
    newServiceManagedChannelS3Storage,

    -- * ServiceManagedChannelS3StorageSummary
    ServiceManagedChannelS3StorageSummary (..),
    newServiceManagedChannelS3StorageSummary,

    -- * ServiceManagedDatastoreS3Storage
    ServiceManagedDatastoreS3Storage (..),
    newServiceManagedDatastoreS3Storage,

    -- * ServiceManagedDatastoreS3StorageSummary
    ServiceManagedDatastoreS3StorageSummary (..),
    newServiceManagedDatastoreS3StorageSummary,

    -- * SqlQueryDatasetAction
    SqlQueryDatasetAction (..),
    newSqlQueryDatasetAction,
    sqlQueryDatasetAction_filters,
    sqlQueryDatasetAction_sqlQuery,

    -- * Tag
    Tag (..),
    newTag,
    tag_key,
    tag_value,

    -- * TimestampPartition
    TimestampPartition (..),
    newTimestampPartition,
    timestampPartition_timestampFormat,
    timestampPartition_attributeName,

    -- * TriggeringDataset
    TriggeringDataset (..),
    newTriggeringDataset,
    triggeringDataset_name,

    -- * Variable
    Variable (..),
    newVariable,
    variable_outputFileUriValue,
    variable_doubleValue,
    variable_stringValue,
    variable_datasetContentVersionValue,
    variable_name,

    -- * VersioningConfiguration
    VersioningConfiguration (..),
    newVersioningConfiguration,
    versioningConfiguration_unlimited,
    versioningConfiguration_maxVersions,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTAnalytics.Types.AddAttributesActivity
import Network.AWS.IoTAnalytics.Types.BatchPutMessageErrorEntry
import Network.AWS.IoTAnalytics.Types.Channel
import Network.AWS.IoTAnalytics.Types.ChannelActivity
import Network.AWS.IoTAnalytics.Types.ChannelMessages
import Network.AWS.IoTAnalytics.Types.ChannelStatistics
import Network.AWS.IoTAnalytics.Types.ChannelStatus
import Network.AWS.IoTAnalytics.Types.ChannelStorage
import Network.AWS.IoTAnalytics.Types.ChannelStorageSummary
import Network.AWS.IoTAnalytics.Types.ChannelSummary
import Network.AWS.IoTAnalytics.Types.Column
import Network.AWS.IoTAnalytics.Types.ComputeType
import Network.AWS.IoTAnalytics.Types.ContainerDatasetAction
import Network.AWS.IoTAnalytics.Types.CustomerManagedChannelS3Storage
import Network.AWS.IoTAnalytics.Types.CustomerManagedChannelS3StorageSummary
import Network.AWS.IoTAnalytics.Types.CustomerManagedDatastoreS3Storage
import Network.AWS.IoTAnalytics.Types.CustomerManagedDatastoreS3StorageSummary
import Network.AWS.IoTAnalytics.Types.Dataset
import Network.AWS.IoTAnalytics.Types.DatasetAction
import Network.AWS.IoTAnalytics.Types.DatasetActionSummary
import Network.AWS.IoTAnalytics.Types.DatasetActionType
import Network.AWS.IoTAnalytics.Types.DatasetContentDeliveryDestination
import Network.AWS.IoTAnalytics.Types.DatasetContentDeliveryRule
import Network.AWS.IoTAnalytics.Types.DatasetContentState
import Network.AWS.IoTAnalytics.Types.DatasetContentStatus
import Network.AWS.IoTAnalytics.Types.DatasetContentSummary
import Network.AWS.IoTAnalytics.Types.DatasetContentVersionValue
import Network.AWS.IoTAnalytics.Types.DatasetEntry
import Network.AWS.IoTAnalytics.Types.DatasetStatus
import Network.AWS.IoTAnalytics.Types.DatasetSummary
import Network.AWS.IoTAnalytics.Types.DatasetTrigger
import Network.AWS.IoTAnalytics.Types.Datastore
import Network.AWS.IoTAnalytics.Types.DatastoreActivity
import Network.AWS.IoTAnalytics.Types.DatastoreIotSiteWiseMultiLayerStorage
import Network.AWS.IoTAnalytics.Types.DatastoreIotSiteWiseMultiLayerStorageSummary
import Network.AWS.IoTAnalytics.Types.DatastorePartition
import Network.AWS.IoTAnalytics.Types.DatastorePartitions
import Network.AWS.IoTAnalytics.Types.DatastoreStatistics
import Network.AWS.IoTAnalytics.Types.DatastoreStatus
import Network.AWS.IoTAnalytics.Types.DatastoreStorage
import Network.AWS.IoTAnalytics.Types.DatastoreStorageSummary
import Network.AWS.IoTAnalytics.Types.DatastoreSummary
import Network.AWS.IoTAnalytics.Types.DeltaTime
import Network.AWS.IoTAnalytics.Types.DeltaTimeSessionWindowConfiguration
import Network.AWS.IoTAnalytics.Types.DeviceRegistryEnrichActivity
import Network.AWS.IoTAnalytics.Types.DeviceShadowEnrichActivity
import Network.AWS.IoTAnalytics.Types.EstimatedResourceSize
import Network.AWS.IoTAnalytics.Types.FileFormatConfiguration
import Network.AWS.IoTAnalytics.Types.FileFormatType
import Network.AWS.IoTAnalytics.Types.FilterActivity
import Network.AWS.IoTAnalytics.Types.GlueConfiguration
import Network.AWS.IoTAnalytics.Types.IotEventsDestinationConfiguration
import Network.AWS.IoTAnalytics.Types.IotSiteWiseCustomerManagedDatastoreS3Storage
import Network.AWS.IoTAnalytics.Types.IotSiteWiseCustomerManagedDatastoreS3StorageSummary
import Network.AWS.IoTAnalytics.Types.JsonConfiguration
import Network.AWS.IoTAnalytics.Types.LambdaActivity
import Network.AWS.IoTAnalytics.Types.LateDataRule
import Network.AWS.IoTAnalytics.Types.LateDataRuleConfiguration
import Network.AWS.IoTAnalytics.Types.LoggingLevel
import Network.AWS.IoTAnalytics.Types.LoggingOptions
import Network.AWS.IoTAnalytics.Types.MathActivity
import Network.AWS.IoTAnalytics.Types.Message
import Network.AWS.IoTAnalytics.Types.OutputFileUriValue
import Network.AWS.IoTAnalytics.Types.ParquetConfiguration
import Network.AWS.IoTAnalytics.Types.Partition
import Network.AWS.IoTAnalytics.Types.Pipeline
import Network.AWS.IoTAnalytics.Types.PipelineActivity
import Network.AWS.IoTAnalytics.Types.PipelineSummary
import Network.AWS.IoTAnalytics.Types.QueryFilter
import Network.AWS.IoTAnalytics.Types.RemoveAttributesActivity
import Network.AWS.IoTAnalytics.Types.ReprocessingStatus
import Network.AWS.IoTAnalytics.Types.ReprocessingSummary
import Network.AWS.IoTAnalytics.Types.ResourceConfiguration
import Network.AWS.IoTAnalytics.Types.RetentionPeriod
import Network.AWS.IoTAnalytics.Types.S3DestinationConfiguration
import Network.AWS.IoTAnalytics.Types.Schedule
import Network.AWS.IoTAnalytics.Types.SchemaDefinition
import Network.AWS.IoTAnalytics.Types.SelectAttributesActivity
import Network.AWS.IoTAnalytics.Types.ServiceManagedChannelS3Storage
import Network.AWS.IoTAnalytics.Types.ServiceManagedChannelS3StorageSummary
import Network.AWS.IoTAnalytics.Types.ServiceManagedDatastoreS3Storage
import Network.AWS.IoTAnalytics.Types.ServiceManagedDatastoreS3StorageSummary
import Network.AWS.IoTAnalytics.Types.SqlQueryDatasetAction
import Network.AWS.IoTAnalytics.Types.Tag
import Network.AWS.IoTAnalytics.Types.TimestampPartition
import Network.AWS.IoTAnalytics.Types.TriggeringDataset
import Network.AWS.IoTAnalytics.Types.Variable
import Network.AWS.IoTAnalytics.Types.VersioningConfiguration
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2017-11-27@ of the Amazon IoT Analytics SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "IoTAnalytics",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "iotanalytics",
      Core._serviceSigningName = "iotanalytics",
      Core._serviceVersion = "2017-11-27",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "IoTAnalytics",
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

-- | The request was not valid.
_InvalidRequestException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidRequestException =
  Core._MatchServiceError
    defaultService
    "InvalidRequestException"
    Prelude.. Core.hasStatus 400

-- | A resource with the same name already exists.
_ResourceAlreadyExistsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceAlreadyExistsException =
  Core._MatchServiceError
    defaultService
    "ResourceAlreadyExistsException"
    Prelude.. Core.hasStatus 409

-- | The request was denied due to request throttling.
_ThrottlingException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ThrottlingException =
  Core._MatchServiceError
    defaultService
    "ThrottlingException"
    Prelude.. Core.hasStatus 429

-- | There was an internal failure.
_InternalFailureException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalFailureException =
  Core._MatchServiceError
    defaultService
    "InternalFailureException"
    Prelude.. Core.hasStatus 500

-- | The service is temporarily unavailable.
_ServiceUnavailableException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceUnavailableException =
  Core._MatchServiceError
    defaultService
    "ServiceUnavailableException"
    Prelude.. Core.hasStatus 503

-- | A resource with the specified name could not be found.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Core.hasStatus 404

-- | The command caused an internal limit to be exceeded.
_LimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LimitExceededException =
  Core._MatchServiceError
    defaultService
    "LimitExceededException"
    Prelude.. Core.hasStatus 410
