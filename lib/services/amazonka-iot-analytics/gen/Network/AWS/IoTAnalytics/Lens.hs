{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Lens
  ( -- * Operations

    -- ** DescribePipeline
    describePipeline_pipelineName,
    describePipelineResponse_pipeline,
    describePipelineResponse_httpStatus,

    -- ** DescribeDataset
    describeDataset_datasetName,
    describeDatasetResponse_dataset,
    describeDatasetResponse_httpStatus,

    -- ** ListChannels
    listChannels_nextToken,
    listChannels_maxResults,
    listChannelsResponse_channelSummaries,
    listChannelsResponse_nextToken,
    listChannelsResponse_httpStatus,

    -- ** ListDatasetContents
    listDatasetContents_nextToken,
    listDatasetContents_scheduledBefore,
    listDatasetContents_maxResults,
    listDatasetContents_scheduledOnOrAfter,
    listDatasetContents_datasetName,
    listDatasetContentsResponse_datasetContentSummaries,
    listDatasetContentsResponse_nextToken,
    listDatasetContentsResponse_httpStatus,

    -- ** PutLoggingOptions
    putLoggingOptions_loggingOptions,

    -- ** ListTagsForResource
    listTagsForResource_resourceArn,
    listTagsForResourceResponse_tags,
    listTagsForResourceResponse_httpStatus,

    -- ** DeleteChannel
    deleteChannel_channelName,

    -- ** UpdateChannel
    updateChannel_retentionPeriod,
    updateChannel_channelStorage,
    updateChannel_channelName,

    -- ** SampleChannelData
    sampleChannelData_startTime,
    sampleChannelData_maxMessages,
    sampleChannelData_endTime,
    sampleChannelData_channelName,
    sampleChannelDataResponse_payloads,
    sampleChannelDataResponse_httpStatus,

    -- ** CancelPipelineReprocessing
    cancelPipelineReprocessing_pipelineName,
    cancelPipelineReprocessing_reprocessingId,
    cancelPipelineReprocessingResponse_httpStatus,

    -- ** CreateDatastore
    createDatastore_fileFormatConfiguration,
    createDatastore_datastorePartitions,
    createDatastore_retentionPeriod,
    createDatastore_datastoreStorage,
    createDatastore_tags,
    createDatastore_datastoreName,
    createDatastoreResponse_datastoreArn,
    createDatastoreResponse_datastoreName,
    createDatastoreResponse_retentionPeriod,
    createDatastoreResponse_httpStatus,

    -- ** UpdatePipeline
    updatePipeline_pipelineName,
    updatePipeline_pipelineActivities,

    -- ** DeletePipeline
    deletePipeline_pipelineName,

    -- ** DeleteDataset
    deleteDataset_datasetName,

    -- ** UpdateDataset
    updateDataset_versioningConfiguration,
    updateDataset_triggers,
    updateDataset_retentionPeriod,
    updateDataset_lateDataRules,
    updateDataset_contentDeliveryRules,
    updateDataset_datasetName,
    updateDataset_actions,

    -- ** ListPipelines
    listPipelines_nextToken,
    listPipelines_maxResults,
    listPipelinesResponse_pipelineSummaries,
    listPipelinesResponse_nextToken,
    listPipelinesResponse_httpStatus,

    -- ** DeleteDatastore
    deleteDatastore_datastoreName,

    -- ** UpdateDatastore
    updateDatastore_fileFormatConfiguration,
    updateDatastore_retentionPeriod,
    updateDatastore_datastoreStorage,
    updateDatastore_datastoreName,

    -- ** CreateDataset
    createDataset_versioningConfiguration,
    createDataset_triggers,
    createDataset_retentionPeriod,
    createDataset_lateDataRules,
    createDataset_contentDeliveryRules,
    createDataset_tags,
    createDataset_datasetName,
    createDataset_actions,
    createDatasetResponse_datasetArn,
    createDatasetResponse_retentionPeriod,
    createDatasetResponse_datasetName,
    createDatasetResponse_httpStatus,

    -- ** BatchPutMessage
    batchPutMessage_channelName,
    batchPutMessage_messages,
    batchPutMessageResponse_batchPutMessageErrorEntries,
    batchPutMessageResponse_httpStatus,

    -- ** ListDatastores
    listDatastores_nextToken,
    listDatastores_maxResults,
    listDatastoresResponse_nextToken,
    listDatastoresResponse_datastoreSummaries,
    listDatastoresResponse_httpStatus,

    -- ** CreateDatasetContent
    createDatasetContent_versionId,
    createDatasetContent_datasetName,
    createDatasetContentResponse_versionId,
    createDatasetContentResponse_httpStatus,

    -- ** CreateChannel
    createChannel_retentionPeriod,
    createChannel_channelStorage,
    createChannel_tags,
    createChannel_channelName,
    createChannelResponse_channelArn,
    createChannelResponse_retentionPeriod,
    createChannelResponse_channelName,
    createChannelResponse_httpStatus,

    -- ** DeleteDatasetContent
    deleteDatasetContent_versionId,
    deleteDatasetContent_datasetName,

    -- ** DescribeDatastore
    describeDatastore_includeStatistics,
    describeDatastore_datastoreName,
    describeDatastoreResponse_datastore,
    describeDatastoreResponse_statistics,
    describeDatastoreResponse_httpStatus,

    -- ** GetDatasetContent
    getDatasetContent_versionId,
    getDatasetContent_datasetName,
    getDatasetContentResponse_status,
    getDatasetContentResponse_entries,
    getDatasetContentResponse_timestamp,
    getDatasetContentResponse_httpStatus,

    -- ** TagResource
    tagResource_resourceArn,
    tagResource_tags,
    tagResourceResponse_httpStatus,

    -- ** ListDatasets
    listDatasets_nextToken,
    listDatasets_maxResults,
    listDatasetsResponse_nextToken,
    listDatasetsResponse_datasetSummaries,
    listDatasetsResponse_httpStatus,

    -- ** UntagResource
    untagResource_resourceArn,
    untagResource_tagKeys,
    untagResourceResponse_httpStatus,

    -- ** RunPipelineActivity
    runPipelineActivity_pipelineActivity,
    runPipelineActivity_payloads,
    runPipelineActivityResponse_logResult,
    runPipelineActivityResponse_payloads,
    runPipelineActivityResponse_httpStatus,

    -- ** DescribeChannel
    describeChannel_includeStatistics,
    describeChannel_channelName,
    describeChannelResponse_channel,
    describeChannelResponse_statistics,
    describeChannelResponse_httpStatus,

    -- ** CreatePipeline
    createPipeline_tags,
    createPipeline_pipelineName,
    createPipeline_pipelineActivities,
    createPipelineResponse_pipelineName,
    createPipelineResponse_pipelineArn,
    createPipelineResponse_httpStatus,

    -- ** StartPipelineReprocessing
    startPipelineReprocessing_startTime,
    startPipelineReprocessing_endTime,
    startPipelineReprocessing_channelMessages,
    startPipelineReprocessing_pipelineName,
    startPipelineReprocessingResponse_reprocessingId,
    startPipelineReprocessingResponse_httpStatus,

    -- ** DescribeLoggingOptions
    describeLoggingOptionsResponse_loggingOptions,
    describeLoggingOptionsResponse_httpStatus,

    -- * Types

    -- ** AddAttributesActivity
    addAttributesActivity_next,
    addAttributesActivity_name,
    addAttributesActivity_attributes,

    -- ** BatchPutMessageErrorEntry
    batchPutMessageErrorEntry_errorCode,
    batchPutMessageErrorEntry_errorMessage,
    batchPutMessageErrorEntry_messageId,

    -- ** Channel
    channel_creationTime,
    channel_status,
    channel_lastMessageArrivalTime,
    channel_arn,
    channel_storage,
    channel_retentionPeriod,
    channel_name,
    channel_lastUpdateTime,

    -- ** ChannelActivity
    channelActivity_next,
    channelActivity_name,
    channelActivity_channelName,

    -- ** ChannelMessages
    channelMessages_s3Paths,

    -- ** ChannelStatistics
    channelStatistics_size,

    -- ** ChannelStorage
    channelStorage_serviceManagedS3,
    channelStorage_customerManagedS3,

    -- ** ChannelStorageSummary
    channelStorageSummary_serviceManagedS3,
    channelStorageSummary_customerManagedS3,

    -- ** ChannelSummary
    channelSummary_creationTime,
    channelSummary_status,
    channelSummary_lastMessageArrivalTime,
    channelSummary_channelName,
    channelSummary_channelStorage,
    channelSummary_lastUpdateTime,

    -- ** Column
    column_name,
    column_type,

    -- ** ContainerDatasetAction
    containerDatasetAction_variables,
    containerDatasetAction_image,
    containerDatasetAction_executionRoleArn,
    containerDatasetAction_resourceConfiguration,

    -- ** CustomerManagedChannelS3Storage
    customerManagedChannelS3Storage_keyPrefix,
    customerManagedChannelS3Storage_bucket,
    customerManagedChannelS3Storage_roleArn,

    -- ** CustomerManagedChannelS3StorageSummary
    customerManagedChannelS3StorageSummary_bucket,
    customerManagedChannelS3StorageSummary_keyPrefix,
    customerManagedChannelS3StorageSummary_roleArn,

    -- ** CustomerManagedDatastoreS3Storage
    customerManagedDatastoreS3Storage_keyPrefix,
    customerManagedDatastoreS3Storage_bucket,
    customerManagedDatastoreS3Storage_roleArn,

    -- ** CustomerManagedDatastoreS3StorageSummary
    customerManagedDatastoreS3StorageSummary_bucket,
    customerManagedDatastoreS3StorageSummary_keyPrefix,
    customerManagedDatastoreS3StorageSummary_roleArn,

    -- ** Dataset
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

    -- ** DatasetAction
    datasetAction_queryAction,
    datasetAction_actionName,
    datasetAction_containerAction,

    -- ** DatasetActionSummary
    datasetActionSummary_actionName,
    datasetActionSummary_actionType,

    -- ** DatasetContentDeliveryDestination
    datasetContentDeliveryDestination_s3DestinationConfiguration,
    datasetContentDeliveryDestination_iotEventsDestinationConfiguration,

    -- ** DatasetContentDeliveryRule
    datasetContentDeliveryRule_entryName,
    datasetContentDeliveryRule_destination,

    -- ** DatasetContentStatus
    datasetContentStatus_state,
    datasetContentStatus_reason,

    -- ** DatasetContentSummary
    datasetContentSummary_creationTime,
    datasetContentSummary_status,
    datasetContentSummary_scheduleTime,
    datasetContentSummary_completionTime,
    datasetContentSummary_version,

    -- ** DatasetContentVersionValue
    datasetContentVersionValue_datasetName,

    -- ** DatasetEntry
    datasetEntry_entryName,
    datasetEntry_dataURI,

    -- ** DatasetSummary
    datasetSummary_creationTime,
    datasetSummary_status,
    datasetSummary_actions,
    datasetSummary_triggers,
    datasetSummary_datasetName,
    datasetSummary_lastUpdateTime,

    -- ** DatasetTrigger
    datasetTrigger_dataset,
    datasetTrigger_schedule,

    -- ** Datastore
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

    -- ** DatastoreActivity
    datastoreActivity_name,
    datastoreActivity_datastoreName,

    -- ** DatastoreIotSiteWiseMultiLayerStorage
    datastoreIotSiteWiseMultiLayerStorage_customerManagedS3Storage,

    -- ** DatastoreIotSiteWiseMultiLayerStorageSummary
    datastoreIotSiteWiseMultiLayerStorageSummary_customerManagedS3Storage,

    -- ** DatastorePartition
    datastorePartition_attributePartition,
    datastorePartition_timestampPartition,

    -- ** DatastorePartitions
    datastorePartitions_partitions,

    -- ** DatastoreStatistics
    datastoreStatistics_size,

    -- ** DatastoreStorage
    datastoreStorage_serviceManagedS3,
    datastoreStorage_customerManagedS3,
    datastoreStorage_iotSiteWiseMultiLayerStorage,

    -- ** DatastoreStorageSummary
    datastoreStorageSummary_serviceManagedS3,
    datastoreStorageSummary_customerManagedS3,
    datastoreStorageSummary_iotSiteWiseMultiLayerStorage,

    -- ** DatastoreSummary
    datastoreSummary_creationTime,
    datastoreSummary_status,
    datastoreSummary_lastMessageArrivalTime,
    datastoreSummary_datastoreName,
    datastoreSummary_datastorePartitions,
    datastoreSummary_fileFormatType,
    datastoreSummary_lastUpdateTime,
    datastoreSummary_datastoreStorage,

    -- ** DeltaTime
    deltaTime_offsetSeconds,
    deltaTime_timeExpression,

    -- ** DeltaTimeSessionWindowConfiguration
    deltaTimeSessionWindowConfiguration_timeoutInMinutes,

    -- ** DeviceRegistryEnrichActivity
    deviceRegistryEnrichActivity_next,
    deviceRegistryEnrichActivity_name,
    deviceRegistryEnrichActivity_attribute,
    deviceRegistryEnrichActivity_thingName,
    deviceRegistryEnrichActivity_roleArn,

    -- ** DeviceShadowEnrichActivity
    deviceShadowEnrichActivity_next,
    deviceShadowEnrichActivity_name,
    deviceShadowEnrichActivity_attribute,
    deviceShadowEnrichActivity_thingName,
    deviceShadowEnrichActivity_roleArn,

    -- ** EstimatedResourceSize
    estimatedResourceSize_estimatedOn,
    estimatedResourceSize_estimatedSizeInBytes,

    -- ** FileFormatConfiguration
    fileFormatConfiguration_jsonConfiguration,
    fileFormatConfiguration_parquetConfiguration,

    -- ** FilterActivity
    filterActivity_next,
    filterActivity_name,
    filterActivity_filter,

    -- ** GlueConfiguration
    glueConfiguration_tableName,
    glueConfiguration_databaseName,

    -- ** IotEventsDestinationConfiguration
    iotEventsDestinationConfiguration_inputName,
    iotEventsDestinationConfiguration_roleArn,

    -- ** IotSiteWiseCustomerManagedDatastoreS3Storage
    iotSiteWiseCustomerManagedDatastoreS3Storage_keyPrefix,
    iotSiteWiseCustomerManagedDatastoreS3Storage_bucket,

    -- ** IotSiteWiseCustomerManagedDatastoreS3StorageSummary
    iotSiteWiseCustomerManagedDatastoreS3StorageSummary_bucket,
    iotSiteWiseCustomerManagedDatastoreS3StorageSummary_keyPrefix,

    -- ** JsonConfiguration

    -- ** LambdaActivity
    lambdaActivity_next,
    lambdaActivity_name,
    lambdaActivity_lambdaName,
    lambdaActivity_batchSize,

    -- ** LateDataRule
    lateDataRule_ruleName,
    lateDataRule_ruleConfiguration,

    -- ** LateDataRuleConfiguration
    lateDataRuleConfiguration_deltaTimeSessionWindowConfiguration,

    -- ** LoggingOptions
    loggingOptions_roleArn,
    loggingOptions_level,
    loggingOptions_enabled,

    -- ** MathActivity
    mathActivity_next,
    mathActivity_name,
    mathActivity_attribute,
    mathActivity_math,

    -- ** Message
    message_messageId,
    message_payload,

    -- ** OutputFileUriValue
    outputFileUriValue_fileName,

    -- ** ParquetConfiguration
    parquetConfiguration_schemaDefinition,

    -- ** Partition
    partition_attributeName,

    -- ** Pipeline
    pipeline_creationTime,
    pipeline_arn,
    pipeline_activities,
    pipeline_name,
    pipeline_reprocessingSummaries,
    pipeline_lastUpdateTime,

    -- ** PipelineActivity
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

    -- ** PipelineSummary
    pipelineSummary_creationTime,
    pipelineSummary_pipelineName,
    pipelineSummary_reprocessingSummaries,
    pipelineSummary_lastUpdateTime,

    -- ** QueryFilter
    queryFilter_deltaTime,

    -- ** RemoveAttributesActivity
    removeAttributesActivity_next,
    removeAttributesActivity_name,
    removeAttributesActivity_attributes,

    -- ** ReprocessingSummary
    reprocessingSummary_creationTime,
    reprocessingSummary_status,
    reprocessingSummary_id,

    -- ** ResourceConfiguration
    resourceConfiguration_computeType,
    resourceConfiguration_volumeSizeInGB,

    -- ** RetentionPeriod
    retentionPeriod_unlimited,
    retentionPeriod_numberOfDays,

    -- ** S3DestinationConfiguration
    s3DestinationConfiguration_glueConfiguration,
    s3DestinationConfiguration_bucket,
    s3DestinationConfiguration_key,
    s3DestinationConfiguration_roleArn,

    -- ** Schedule
    schedule_expression,

    -- ** SchemaDefinition
    schemaDefinition_columns,

    -- ** SelectAttributesActivity
    selectAttributesActivity_next,
    selectAttributesActivity_name,
    selectAttributesActivity_attributes,

    -- ** ServiceManagedChannelS3Storage

    -- ** ServiceManagedChannelS3StorageSummary

    -- ** ServiceManagedDatastoreS3Storage

    -- ** ServiceManagedDatastoreS3StorageSummary

    -- ** SqlQueryDatasetAction
    sqlQueryDatasetAction_filters,
    sqlQueryDatasetAction_sqlQuery,

    -- ** Tag
    tag_key,
    tag_value,

    -- ** TimestampPartition
    timestampPartition_timestampFormat,
    timestampPartition_attributeName,

    -- ** TriggeringDataset
    triggeringDataset_name,

    -- ** Variable
    variable_outputFileUriValue,
    variable_doubleValue,
    variable_stringValue,
    variable_datasetContentVersionValue,
    variable_name,

    -- ** VersioningConfiguration
    versioningConfiguration_unlimited,
    versioningConfiguration_maxVersions,
  )
where

import Network.AWS.IoTAnalytics.BatchPutMessage
import Network.AWS.IoTAnalytics.CancelPipelineReprocessing
import Network.AWS.IoTAnalytics.CreateChannel
import Network.AWS.IoTAnalytics.CreateDataset
import Network.AWS.IoTAnalytics.CreateDatasetContent
import Network.AWS.IoTAnalytics.CreateDatastore
import Network.AWS.IoTAnalytics.CreatePipeline
import Network.AWS.IoTAnalytics.DeleteChannel
import Network.AWS.IoTAnalytics.DeleteDataset
import Network.AWS.IoTAnalytics.DeleteDatasetContent
import Network.AWS.IoTAnalytics.DeleteDatastore
import Network.AWS.IoTAnalytics.DeletePipeline
import Network.AWS.IoTAnalytics.DescribeChannel
import Network.AWS.IoTAnalytics.DescribeDataset
import Network.AWS.IoTAnalytics.DescribeDatastore
import Network.AWS.IoTAnalytics.DescribeLoggingOptions
import Network.AWS.IoTAnalytics.DescribePipeline
import Network.AWS.IoTAnalytics.GetDatasetContent
import Network.AWS.IoTAnalytics.ListChannels
import Network.AWS.IoTAnalytics.ListDatasetContents
import Network.AWS.IoTAnalytics.ListDatasets
import Network.AWS.IoTAnalytics.ListDatastores
import Network.AWS.IoTAnalytics.ListPipelines
import Network.AWS.IoTAnalytics.ListTagsForResource
import Network.AWS.IoTAnalytics.PutLoggingOptions
import Network.AWS.IoTAnalytics.RunPipelineActivity
import Network.AWS.IoTAnalytics.SampleChannelData
import Network.AWS.IoTAnalytics.StartPipelineReprocessing
import Network.AWS.IoTAnalytics.TagResource
import Network.AWS.IoTAnalytics.Types.AddAttributesActivity
import Network.AWS.IoTAnalytics.Types.BatchPutMessageErrorEntry
import Network.AWS.IoTAnalytics.Types.Channel
import Network.AWS.IoTAnalytics.Types.ChannelActivity
import Network.AWS.IoTAnalytics.Types.ChannelMessages
import Network.AWS.IoTAnalytics.Types.ChannelStatistics
import Network.AWS.IoTAnalytics.Types.ChannelStorage
import Network.AWS.IoTAnalytics.Types.ChannelStorageSummary
import Network.AWS.IoTAnalytics.Types.ChannelSummary
import Network.AWS.IoTAnalytics.Types.Column
import Network.AWS.IoTAnalytics.Types.ContainerDatasetAction
import Network.AWS.IoTAnalytics.Types.CustomerManagedChannelS3Storage
import Network.AWS.IoTAnalytics.Types.CustomerManagedChannelS3StorageSummary
import Network.AWS.IoTAnalytics.Types.CustomerManagedDatastoreS3Storage
import Network.AWS.IoTAnalytics.Types.CustomerManagedDatastoreS3StorageSummary
import Network.AWS.IoTAnalytics.Types.Dataset
import Network.AWS.IoTAnalytics.Types.DatasetAction
import Network.AWS.IoTAnalytics.Types.DatasetActionSummary
import Network.AWS.IoTAnalytics.Types.DatasetContentDeliveryDestination
import Network.AWS.IoTAnalytics.Types.DatasetContentDeliveryRule
import Network.AWS.IoTAnalytics.Types.DatasetContentStatus
import Network.AWS.IoTAnalytics.Types.DatasetContentSummary
import Network.AWS.IoTAnalytics.Types.DatasetContentVersionValue
import Network.AWS.IoTAnalytics.Types.DatasetEntry
import Network.AWS.IoTAnalytics.Types.DatasetSummary
import Network.AWS.IoTAnalytics.Types.DatasetTrigger
import Network.AWS.IoTAnalytics.Types.Datastore
import Network.AWS.IoTAnalytics.Types.DatastoreActivity
import Network.AWS.IoTAnalytics.Types.DatastoreIotSiteWiseMultiLayerStorage
import Network.AWS.IoTAnalytics.Types.DatastoreIotSiteWiseMultiLayerStorageSummary
import Network.AWS.IoTAnalytics.Types.DatastorePartition
import Network.AWS.IoTAnalytics.Types.DatastorePartitions
import Network.AWS.IoTAnalytics.Types.DatastoreStatistics
import Network.AWS.IoTAnalytics.Types.DatastoreStorage
import Network.AWS.IoTAnalytics.Types.DatastoreStorageSummary
import Network.AWS.IoTAnalytics.Types.DatastoreSummary
import Network.AWS.IoTAnalytics.Types.DeltaTime
import Network.AWS.IoTAnalytics.Types.DeltaTimeSessionWindowConfiguration
import Network.AWS.IoTAnalytics.Types.DeviceRegistryEnrichActivity
import Network.AWS.IoTAnalytics.Types.DeviceShadowEnrichActivity
import Network.AWS.IoTAnalytics.Types.EstimatedResourceSize
import Network.AWS.IoTAnalytics.Types.FileFormatConfiguration
import Network.AWS.IoTAnalytics.Types.FilterActivity
import Network.AWS.IoTAnalytics.Types.GlueConfiguration
import Network.AWS.IoTAnalytics.Types.IotEventsDestinationConfiguration
import Network.AWS.IoTAnalytics.Types.IotSiteWiseCustomerManagedDatastoreS3Storage
import Network.AWS.IoTAnalytics.Types.IotSiteWiseCustomerManagedDatastoreS3StorageSummary
import Network.AWS.IoTAnalytics.Types.JsonConfiguration
import Network.AWS.IoTAnalytics.Types.LambdaActivity
import Network.AWS.IoTAnalytics.Types.LateDataRule
import Network.AWS.IoTAnalytics.Types.LateDataRuleConfiguration
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
import Network.AWS.IoTAnalytics.UntagResource
import Network.AWS.IoTAnalytics.UpdateChannel
import Network.AWS.IoTAnalytics.UpdateDataset
import Network.AWS.IoTAnalytics.UpdateDatastore
import Network.AWS.IoTAnalytics.UpdatePipeline
