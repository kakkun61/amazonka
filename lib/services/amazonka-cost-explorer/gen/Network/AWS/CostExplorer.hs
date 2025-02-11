{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.AWS.CostExplorer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2017-10-25@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- You can use the Cost Explorer API to programmatically query your cost
-- and usage data. You can query for aggregated data such as total monthly
-- costs or total daily usage. You can also query for granular data. This
-- might include the number of daily write operations for Amazon DynamoDB
-- database tables in your production environment.
--
-- Service Endpoint
--
-- The Cost Explorer API provides the following endpoint:
--
-- -   @https:\/\/ce.us-east-1.amazonaws.com@
--
-- For information about the costs that are associated with the Cost
-- Explorer API, see
-- <http://aws.amazon.com/aws-cost-management/pricing/ Amazon Web Services Cost Management Pricing>.
module Network.AWS.CostExplorer
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** UnknownSubscriptionException
    _UnknownSubscriptionException,

    -- ** BillExpirationException
    _BillExpirationException,

    -- ** RequestChangedException
    _RequestChangedException,

    -- ** UnresolvableUsageUnitException
    _UnresolvableUsageUnitException,

    -- ** ServiceQuotaExceededException
    _ServiceQuotaExceededException,

    -- ** InvalidNextTokenException
    _InvalidNextTokenException,

    -- ** DataUnavailableException
    _DataUnavailableException,

    -- ** UnknownMonitorException
    _UnknownMonitorException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** GetReservationUtilization
    GetReservationUtilization (GetReservationUtilization'),
    newGetReservationUtilization,
    GetReservationUtilizationResponse (GetReservationUtilizationResponse'),
    newGetReservationUtilizationResponse,

    -- ** GetSavingsPlansCoverage
    GetSavingsPlansCoverage (GetSavingsPlansCoverage'),
    newGetSavingsPlansCoverage,
    GetSavingsPlansCoverageResponse (GetSavingsPlansCoverageResponse'),
    newGetSavingsPlansCoverageResponse,

    -- ** GetTags
    GetTags (GetTags'),
    newGetTags,
    GetTagsResponse (GetTagsResponse'),
    newGetTagsResponse,

    -- ** GetRightsizingRecommendation
    GetRightsizingRecommendation (GetRightsizingRecommendation'),
    newGetRightsizingRecommendation,
    GetRightsizingRecommendationResponse (GetRightsizingRecommendationResponse'),
    newGetRightsizingRecommendationResponse,

    -- ** GetCostAndUsageWithResources
    GetCostAndUsageWithResources (GetCostAndUsageWithResources'),
    newGetCostAndUsageWithResources,
    GetCostAndUsageWithResourcesResponse (GetCostAndUsageWithResourcesResponse'),
    newGetCostAndUsageWithResourcesResponse,

    -- ** GetUsageForecast
    GetUsageForecast (GetUsageForecast'),
    newGetUsageForecast,
    GetUsageForecastResponse (GetUsageForecastResponse'),
    newGetUsageForecastResponse,

    -- ** GetReservationCoverage
    GetReservationCoverage (GetReservationCoverage'),
    newGetReservationCoverage,
    GetReservationCoverageResponse (GetReservationCoverageResponse'),
    newGetReservationCoverageResponse,

    -- ** GetCostCategories
    GetCostCategories (GetCostCategories'),
    newGetCostCategories,
    GetCostCategoriesResponse (GetCostCategoriesResponse'),
    newGetCostCategoriesResponse,

    -- ** GetCostForecast
    GetCostForecast (GetCostForecast'),
    newGetCostForecast,
    GetCostForecastResponse (GetCostForecastResponse'),
    newGetCostForecastResponse,

    -- ** GetDimensionValues
    GetDimensionValues (GetDimensionValues'),
    newGetDimensionValues,
    GetDimensionValuesResponse (GetDimensionValuesResponse'),
    newGetDimensionValuesResponse,

    -- ** GetAnomalies
    GetAnomalies (GetAnomalies'),
    newGetAnomalies,
    GetAnomaliesResponse (GetAnomaliesResponse'),
    newGetAnomaliesResponse,

    -- ** GetReservationPurchaseRecommendation
    GetReservationPurchaseRecommendation (GetReservationPurchaseRecommendation'),
    newGetReservationPurchaseRecommendation,
    GetReservationPurchaseRecommendationResponse (GetReservationPurchaseRecommendationResponse'),
    newGetReservationPurchaseRecommendationResponse,

    -- ** DeleteAnomalyMonitor
    DeleteAnomalyMonitor (DeleteAnomalyMonitor'),
    newDeleteAnomalyMonitor,
    DeleteAnomalyMonitorResponse (DeleteAnomalyMonitorResponse'),
    newDeleteAnomalyMonitorResponse,

    -- ** UpdateAnomalyMonitor
    UpdateAnomalyMonitor (UpdateAnomalyMonitor'),
    newUpdateAnomalyMonitor,
    UpdateAnomalyMonitorResponse (UpdateAnomalyMonitorResponse'),
    newUpdateAnomalyMonitorResponse,

    -- ** ListCostCategoryDefinitions
    ListCostCategoryDefinitions (ListCostCategoryDefinitions'),
    newListCostCategoryDefinitions,
    ListCostCategoryDefinitionsResponse (ListCostCategoryDefinitionsResponse'),
    newListCostCategoryDefinitionsResponse,

    -- ** UpdateCostCategoryDefinition
    UpdateCostCategoryDefinition (UpdateCostCategoryDefinition'),
    newUpdateCostCategoryDefinition,
    UpdateCostCategoryDefinitionResponse (UpdateCostCategoryDefinitionResponse'),
    newUpdateCostCategoryDefinitionResponse,

    -- ** DeleteCostCategoryDefinition
    DeleteCostCategoryDefinition (DeleteCostCategoryDefinition'),
    newDeleteCostCategoryDefinition,
    DeleteCostCategoryDefinitionResponse (DeleteCostCategoryDefinitionResponse'),
    newDeleteCostCategoryDefinitionResponse,

    -- ** GetAnomalySubscriptions
    GetAnomalySubscriptions (GetAnomalySubscriptions'),
    newGetAnomalySubscriptions,
    GetAnomalySubscriptionsResponse (GetAnomalySubscriptionsResponse'),
    newGetAnomalySubscriptionsResponse,

    -- ** CreateCostCategoryDefinition
    CreateCostCategoryDefinition (CreateCostCategoryDefinition'),
    newCreateCostCategoryDefinition,
    CreateCostCategoryDefinitionResponse (CreateCostCategoryDefinitionResponse'),
    newCreateCostCategoryDefinitionResponse,

    -- ** GetAnomalyMonitors
    GetAnomalyMonitors (GetAnomalyMonitors'),
    newGetAnomalyMonitors,
    GetAnomalyMonitorsResponse (GetAnomalyMonitorsResponse'),
    newGetAnomalyMonitorsResponse,

    -- ** DeleteAnomalySubscription
    DeleteAnomalySubscription (DeleteAnomalySubscription'),
    newDeleteAnomalySubscription,
    DeleteAnomalySubscriptionResponse (DeleteAnomalySubscriptionResponse'),
    newDeleteAnomalySubscriptionResponse,

    -- ** UpdateAnomalySubscription
    UpdateAnomalySubscription (UpdateAnomalySubscription'),
    newUpdateAnomalySubscription,
    UpdateAnomalySubscriptionResponse (UpdateAnomalySubscriptionResponse'),
    newUpdateAnomalySubscriptionResponse,

    -- ** GetCostAndUsage
    GetCostAndUsage (GetCostAndUsage'),
    newGetCostAndUsage,
    GetCostAndUsageResponse (GetCostAndUsageResponse'),
    newGetCostAndUsageResponse,

    -- ** GetSavingsPlansPurchaseRecommendation
    GetSavingsPlansPurchaseRecommendation (GetSavingsPlansPurchaseRecommendation'),
    newGetSavingsPlansPurchaseRecommendation,
    GetSavingsPlansPurchaseRecommendationResponse (GetSavingsPlansPurchaseRecommendationResponse'),
    newGetSavingsPlansPurchaseRecommendationResponse,

    -- ** ProvideAnomalyFeedback
    ProvideAnomalyFeedback (ProvideAnomalyFeedback'),
    newProvideAnomalyFeedback,
    ProvideAnomalyFeedbackResponse (ProvideAnomalyFeedbackResponse'),
    newProvideAnomalyFeedbackResponse,

    -- ** GetSavingsPlansUtilization
    GetSavingsPlansUtilization (GetSavingsPlansUtilization'),
    newGetSavingsPlansUtilization,
    GetSavingsPlansUtilizationResponse (GetSavingsPlansUtilizationResponse'),
    newGetSavingsPlansUtilizationResponse,

    -- ** DescribeCostCategoryDefinition
    DescribeCostCategoryDefinition (DescribeCostCategoryDefinition'),
    newDescribeCostCategoryDefinition,
    DescribeCostCategoryDefinitionResponse (DescribeCostCategoryDefinitionResponse'),
    newDescribeCostCategoryDefinitionResponse,

    -- ** CreateAnomalySubscription
    CreateAnomalySubscription (CreateAnomalySubscription'),
    newCreateAnomalySubscription,
    CreateAnomalySubscriptionResponse (CreateAnomalySubscriptionResponse'),
    newCreateAnomalySubscriptionResponse,

    -- ** CreateAnomalyMonitor
    CreateAnomalyMonitor (CreateAnomalyMonitor'),
    newCreateAnomalyMonitor,
    CreateAnomalyMonitorResponse (CreateAnomalyMonitorResponse'),
    newCreateAnomalyMonitorResponse,

    -- ** GetSavingsPlansUtilizationDetails
    GetSavingsPlansUtilizationDetails (GetSavingsPlansUtilizationDetails'),
    newGetSavingsPlansUtilizationDetails,
    GetSavingsPlansUtilizationDetailsResponse (GetSavingsPlansUtilizationDetailsResponse'),
    newGetSavingsPlansUtilizationDetailsResponse,

    -- * Types

    -- ** AccountScope
    AccountScope (..),

    -- ** AnomalyFeedbackType
    AnomalyFeedbackType (..),

    -- ** AnomalySubscriptionFrequency
    AnomalySubscriptionFrequency (..),

    -- ** Context
    Context (..),

    -- ** CostCategoryInheritedValueDimensionName
    CostCategoryInheritedValueDimensionName (..),

    -- ** CostCategoryRuleType
    CostCategoryRuleType (..),

    -- ** CostCategoryRuleVersion
    CostCategoryRuleVersion (..),

    -- ** CostCategorySplitChargeMethod
    CostCategorySplitChargeMethod (..),

    -- ** CostCategorySplitChargeRuleParameterType
    CostCategorySplitChargeRuleParameterType (..),

    -- ** CostCategoryStatus
    CostCategoryStatus (..),

    -- ** CostCategoryStatusComponent
    CostCategoryStatusComponent (..),

    -- ** Dimension
    Dimension (..),

    -- ** FindingReasonCode
    FindingReasonCode (..),

    -- ** Granularity
    Granularity (..),

    -- ** GroupDefinitionType
    GroupDefinitionType (..),

    -- ** LookbackPeriodInDays
    LookbackPeriodInDays (..),

    -- ** MatchOption
    MatchOption (..),

    -- ** Metric
    Metric (..),

    -- ** MonitorDimension
    MonitorDimension (..),

    -- ** MonitorType
    MonitorType (..),

    -- ** NumericOperator
    NumericOperator (..),

    -- ** OfferingClass
    OfferingClass (..),

    -- ** PaymentOption
    PaymentOption (..),

    -- ** PlatformDifference
    PlatformDifference (..),

    -- ** RecommendationTarget
    RecommendationTarget (..),

    -- ** RightsizingType
    RightsizingType (..),

    -- ** SavingsPlansDataType
    SavingsPlansDataType (..),

    -- ** SortOrder
    SortOrder (..),

    -- ** SubscriberStatus
    SubscriberStatus (..),

    -- ** SubscriberType
    SubscriberType (..),

    -- ** SupportedSavingsPlansType
    SupportedSavingsPlansType (..),

    -- ** TermInYears
    TermInYears (..),

    -- ** Anomaly
    Anomaly (Anomaly'),
    newAnomaly,

    -- ** AnomalyDateInterval
    AnomalyDateInterval (AnomalyDateInterval'),
    newAnomalyDateInterval,

    -- ** AnomalyMonitor
    AnomalyMonitor (AnomalyMonitor'),
    newAnomalyMonitor,

    -- ** AnomalyScore
    AnomalyScore (AnomalyScore'),
    newAnomalyScore,

    -- ** AnomalySubscription
    AnomalySubscription (AnomalySubscription'),
    newAnomalySubscription,

    -- ** CostCategory
    CostCategory (CostCategory'),
    newCostCategory,

    -- ** CostCategoryInheritedValueDimension
    CostCategoryInheritedValueDimension (CostCategoryInheritedValueDimension'),
    newCostCategoryInheritedValueDimension,

    -- ** CostCategoryProcessingStatus
    CostCategoryProcessingStatus (CostCategoryProcessingStatus'),
    newCostCategoryProcessingStatus,

    -- ** CostCategoryReference
    CostCategoryReference (CostCategoryReference'),
    newCostCategoryReference,

    -- ** CostCategoryRule
    CostCategoryRule (CostCategoryRule'),
    newCostCategoryRule,

    -- ** CostCategorySplitChargeRule
    CostCategorySplitChargeRule (CostCategorySplitChargeRule'),
    newCostCategorySplitChargeRule,

    -- ** CostCategorySplitChargeRuleParameter
    CostCategorySplitChargeRuleParameter (CostCategorySplitChargeRuleParameter'),
    newCostCategorySplitChargeRuleParameter,

    -- ** CostCategoryValues
    CostCategoryValues (CostCategoryValues'),
    newCostCategoryValues,

    -- ** Coverage
    Coverage (Coverage'),
    newCoverage,

    -- ** CoverageByTime
    CoverageByTime (CoverageByTime'),
    newCoverageByTime,

    -- ** CoverageCost
    CoverageCost (CoverageCost'),
    newCoverageCost,

    -- ** CoverageHours
    CoverageHours (CoverageHours'),
    newCoverageHours,

    -- ** CoverageNormalizedUnits
    CoverageNormalizedUnits (CoverageNormalizedUnits'),
    newCoverageNormalizedUnits,

    -- ** CurrentInstance
    CurrentInstance (CurrentInstance'),
    newCurrentInstance,

    -- ** DateInterval
    DateInterval (DateInterval'),
    newDateInterval,

    -- ** DimensionValues
    DimensionValues (DimensionValues'),
    newDimensionValues,

    -- ** DimensionValuesWithAttributes
    DimensionValuesWithAttributes (DimensionValuesWithAttributes'),
    newDimensionValuesWithAttributes,

    -- ** DiskResourceUtilization
    DiskResourceUtilization (DiskResourceUtilization'),
    newDiskResourceUtilization,

    -- ** EBSResourceUtilization
    EBSResourceUtilization (EBSResourceUtilization'),
    newEBSResourceUtilization,

    -- ** EC2InstanceDetails
    EC2InstanceDetails (EC2InstanceDetails'),
    newEC2InstanceDetails,

    -- ** EC2ResourceDetails
    EC2ResourceDetails (EC2ResourceDetails'),
    newEC2ResourceDetails,

    -- ** EC2ResourceUtilization
    EC2ResourceUtilization (EC2ResourceUtilization'),
    newEC2ResourceUtilization,

    -- ** EC2Specification
    EC2Specification (EC2Specification'),
    newEC2Specification,

    -- ** ESInstanceDetails
    ESInstanceDetails (ESInstanceDetails'),
    newESInstanceDetails,

    -- ** ElastiCacheInstanceDetails
    ElastiCacheInstanceDetails (ElastiCacheInstanceDetails'),
    newElastiCacheInstanceDetails,

    -- ** Expression
    Expression (Expression'),
    newExpression,

    -- ** ForecastResult
    ForecastResult (ForecastResult'),
    newForecastResult,

    -- ** Group
    Group (Group'),
    newGroup,

    -- ** GroupDefinition
    GroupDefinition (GroupDefinition'),
    newGroupDefinition,

    -- ** Impact
    Impact (Impact'),
    newImpact,

    -- ** InstanceDetails
    InstanceDetails (InstanceDetails'),
    newInstanceDetails,

    -- ** MetricValue
    MetricValue (MetricValue'),
    newMetricValue,

    -- ** ModifyRecommendationDetail
    ModifyRecommendationDetail (ModifyRecommendationDetail'),
    newModifyRecommendationDetail,

    -- ** NetworkResourceUtilization
    NetworkResourceUtilization (NetworkResourceUtilization'),
    newNetworkResourceUtilization,

    -- ** RDSInstanceDetails
    RDSInstanceDetails (RDSInstanceDetails'),
    newRDSInstanceDetails,

    -- ** RedshiftInstanceDetails
    RedshiftInstanceDetails (RedshiftInstanceDetails'),
    newRedshiftInstanceDetails,

    -- ** ReservationAggregates
    ReservationAggregates (ReservationAggregates'),
    newReservationAggregates,

    -- ** ReservationCoverageGroup
    ReservationCoverageGroup (ReservationCoverageGroup'),
    newReservationCoverageGroup,

    -- ** ReservationPurchaseRecommendation
    ReservationPurchaseRecommendation (ReservationPurchaseRecommendation'),
    newReservationPurchaseRecommendation,

    -- ** ReservationPurchaseRecommendationDetail
    ReservationPurchaseRecommendationDetail (ReservationPurchaseRecommendationDetail'),
    newReservationPurchaseRecommendationDetail,

    -- ** ReservationPurchaseRecommendationMetadata
    ReservationPurchaseRecommendationMetadata (ReservationPurchaseRecommendationMetadata'),
    newReservationPurchaseRecommendationMetadata,

    -- ** ReservationPurchaseRecommendationSummary
    ReservationPurchaseRecommendationSummary (ReservationPurchaseRecommendationSummary'),
    newReservationPurchaseRecommendationSummary,

    -- ** ReservationUtilizationGroup
    ReservationUtilizationGroup (ReservationUtilizationGroup'),
    newReservationUtilizationGroup,

    -- ** ResourceDetails
    ResourceDetails (ResourceDetails'),
    newResourceDetails,

    -- ** ResourceUtilization
    ResourceUtilization (ResourceUtilization'),
    newResourceUtilization,

    -- ** ResultByTime
    ResultByTime (ResultByTime'),
    newResultByTime,

    -- ** RightsizingRecommendation
    RightsizingRecommendation (RightsizingRecommendation'),
    newRightsizingRecommendation,

    -- ** RightsizingRecommendationConfiguration
    RightsizingRecommendationConfiguration (RightsizingRecommendationConfiguration'),
    newRightsizingRecommendationConfiguration,

    -- ** RightsizingRecommendationMetadata
    RightsizingRecommendationMetadata (RightsizingRecommendationMetadata'),
    newRightsizingRecommendationMetadata,

    -- ** RightsizingRecommendationSummary
    RightsizingRecommendationSummary (RightsizingRecommendationSummary'),
    newRightsizingRecommendationSummary,

    -- ** RootCause
    RootCause (RootCause'),
    newRootCause,

    -- ** SavingsPlansAmortizedCommitment
    SavingsPlansAmortizedCommitment (SavingsPlansAmortizedCommitment'),
    newSavingsPlansAmortizedCommitment,

    -- ** SavingsPlansCoverage
    SavingsPlansCoverage (SavingsPlansCoverage'),
    newSavingsPlansCoverage,

    -- ** SavingsPlansCoverageData
    SavingsPlansCoverageData (SavingsPlansCoverageData'),
    newSavingsPlansCoverageData,

    -- ** SavingsPlansDetails
    SavingsPlansDetails (SavingsPlansDetails'),
    newSavingsPlansDetails,

    -- ** SavingsPlansPurchaseRecommendation
    SavingsPlansPurchaseRecommendation (SavingsPlansPurchaseRecommendation'),
    newSavingsPlansPurchaseRecommendation,

    -- ** SavingsPlansPurchaseRecommendationDetail
    SavingsPlansPurchaseRecommendationDetail (SavingsPlansPurchaseRecommendationDetail'),
    newSavingsPlansPurchaseRecommendationDetail,

    -- ** SavingsPlansPurchaseRecommendationMetadata
    SavingsPlansPurchaseRecommendationMetadata (SavingsPlansPurchaseRecommendationMetadata'),
    newSavingsPlansPurchaseRecommendationMetadata,

    -- ** SavingsPlansPurchaseRecommendationSummary
    SavingsPlansPurchaseRecommendationSummary (SavingsPlansPurchaseRecommendationSummary'),
    newSavingsPlansPurchaseRecommendationSummary,

    -- ** SavingsPlansSavings
    SavingsPlansSavings (SavingsPlansSavings'),
    newSavingsPlansSavings,

    -- ** SavingsPlansUtilization
    SavingsPlansUtilization (SavingsPlansUtilization'),
    newSavingsPlansUtilization,

    -- ** SavingsPlansUtilizationAggregates
    SavingsPlansUtilizationAggregates (SavingsPlansUtilizationAggregates'),
    newSavingsPlansUtilizationAggregates,

    -- ** SavingsPlansUtilizationByTime
    SavingsPlansUtilizationByTime (SavingsPlansUtilizationByTime'),
    newSavingsPlansUtilizationByTime,

    -- ** SavingsPlansUtilizationDetail
    SavingsPlansUtilizationDetail (SavingsPlansUtilizationDetail'),
    newSavingsPlansUtilizationDetail,

    -- ** ServiceSpecification
    ServiceSpecification (ServiceSpecification'),
    newServiceSpecification,

    -- ** SortDefinition
    SortDefinition (SortDefinition'),
    newSortDefinition,

    -- ** Subscriber
    Subscriber (Subscriber'),
    newSubscriber,

    -- ** TagValues
    TagValues (TagValues'),
    newTagValues,

    -- ** TargetInstance
    TargetInstance (TargetInstance'),
    newTargetInstance,

    -- ** TerminateRecommendationDetail
    TerminateRecommendationDetail (TerminateRecommendationDetail'),
    newTerminateRecommendationDetail,

    -- ** TotalImpactFilter
    TotalImpactFilter (TotalImpactFilter'),
    newTotalImpactFilter,

    -- ** UtilizationByTime
    UtilizationByTime (UtilizationByTime'),
    newUtilizationByTime,
  )
where

import Network.AWS.CostExplorer.CreateAnomalyMonitor
import Network.AWS.CostExplorer.CreateAnomalySubscription
import Network.AWS.CostExplorer.CreateCostCategoryDefinition
import Network.AWS.CostExplorer.DeleteAnomalyMonitor
import Network.AWS.CostExplorer.DeleteAnomalySubscription
import Network.AWS.CostExplorer.DeleteCostCategoryDefinition
import Network.AWS.CostExplorer.DescribeCostCategoryDefinition
import Network.AWS.CostExplorer.GetAnomalies
import Network.AWS.CostExplorer.GetAnomalyMonitors
import Network.AWS.CostExplorer.GetAnomalySubscriptions
import Network.AWS.CostExplorer.GetCostAndUsage
import Network.AWS.CostExplorer.GetCostAndUsageWithResources
import Network.AWS.CostExplorer.GetCostCategories
import Network.AWS.CostExplorer.GetCostForecast
import Network.AWS.CostExplorer.GetDimensionValues
import Network.AWS.CostExplorer.GetReservationCoverage
import Network.AWS.CostExplorer.GetReservationPurchaseRecommendation
import Network.AWS.CostExplorer.GetReservationUtilization
import Network.AWS.CostExplorer.GetRightsizingRecommendation
import Network.AWS.CostExplorer.GetSavingsPlansCoverage
import Network.AWS.CostExplorer.GetSavingsPlansPurchaseRecommendation
import Network.AWS.CostExplorer.GetSavingsPlansUtilization
import Network.AWS.CostExplorer.GetSavingsPlansUtilizationDetails
import Network.AWS.CostExplorer.GetTags
import Network.AWS.CostExplorer.GetUsageForecast
import Network.AWS.CostExplorer.Lens
import Network.AWS.CostExplorer.ListCostCategoryDefinitions
import Network.AWS.CostExplorer.ProvideAnomalyFeedback
import Network.AWS.CostExplorer.Types
import Network.AWS.CostExplorer.UpdateAnomalyMonitor
import Network.AWS.CostExplorer.UpdateAnomalySubscription
import Network.AWS.CostExplorer.UpdateCostCategoryDefinition
import Network.AWS.CostExplorer.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'CostExplorer'.

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
