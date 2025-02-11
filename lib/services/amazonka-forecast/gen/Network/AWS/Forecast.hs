{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.AWS.Forecast
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2018-06-26@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- Provides APIs for creating and managing Amazon Forecast resources.
module Network.AWS.Forecast
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** ResourceAlreadyExistsException
    _ResourceAlreadyExistsException,

    -- ** InvalidNextTokenException
    _InvalidNextTokenException,

    -- ** InvalidInputException
    _InvalidInputException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** ResourceInUseException
    _ResourceInUseException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** ListDatasetGroups (Paginated)
    ListDatasetGroups (ListDatasetGroups'),
    newListDatasetGroups,
    ListDatasetGroupsResponse (ListDatasetGroupsResponse'),
    newListDatasetGroupsResponse,

    -- ** CreateDatasetImportJob
    CreateDatasetImportJob (CreateDatasetImportJob'),
    newCreateDatasetImportJob,
    CreateDatasetImportJobResponse (CreateDatasetImportJobResponse'),
    newCreateDatasetImportJobResponse,

    -- ** DescribeDataset
    DescribeDataset (DescribeDataset'),
    newDescribeDataset,
    DescribeDatasetResponse (DescribeDatasetResponse'),
    newDescribeDatasetResponse,

    -- ** ListForecasts (Paginated)
    ListForecasts (ListForecasts'),
    newListForecasts,
    ListForecastsResponse (ListForecastsResponse'),
    newListForecastsResponse,

    -- ** ListTagsForResource
    ListTagsForResource (ListTagsForResource'),
    newListTagsForResource,
    ListTagsForResourceResponse (ListTagsForResourceResponse'),
    newListTagsForResourceResponse,

    -- ** StopResource
    StopResource (StopResource'),
    newStopResource,
    StopResourceResponse (StopResourceResponse'),
    newStopResourceResponse,

    -- ** DescribeDatasetImportJob
    DescribeDatasetImportJob (DescribeDatasetImportJob'),
    newDescribeDatasetImportJob,
    DescribeDatasetImportJobResponse (DescribeDatasetImportJobResponse'),
    newDescribeDatasetImportJobResponse,

    -- ** DescribeForecastExportJob
    DescribeForecastExportJob (DescribeForecastExportJob'),
    newDescribeForecastExportJob,
    DescribeForecastExportJobResponse (DescribeForecastExportJobResponse'),
    newDescribeForecastExportJobResponse,

    -- ** DescribePredictor
    DescribePredictor (DescribePredictor'),
    newDescribePredictor,
    DescribePredictorResponse (DescribePredictorResponse'),
    newDescribePredictorResponse,

    -- ** DeleteDataset
    DeleteDataset (DeleteDataset'),
    newDeleteDataset,
    DeleteDatasetResponse (DeleteDatasetResponse'),
    newDeleteDatasetResponse,

    -- ** DescribeForecast
    DescribeForecast (DescribeForecast'),
    newDescribeForecast,
    DescribeForecastResponse (DescribeForecastResponse'),
    newDescribeForecastResponse,

    -- ** CreateDataset
    CreateDataset (CreateDataset'),
    newCreateDataset,
    CreateDatasetResponse (CreateDatasetResponse'),
    newCreateDatasetResponse,

    -- ** DeleteForecastExportJob
    DeleteForecastExportJob (DeleteForecastExportJob'),
    newDeleteForecastExportJob,
    DeleteForecastExportJobResponse (DeleteForecastExportJobResponse'),
    newDeleteForecastExportJobResponse,

    -- ** DeletePredictor
    DeletePredictor (DeletePredictor'),
    newDeletePredictor,
    DeletePredictorResponse (DeletePredictorResponse'),
    newDeletePredictorResponse,

    -- ** ListDatasetImportJobs (Paginated)
    ListDatasetImportJobs (ListDatasetImportJobs'),
    newListDatasetImportJobs,
    ListDatasetImportJobsResponse (ListDatasetImportJobsResponse'),
    newListDatasetImportJobsResponse,

    -- ** DeleteDatasetImportJob
    DeleteDatasetImportJob (DeleteDatasetImportJob'),
    newDeleteDatasetImportJob,
    DeleteDatasetImportJobResponse (DeleteDatasetImportJobResponse'),
    newDeleteDatasetImportJobResponse,

    -- ** GetAccuracyMetrics
    GetAccuracyMetrics (GetAccuracyMetrics'),
    newGetAccuracyMetrics,
    GetAccuracyMetricsResponse (GetAccuracyMetricsResponse'),
    newGetAccuracyMetricsResponse,

    -- ** DeleteDatasetGroup
    DeleteDatasetGroup (DeleteDatasetGroup'),
    newDeleteDatasetGroup,
    DeleteDatasetGroupResponse (DeleteDatasetGroupResponse'),
    newDeleteDatasetGroupResponse,

    -- ** UpdateDatasetGroup
    UpdateDatasetGroup (UpdateDatasetGroup'),
    newUpdateDatasetGroup,
    UpdateDatasetGroupResponse (UpdateDatasetGroupResponse'),
    newUpdateDatasetGroupResponse,

    -- ** CreateForecastExportJob
    CreateForecastExportJob (CreateForecastExportJob'),
    newCreateForecastExportJob,
    CreateForecastExportJobResponse (CreateForecastExportJobResponse'),
    newCreateForecastExportJobResponse,

    -- ** CreatePredictor
    CreatePredictor (CreatePredictor'),
    newCreatePredictor,
    CreatePredictorResponse (CreatePredictorResponse'),
    newCreatePredictorResponse,

    -- ** ListPredictorBacktestExportJobs (Paginated)
    ListPredictorBacktestExportJobs (ListPredictorBacktestExportJobs'),
    newListPredictorBacktestExportJobs,
    ListPredictorBacktestExportJobsResponse (ListPredictorBacktestExportJobsResponse'),
    newListPredictorBacktestExportJobsResponse,

    -- ** DeletePredictorBacktestExportJob
    DeletePredictorBacktestExportJob (DeletePredictorBacktestExportJob'),
    newDeletePredictorBacktestExportJob,
    DeletePredictorBacktestExportJobResponse (DeletePredictorBacktestExportJobResponse'),
    newDeletePredictorBacktestExportJobResponse,

    -- ** CreateForecast
    CreateForecast (CreateForecast'),
    newCreateForecast,
    CreateForecastResponse (CreateForecastResponse'),
    newCreateForecastResponse,

    -- ** CreatePredictorBacktestExportJob
    CreatePredictorBacktestExportJob (CreatePredictorBacktestExportJob'),
    newCreatePredictorBacktestExportJob,
    CreatePredictorBacktestExportJobResponse (CreatePredictorBacktestExportJobResponse'),
    newCreatePredictorBacktestExportJobResponse,

    -- ** DeleteForecast
    DeleteForecast (DeleteForecast'),
    newDeleteForecast,
    DeleteForecastResponse (DeleteForecastResponse'),
    newDeleteForecastResponse,

    -- ** DeleteResourceTree
    DeleteResourceTree (DeleteResourceTree'),
    newDeleteResourceTree,
    DeleteResourceTreeResponse (DeleteResourceTreeResponse'),
    newDeleteResourceTreeResponse,

    -- ** DescribeDatasetGroup
    DescribeDatasetGroup (DescribeDatasetGroup'),
    newDescribeDatasetGroup,
    DescribeDatasetGroupResponse (DescribeDatasetGroupResponse'),
    newDescribeDatasetGroupResponse,

    -- ** TagResource
    TagResource (TagResource'),
    newTagResource,
    TagResourceResponse (TagResourceResponse'),
    newTagResourceResponse,

    -- ** ListDatasets (Paginated)
    ListDatasets (ListDatasets'),
    newListDatasets,
    ListDatasetsResponse (ListDatasetsResponse'),
    newListDatasetsResponse,

    -- ** DescribePredictorBacktestExportJob
    DescribePredictorBacktestExportJob (DescribePredictorBacktestExportJob'),
    newDescribePredictorBacktestExportJob,
    DescribePredictorBacktestExportJobResponse (DescribePredictorBacktestExportJobResponse'),
    newDescribePredictorBacktestExportJobResponse,

    -- ** UntagResource
    UntagResource (UntagResource'),
    newUntagResource,
    UntagResourceResponse (UntagResourceResponse'),
    newUntagResourceResponse,

    -- ** CreateDatasetGroup
    CreateDatasetGroup (CreateDatasetGroup'),
    newCreateDatasetGroup,
    CreateDatasetGroupResponse (CreateDatasetGroupResponse'),
    newCreateDatasetGroupResponse,

    -- ** ListForecastExportJobs (Paginated)
    ListForecastExportJobs (ListForecastExportJobs'),
    newListForecastExportJobs,
    ListForecastExportJobsResponse (ListForecastExportJobsResponse'),
    newListForecastExportJobsResponse,

    -- ** ListPredictors (Paginated)
    ListPredictors (ListPredictors'),
    newListPredictors,
    ListPredictorsResponse (ListPredictorsResponse'),
    newListPredictorsResponse,

    -- * Types

    -- ** AttributeType
    AttributeType (..),

    -- ** AutoMLOverrideStrategy
    AutoMLOverrideStrategy (..),

    -- ** DatasetType
    DatasetType (..),

    -- ** Domain
    Domain (..),

    -- ** EvaluationType
    EvaluationType (..),

    -- ** FeaturizationMethodName
    FeaturizationMethodName (..),

    -- ** FilterConditionString
    FilterConditionString (..),

    -- ** OptimizationMetric
    OptimizationMetric (..),

    -- ** ScalingType
    ScalingType (..),

    -- ** CategoricalParameterRange
    CategoricalParameterRange (CategoricalParameterRange'),
    newCategoricalParameterRange,

    -- ** ContinuousParameterRange
    ContinuousParameterRange (ContinuousParameterRange'),
    newContinuousParameterRange,

    -- ** DataDestination
    DataDestination (DataDestination'),
    newDataDestination,

    -- ** DataSource
    DataSource (DataSource'),
    newDataSource,

    -- ** DatasetGroupSummary
    DatasetGroupSummary (DatasetGroupSummary'),
    newDatasetGroupSummary,

    -- ** DatasetImportJobSummary
    DatasetImportJobSummary (DatasetImportJobSummary'),
    newDatasetImportJobSummary,

    -- ** DatasetSummary
    DatasetSummary (DatasetSummary'),
    newDatasetSummary,

    -- ** EncryptionConfig
    EncryptionConfig (EncryptionConfig'),
    newEncryptionConfig,

    -- ** ErrorMetric
    ErrorMetric (ErrorMetric'),
    newErrorMetric,

    -- ** EvaluationParameters
    EvaluationParameters (EvaluationParameters'),
    newEvaluationParameters,

    -- ** EvaluationResult
    EvaluationResult (EvaluationResult'),
    newEvaluationResult,

    -- ** Featurization
    Featurization (Featurization'),
    newFeaturization,

    -- ** FeaturizationConfig
    FeaturizationConfig (FeaturizationConfig'),
    newFeaturizationConfig,

    -- ** FeaturizationMethod
    FeaturizationMethod (FeaturizationMethod'),
    newFeaturizationMethod,

    -- ** Filter
    Filter (Filter'),
    newFilter,

    -- ** ForecastExportJobSummary
    ForecastExportJobSummary (ForecastExportJobSummary'),
    newForecastExportJobSummary,

    -- ** ForecastSummary
    ForecastSummary (ForecastSummary'),
    newForecastSummary,

    -- ** HyperParameterTuningJobConfig
    HyperParameterTuningJobConfig (HyperParameterTuningJobConfig'),
    newHyperParameterTuningJobConfig,

    -- ** InputDataConfig
    InputDataConfig (InputDataConfig'),
    newInputDataConfig,

    -- ** IntegerParameterRange
    IntegerParameterRange (IntegerParameterRange'),
    newIntegerParameterRange,

    -- ** Metrics
    Metrics (Metrics'),
    newMetrics,

    -- ** ParameterRanges
    ParameterRanges (ParameterRanges'),
    newParameterRanges,

    -- ** PredictorBacktestExportJobSummary
    PredictorBacktestExportJobSummary (PredictorBacktestExportJobSummary'),
    newPredictorBacktestExportJobSummary,

    -- ** PredictorExecution
    PredictorExecution (PredictorExecution'),
    newPredictorExecution,

    -- ** PredictorExecutionDetails
    PredictorExecutionDetails (PredictorExecutionDetails'),
    newPredictorExecutionDetails,

    -- ** PredictorSummary
    PredictorSummary (PredictorSummary'),
    newPredictorSummary,

    -- ** S3Config
    S3Config (S3Config'),
    newS3Config,

    -- ** Schema
    Schema (Schema'),
    newSchema,

    -- ** SchemaAttribute
    SchemaAttribute (SchemaAttribute'),
    newSchemaAttribute,

    -- ** Statistics
    Statistics (Statistics'),
    newStatistics,

    -- ** SupplementaryFeature
    SupplementaryFeature (SupplementaryFeature'),
    newSupplementaryFeature,

    -- ** Tag
    Tag (Tag'),
    newTag,

    -- ** TestWindowSummary
    TestWindowSummary (TestWindowSummary'),
    newTestWindowSummary,

    -- ** WeightedQuantileLoss
    WeightedQuantileLoss (WeightedQuantileLoss'),
    newWeightedQuantileLoss,

    -- ** WindowSummary
    WindowSummary (WindowSummary'),
    newWindowSummary,
  )
where

import Network.AWS.Forecast.CreateDataset
import Network.AWS.Forecast.CreateDatasetGroup
import Network.AWS.Forecast.CreateDatasetImportJob
import Network.AWS.Forecast.CreateForecast
import Network.AWS.Forecast.CreateForecastExportJob
import Network.AWS.Forecast.CreatePredictor
import Network.AWS.Forecast.CreatePredictorBacktestExportJob
import Network.AWS.Forecast.DeleteDataset
import Network.AWS.Forecast.DeleteDatasetGroup
import Network.AWS.Forecast.DeleteDatasetImportJob
import Network.AWS.Forecast.DeleteForecast
import Network.AWS.Forecast.DeleteForecastExportJob
import Network.AWS.Forecast.DeletePredictor
import Network.AWS.Forecast.DeletePredictorBacktestExportJob
import Network.AWS.Forecast.DeleteResourceTree
import Network.AWS.Forecast.DescribeDataset
import Network.AWS.Forecast.DescribeDatasetGroup
import Network.AWS.Forecast.DescribeDatasetImportJob
import Network.AWS.Forecast.DescribeForecast
import Network.AWS.Forecast.DescribeForecastExportJob
import Network.AWS.Forecast.DescribePredictor
import Network.AWS.Forecast.DescribePredictorBacktestExportJob
import Network.AWS.Forecast.GetAccuracyMetrics
import Network.AWS.Forecast.Lens
import Network.AWS.Forecast.ListDatasetGroups
import Network.AWS.Forecast.ListDatasetImportJobs
import Network.AWS.Forecast.ListDatasets
import Network.AWS.Forecast.ListForecastExportJobs
import Network.AWS.Forecast.ListForecasts
import Network.AWS.Forecast.ListPredictorBacktestExportJobs
import Network.AWS.Forecast.ListPredictors
import Network.AWS.Forecast.ListTagsForResource
import Network.AWS.Forecast.StopResource
import Network.AWS.Forecast.TagResource
import Network.AWS.Forecast.Types
import Network.AWS.Forecast.UntagResource
import Network.AWS.Forecast.UpdateDatasetGroup
import Network.AWS.Forecast.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'Forecast'.

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
