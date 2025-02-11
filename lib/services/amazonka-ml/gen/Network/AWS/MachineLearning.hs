{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.AWS.MachineLearning
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2014-12-12@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- Definition of the public APIs exposed by Amazon Machine Learning
module Network.AWS.MachineLearning
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** InvalidTagException
    _InvalidTagException,

    -- ** InternalServerException
    _InternalServerException,

    -- ** InvalidInputException
    _InvalidInputException,

    -- ** IdempotentParameterMismatchException
    _IdempotentParameterMismatchException,

    -- ** TagLimitExceededException
    _TagLimitExceededException,

    -- ** PredictorNotMountedException
    _PredictorNotMountedException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- * Waiters
    -- $waiters

    -- ** MLModelAvailable
    newMLModelAvailable,

    -- ** BatchPredictionAvailable
    newBatchPredictionAvailable,

    -- ** DataSourceAvailable
    newDataSourceAvailable,

    -- ** EvaluationAvailable
    newEvaluationAvailable,

    -- * Operations
    -- $operations

    -- ** UpdateDataSource
    UpdateDataSource (UpdateDataSource'),
    newUpdateDataSource,
    UpdateDataSourceResponse (UpdateDataSourceResponse'),
    newUpdateDataSourceResponse,

    -- ** DeleteDataSource
    DeleteDataSource (DeleteDataSource'),
    newDeleteDataSource,
    DeleteDataSourceResponse (DeleteDataSourceResponse'),
    newDeleteDataSourceResponse,

    -- ** DescribeTags
    DescribeTags (DescribeTags'),
    newDescribeTags,
    DescribeTagsResponse (DescribeTagsResponse'),
    newDescribeTagsResponse,

    -- ** CreateDataSourceFromRedshift
    CreateDataSourceFromRedshift (CreateDataSourceFromRedshift'),
    newCreateDataSourceFromRedshift,
    CreateDataSourceFromRedshiftResponse (CreateDataSourceFromRedshiftResponse'),
    newCreateDataSourceFromRedshiftResponse,

    -- ** CreateDataSourceFromS3
    CreateDataSourceFromS3 (CreateDataSourceFromS3'),
    newCreateDataSourceFromS3,
    CreateDataSourceFromS3Response (CreateDataSourceFromS3Response'),
    newCreateDataSourceFromS3Response,

    -- ** CreateMLModel
    CreateMLModel (CreateMLModel'),
    newCreateMLModel,
    CreateMLModelResponse (CreateMLModelResponse'),
    newCreateMLModelResponse,

    -- ** DeleteTags
    DeleteTags (DeleteTags'),
    newDeleteTags,
    DeleteTagsResponse (DeleteTagsResponse'),
    newDeleteTagsResponse,

    -- ** DeleteBatchPrediction
    DeleteBatchPrediction (DeleteBatchPrediction'),
    newDeleteBatchPrediction,
    DeleteBatchPredictionResponse (DeleteBatchPredictionResponse'),
    newDeleteBatchPredictionResponse,

    -- ** UpdateBatchPrediction
    UpdateBatchPrediction (UpdateBatchPrediction'),
    newUpdateBatchPrediction,
    UpdateBatchPredictionResponse (UpdateBatchPredictionResponse'),
    newUpdateBatchPredictionResponse,

    -- ** GetMLModel
    GetMLModel (GetMLModel'),
    newGetMLModel,
    GetMLModelResponse (GetMLModelResponse'),
    newGetMLModelResponse,

    -- ** GetDataSource
    GetDataSource (GetDataSource'),
    newGetDataSource,
    GetDataSourceResponse (GetDataSourceResponse'),
    newGetDataSourceResponse,

    -- ** UpdateEvaluation
    UpdateEvaluation (UpdateEvaluation'),
    newUpdateEvaluation,
    UpdateEvaluationResponse (UpdateEvaluationResponse'),
    newUpdateEvaluationResponse,

    -- ** DeleteEvaluation
    DeleteEvaluation (DeleteEvaluation'),
    newDeleteEvaluation,
    DeleteEvaluationResponse (DeleteEvaluationResponse'),
    newDeleteEvaluationResponse,

    -- ** DeleteMLModel
    DeleteMLModel (DeleteMLModel'),
    newDeleteMLModel,
    DeleteMLModelResponse (DeleteMLModelResponse'),
    newDeleteMLModelResponse,

    -- ** UpdateMLModel
    UpdateMLModel (UpdateMLModel'),
    newUpdateMLModel,
    UpdateMLModelResponse (UpdateMLModelResponse'),
    newUpdateMLModelResponse,

    -- ** GetBatchPrediction
    GetBatchPrediction (GetBatchPrediction'),
    newGetBatchPrediction,
    GetBatchPredictionResponse (GetBatchPredictionResponse'),
    newGetBatchPredictionResponse,

    -- ** DescribeBatchPredictions (Paginated)
    DescribeBatchPredictions (DescribeBatchPredictions'),
    newDescribeBatchPredictions,
    DescribeBatchPredictionsResponse (DescribeBatchPredictionsResponse'),
    newDescribeBatchPredictionsResponse,

    -- ** CreateDataSourceFromRDS
    CreateDataSourceFromRDS (CreateDataSourceFromRDS'),
    newCreateDataSourceFromRDS,
    CreateDataSourceFromRDSResponse (CreateDataSourceFromRDSResponse'),
    newCreateDataSourceFromRDSResponse,

    -- ** CreateEvaluation
    CreateEvaluation (CreateEvaluation'),
    newCreateEvaluation,
    CreateEvaluationResponse (CreateEvaluationResponse'),
    newCreateEvaluationResponse,

    -- ** Predict
    Predict (Predict'),
    newPredict,
    PredictResponse (PredictResponse'),
    newPredictResponse,

    -- ** DeleteRealtimeEndpoint
    DeleteRealtimeEndpoint (DeleteRealtimeEndpoint'),
    newDeleteRealtimeEndpoint,
    DeleteRealtimeEndpointResponse (DeleteRealtimeEndpointResponse'),
    newDeleteRealtimeEndpointResponse,

    -- ** CreateBatchPrediction
    CreateBatchPrediction (CreateBatchPrediction'),
    newCreateBatchPrediction,
    CreateBatchPredictionResponse (CreateBatchPredictionResponse'),
    newCreateBatchPredictionResponse,

    -- ** GetEvaluation
    GetEvaluation (GetEvaluation'),
    newGetEvaluation,
    GetEvaluationResponse (GetEvaluationResponse'),
    newGetEvaluationResponse,

    -- ** DescribeEvaluations (Paginated)
    DescribeEvaluations (DescribeEvaluations'),
    newDescribeEvaluations,
    DescribeEvaluationsResponse (DescribeEvaluationsResponse'),
    newDescribeEvaluationsResponse,

    -- ** CreateRealtimeEndpoint
    CreateRealtimeEndpoint (CreateRealtimeEndpoint'),
    newCreateRealtimeEndpoint,
    CreateRealtimeEndpointResponse (CreateRealtimeEndpointResponse'),
    newCreateRealtimeEndpointResponse,

    -- ** AddTags
    AddTags (AddTags'),
    newAddTags,
    AddTagsResponse (AddTagsResponse'),
    newAddTagsResponse,

    -- ** DescribeMLModels (Paginated)
    DescribeMLModels (DescribeMLModels'),
    newDescribeMLModels,
    DescribeMLModelsResponse (DescribeMLModelsResponse'),
    newDescribeMLModelsResponse,

    -- ** DescribeDataSources (Paginated)
    DescribeDataSources (DescribeDataSources'),
    newDescribeDataSources,
    DescribeDataSourcesResponse (DescribeDataSourcesResponse'),
    newDescribeDataSourcesResponse,

    -- * Types

    -- ** Algorithm
    Algorithm (..),

    -- ** BatchPredictionFilterVariable
    BatchPredictionFilterVariable (..),

    -- ** DataSourceFilterVariable
    DataSourceFilterVariable (..),

    -- ** DetailsAttributes
    DetailsAttributes (..),

    -- ** EntityStatus
    EntityStatus (..),

    -- ** EvaluationFilterVariable
    EvaluationFilterVariable (..),

    -- ** MLModelFilterVariable
    MLModelFilterVariable (..),

    -- ** MLModelType
    MLModelType (..),

    -- ** RealtimeEndpointStatus
    RealtimeEndpointStatus (..),

    -- ** SortOrder
    SortOrder (..),

    -- ** TaggableResourceType
    TaggableResourceType (..),

    -- ** BatchPrediction
    BatchPrediction (BatchPrediction'),
    newBatchPrediction,

    -- ** DataSource
    DataSource (DataSource'),
    newDataSource,

    -- ** Evaluation
    Evaluation (Evaluation'),
    newEvaluation,

    -- ** MLModel
    MLModel (MLModel'),
    newMLModel,

    -- ** PerformanceMetrics
    PerformanceMetrics (PerformanceMetrics'),
    newPerformanceMetrics,

    -- ** Prediction
    Prediction (Prediction'),
    newPrediction,

    -- ** RDSDataSpec
    RDSDataSpec (RDSDataSpec'),
    newRDSDataSpec,

    -- ** RDSDatabase
    RDSDatabase (RDSDatabase'),
    newRDSDatabase,

    -- ** RDSDatabaseCredentials
    RDSDatabaseCredentials (RDSDatabaseCredentials'),
    newRDSDatabaseCredentials,

    -- ** RDSMetadata
    RDSMetadata (RDSMetadata'),
    newRDSMetadata,

    -- ** RealtimeEndpointInfo
    RealtimeEndpointInfo (RealtimeEndpointInfo'),
    newRealtimeEndpointInfo,

    -- ** RedshiftDataSpec
    RedshiftDataSpec (RedshiftDataSpec'),
    newRedshiftDataSpec,

    -- ** RedshiftDatabase
    RedshiftDatabase (RedshiftDatabase'),
    newRedshiftDatabase,

    -- ** RedshiftDatabaseCredentials
    RedshiftDatabaseCredentials (RedshiftDatabaseCredentials'),
    newRedshiftDatabaseCredentials,

    -- ** RedshiftMetadata
    RedshiftMetadata (RedshiftMetadata'),
    newRedshiftMetadata,

    -- ** S3DataSpec
    S3DataSpec (S3DataSpec'),
    newS3DataSpec,

    -- ** Tag
    Tag (Tag'),
    newTag,
  )
where

import Network.AWS.MachineLearning.AddTags
import Network.AWS.MachineLearning.CreateBatchPrediction
import Network.AWS.MachineLearning.CreateDataSourceFromRDS
import Network.AWS.MachineLearning.CreateDataSourceFromRedshift
import Network.AWS.MachineLearning.CreateDataSourceFromS3
import Network.AWS.MachineLearning.CreateEvaluation
import Network.AWS.MachineLearning.CreateMLModel
import Network.AWS.MachineLearning.CreateRealtimeEndpoint
import Network.AWS.MachineLearning.DeleteBatchPrediction
import Network.AWS.MachineLearning.DeleteDataSource
import Network.AWS.MachineLearning.DeleteEvaluation
import Network.AWS.MachineLearning.DeleteMLModel
import Network.AWS.MachineLearning.DeleteRealtimeEndpoint
import Network.AWS.MachineLearning.DeleteTags
import Network.AWS.MachineLearning.DescribeBatchPredictions
import Network.AWS.MachineLearning.DescribeDataSources
import Network.AWS.MachineLearning.DescribeEvaluations
import Network.AWS.MachineLearning.DescribeMLModels
import Network.AWS.MachineLearning.DescribeTags
import Network.AWS.MachineLearning.GetBatchPrediction
import Network.AWS.MachineLearning.GetDataSource
import Network.AWS.MachineLearning.GetEvaluation
import Network.AWS.MachineLearning.GetMLModel
import Network.AWS.MachineLearning.Lens
import Network.AWS.MachineLearning.Predict
import Network.AWS.MachineLearning.Types
import Network.AWS.MachineLearning.UpdateBatchPrediction
import Network.AWS.MachineLearning.UpdateDataSource
import Network.AWS.MachineLearning.UpdateEvaluation
import Network.AWS.MachineLearning.UpdateMLModel
import Network.AWS.MachineLearning.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'MachineLearning'.

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
