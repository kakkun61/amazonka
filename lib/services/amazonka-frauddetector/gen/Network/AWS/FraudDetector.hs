{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.AWS.FraudDetector
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2019-11-15@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- This is the Amazon Fraud Detector API Reference. This guide is for
-- developers who need detailed information about Amazon Fraud Detector API
-- actions, data types, and errors. For more information about Amazon Fraud
-- Detector features, see the
-- <https://docs.aws.amazon.com/frauddetector/latest/ug/ Amazon Fraud Detector User Guide>.
module Network.AWS.FraudDetector
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** ValidationException
    _ValidationException,

    -- ** AccessDeniedException
    _AccessDeniedException,

    -- ** ResourceUnavailableException
    _ResourceUnavailableException,

    -- ** ConflictException
    _ConflictException,

    -- ** ThrottlingException
    _ThrottlingException,

    -- ** InternalServerException
    _InternalServerException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** CreateDetectorVersion
    CreateDetectorVersion (CreateDetectorVersion'),
    newCreateDetectorVersion,
    CreateDetectorVersionResponse (CreateDetectorVersionResponse'),
    newCreateDetectorVersionResponse,

    -- ** BatchGetVariable
    BatchGetVariable (BatchGetVariable'),
    newBatchGetVariable,
    BatchGetVariableResponse (BatchGetVariableResponse'),
    newBatchGetVariableResponse,

    -- ** UpdateModelVersion
    UpdateModelVersion (UpdateModelVersion'),
    newUpdateModelVersion,
    UpdateModelVersionResponse (UpdateModelVersionResponse'),
    newUpdateModelVersionResponse,

    -- ** DeleteModelVersion
    DeleteModelVersion (DeleteModelVersion'),
    newDeleteModelVersion,
    DeleteModelVersionResponse (DeleteModelVersionResponse'),
    newDeleteModelVersionResponse,

    -- ** UpdateDetectorVersionMetadata
    UpdateDetectorVersionMetadata (UpdateDetectorVersionMetadata'),
    newUpdateDetectorVersionMetadata,
    UpdateDetectorVersionMetadataResponse (UpdateDetectorVersionMetadataResponse'),
    newUpdateDetectorVersionMetadataResponse,

    -- ** DeleteBatchImportJob
    DeleteBatchImportJob (DeleteBatchImportJob'),
    newDeleteBatchImportJob,
    DeleteBatchImportJobResponse (DeleteBatchImportJobResponse'),
    newDeleteBatchImportJobResponse,

    -- ** DeleteRule
    DeleteRule (DeleteRule'),
    newDeleteRule,
    DeleteRuleResponse (DeleteRuleResponse'),
    newDeleteRuleResponse,

    -- ** PutLabel
    PutLabel (PutLabel'),
    newPutLabel,
    PutLabelResponse (PutLabelResponse'),
    newPutLabelResponse,

    -- ** GetExternalModels
    GetExternalModels (GetExternalModels'),
    newGetExternalModels,
    GetExternalModelsResponse (GetExternalModelsResponse'),
    newGetExternalModelsResponse,

    -- ** GetDetectors
    GetDetectors (GetDetectors'),
    newGetDetectors,
    GetDetectorsResponse (GetDetectorsResponse'),
    newGetDetectorsResponse,

    -- ** DeleteLabel
    DeleteLabel (DeleteLabel'),
    newDeleteLabel,
    DeleteLabelResponse (DeleteLabelResponse'),
    newDeleteLabelResponse,

    -- ** DeleteVariable
    DeleteVariable (DeleteVariable'),
    newDeleteVariable,
    DeleteVariableResponse (DeleteVariableResponse'),
    newDeleteVariableResponse,

    -- ** UpdateVariable
    UpdateVariable (UpdateVariable'),
    newUpdateVariable,
    UpdateVariableResponse (UpdateVariableResponse'),
    newUpdateVariableResponse,

    -- ** CreateVariable
    CreateVariable (CreateVariable'),
    newCreateVariable,
    CreateVariableResponse (CreateVariableResponse'),
    newCreateVariableResponse,

    -- ** CreateBatchImportJob
    CreateBatchImportJob (CreateBatchImportJob'),
    newCreateBatchImportJob,
    CreateBatchImportJobResponse (CreateBatchImportJobResponse'),
    newCreateBatchImportJobResponse,

    -- ** CreateRule
    CreateRule (CreateRule'),
    newCreateRule,
    CreateRuleResponse (CreateRuleResponse'),
    newCreateRuleResponse,

    -- ** ListTagsForResource
    ListTagsForResource (ListTagsForResource'),
    newListTagsForResource,
    ListTagsForResourceResponse (ListTagsForResourceResponse'),
    newListTagsForResourceResponse,

    -- ** GetModels
    GetModels (GetModels'),
    newGetModels,
    GetModelsResponse (GetModelsResponse'),
    newGetModelsResponse,

    -- ** UpdateRuleVersion
    UpdateRuleVersion (UpdateRuleVersion'),
    newUpdateRuleVersion,
    UpdateRuleVersionResponse (UpdateRuleVersionResponse'),
    newUpdateRuleVersionResponse,

    -- ** DeleteEvent
    DeleteEvent (DeleteEvent'),
    newDeleteEvent,
    DeleteEventResponse (DeleteEventResponse'),
    newDeleteEventResponse,

    -- ** CancelBatchPredictionJob
    CancelBatchPredictionJob (CancelBatchPredictionJob'),
    newCancelBatchPredictionJob,
    CancelBatchPredictionJobResponse (CancelBatchPredictionJobResponse'),
    newCancelBatchPredictionJobResponse,

    -- ** UpdateModelVersionStatus
    UpdateModelVersionStatus (UpdateModelVersionStatus'),
    newUpdateModelVersionStatus,
    UpdateModelVersionStatusResponse (UpdateModelVersionStatusResponse'),
    newUpdateModelVersionStatusResponse,

    -- ** GetBatchPredictionJobs
    GetBatchPredictionJobs (GetBatchPredictionJobs'),
    newGetBatchPredictionJobs,
    GetBatchPredictionJobsResponse (GetBatchPredictionJobsResponse'),
    newGetBatchPredictionJobsResponse,

    -- ** CreateModel
    CreateModel (CreateModel'),
    newCreateModel,
    CreateModelResponse (CreateModelResponse'),
    newCreateModelResponse,

    -- ** GetLabels
    GetLabels (GetLabels'),
    newGetLabels,
    GetLabelsResponse (GetLabelsResponse'),
    newGetLabelsResponse,

    -- ** GetModelVersion
    GetModelVersion (GetModelVersion'),
    newGetModelVersion,
    GetModelVersionResponse (GetModelVersionResponse'),
    newGetModelVersionResponse,

    -- ** PutExternalModel
    PutExternalModel (PutExternalModel'),
    newPutExternalModel,
    PutExternalModelResponse (PutExternalModelResponse'),
    newPutExternalModelResponse,

    -- ** DeleteExternalModel
    DeleteExternalModel (DeleteExternalModel'),
    newDeleteExternalModel,
    DeleteExternalModelResponse (DeleteExternalModelResponse'),
    newDeleteExternalModelResponse,

    -- ** GetEntityTypes
    GetEntityTypes (GetEntityTypes'),
    newGetEntityTypes,
    GetEntityTypesResponse (GetEntityTypesResponse'),
    newGetEntityTypesResponse,

    -- ** DeleteModel
    DeleteModel (DeleteModel'),
    newDeleteModel,
    DeleteModelResponse (DeleteModelResponse'),
    newDeleteModelResponse,

    -- ** UpdateModel
    UpdateModel (UpdateModel'),
    newUpdateModel,
    UpdateModelResponse (UpdateModelResponse'),
    newUpdateModelResponse,

    -- ** CreateModelVersion
    CreateModelVersion (CreateModelVersion'),
    newCreateModelVersion,
    CreateModelVersionResponse (CreateModelVersionResponse'),
    newCreateModelVersionResponse,

    -- ** DeleteEventsByEventType
    DeleteEventsByEventType (DeleteEventsByEventType'),
    newDeleteEventsByEventType,
    DeleteEventsByEventTypeResponse (DeleteEventsByEventTypeResponse'),
    newDeleteEventsByEventTypeResponse,

    -- ** PutKMSEncryptionKey
    PutKMSEncryptionKey (PutKMSEncryptionKey'),
    newPutKMSEncryptionKey,
    PutKMSEncryptionKeyResponse (PutKMSEncryptionKeyResponse'),
    newPutKMSEncryptionKeyResponse,

    -- ** DescribeDetector
    DescribeDetector (DescribeDetector'),
    newDescribeDetector,
    DescribeDetectorResponse (DescribeDetectorResponse'),
    newDescribeDetectorResponse,

    -- ** GetOutcomes
    GetOutcomes (GetOutcomes'),
    newGetOutcomes,
    GetOutcomesResponse (GetOutcomesResponse'),
    newGetOutcomesResponse,

    -- ** GetEventPrediction
    GetEventPrediction (GetEventPrediction'),
    newGetEventPrediction,
    GetEventPredictionResponse (GetEventPredictionResponse'),
    newGetEventPredictionResponse,

    -- ** DeleteBatchPredictionJob
    DeleteBatchPredictionJob (DeleteBatchPredictionJob'),
    newDeleteBatchPredictionJob,
    DeleteBatchPredictionJobResponse (DeleteBatchPredictionJobResponse'),
    newDeleteBatchPredictionJobResponse,

    -- ** GetEvent
    GetEvent (GetEvent'),
    newGetEvent,
    GetEventResponse (GetEventResponse'),
    newGetEventResponse,

    -- ** UpdateRuleMetadata
    UpdateRuleMetadata (UpdateRuleMetadata'),
    newUpdateRuleMetadata,
    UpdateRuleMetadataResponse (UpdateRuleMetadataResponse'),
    newUpdateRuleMetadataResponse,

    -- ** PutEntityType
    PutEntityType (PutEntityType'),
    newPutEntityType,
    PutEntityTypeResponse (PutEntityTypeResponse'),
    newPutEntityTypeResponse,

    -- ** CreateBatchPredictionJob
    CreateBatchPredictionJob (CreateBatchPredictionJob'),
    newCreateBatchPredictionJob,
    CreateBatchPredictionJobResponse (CreateBatchPredictionJobResponse'),
    newCreateBatchPredictionJobResponse,

    -- ** DeleteEntityType
    DeleteEntityType (DeleteEntityType'),
    newDeleteEntityType,
    DeleteEntityTypeResponse (DeleteEntityTypeResponse'),
    newDeleteEntityTypeResponse,

    -- ** DeleteEventType
    DeleteEventType (DeleteEventType'),
    newDeleteEventType,
    DeleteEventTypeResponse (DeleteEventTypeResponse'),
    newDeleteEventTypeResponse,

    -- ** PutEventType
    PutEventType (PutEventType'),
    newPutEventType,
    PutEventTypeResponse (PutEventTypeResponse'),
    newPutEventTypeResponse,

    -- ** UpdateDetectorVersionStatus
    UpdateDetectorVersionStatus (UpdateDetectorVersionStatus'),
    newUpdateDetectorVersionStatus,
    UpdateDetectorVersionStatusResponse (UpdateDetectorVersionStatusResponse'),
    newUpdateDetectorVersionStatusResponse,

    -- ** CancelBatchImportJob
    CancelBatchImportJob (CancelBatchImportJob'),
    newCancelBatchImportJob,
    CancelBatchImportJobResponse (CancelBatchImportJobResponse'),
    newCancelBatchImportJobResponse,

    -- ** SendEvent
    SendEvent (SendEvent'),
    newSendEvent,
    SendEventResponse (SendEventResponse'),
    newSendEventResponse,

    -- ** TagResource
    TagResource (TagResource'),
    newTagResource,
    TagResourceResponse (TagResourceResponse'),
    newTagResourceResponse,

    -- ** GetKMSEncryptionKey
    GetKMSEncryptionKey (GetKMSEncryptionKey'),
    newGetKMSEncryptionKey,
    GetKMSEncryptionKeyResponse (GetKMSEncryptionKeyResponse'),
    newGetKMSEncryptionKeyResponse,

    -- ** UpdateEventLabel
    UpdateEventLabel (UpdateEventLabel'),
    newUpdateEventLabel,
    UpdateEventLabelResponse (UpdateEventLabelResponse'),
    newUpdateEventLabelResponse,

    -- ** GetBatchImportJobs
    GetBatchImportJobs (GetBatchImportJobs'),
    newGetBatchImportJobs,
    GetBatchImportJobsResponse (GetBatchImportJobsResponse'),
    newGetBatchImportJobsResponse,

    -- ** GetDeleteEventsByEventTypeStatus
    GetDeleteEventsByEventTypeStatus (GetDeleteEventsByEventTypeStatus'),
    newGetDeleteEventsByEventTypeStatus,
    GetDeleteEventsByEventTypeStatusResponse (GetDeleteEventsByEventTypeStatusResponse'),
    newGetDeleteEventsByEventTypeStatusResponse,

    -- ** DeleteOutcome
    DeleteOutcome (DeleteOutcome'),
    newDeleteOutcome,
    DeleteOutcomeResponse (DeleteOutcomeResponse'),
    newDeleteOutcomeResponse,

    -- ** GetRules
    GetRules (GetRules'),
    newGetRules,
    GetRulesResponse (GetRulesResponse'),
    newGetRulesResponse,

    -- ** GetVariables
    GetVariables (GetVariables'),
    newGetVariables,
    GetVariablesResponse (GetVariablesResponse'),
    newGetVariablesResponse,

    -- ** UntagResource
    UntagResource (UntagResource'),
    newUntagResource,
    UntagResourceResponse (UntagResourceResponse'),
    newUntagResourceResponse,

    -- ** PutDetector
    PutDetector (PutDetector'),
    newPutDetector,
    PutDetectorResponse (PutDetectorResponse'),
    newPutDetectorResponse,

    -- ** PutOutcome
    PutOutcome (PutOutcome'),
    newPutOutcome,
    PutOutcomeResponse (PutOutcomeResponse'),
    newPutOutcomeResponse,

    -- ** DeleteDetector
    DeleteDetector (DeleteDetector'),
    newDeleteDetector,
    DeleteDetectorResponse (DeleteDetectorResponse'),
    newDeleteDetectorResponse,

    -- ** DescribeModelVersions
    DescribeModelVersions (DescribeModelVersions'),
    newDescribeModelVersions,
    DescribeModelVersionsResponse (DescribeModelVersionsResponse'),
    newDescribeModelVersionsResponse,

    -- ** BatchCreateVariable
    BatchCreateVariable (BatchCreateVariable'),
    newBatchCreateVariable,
    BatchCreateVariableResponse (BatchCreateVariableResponse'),
    newBatchCreateVariableResponse,

    -- ** GetDetectorVersion
    GetDetectorVersion (GetDetectorVersion'),
    newGetDetectorVersion,
    GetDetectorVersionResponse (GetDetectorVersionResponse'),
    newGetDetectorVersionResponse,

    -- ** GetEventTypes
    GetEventTypes (GetEventTypes'),
    newGetEventTypes,
    GetEventTypesResponse (GetEventTypesResponse'),
    newGetEventTypesResponse,

    -- ** DeleteDetectorVersion
    DeleteDetectorVersion (DeleteDetectorVersion'),
    newDeleteDetectorVersion,
    DeleteDetectorVersionResponse (DeleteDetectorVersionResponse'),
    newDeleteDetectorVersionResponse,

    -- ** UpdateDetectorVersion
    UpdateDetectorVersion (UpdateDetectorVersion'),
    newUpdateDetectorVersion,
    UpdateDetectorVersionResponse (UpdateDetectorVersionResponse'),
    newUpdateDetectorVersionResponse,

    -- * Types

    -- ** AsyncJobStatus
    AsyncJobStatus (..),

    -- ** DataSource
    DataSource (..),

    -- ** DataType
    DataType (..),

    -- ** DetectorVersionStatus
    DetectorVersionStatus (..),

    -- ** EventIngestion
    EventIngestion (..),

    -- ** Language
    Language (..),

    -- ** ModelEndpointStatus
    ModelEndpointStatus (..),

    -- ** ModelInputDataFormat
    ModelInputDataFormat (..),

    -- ** ModelOutputDataFormat
    ModelOutputDataFormat (..),

    -- ** ModelSource
    ModelSource (..),

    -- ** ModelTypeEnum
    ModelTypeEnum (..),

    -- ** ModelVersionStatus
    ModelVersionStatus (..),

    -- ** RuleExecutionMode
    RuleExecutionMode (..),

    -- ** TrainingDataSourceEnum
    TrainingDataSourceEnum (..),

    -- ** UnlabeledEventsTreatment
    UnlabeledEventsTreatment (..),

    -- ** BatchCreateVariableError
    BatchCreateVariableError (BatchCreateVariableError'),
    newBatchCreateVariableError,

    -- ** BatchGetVariableError
    BatchGetVariableError (BatchGetVariableError'),
    newBatchGetVariableError,

    -- ** BatchImport
    BatchImport (BatchImport'),
    newBatchImport,

    -- ** BatchPrediction
    BatchPrediction (BatchPrediction'),
    newBatchPrediction,

    -- ** DataValidationMetrics
    DataValidationMetrics (DataValidationMetrics'),
    newDataValidationMetrics,

    -- ** Detector
    Detector (Detector'),
    newDetector,

    -- ** DetectorVersionSummary
    DetectorVersionSummary (DetectorVersionSummary'),
    newDetectorVersionSummary,

    -- ** Entity
    Entity (Entity'),
    newEntity,

    -- ** EntityType
    EntityType (EntityType'),
    newEntityType,

    -- ** Event
    Event (Event'),
    newEvent,

    -- ** EventType
    EventType (EventType'),
    newEventType,

    -- ** ExternalEventsDetail
    ExternalEventsDetail (ExternalEventsDetail'),
    newExternalEventsDetail,

    -- ** ExternalModel
    ExternalModel (ExternalModel'),
    newExternalModel,

    -- ** ExternalModelOutputs
    ExternalModelOutputs (ExternalModelOutputs'),
    newExternalModelOutputs,

    -- ** ExternalModelSummary
    ExternalModelSummary (ExternalModelSummary'),
    newExternalModelSummary,

    -- ** FieldValidationMessage
    FieldValidationMessage (FieldValidationMessage'),
    newFieldValidationMessage,

    -- ** FileValidationMessage
    FileValidationMessage (FileValidationMessage'),
    newFileValidationMessage,

    -- ** IngestedEventStatistics
    IngestedEventStatistics (IngestedEventStatistics'),
    newIngestedEventStatistics,

    -- ** IngestedEventsDetail
    IngestedEventsDetail (IngestedEventsDetail'),
    newIngestedEventsDetail,

    -- ** IngestedEventsTimeWindow
    IngestedEventsTimeWindow (IngestedEventsTimeWindow'),
    newIngestedEventsTimeWindow,

    -- ** KMSKey
    KMSKey (KMSKey'),
    newKMSKey,

    -- ** Label
    Label (Label'),
    newLabel,

    -- ** LabelSchema
    LabelSchema (LabelSchema'),
    newLabelSchema,

    -- ** LogOddsMetric
    LogOddsMetric (LogOddsMetric'),
    newLogOddsMetric,

    -- ** MetricDataPoint
    MetricDataPoint (MetricDataPoint'),
    newMetricDataPoint,

    -- ** Model
    Model (Model'),
    newModel,

    -- ** ModelEndpointDataBlob
    ModelEndpointDataBlob (ModelEndpointDataBlob'),
    newModelEndpointDataBlob,

    -- ** ModelInputConfiguration
    ModelInputConfiguration (ModelInputConfiguration'),
    newModelInputConfiguration,

    -- ** ModelOutputConfiguration
    ModelOutputConfiguration (ModelOutputConfiguration'),
    newModelOutputConfiguration,

    -- ** ModelScores
    ModelScores (ModelScores'),
    newModelScores,

    -- ** ModelVersion
    ModelVersion (ModelVersion'),
    newModelVersion,

    -- ** ModelVersionDetail
    ModelVersionDetail (ModelVersionDetail'),
    newModelVersionDetail,

    -- ** Outcome
    Outcome (Outcome'),
    newOutcome,

    -- ** Rule
    Rule (Rule'),
    newRule,

    -- ** RuleDetail
    RuleDetail (RuleDetail'),
    newRuleDetail,

    -- ** RuleResult
    RuleResult (RuleResult'),
    newRuleResult,

    -- ** Tag
    Tag (Tag'),
    newTag,

    -- ** TrainingDataSchema
    TrainingDataSchema (TrainingDataSchema'),
    newTrainingDataSchema,

    -- ** TrainingMetrics
    TrainingMetrics (TrainingMetrics'),
    newTrainingMetrics,

    -- ** TrainingResult
    TrainingResult (TrainingResult'),
    newTrainingResult,

    -- ** Variable
    Variable (Variable'),
    newVariable,

    -- ** VariableEntry
    VariableEntry (VariableEntry'),
    newVariableEntry,

    -- ** VariableImportanceMetrics
    VariableImportanceMetrics (VariableImportanceMetrics'),
    newVariableImportanceMetrics,
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
import Network.AWS.FraudDetector.Lens
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
import Network.AWS.FraudDetector.Types
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
import Network.AWS.FraudDetector.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'FraudDetector'.

-- $operations
-- Some AWS operations return results that are incomplete and require subsequent
-- requests in order to obtain the entire result set. The process of sending
-- subsequent requests to continue where a previous request left off is called
-- pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
-- 1000 objects at a time, and you must send subsequent requests with the
-- appropriate Marker in order to retrieve the next page of results.
--
-- Operations that have an 'AWSPager' instance can transparently perform subsequent
-- requests, correctly setting Markers and other request facets to iterate through
-- the entire result set of a truncated API operation. Operations which support
-- this have an additional note in the documentation.
--
-- Many operations have the ability to filter results on the server side. See the
-- individual operation parameters for details.

-- $waiters
-- Waiters poll by repeatedly sending a request until some remote success condition
-- configured by the 'Wait' specification is fulfilled. The 'Wait' specification
-- determines how many attempts should be made, in addition to delay and retry strategies.
