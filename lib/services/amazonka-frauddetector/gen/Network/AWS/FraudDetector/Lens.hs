{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.FraudDetector.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FraudDetector.Lens
  ( -- * Operations

    -- ** CreateDetectorVersion
    createDetectorVersion_ruleExecutionMode,
    createDetectorVersion_modelVersions,
    createDetectorVersion_externalModelEndpoints,
    createDetectorVersion_description,
    createDetectorVersion_tags,
    createDetectorVersion_detectorId,
    createDetectorVersion_rules,
    createDetectorVersionResponse_status,
    createDetectorVersionResponse_detectorVersionId,
    createDetectorVersionResponse_detectorId,
    createDetectorVersionResponse_httpStatus,

    -- ** BatchGetVariable
    batchGetVariable_names,
    batchGetVariableResponse_variables,
    batchGetVariableResponse_errors,
    batchGetVariableResponse_httpStatus,

    -- ** UpdateModelVersion
    updateModelVersion_externalEventsDetail,
    updateModelVersion_ingestedEventsDetail,
    updateModelVersion_tags,
    updateModelVersion_modelId,
    updateModelVersion_modelType,
    updateModelVersion_majorVersionNumber,
    updateModelVersionResponse_status,
    updateModelVersionResponse_modelType,
    updateModelVersionResponse_modelId,
    updateModelVersionResponse_modelVersionNumber,
    updateModelVersionResponse_httpStatus,

    -- ** DeleteModelVersion
    deleteModelVersion_modelId,
    deleteModelVersion_modelType,
    deleteModelVersion_modelVersionNumber,
    deleteModelVersionResponse_httpStatus,

    -- ** UpdateDetectorVersionMetadata
    updateDetectorVersionMetadata_detectorId,
    updateDetectorVersionMetadata_detectorVersionId,
    updateDetectorVersionMetadata_description,
    updateDetectorVersionMetadataResponse_httpStatus,

    -- ** DeleteBatchImportJob
    deleteBatchImportJob_jobId,
    deleteBatchImportJobResponse_httpStatus,

    -- ** DeleteRule
    deleteRule_rule,
    deleteRuleResponse_httpStatus,

    -- ** PutLabel
    putLabel_description,
    putLabel_tags,
    putLabel_name,
    putLabelResponse_httpStatus,

    -- ** GetExternalModels
    getExternalModels_modelEndpoint,
    getExternalModels_nextToken,
    getExternalModels_maxResults,
    getExternalModelsResponse_nextToken,
    getExternalModelsResponse_externalModels,
    getExternalModelsResponse_httpStatus,

    -- ** GetDetectors
    getDetectors_nextToken,
    getDetectors_detectorId,
    getDetectors_maxResults,
    getDetectorsResponse_nextToken,
    getDetectorsResponse_detectors,
    getDetectorsResponse_httpStatus,

    -- ** DeleteLabel
    deleteLabel_name,
    deleteLabelResponse_httpStatus,

    -- ** DeleteVariable
    deleteVariable_name,
    deleteVariableResponse_httpStatus,

    -- ** UpdateVariable
    updateVariable_defaultValue,
    updateVariable_variableType,
    updateVariable_description,
    updateVariable_name,
    updateVariableResponse_httpStatus,

    -- ** CreateVariable
    createVariable_variableType,
    createVariable_description,
    createVariable_tags,
    createVariable_name,
    createVariable_dataType,
    createVariable_dataSource,
    createVariable_defaultValue,
    createVariableResponse_httpStatus,

    -- ** CreateBatchImportJob
    createBatchImportJob_tags,
    createBatchImportJob_jobId,
    createBatchImportJob_inputPath,
    createBatchImportJob_outputPath,
    createBatchImportJob_eventTypeName,
    createBatchImportJob_iamRoleArn,
    createBatchImportJobResponse_httpStatus,

    -- ** CreateRule
    createRule_description,
    createRule_tags,
    createRule_ruleId,
    createRule_detectorId,
    createRule_expression,
    createRule_language,
    createRule_outcomes,
    createRuleResponse_rule,
    createRuleResponse_httpStatus,

    -- ** ListTagsForResource
    listTagsForResource_nextToken,
    listTagsForResource_maxResults,
    listTagsForResource_resourceARN,
    listTagsForResourceResponse_nextToken,
    listTagsForResourceResponse_tags,
    listTagsForResourceResponse_httpStatus,

    -- ** GetModels
    getModels_modelType,
    getModels_modelId,
    getModels_nextToken,
    getModels_maxResults,
    getModelsResponse_models,
    getModelsResponse_nextToken,
    getModelsResponse_httpStatus,

    -- ** UpdateRuleVersion
    updateRuleVersion_description,
    updateRuleVersion_tags,
    updateRuleVersion_rule,
    updateRuleVersion_expression,
    updateRuleVersion_language,
    updateRuleVersion_outcomes,
    updateRuleVersionResponse_rule,
    updateRuleVersionResponse_httpStatus,

    -- ** DeleteEvent
    deleteEvent_deleteAuditHistory,
    deleteEvent_eventId,
    deleteEvent_eventTypeName,
    deleteEventResponse_httpStatus,

    -- ** CancelBatchPredictionJob
    cancelBatchPredictionJob_jobId,
    cancelBatchPredictionJobResponse_httpStatus,

    -- ** UpdateModelVersionStatus
    updateModelVersionStatus_modelId,
    updateModelVersionStatus_modelType,
    updateModelVersionStatus_modelVersionNumber,
    updateModelVersionStatus_status,
    updateModelVersionStatusResponse_httpStatus,

    -- ** GetBatchPredictionJobs
    getBatchPredictionJobs_jobId,
    getBatchPredictionJobs_nextToken,
    getBatchPredictionJobs_maxResults,
    getBatchPredictionJobsResponse_batchPredictions,
    getBatchPredictionJobsResponse_nextToken,
    getBatchPredictionJobsResponse_httpStatus,

    -- ** CreateModel
    createModel_description,
    createModel_tags,
    createModel_modelId,
    createModel_modelType,
    createModel_eventTypeName,
    createModelResponse_httpStatus,

    -- ** GetLabels
    getLabels_nextToken,
    getLabels_name,
    getLabels_maxResults,
    getLabelsResponse_nextToken,
    getLabelsResponse_labels,
    getLabelsResponse_httpStatus,

    -- ** GetModelVersion
    getModelVersion_modelId,
    getModelVersion_modelType,
    getModelVersion_modelVersionNumber,
    getModelVersionResponse_status,
    getModelVersionResponse_modelType,
    getModelVersionResponse_modelId,
    getModelVersionResponse_arn,
    getModelVersionResponse_trainingDataSource,
    getModelVersionResponse_externalEventsDetail,
    getModelVersionResponse_ingestedEventsDetail,
    getModelVersionResponse_modelVersionNumber,
    getModelVersionResponse_trainingDataSchema,
    getModelVersionResponse_httpStatus,

    -- ** PutExternalModel
    putExternalModel_tags,
    putExternalModel_modelEndpoint,
    putExternalModel_modelSource,
    putExternalModel_invokeModelEndpointRoleArn,
    putExternalModel_inputConfiguration,
    putExternalModel_outputConfiguration,
    putExternalModel_modelEndpointStatus,
    putExternalModelResponse_httpStatus,

    -- ** DeleteExternalModel
    deleteExternalModel_modelEndpoint,
    deleteExternalModelResponse_httpStatus,

    -- ** GetEntityTypes
    getEntityTypes_nextToken,
    getEntityTypes_name,
    getEntityTypes_maxResults,
    getEntityTypesResponse_entityTypes,
    getEntityTypesResponse_nextToken,
    getEntityTypesResponse_httpStatus,

    -- ** DeleteModel
    deleteModel_modelId,
    deleteModel_modelType,
    deleteModelResponse_httpStatus,

    -- ** UpdateModel
    updateModel_description,
    updateModel_modelId,
    updateModel_modelType,
    updateModelResponse_httpStatus,

    -- ** CreateModelVersion
    createModelVersion_externalEventsDetail,
    createModelVersion_ingestedEventsDetail,
    createModelVersion_tags,
    createModelVersion_modelId,
    createModelVersion_modelType,
    createModelVersion_trainingDataSource,
    createModelVersion_trainingDataSchema,
    createModelVersionResponse_status,
    createModelVersionResponse_modelType,
    createModelVersionResponse_modelId,
    createModelVersionResponse_modelVersionNumber,
    createModelVersionResponse_httpStatus,

    -- ** DeleteEventsByEventType
    deleteEventsByEventType_eventTypeName,
    deleteEventsByEventTypeResponse_eventTypeName,
    deleteEventsByEventTypeResponse_eventsDeletionStatus,
    deleteEventsByEventTypeResponse_httpStatus,

    -- ** PutKMSEncryptionKey
    putKMSEncryptionKey_kmsEncryptionKeyArn,
    putKMSEncryptionKeyResponse_httpStatus,

    -- ** DescribeDetector
    describeDetector_nextToken,
    describeDetector_maxResults,
    describeDetector_detectorId,
    describeDetectorResponse_detectorVersionSummaries,
    describeDetectorResponse_arn,
    describeDetectorResponse_nextToken,
    describeDetectorResponse_detectorId,
    describeDetectorResponse_httpStatus,

    -- ** GetOutcomes
    getOutcomes_nextToken,
    getOutcomes_name,
    getOutcomes_maxResults,
    getOutcomesResponse_outcomes,
    getOutcomesResponse_nextToken,
    getOutcomesResponse_httpStatus,

    -- ** GetEventPrediction
    getEventPrediction_detectorVersionId,
    getEventPrediction_externalModelEndpointDataBlobs,
    getEventPrediction_detectorId,
    getEventPrediction_eventId,
    getEventPrediction_eventTypeName,
    getEventPrediction_entities,
    getEventPrediction_eventTimestamp,
    getEventPrediction_eventVariables,
    getEventPredictionResponse_modelScores,
    getEventPredictionResponse_externalModelOutputs,
    getEventPredictionResponse_ruleResults,
    getEventPredictionResponse_httpStatus,

    -- ** DeleteBatchPredictionJob
    deleteBatchPredictionJob_jobId,
    deleteBatchPredictionJobResponse_httpStatus,

    -- ** GetEvent
    getEvent_eventId,
    getEvent_eventTypeName,
    getEventResponse_event,
    getEventResponse_httpStatus,

    -- ** UpdateRuleMetadata
    updateRuleMetadata_rule,
    updateRuleMetadata_description,
    updateRuleMetadataResponse_httpStatus,

    -- ** PutEntityType
    putEntityType_description,
    putEntityType_tags,
    putEntityType_name,
    putEntityTypeResponse_httpStatus,

    -- ** CreateBatchPredictionJob
    createBatchPredictionJob_detectorVersion,
    createBatchPredictionJob_tags,
    createBatchPredictionJob_jobId,
    createBatchPredictionJob_inputPath,
    createBatchPredictionJob_outputPath,
    createBatchPredictionJob_eventTypeName,
    createBatchPredictionJob_detectorName,
    createBatchPredictionJob_iamRoleArn,
    createBatchPredictionJobResponse_httpStatus,

    -- ** DeleteEntityType
    deleteEntityType_name,
    deleteEntityTypeResponse_httpStatus,

    -- ** DeleteEventType
    deleteEventType_name,
    deleteEventTypeResponse_httpStatus,

    -- ** PutEventType
    putEventType_labels,
    putEventType_eventIngestion,
    putEventType_description,
    putEventType_tags,
    putEventType_name,
    putEventType_eventVariables,
    putEventType_entityTypes,
    putEventTypeResponse_httpStatus,

    -- ** UpdateDetectorVersionStatus
    updateDetectorVersionStatus_detectorId,
    updateDetectorVersionStatus_detectorVersionId,
    updateDetectorVersionStatus_status,
    updateDetectorVersionStatusResponse_httpStatus,

    -- ** CancelBatchImportJob
    cancelBatchImportJob_jobId,
    cancelBatchImportJobResponse_httpStatus,

    -- ** SendEvent
    sendEvent_labelTimestamp,
    sendEvent_assignedLabel,
    sendEvent_eventId,
    sendEvent_eventTypeName,
    sendEvent_eventTimestamp,
    sendEvent_eventVariables,
    sendEvent_entities,
    sendEventResponse_httpStatus,

    -- ** TagResource
    tagResource_resourceARN,
    tagResource_tags,
    tagResourceResponse_httpStatus,

    -- ** GetKMSEncryptionKey
    getKMSEncryptionKeyResponse_kmsKey,
    getKMSEncryptionKeyResponse_httpStatus,

    -- ** UpdateEventLabel
    updateEventLabel_eventId,
    updateEventLabel_eventTypeName,
    updateEventLabel_assignedLabel,
    updateEventLabel_labelTimestamp,
    updateEventLabelResponse_httpStatus,

    -- ** GetBatchImportJobs
    getBatchImportJobs_jobId,
    getBatchImportJobs_nextToken,
    getBatchImportJobs_maxResults,
    getBatchImportJobsResponse_nextToken,
    getBatchImportJobsResponse_batchImports,
    getBatchImportJobsResponse_httpStatus,

    -- ** GetDeleteEventsByEventTypeStatus
    getDeleteEventsByEventTypeStatus_eventTypeName,
    getDeleteEventsByEventTypeStatusResponse_eventTypeName,
    getDeleteEventsByEventTypeStatusResponse_eventsDeletionStatus,
    getDeleteEventsByEventTypeStatusResponse_httpStatus,

    -- ** DeleteOutcome
    deleteOutcome_name,
    deleteOutcomeResponse_httpStatus,

    -- ** GetRules
    getRules_ruleVersion,
    getRules_ruleId,
    getRules_nextToken,
    getRules_maxResults,
    getRules_detectorId,
    getRulesResponse_ruleDetails,
    getRulesResponse_nextToken,
    getRulesResponse_httpStatus,

    -- ** GetVariables
    getVariables_nextToken,
    getVariables_name,
    getVariables_maxResults,
    getVariablesResponse_variables,
    getVariablesResponse_nextToken,
    getVariablesResponse_httpStatus,

    -- ** UntagResource
    untagResource_resourceARN,
    untagResource_tagKeys,
    untagResourceResponse_httpStatus,

    -- ** PutDetector
    putDetector_description,
    putDetector_tags,
    putDetector_detectorId,
    putDetector_eventTypeName,
    putDetectorResponse_httpStatus,

    -- ** PutOutcome
    putOutcome_description,
    putOutcome_tags,
    putOutcome_name,
    putOutcomeResponse_httpStatus,

    -- ** DeleteDetector
    deleteDetector_detectorId,
    deleteDetectorResponse_httpStatus,

    -- ** DescribeModelVersions
    describeModelVersions_modelType,
    describeModelVersions_modelId,
    describeModelVersions_nextToken,
    describeModelVersions_modelVersionNumber,
    describeModelVersions_maxResults,
    describeModelVersionsResponse_nextToken,
    describeModelVersionsResponse_modelVersionDetails,
    describeModelVersionsResponse_httpStatus,

    -- ** BatchCreateVariable
    batchCreateVariable_tags,
    batchCreateVariable_variableEntries,
    batchCreateVariableResponse_errors,
    batchCreateVariableResponse_httpStatus,

    -- ** GetDetectorVersion
    getDetectorVersion_detectorId,
    getDetectorVersion_detectorVersionId,
    getDetectorVersionResponse_status,
    getDetectorVersionResponse_ruleExecutionMode,
    getDetectorVersionResponse_lastUpdatedTime,
    getDetectorVersionResponse_arn,
    getDetectorVersionResponse_rules,
    getDetectorVersionResponse_detectorVersionId,
    getDetectorVersionResponse_createdTime,
    getDetectorVersionResponse_modelVersions,
    getDetectorVersionResponse_detectorId,
    getDetectorVersionResponse_externalModelEndpoints,
    getDetectorVersionResponse_description,
    getDetectorVersionResponse_httpStatus,

    -- ** GetEventTypes
    getEventTypes_nextToken,
    getEventTypes_name,
    getEventTypes_maxResults,
    getEventTypesResponse_eventTypes,
    getEventTypesResponse_nextToken,
    getEventTypesResponse_httpStatus,

    -- ** DeleteDetectorVersion
    deleteDetectorVersion_detectorId,
    deleteDetectorVersion_detectorVersionId,
    deleteDetectorVersionResponse_httpStatus,

    -- ** UpdateDetectorVersion
    updateDetectorVersion_ruleExecutionMode,
    updateDetectorVersion_modelVersions,
    updateDetectorVersion_description,
    updateDetectorVersion_detectorId,
    updateDetectorVersion_detectorVersionId,
    updateDetectorVersion_externalModelEndpoints,
    updateDetectorVersion_rules,
    updateDetectorVersionResponse_httpStatus,

    -- * Types

    -- ** BatchCreateVariableError
    batchCreateVariableError_name,
    batchCreateVariableError_code,
    batchCreateVariableError_message,

    -- ** BatchGetVariableError
    batchGetVariableError_name,
    batchGetVariableError_code,
    batchGetVariableError_message,

    -- ** BatchImport
    batchImport_failureReason,
    batchImport_iamRoleArn,
    batchImport_status,
    batchImport_processedRecordsCount,
    batchImport_totalRecordsCount,
    batchImport_jobId,
    batchImport_arn,
    batchImport_startTime,
    batchImport_eventTypeName,
    batchImport_completionTime,
    batchImport_outputPath,
    batchImport_inputPath,
    batchImport_failedRecordsCount,

    -- ** BatchPrediction
    batchPrediction_failureReason,
    batchPrediction_iamRoleArn,
    batchPrediction_status,
    batchPrediction_processedRecordsCount,
    batchPrediction_totalRecordsCount,
    batchPrediction_lastHeartbeatTime,
    batchPrediction_jobId,
    batchPrediction_arn,
    batchPrediction_startTime,
    batchPrediction_eventTypeName,
    batchPrediction_completionTime,
    batchPrediction_outputPath,
    batchPrediction_detectorName,
    batchPrediction_detectorVersion,
    batchPrediction_inputPath,

    -- ** DataValidationMetrics
    dataValidationMetrics_fieldLevelMessages,
    dataValidationMetrics_fileLevelMessages,

    -- ** Detector
    detector_lastUpdatedTime,
    detector_arn,
    detector_createdTime,
    detector_eventTypeName,
    detector_detectorId,
    detector_description,

    -- ** DetectorVersionSummary
    detectorVersionSummary_status,
    detectorVersionSummary_lastUpdatedTime,
    detectorVersionSummary_detectorVersionId,
    detectorVersionSummary_description,

    -- ** Entity
    entity_entityType,
    entity_entityId,

    -- ** EntityType
    entityType_lastUpdatedTime,
    entityType_arn,
    entityType_createdTime,
    entityType_name,
    entityType_description,

    -- ** Event
    event_eventTimestamp,
    event_entities,
    event_labelTimestamp,
    event_eventTypeName,
    event_eventVariables,
    event_currentLabel,
    event_eventId,

    -- ** EventType
    eventType_lastUpdatedTime,
    eventType_arn,
    eventType_createdTime,
    eventType_entityTypes,
    eventType_eventVariables,
    eventType_name,
    eventType_ingestedEventStatistics,
    eventType_labels,
    eventType_eventIngestion,
    eventType_description,

    -- ** ExternalEventsDetail
    externalEventsDetail_dataLocation,
    externalEventsDetail_dataAccessRoleArn,

    -- ** ExternalModel
    externalModel_modelEndpoint,
    externalModel_modelSource,
    externalModel_lastUpdatedTime,
    externalModel_arn,
    externalModel_createdTime,
    externalModel_modelEndpointStatus,
    externalModel_outputConfiguration,
    externalModel_invokeModelEndpointRoleArn,
    externalModel_inputConfiguration,

    -- ** ExternalModelOutputs
    externalModelOutputs_externalModel,
    externalModelOutputs_outputs,

    -- ** ExternalModelSummary
    externalModelSummary_modelEndpoint,
    externalModelSummary_modelSource,

    -- ** FieldValidationMessage
    fieldValidationMessage_identifier,
    fieldValidationMessage_content,
    fieldValidationMessage_fieldName,
    fieldValidationMessage_title,
    fieldValidationMessage_type,

    -- ** FileValidationMessage
    fileValidationMessage_content,
    fileValidationMessage_title,
    fileValidationMessage_type,

    -- ** IngestedEventStatistics
    ingestedEventStatistics_eventDataSizeInBytes,
    ingestedEventStatistics_mostRecentEvent,
    ingestedEventStatistics_lastUpdatedTime,
    ingestedEventStatistics_numberOfEvents,
    ingestedEventStatistics_leastRecentEvent,

    -- ** IngestedEventsDetail
    ingestedEventsDetail_ingestedEventsTimeWindow,

    -- ** IngestedEventsTimeWindow
    ingestedEventsTimeWindow_startTime,
    ingestedEventsTimeWindow_endTime,

    -- ** KMSKey
    kmsKey_kmsEncryptionKeyArn,

    -- ** Label
    label_lastUpdatedTime,
    label_arn,
    label_createdTime,
    label_name,
    label_description,

    -- ** LabelSchema
    labelSchema_unlabeledEventsTreatment,
    labelSchema_labelMapper,

    -- ** LogOddsMetric
    logOddsMetric_variableName,
    logOddsMetric_variableType,
    logOddsMetric_variableImportance,

    -- ** MetricDataPoint
    metricDataPoint_precision,
    metricDataPoint_fpr,
    metricDataPoint_threshold,
    metricDataPoint_tpr,

    -- ** Model
    model_modelType,
    model_lastUpdatedTime,
    model_modelId,
    model_arn,
    model_createdTime,
    model_eventTypeName,
    model_description,

    -- ** ModelEndpointDataBlob
    modelEndpointDataBlob_byteBuffer,
    modelEndpointDataBlob_contentType,

    -- ** ModelInputConfiguration
    modelInputConfiguration_format,
    modelInputConfiguration_eventTypeName,
    modelInputConfiguration_csvInputTemplate,
    modelInputConfiguration_jsonInputTemplate,
    modelInputConfiguration_useEventVariables,

    -- ** ModelOutputConfiguration
    modelOutputConfiguration_jsonKeyToVariableMap,
    modelOutputConfiguration_csvIndexToVariableMap,
    modelOutputConfiguration_format,

    -- ** ModelScores
    modelScores_modelVersion,
    modelScores_scores,

    -- ** ModelVersion
    modelVersion_arn,
    modelVersion_modelId,
    modelVersion_modelType,
    modelVersion_modelVersionNumber,

    -- ** ModelVersionDetail
    modelVersionDetail_status,
    modelVersionDetail_modelType,
    modelVersionDetail_lastUpdatedTime,
    modelVersionDetail_modelId,
    modelVersionDetail_arn,
    modelVersionDetail_trainingDataSource,
    modelVersionDetail_createdTime,
    modelVersionDetail_externalEventsDetail,
    modelVersionDetail_ingestedEventsDetail,
    modelVersionDetail_modelVersionNumber,
    modelVersionDetail_trainingResult,
    modelVersionDetail_trainingDataSchema,

    -- ** Outcome
    outcome_lastUpdatedTime,
    outcome_arn,
    outcome_createdTime,
    outcome_name,
    outcome_description,

    -- ** Rule
    rule_detectorId,
    rule_ruleId,
    rule_ruleVersion,

    -- ** RuleDetail
    ruleDetail_ruleVersion,
    ruleDetail_lastUpdatedTime,
    ruleDetail_arn,
    ruleDetail_createdTime,
    ruleDetail_ruleId,
    ruleDetail_outcomes,
    ruleDetail_detectorId,
    ruleDetail_expression,
    ruleDetail_language,
    ruleDetail_description,

    -- ** RuleResult
    ruleResult_ruleId,
    ruleResult_outcomes,

    -- ** Tag
    tag_key,
    tag_value,

    -- ** TrainingDataSchema
    trainingDataSchema_modelVariables,
    trainingDataSchema_labelSchema,

    -- ** TrainingMetrics
    trainingMetrics_auc,
    trainingMetrics_metricDataPoints,

    -- ** TrainingResult
    trainingResult_dataValidationMetrics,
    trainingResult_trainingMetrics,
    trainingResult_variableImportanceMetrics,

    -- ** Variable
    variable_lastUpdatedTime,
    variable_arn,
    variable_createdTime,
    variable_name,
    variable_dataSource,
    variable_dataType,
    variable_defaultValue,
    variable_variableType,
    variable_description,

    -- ** VariableEntry
    variableEntry_name,
    variableEntry_dataSource,
    variableEntry_dataType,
    variableEntry_defaultValue,
    variableEntry_variableType,
    variableEntry_description,

    -- ** VariableImportanceMetrics
    variableImportanceMetrics_logOddsMetrics,
  )
where

import Network.AWS.FraudDetector.BatchCreateVariable
import Network.AWS.FraudDetector.BatchGetVariable
import Network.AWS.FraudDetector.CancelBatchImportJob
import Network.AWS.FraudDetector.CancelBatchPredictionJob
import Network.AWS.FraudDetector.CreateBatchImportJob
import Network.AWS.FraudDetector.CreateBatchPredictionJob
import Network.AWS.FraudDetector.CreateDetectorVersion
import Network.AWS.FraudDetector.CreateModel
import Network.AWS.FraudDetector.CreateModelVersion
import Network.AWS.FraudDetector.CreateRule
import Network.AWS.FraudDetector.CreateVariable
import Network.AWS.FraudDetector.DeleteBatchImportJob
import Network.AWS.FraudDetector.DeleteBatchPredictionJob
import Network.AWS.FraudDetector.DeleteDetector
import Network.AWS.FraudDetector.DeleteDetectorVersion
import Network.AWS.FraudDetector.DeleteEntityType
import Network.AWS.FraudDetector.DeleteEvent
import Network.AWS.FraudDetector.DeleteEventType
import Network.AWS.FraudDetector.DeleteEventsByEventType
import Network.AWS.FraudDetector.DeleteExternalModel
import Network.AWS.FraudDetector.DeleteLabel
import Network.AWS.FraudDetector.DeleteModel
import Network.AWS.FraudDetector.DeleteModelVersion
import Network.AWS.FraudDetector.DeleteOutcome
import Network.AWS.FraudDetector.DeleteRule
import Network.AWS.FraudDetector.DeleteVariable
import Network.AWS.FraudDetector.DescribeDetector
import Network.AWS.FraudDetector.DescribeModelVersions
import Network.AWS.FraudDetector.GetBatchImportJobs
import Network.AWS.FraudDetector.GetBatchPredictionJobs
import Network.AWS.FraudDetector.GetDeleteEventsByEventTypeStatus
import Network.AWS.FraudDetector.GetDetectorVersion
import Network.AWS.FraudDetector.GetDetectors
import Network.AWS.FraudDetector.GetEntityTypes
import Network.AWS.FraudDetector.GetEvent
import Network.AWS.FraudDetector.GetEventPrediction
import Network.AWS.FraudDetector.GetEventTypes
import Network.AWS.FraudDetector.GetExternalModels
import Network.AWS.FraudDetector.GetKMSEncryptionKey
import Network.AWS.FraudDetector.GetLabels
import Network.AWS.FraudDetector.GetModelVersion
import Network.AWS.FraudDetector.GetModels
import Network.AWS.FraudDetector.GetOutcomes
import Network.AWS.FraudDetector.GetRules
import Network.AWS.FraudDetector.GetVariables
import Network.AWS.FraudDetector.ListTagsForResource
import Network.AWS.FraudDetector.PutDetector
import Network.AWS.FraudDetector.PutEntityType
import Network.AWS.FraudDetector.PutEventType
import Network.AWS.FraudDetector.PutExternalModel
import Network.AWS.FraudDetector.PutKMSEncryptionKey
import Network.AWS.FraudDetector.PutLabel
import Network.AWS.FraudDetector.PutOutcome
import Network.AWS.FraudDetector.SendEvent
import Network.AWS.FraudDetector.TagResource
import Network.AWS.FraudDetector.Types.BatchCreateVariableError
import Network.AWS.FraudDetector.Types.BatchGetVariableError
import Network.AWS.FraudDetector.Types.BatchImport
import Network.AWS.FraudDetector.Types.BatchPrediction
import Network.AWS.FraudDetector.Types.DataValidationMetrics
import Network.AWS.FraudDetector.Types.Detector
import Network.AWS.FraudDetector.Types.DetectorVersionSummary
import Network.AWS.FraudDetector.Types.Entity
import Network.AWS.FraudDetector.Types.EntityType
import Network.AWS.FraudDetector.Types.Event
import Network.AWS.FraudDetector.Types.EventType
import Network.AWS.FraudDetector.Types.ExternalEventsDetail
import Network.AWS.FraudDetector.Types.ExternalModel
import Network.AWS.FraudDetector.Types.ExternalModelOutputs
import Network.AWS.FraudDetector.Types.ExternalModelSummary
import Network.AWS.FraudDetector.Types.FieldValidationMessage
import Network.AWS.FraudDetector.Types.FileValidationMessage
import Network.AWS.FraudDetector.Types.IngestedEventStatistics
import Network.AWS.FraudDetector.Types.IngestedEventsDetail
import Network.AWS.FraudDetector.Types.IngestedEventsTimeWindow
import Network.AWS.FraudDetector.Types.KMSKey
import Network.AWS.FraudDetector.Types.Label
import Network.AWS.FraudDetector.Types.LabelSchema
import Network.AWS.FraudDetector.Types.LogOddsMetric
import Network.AWS.FraudDetector.Types.MetricDataPoint
import Network.AWS.FraudDetector.Types.Model
import Network.AWS.FraudDetector.Types.ModelEndpointDataBlob
import Network.AWS.FraudDetector.Types.ModelInputConfiguration
import Network.AWS.FraudDetector.Types.ModelOutputConfiguration
import Network.AWS.FraudDetector.Types.ModelScores
import Network.AWS.FraudDetector.Types.ModelVersion
import Network.AWS.FraudDetector.Types.ModelVersionDetail
import Network.AWS.FraudDetector.Types.Outcome
import Network.AWS.FraudDetector.Types.Rule
import Network.AWS.FraudDetector.Types.RuleDetail
import Network.AWS.FraudDetector.Types.RuleResult
import Network.AWS.FraudDetector.Types.Tag
import Network.AWS.FraudDetector.Types.TrainingDataSchema
import Network.AWS.FraudDetector.Types.TrainingMetrics
import Network.AWS.FraudDetector.Types.TrainingResult
import Network.AWS.FraudDetector.Types.Variable
import Network.AWS.FraudDetector.Types.VariableEntry
import Network.AWS.FraudDetector.Types.VariableImportanceMetrics
import Network.AWS.FraudDetector.UntagResource
import Network.AWS.FraudDetector.UpdateDetectorVersion
import Network.AWS.FraudDetector.UpdateDetectorVersionMetadata
import Network.AWS.FraudDetector.UpdateDetectorVersionStatus
import Network.AWS.FraudDetector.UpdateEventLabel
import Network.AWS.FraudDetector.UpdateModel
import Network.AWS.FraudDetector.UpdateModelVersion
import Network.AWS.FraudDetector.UpdateModelVersionStatus
import Network.AWS.FraudDetector.UpdateRuleMetadata
import Network.AWS.FraudDetector.UpdateRuleVersion
import Network.AWS.FraudDetector.UpdateVariable
