{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Personalize.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Personalize.Lens
  ( -- * Operations

    -- ** ListDatasetGroups
    listDatasetGroups_nextToken,
    listDatasetGroups_maxResults,
    listDatasetGroupsResponse_nextToken,
    listDatasetGroupsResponse_datasetGroups,
    listDatasetGroupsResponse_httpStatus,

    -- ** CreateBatchInferenceJob
    createBatchInferenceJob_numResults,
    createBatchInferenceJob_batchInferenceJobConfig,
    createBatchInferenceJob_filterArn,
    createBatchInferenceJob_jobName,
    createBatchInferenceJob_solutionVersionArn,
    createBatchInferenceJob_jobInput,
    createBatchInferenceJob_jobOutput,
    createBatchInferenceJob_roleArn,
    createBatchInferenceJobResponse_batchInferenceJobArn,
    createBatchInferenceJobResponse_httpStatus,

    -- ** CreateFilter
    createFilter_name,
    createFilter_datasetGroupArn,
    createFilter_filterExpression,
    createFilterResponse_filterArn,
    createFilterResponse_httpStatus,

    -- ** CreateDatasetImportJob
    createDatasetImportJob_jobName,
    createDatasetImportJob_datasetArn,
    createDatasetImportJob_dataSource,
    createDatasetImportJob_roleArn,
    createDatasetImportJobResponse_datasetImportJobArn,
    createDatasetImportJobResponse_httpStatus,

    -- ** DescribeSolution
    describeSolution_solutionArn,
    describeSolutionResponse_solution,
    describeSolutionResponse_httpStatus,

    -- ** DescribeDatasetExportJob
    describeDatasetExportJob_datasetExportJobArn,
    describeDatasetExportJobResponse_datasetExportJob,
    describeDatasetExportJobResponse_httpStatus,

    -- ** DeleteCampaign
    deleteCampaign_campaignArn,

    -- ** UpdateCampaign
    updateCampaign_campaignConfig,
    updateCampaign_minProvisionedTPS,
    updateCampaign_solutionVersionArn,
    updateCampaign_campaignArn,
    updateCampaignResponse_campaignArn,
    updateCampaignResponse_httpStatus,

    -- ** ListCampaigns
    listCampaigns_solutionArn,
    listCampaigns_nextToken,
    listCampaigns_maxResults,
    listCampaignsResponse_campaigns,
    listCampaignsResponse_nextToken,
    listCampaignsResponse_httpStatus,

    -- ** DescribeDataset
    describeDataset_datasetArn,
    describeDatasetResponse_dataset,
    describeDatasetResponse_httpStatus,

    -- ** CreateSolutionVersion
    createSolutionVersion_trainingMode,
    createSolutionVersion_solutionArn,
    createSolutionVersionResponse_solutionVersionArn,
    createSolutionVersionResponse_httpStatus,

    -- ** StopSolutionVersionCreation
    stopSolutionVersionCreation_solutionVersionArn,

    -- ** CreateCampaign
    createCampaign_campaignConfig,
    createCampaign_minProvisionedTPS,
    createCampaign_name,
    createCampaign_solutionVersionArn,
    createCampaignResponse_campaignArn,
    createCampaignResponse_httpStatus,

    -- ** DescribeFilter
    describeFilter_filterArn,
    describeFilterResponse_filter,
    describeFilterResponse_httpStatus,

    -- ** ListEventTrackers
    listEventTrackers_nextToken,
    listEventTrackers_datasetGroupArn,
    listEventTrackers_maxResults,
    listEventTrackersResponse_eventTrackers,
    listEventTrackersResponse_nextToken,
    listEventTrackersResponse_httpStatus,

    -- ** CreateDatasetExportJob
    createDatasetExportJob_ingestionMode,
    createDatasetExportJob_jobName,
    createDatasetExportJob_datasetArn,
    createDatasetExportJob_roleArn,
    createDatasetExportJob_jobOutput,
    createDatasetExportJobResponse_datasetExportJobArn,
    createDatasetExportJobResponse_httpStatus,

    -- ** CreateSolution
    createSolution_performAutoML,
    createSolution_recipeArn,
    createSolution_eventType,
    createSolution_solutionConfig,
    createSolution_performHPO,
    createSolution_name,
    createSolution_datasetGroupArn,
    createSolutionResponse_solutionArn,
    createSolutionResponse_httpStatus,

    -- ** DeleteEventTracker
    deleteEventTracker_eventTrackerArn,

    -- ** DescribeDatasetImportJob
    describeDatasetImportJob_datasetImportJobArn,
    describeDatasetImportJobResponse_datasetImportJob,
    describeDatasetImportJobResponse_httpStatus,

    -- ** ListSchemas
    listSchemas_nextToken,
    listSchemas_maxResults,
    listSchemasResponse_schemas,
    listSchemasResponse_nextToken,
    listSchemasResponse_httpStatus,

    -- ** CreateEventTracker
    createEventTracker_name,
    createEventTracker_datasetGroupArn,
    createEventTrackerResponse_trackingId,
    createEventTrackerResponse_eventTrackerArn,
    createEventTrackerResponse_httpStatus,

    -- ** DeleteSolution
    deleteSolution_solutionArn,

    -- ** DescribeCampaign
    describeCampaign_campaignArn,
    describeCampaignResponse_campaign,
    describeCampaignResponse_httpStatus,

    -- ** DeleteDataset
    deleteDataset_datasetArn,

    -- ** CreateDataset
    createDataset_name,
    createDataset_schemaArn,
    createDataset_datasetGroupArn,
    createDataset_datasetType,
    createDatasetResponse_datasetArn,
    createDatasetResponse_httpStatus,

    -- ** DescribeSolutionVersion
    describeSolutionVersion_solutionVersionArn,
    describeSolutionVersionResponse_solutionVersion,
    describeSolutionVersionResponse_httpStatus,

    -- ** DescribeEventTracker
    describeEventTracker_eventTrackerArn,
    describeEventTrackerResponse_eventTracker,
    describeEventTrackerResponse_httpStatus,

    -- ** ListDatasetImportJobs
    listDatasetImportJobs_datasetArn,
    listDatasetImportJobs_nextToken,
    listDatasetImportJobs_maxResults,
    listDatasetImportJobsResponse_datasetImportJobs,
    listDatasetImportJobsResponse_nextToken,
    listDatasetImportJobsResponse_httpStatus,

    -- ** DeleteFilter
    deleteFilter_filterArn,

    -- ** ListBatchInferenceJobs
    listBatchInferenceJobs_nextToken,
    listBatchInferenceJobs_maxResults,
    listBatchInferenceJobs_solutionVersionArn,
    listBatchInferenceJobsResponse_batchInferenceJobs,
    listBatchInferenceJobsResponse_nextToken,
    listBatchInferenceJobsResponse_httpStatus,

    -- ** ListFilters
    listFilters_nextToken,
    listFilters_datasetGroupArn,
    listFilters_maxResults,
    listFiltersResponse_filters,
    listFiltersResponse_nextToken,
    listFiltersResponse_httpStatus,

    -- ** DeleteDatasetGroup
    deleteDatasetGroup_datasetGroupArn,

    -- ** DescribeSchema
    describeSchema_schemaArn,
    describeSchemaResponse_schema,
    describeSchemaResponse_httpStatus,

    -- ** DescribeAlgorithm
    describeAlgorithm_algorithmArn,
    describeAlgorithmResponse_algorithm,
    describeAlgorithmResponse_httpStatus,

    -- ** ListSolutionVersions
    listSolutionVersions_solutionArn,
    listSolutionVersions_nextToken,
    listSolutionVersions_maxResults,
    listSolutionVersionsResponse_nextToken,
    listSolutionVersionsResponse_solutionVersions,
    listSolutionVersionsResponse_httpStatus,

    -- ** DescribeBatchInferenceJob
    describeBatchInferenceJob_batchInferenceJobArn,
    describeBatchInferenceJobResponse_batchInferenceJob,
    describeBatchInferenceJobResponse_httpStatus,

    -- ** CreateSchema
    createSchema_name,
    createSchema_schema,
    createSchemaResponse_schemaArn,
    createSchemaResponse_httpStatus,

    -- ** DescribeRecipe
    describeRecipe_recipeArn,
    describeRecipeResponse_recipe,
    describeRecipeResponse_httpStatus,

    -- ** ListSolutions
    listSolutions_nextToken,
    listSolutions_datasetGroupArn,
    listSolutions_maxResults,
    listSolutionsResponse_nextToken,
    listSolutionsResponse_solutions,
    listSolutionsResponse_httpStatus,

    -- ** ListDatasetExportJobs
    listDatasetExportJobs_datasetArn,
    listDatasetExportJobs_nextToken,
    listDatasetExportJobs_maxResults,
    listDatasetExportJobsResponse_nextToken,
    listDatasetExportJobsResponse_datasetExportJobs,
    listDatasetExportJobsResponse_httpStatus,

    -- ** DescribeDatasetGroup
    describeDatasetGroup_datasetGroupArn,
    describeDatasetGroupResponse_datasetGroup,
    describeDatasetGroupResponse_httpStatus,

    -- ** DescribeFeatureTransformation
    describeFeatureTransformation_featureTransformationArn,
    describeFeatureTransformationResponse_featureTransformation,
    describeFeatureTransformationResponse_httpStatus,

    -- ** GetSolutionMetrics
    getSolutionMetrics_solutionVersionArn,
    getSolutionMetricsResponse_metrics,
    getSolutionMetricsResponse_solutionVersionArn,
    getSolutionMetricsResponse_httpStatus,

    -- ** DeleteSchema
    deleteSchema_schemaArn,

    -- ** ListDatasets
    listDatasets_nextToken,
    listDatasets_datasetGroupArn,
    listDatasets_maxResults,
    listDatasetsResponse_nextToken,
    listDatasetsResponse_datasets,
    listDatasetsResponse_httpStatus,

    -- ** CreateDatasetGroup
    createDatasetGroup_kmsKeyArn,
    createDatasetGroup_roleArn,
    createDatasetGroup_name,
    createDatasetGroupResponse_datasetGroupArn,
    createDatasetGroupResponse_httpStatus,

    -- ** ListRecipes
    listRecipes_nextToken,
    listRecipes_maxResults,
    listRecipes_recipeProvider,
    listRecipesResponse_nextToken,
    listRecipesResponse_recipes,
    listRecipesResponse_httpStatus,

    -- * Types

    -- ** Algorithm
    algorithm_defaultHyperParameters,
    algorithm_algorithmArn,
    algorithm_trainingInputMode,
    algorithm_defaultHyperParameterRanges,
    algorithm_algorithmImage,
    algorithm_lastUpdatedDateTime,
    algorithm_name,
    algorithm_creationDateTime,
    algorithm_defaultResourceConfig,
    algorithm_roleArn,

    -- ** AlgorithmImage
    algorithmImage_name,
    algorithmImage_dockerURI,

    -- ** AutoMLConfig
    autoMLConfig_recipeList,
    autoMLConfig_metricName,

    -- ** AutoMLResult
    autoMLResult_bestRecipeArn,

    -- ** BatchInferenceJob
    batchInferenceJob_failureReason,
    batchInferenceJob_status,
    batchInferenceJob_jobOutput,
    batchInferenceJob_jobName,
    batchInferenceJob_lastUpdatedDateTime,
    batchInferenceJob_numResults,
    batchInferenceJob_batchInferenceJobConfig,
    batchInferenceJob_batchInferenceJobArn,
    batchInferenceJob_filterArn,
    batchInferenceJob_creationDateTime,
    batchInferenceJob_solutionVersionArn,
    batchInferenceJob_roleArn,
    batchInferenceJob_jobInput,

    -- ** BatchInferenceJobConfig
    batchInferenceJobConfig_itemExplorationConfig,

    -- ** BatchInferenceJobInput
    batchInferenceJobInput_s3DataSource,

    -- ** BatchInferenceJobOutput
    batchInferenceJobOutput_s3DataDestination,

    -- ** BatchInferenceJobSummary
    batchInferenceJobSummary_failureReason,
    batchInferenceJobSummary_status,
    batchInferenceJobSummary_jobName,
    batchInferenceJobSummary_lastUpdatedDateTime,
    batchInferenceJobSummary_batchInferenceJobArn,
    batchInferenceJobSummary_creationDateTime,
    batchInferenceJobSummary_solutionVersionArn,

    -- ** Campaign
    campaign_failureReason,
    campaign_status,
    campaign_lastUpdatedDateTime,
    campaign_campaignConfig,
    campaign_latestCampaignUpdate,
    campaign_name,
    campaign_minProvisionedTPS,
    campaign_creationDateTime,
    campaign_campaignArn,
    campaign_solutionVersionArn,

    -- ** CampaignConfig
    campaignConfig_itemExplorationConfig,

    -- ** CampaignSummary
    campaignSummary_failureReason,
    campaignSummary_status,
    campaignSummary_lastUpdatedDateTime,
    campaignSummary_name,
    campaignSummary_creationDateTime,
    campaignSummary_campaignArn,

    -- ** CampaignUpdateSummary
    campaignUpdateSummary_failureReason,
    campaignUpdateSummary_status,
    campaignUpdateSummary_lastUpdatedDateTime,
    campaignUpdateSummary_campaignConfig,
    campaignUpdateSummary_minProvisionedTPS,
    campaignUpdateSummary_creationDateTime,
    campaignUpdateSummary_solutionVersionArn,

    -- ** CategoricalHyperParameterRange
    categoricalHyperParameterRange_values,
    categoricalHyperParameterRange_name,

    -- ** ContinuousHyperParameterRange
    continuousHyperParameterRange_maxValue,
    continuousHyperParameterRange_name,
    continuousHyperParameterRange_minValue,

    -- ** DataSource
    dataSource_dataLocation,

    -- ** Dataset
    dataset_status,
    dataset_datasetArn,
    dataset_lastUpdatedDateTime,
    dataset_schemaArn,
    dataset_name,
    dataset_datasetType,
    dataset_creationDateTime,
    dataset_datasetGroupArn,

    -- ** DatasetExportJob
    datasetExportJob_failureReason,
    datasetExportJob_status,
    datasetExportJob_datasetExportJobArn,
    datasetExportJob_datasetArn,
    datasetExportJob_jobOutput,
    datasetExportJob_jobName,
    datasetExportJob_lastUpdatedDateTime,
    datasetExportJob_ingestionMode,
    datasetExportJob_creationDateTime,
    datasetExportJob_roleArn,

    -- ** DatasetExportJobOutput
    datasetExportJobOutput_s3DataDestination,

    -- ** DatasetExportJobSummary
    datasetExportJobSummary_failureReason,
    datasetExportJobSummary_status,
    datasetExportJobSummary_datasetExportJobArn,
    datasetExportJobSummary_jobName,
    datasetExportJobSummary_lastUpdatedDateTime,
    datasetExportJobSummary_creationDateTime,

    -- ** DatasetGroup
    datasetGroup_failureReason,
    datasetGroup_status,
    datasetGroup_kmsKeyArn,
    datasetGroup_lastUpdatedDateTime,
    datasetGroup_name,
    datasetGroup_creationDateTime,
    datasetGroup_datasetGroupArn,
    datasetGroup_roleArn,

    -- ** DatasetGroupSummary
    datasetGroupSummary_failureReason,
    datasetGroupSummary_status,
    datasetGroupSummary_lastUpdatedDateTime,
    datasetGroupSummary_name,
    datasetGroupSummary_creationDateTime,
    datasetGroupSummary_datasetGroupArn,

    -- ** DatasetImportJob
    datasetImportJob_failureReason,
    datasetImportJob_status,
    datasetImportJob_datasetArn,
    datasetImportJob_jobName,
    datasetImportJob_lastUpdatedDateTime,
    datasetImportJob_datasetImportJobArn,
    datasetImportJob_dataSource,
    datasetImportJob_creationDateTime,
    datasetImportJob_roleArn,

    -- ** DatasetImportJobSummary
    datasetImportJobSummary_failureReason,
    datasetImportJobSummary_status,
    datasetImportJobSummary_jobName,
    datasetImportJobSummary_lastUpdatedDateTime,
    datasetImportJobSummary_datasetImportJobArn,
    datasetImportJobSummary_creationDateTime,

    -- ** DatasetSchema
    datasetSchema_lastUpdatedDateTime,
    datasetSchema_schema,
    datasetSchema_schemaArn,
    datasetSchema_name,
    datasetSchema_creationDateTime,

    -- ** DatasetSchemaSummary
    datasetSchemaSummary_lastUpdatedDateTime,
    datasetSchemaSummary_schemaArn,
    datasetSchemaSummary_name,
    datasetSchemaSummary_creationDateTime,

    -- ** DatasetSummary
    datasetSummary_status,
    datasetSummary_datasetArn,
    datasetSummary_lastUpdatedDateTime,
    datasetSummary_name,
    datasetSummary_datasetType,
    datasetSummary_creationDateTime,

    -- ** DefaultCategoricalHyperParameterRange
    defaultCategoricalHyperParameterRange_isTunable,
    defaultCategoricalHyperParameterRange_values,
    defaultCategoricalHyperParameterRange_name,

    -- ** DefaultContinuousHyperParameterRange
    defaultContinuousHyperParameterRange_maxValue,
    defaultContinuousHyperParameterRange_isTunable,
    defaultContinuousHyperParameterRange_name,
    defaultContinuousHyperParameterRange_minValue,

    -- ** DefaultHyperParameterRanges
    defaultHyperParameterRanges_integerHyperParameterRanges,
    defaultHyperParameterRanges_categoricalHyperParameterRanges,
    defaultHyperParameterRanges_continuousHyperParameterRanges,

    -- ** DefaultIntegerHyperParameterRange
    defaultIntegerHyperParameterRange_maxValue,
    defaultIntegerHyperParameterRange_isTunable,
    defaultIntegerHyperParameterRange_name,
    defaultIntegerHyperParameterRange_minValue,

    -- ** EventTracker
    eventTracker_status,
    eventTracker_trackingId,
    eventTracker_lastUpdatedDateTime,
    eventTracker_accountId,
    eventTracker_name,
    eventTracker_creationDateTime,
    eventTracker_datasetGroupArn,
    eventTracker_eventTrackerArn,

    -- ** EventTrackerSummary
    eventTrackerSummary_status,
    eventTrackerSummary_lastUpdatedDateTime,
    eventTrackerSummary_name,
    eventTrackerSummary_creationDateTime,
    eventTrackerSummary_eventTrackerArn,

    -- ** FeatureTransformation
    featureTransformation_status,
    featureTransformation_featureTransformationArn,
    featureTransformation_lastUpdatedDateTime,
    featureTransformation_name,
    featureTransformation_creationDateTime,
    featureTransformation_defaultParameters,

    -- ** Filter
    filter_failureReason,
    filter_status,
    filter_filterExpression,
    filter_lastUpdatedDateTime,
    filter_name,
    filter_filterArn,
    filter_creationDateTime,
    filter_datasetGroupArn,

    -- ** FilterSummary
    filterSummary_failureReason,
    filterSummary_status,
    filterSummary_lastUpdatedDateTime,
    filterSummary_name,
    filterSummary_filterArn,
    filterSummary_creationDateTime,
    filterSummary_datasetGroupArn,

    -- ** HPOConfig
    hPOConfig_algorithmHyperParameterRanges,
    hPOConfig_hpoResourceConfig,
    hPOConfig_hpoObjective,

    -- ** HPOObjective
    hPOObjective_metricName,
    hPOObjective_type,
    hPOObjective_metricRegex,

    -- ** HPOResourceConfig
    hPOResourceConfig_maxNumberOfTrainingJobs,
    hPOResourceConfig_maxParallelTrainingJobs,

    -- ** HyperParameterRanges
    hyperParameterRanges_integerHyperParameterRanges,
    hyperParameterRanges_categoricalHyperParameterRanges,
    hyperParameterRanges_continuousHyperParameterRanges,

    -- ** IntegerHyperParameterRange
    integerHyperParameterRange_maxValue,
    integerHyperParameterRange_name,
    integerHyperParameterRange_minValue,

    -- ** OptimizationObjective
    optimizationObjective_itemAttribute,
    optimizationObjective_objectiveSensitivity,

    -- ** Recipe
    recipe_status,
    recipe_algorithmArn,
    recipe_recipeArn,
    recipe_featureTransformationArn,
    recipe_lastUpdatedDateTime,
    recipe_name,
    recipe_creationDateTime,
    recipe_recipeType,
    recipe_description,

    -- ** RecipeSummary
    recipeSummary_status,
    recipeSummary_recipeArn,
    recipeSummary_lastUpdatedDateTime,
    recipeSummary_name,
    recipeSummary_creationDateTime,

    -- ** S3DataConfig
    s3DataConfig_kmsKeyArn,
    s3DataConfig_path,

    -- ** Solution
    solution_solutionArn,
    solution_status,
    solution_performAutoML,
    solution_recipeArn,
    solution_lastUpdatedDateTime,
    solution_eventType,
    solution_name,
    solution_autoMLResult,
    solution_creationDateTime,
    solution_datasetGroupArn,
    solution_latestSolutionVersion,
    solution_solutionConfig,
    solution_performHPO,

    -- ** SolutionConfig
    solutionConfig_featureTransformationParameters,
    solutionConfig_hpoConfig,
    solutionConfig_eventValueThreshold,
    solutionConfig_autoMLConfig,
    solutionConfig_algorithmHyperParameters,
    solutionConfig_optimizationObjective,

    -- ** SolutionSummary
    solutionSummary_solutionArn,
    solutionSummary_status,
    solutionSummary_lastUpdatedDateTime,
    solutionSummary_name,
    solutionSummary_creationDateTime,

    -- ** SolutionVersion
    solutionVersion_failureReason,
    solutionVersion_solutionArn,
    solutionVersion_status,
    solutionVersion_performAutoML,
    solutionVersion_tunedHPOParams,
    solutionVersion_recipeArn,
    solutionVersion_lastUpdatedDateTime,
    solutionVersion_eventType,
    solutionVersion_creationDateTime,
    solutionVersion_datasetGroupArn,
    solutionVersion_trainingMode,
    solutionVersion_trainingHours,
    solutionVersion_solutionConfig,
    solutionVersion_performHPO,
    solutionVersion_solutionVersionArn,

    -- ** SolutionVersionSummary
    solutionVersionSummary_failureReason,
    solutionVersionSummary_status,
    solutionVersionSummary_lastUpdatedDateTime,
    solutionVersionSummary_creationDateTime,
    solutionVersionSummary_solutionVersionArn,

    -- ** TunedHPOParams
    tunedHPOParams_algorithmHyperParameters,
  )
where

import Network.AWS.Personalize.CreateBatchInferenceJob
import Network.AWS.Personalize.CreateCampaign
import Network.AWS.Personalize.CreateDataset
import Network.AWS.Personalize.CreateDatasetExportJob
import Network.AWS.Personalize.CreateDatasetGroup
import Network.AWS.Personalize.CreateDatasetImportJob
import Network.AWS.Personalize.CreateEventTracker
import Network.AWS.Personalize.CreateFilter
import Network.AWS.Personalize.CreateSchema
import Network.AWS.Personalize.CreateSolution
import Network.AWS.Personalize.CreateSolutionVersion
import Network.AWS.Personalize.DeleteCampaign
import Network.AWS.Personalize.DeleteDataset
import Network.AWS.Personalize.DeleteDatasetGroup
import Network.AWS.Personalize.DeleteEventTracker
import Network.AWS.Personalize.DeleteFilter
import Network.AWS.Personalize.DeleteSchema
import Network.AWS.Personalize.DeleteSolution
import Network.AWS.Personalize.DescribeAlgorithm
import Network.AWS.Personalize.DescribeBatchInferenceJob
import Network.AWS.Personalize.DescribeCampaign
import Network.AWS.Personalize.DescribeDataset
import Network.AWS.Personalize.DescribeDatasetExportJob
import Network.AWS.Personalize.DescribeDatasetGroup
import Network.AWS.Personalize.DescribeDatasetImportJob
import Network.AWS.Personalize.DescribeEventTracker
import Network.AWS.Personalize.DescribeFeatureTransformation
import Network.AWS.Personalize.DescribeFilter
import Network.AWS.Personalize.DescribeRecipe
import Network.AWS.Personalize.DescribeSchema
import Network.AWS.Personalize.DescribeSolution
import Network.AWS.Personalize.DescribeSolutionVersion
import Network.AWS.Personalize.GetSolutionMetrics
import Network.AWS.Personalize.ListBatchInferenceJobs
import Network.AWS.Personalize.ListCampaigns
import Network.AWS.Personalize.ListDatasetExportJobs
import Network.AWS.Personalize.ListDatasetGroups
import Network.AWS.Personalize.ListDatasetImportJobs
import Network.AWS.Personalize.ListDatasets
import Network.AWS.Personalize.ListEventTrackers
import Network.AWS.Personalize.ListFilters
import Network.AWS.Personalize.ListRecipes
import Network.AWS.Personalize.ListSchemas
import Network.AWS.Personalize.ListSolutionVersions
import Network.AWS.Personalize.ListSolutions
import Network.AWS.Personalize.StopSolutionVersionCreation
import Network.AWS.Personalize.Types.Algorithm
import Network.AWS.Personalize.Types.AlgorithmImage
import Network.AWS.Personalize.Types.AutoMLConfig
import Network.AWS.Personalize.Types.AutoMLResult
import Network.AWS.Personalize.Types.BatchInferenceJob
import Network.AWS.Personalize.Types.BatchInferenceJobConfig
import Network.AWS.Personalize.Types.BatchInferenceJobInput
import Network.AWS.Personalize.Types.BatchInferenceJobOutput
import Network.AWS.Personalize.Types.BatchInferenceJobSummary
import Network.AWS.Personalize.Types.Campaign
import Network.AWS.Personalize.Types.CampaignConfig
import Network.AWS.Personalize.Types.CampaignSummary
import Network.AWS.Personalize.Types.CampaignUpdateSummary
import Network.AWS.Personalize.Types.CategoricalHyperParameterRange
import Network.AWS.Personalize.Types.ContinuousHyperParameterRange
import Network.AWS.Personalize.Types.DataSource
import Network.AWS.Personalize.Types.Dataset
import Network.AWS.Personalize.Types.DatasetExportJob
import Network.AWS.Personalize.Types.DatasetExportJobOutput
import Network.AWS.Personalize.Types.DatasetExportJobSummary
import Network.AWS.Personalize.Types.DatasetGroup
import Network.AWS.Personalize.Types.DatasetGroupSummary
import Network.AWS.Personalize.Types.DatasetImportJob
import Network.AWS.Personalize.Types.DatasetImportJobSummary
import Network.AWS.Personalize.Types.DatasetSchema
import Network.AWS.Personalize.Types.DatasetSchemaSummary
import Network.AWS.Personalize.Types.DatasetSummary
import Network.AWS.Personalize.Types.DefaultCategoricalHyperParameterRange
import Network.AWS.Personalize.Types.DefaultContinuousHyperParameterRange
import Network.AWS.Personalize.Types.DefaultHyperParameterRanges
import Network.AWS.Personalize.Types.DefaultIntegerHyperParameterRange
import Network.AWS.Personalize.Types.EventTracker
import Network.AWS.Personalize.Types.EventTrackerSummary
import Network.AWS.Personalize.Types.FeatureTransformation
import Network.AWS.Personalize.Types.Filter
import Network.AWS.Personalize.Types.FilterSummary
import Network.AWS.Personalize.Types.HPOConfig
import Network.AWS.Personalize.Types.HPOObjective
import Network.AWS.Personalize.Types.HPOResourceConfig
import Network.AWS.Personalize.Types.HyperParameterRanges
import Network.AWS.Personalize.Types.IntegerHyperParameterRange
import Network.AWS.Personalize.Types.OptimizationObjective
import Network.AWS.Personalize.Types.Recipe
import Network.AWS.Personalize.Types.RecipeSummary
import Network.AWS.Personalize.Types.S3DataConfig
import Network.AWS.Personalize.Types.Solution
import Network.AWS.Personalize.Types.SolutionConfig
import Network.AWS.Personalize.Types.SolutionSummary
import Network.AWS.Personalize.Types.SolutionVersion
import Network.AWS.Personalize.Types.SolutionVersionSummary
import Network.AWS.Personalize.Types.TunedHPOParams
import Network.AWS.Personalize.UpdateCampaign
