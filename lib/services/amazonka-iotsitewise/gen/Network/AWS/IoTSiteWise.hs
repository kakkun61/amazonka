{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.AWS.IoTSiteWise
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2019-12-02@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- Welcome to the IoT SiteWise API Reference. IoT SiteWise is an Amazon Web
-- Services service that connects
-- <https://en.wikipedia.org/wiki/Internet_of_things#Industrial_applications Industrial Internet of Things (IIoT)>
-- devices to the power of the Amazon Web Services Cloud. For more
-- information, see the
-- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/ IoT SiteWise User Guide>.
-- For information about IoT SiteWise quotas, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html Quotas>
-- in the /IoT SiteWise User Guide/.
module Network.AWS.IoTSiteWise
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** InvalidRequestException
    _InvalidRequestException,

    -- ** ResourceAlreadyExistsException
    _ResourceAlreadyExistsException,

    -- ** TooManyTagsException
    _TooManyTagsException,

    -- ** ConflictingOperationException
    _ConflictingOperationException,

    -- ** ThrottlingException
    _ThrottlingException,

    -- ** InternalFailureException
    _InternalFailureException,

    -- ** ServiceUnavailableException
    _ServiceUnavailableException,

    -- ** UnauthorizedException
    _UnauthorizedException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- * Waiters
    -- $waiters

    -- ** AssetModelNotExists
    newAssetModelNotExists,

    -- ** AssetNotExists
    newAssetNotExists,

    -- ** AssetModelActive
    newAssetModelActive,

    -- ** PortalNotExists
    newPortalNotExists,

    -- ** AssetActive
    newAssetActive,

    -- ** PortalActive
    newPortalActive,

    -- * Operations
    -- $operations

    -- ** ListProjects (Paginated)
    ListProjects (ListProjects'),
    newListProjects,
    ListProjectsResponse (ListProjectsResponse'),
    newListProjectsResponse,

    -- ** DeleteProject
    DeleteProject (DeleteProject'),
    newDeleteProject,
    DeleteProjectResponse (DeleteProjectResponse'),
    newDeleteProjectResponse,

    -- ** UpdateProject
    UpdateProject (UpdateProject'),
    newUpdateProject,
    UpdateProjectResponse (UpdateProjectResponse'),
    newUpdateProjectResponse,

    -- ** PutLoggingOptions
    PutLoggingOptions (PutLoggingOptions'),
    newPutLoggingOptions,
    PutLoggingOptionsResponse (PutLoggingOptionsResponse'),
    newPutLoggingOptionsResponse,

    -- ** DescribeAssetModel
    DescribeAssetModel (DescribeAssetModel'),
    newDescribeAssetModel,
    DescribeAssetModelResponse (DescribeAssetModelResponse'),
    newDescribeAssetModelResponse,

    -- ** DescribeAssetProperty
    DescribeAssetProperty (DescribeAssetProperty'),
    newDescribeAssetProperty,
    DescribeAssetPropertyResponse (DescribeAssetPropertyResponse'),
    newDescribeAssetPropertyResponse,

    -- ** ListTagsForResource
    ListTagsForResource (ListTagsForResource'),
    newListTagsForResource,
    ListTagsForResourceResponse (ListTagsForResourceResponse'),
    newListTagsForResourceResponse,

    -- ** GetAssetPropertyValue
    GetAssetPropertyValue (GetAssetPropertyValue'),
    newGetAssetPropertyValue,
    GetAssetPropertyValueResponse (GetAssetPropertyValueResponse'),
    newGetAssetPropertyValueResponse,

    -- ** DeleteAccessPolicy
    DeleteAccessPolicy (DeleteAccessPolicy'),
    newDeleteAccessPolicy,
    DeleteAccessPolicyResponse (DeleteAccessPolicyResponse'),
    newDeleteAccessPolicyResponse,

    -- ** UpdateAccessPolicy
    UpdateAccessPolicy (UpdateAccessPolicy'),
    newUpdateAccessPolicy,
    UpdateAccessPolicyResponse (UpdateAccessPolicyResponse'),
    newUpdateAccessPolicyResponse,

    -- ** DescribeGateway
    DescribeGateway (DescribeGateway'),
    newDescribeGateway,
    DescribeGatewayResponse (DescribeGatewayResponse'),
    newDescribeGatewayResponse,

    -- ** DescribeAsset
    DescribeAsset (DescribeAsset'),
    newDescribeAsset,
    DescribeAssetResponse (DescribeAssetResponse'),
    newDescribeAssetResponse,

    -- ** ListDashboards (Paginated)
    ListDashboards (ListDashboards'),
    newListDashboards,
    ListDashboardsResponse (ListDashboardsResponse'),
    newListDashboardsResponse,

    -- ** ListAccessPolicies (Paginated)
    ListAccessPolicies (ListAccessPolicies'),
    newListAccessPolicies,
    ListAccessPoliciesResponse (ListAccessPoliciesResponse'),
    newListAccessPoliciesResponse,

    -- ** DescribeProject
    DescribeProject (DescribeProject'),
    newDescribeProject,
    DescribeProjectResponse (DescribeProjectResponse'),
    newDescribeProjectResponse,

    -- ** GetAssetPropertyValueHistory (Paginated)
    GetAssetPropertyValueHistory (GetAssetPropertyValueHistory'),
    newGetAssetPropertyValueHistory,
    GetAssetPropertyValueHistoryResponse (GetAssetPropertyValueHistoryResponse'),
    newGetAssetPropertyValueHistoryResponse,

    -- ** CreateDashboard
    CreateDashboard (CreateDashboard'),
    newCreateDashboard,
    CreateDashboardResponse (CreateDashboardResponse'),
    newCreateDashboardResponse,

    -- ** CreateAccessPolicy
    CreateAccessPolicy (CreateAccessPolicy'),
    newCreateAccessPolicy,
    CreateAccessPolicyResponse (CreateAccessPolicyResponse'),
    newCreateAccessPolicyResponse,

    -- ** CreateAssetModel
    CreateAssetModel (CreateAssetModel'),
    newCreateAssetModel,
    CreateAssetModelResponse (CreateAssetModelResponse'),
    newCreateAssetModelResponse,

    -- ** BatchAssociateProjectAssets
    BatchAssociateProjectAssets (BatchAssociateProjectAssets'),
    newBatchAssociateProjectAssets,
    BatchAssociateProjectAssetsResponse (BatchAssociateProjectAssetsResponse'),
    newBatchAssociateProjectAssetsResponse,

    -- ** ListAssetModels (Paginated)
    ListAssetModels (ListAssetModels'),
    newListAssetModels,
    ListAssetModelsResponse (ListAssetModelsResponse'),
    newListAssetModelsResponse,

    -- ** ListAssociatedAssets (Paginated)
    ListAssociatedAssets (ListAssociatedAssets'),
    newListAssociatedAssets,
    ListAssociatedAssetsResponse (ListAssociatedAssetsResponse'),
    newListAssociatedAssetsResponse,

    -- ** BatchPutAssetPropertyValue
    BatchPutAssetPropertyValue (BatchPutAssetPropertyValue'),
    newBatchPutAssetPropertyValue,
    BatchPutAssetPropertyValueResponse (BatchPutAssetPropertyValueResponse'),
    newBatchPutAssetPropertyValueResponse,

    -- ** DeleteAsset
    DeleteAsset (DeleteAsset'),
    newDeleteAsset,
    DeleteAssetResponse (DeleteAssetResponse'),
    newDeleteAssetResponse,

    -- ** UpdateAsset
    UpdateAsset (UpdateAsset'),
    newUpdateAsset,
    UpdateAssetResponse (UpdateAssetResponse'),
    newUpdateAssetResponse,

    -- ** DeleteGateway
    DeleteGateway (DeleteGateway'),
    newDeleteGateway,
    DeleteGatewayResponse (DeleteGatewayResponse'),
    newDeleteGatewayResponse,

    -- ** DescribeAccessPolicy
    DescribeAccessPolicy (DescribeAccessPolicy'),
    newDescribeAccessPolicy,
    DescribeAccessPolicyResponse (DescribeAccessPolicyResponse'),
    newDescribeAccessPolicyResponse,

    -- ** UpdateGateway
    UpdateGateway (UpdateGateway'),
    newUpdateGateway,
    UpdateGatewayResponse (UpdateGatewayResponse'),
    newUpdateGatewayResponse,

    -- ** ListProjectAssets (Paginated)
    ListProjectAssets (ListProjectAssets'),
    newListProjectAssets,
    ListProjectAssetsResponse (ListProjectAssetsResponse'),
    newListProjectAssetsResponse,

    -- ** CreateGateway
    CreateGateway (CreateGateway'),
    newCreateGateway,
    CreateGatewayResponse (CreateGatewayResponse'),
    newCreateGatewayResponse,

    -- ** DescribeStorageConfiguration
    DescribeStorageConfiguration (DescribeStorageConfiguration'),
    newDescribeStorageConfiguration,
    DescribeStorageConfigurationResponse (DescribeStorageConfigurationResponse'),
    newDescribeStorageConfigurationResponse,

    -- ** CreateAsset
    CreateAsset (CreateAsset'),
    newCreateAsset,
    CreateAssetResponse (CreateAssetResponse'),
    newCreateAssetResponse,

    -- ** AssociateAssets
    AssociateAssets (AssociateAssets'),
    newAssociateAssets,
    AssociateAssetsResponse (AssociateAssetsResponse'),
    newAssociateAssetsResponse,

    -- ** GetInterpolatedAssetPropertyValues (Paginated)
    GetInterpolatedAssetPropertyValues (GetInterpolatedAssetPropertyValues'),
    newGetInterpolatedAssetPropertyValues,
    GetInterpolatedAssetPropertyValuesResponse (GetInterpolatedAssetPropertyValuesResponse'),
    newGetInterpolatedAssetPropertyValuesResponse,

    -- ** DescribeGatewayCapabilityConfiguration
    DescribeGatewayCapabilityConfiguration (DescribeGatewayCapabilityConfiguration'),
    newDescribeGatewayCapabilityConfiguration,
    DescribeGatewayCapabilityConfigurationResponse (DescribeGatewayCapabilityConfigurationResponse'),
    newDescribeGatewayCapabilityConfigurationResponse,

    -- ** PutDefaultEncryptionConfiguration
    PutDefaultEncryptionConfiguration (PutDefaultEncryptionConfiguration'),
    newPutDefaultEncryptionConfiguration,
    PutDefaultEncryptionConfigurationResponse (PutDefaultEncryptionConfigurationResponse'),
    newPutDefaultEncryptionConfigurationResponse,

    -- ** DeletePortal
    DeletePortal (DeletePortal'),
    newDeletePortal,
    DeletePortalResponse (DeletePortalResponse'),
    newDeletePortalResponse,

    -- ** ListAssetRelationships (Paginated)
    ListAssetRelationships (ListAssetRelationships'),
    newListAssetRelationships,
    ListAssetRelationshipsResponse (ListAssetRelationshipsResponse'),
    newListAssetRelationshipsResponse,

    -- ** UpdatePortal
    UpdatePortal (UpdatePortal'),
    newUpdatePortal,
    UpdatePortalResponse (UpdatePortalResponse'),
    newUpdatePortalResponse,

    -- ** ListPortals (Paginated)
    ListPortals (ListPortals'),
    newListPortals,
    ListPortalsResponse (ListPortalsResponse'),
    newListPortalsResponse,

    -- ** DeleteDashboard
    DeleteDashboard (DeleteDashboard'),
    newDeleteDashboard,
    DeleteDashboardResponse (DeleteDashboardResponse'),
    newDeleteDashboardResponse,

    -- ** UpdateDashboard
    UpdateDashboard (UpdateDashboard'),
    newUpdateDashboard,
    UpdateDashboardResponse (UpdateDashboardResponse'),
    newUpdateDashboardResponse,

    -- ** PutStorageConfiguration
    PutStorageConfiguration (PutStorageConfiguration'),
    newPutStorageConfiguration,
    PutStorageConfigurationResponse (PutStorageConfigurationResponse'),
    newPutStorageConfigurationResponse,

    -- ** CreatePortal
    CreatePortal (CreatePortal'),
    newCreatePortal,
    CreatePortalResponse (CreatePortalResponse'),
    newCreatePortalResponse,

    -- ** TagResource
    TagResource (TagResource'),
    newTagResource,
    TagResourceResponse (TagResourceResponse'),
    newTagResourceResponse,

    -- ** BatchDisassociateProjectAssets
    BatchDisassociateProjectAssets (BatchDisassociateProjectAssets'),
    newBatchDisassociateProjectAssets,
    BatchDisassociateProjectAssetsResponse (BatchDisassociateProjectAssetsResponse'),
    newBatchDisassociateProjectAssetsResponse,

    -- ** GetAssetPropertyAggregates (Paginated)
    GetAssetPropertyAggregates (GetAssetPropertyAggregates'),
    newGetAssetPropertyAggregates,
    GetAssetPropertyAggregatesResponse (GetAssetPropertyAggregatesResponse'),
    newGetAssetPropertyAggregatesResponse,

    -- ** UntagResource
    UntagResource (UntagResource'),
    newUntagResource,
    UntagResourceResponse (UntagResourceResponse'),
    newUntagResourceResponse,

    -- ** DeleteAssetModel
    DeleteAssetModel (DeleteAssetModel'),
    newDeleteAssetModel,
    DeleteAssetModelResponse (DeleteAssetModelResponse'),
    newDeleteAssetModelResponse,

    -- ** UpdateAssetModel
    UpdateAssetModel (UpdateAssetModel'),
    newUpdateAssetModel,
    UpdateAssetModelResponse (UpdateAssetModelResponse'),
    newUpdateAssetModelResponse,

    -- ** UpdateAssetProperty
    UpdateAssetProperty (UpdateAssetProperty'),
    newUpdateAssetProperty,
    UpdateAssetPropertyResponse (UpdateAssetPropertyResponse'),
    newUpdateAssetPropertyResponse,

    -- ** DescribeLoggingOptions
    DescribeLoggingOptions (DescribeLoggingOptions'),
    newDescribeLoggingOptions,
    DescribeLoggingOptionsResponse (DescribeLoggingOptionsResponse'),
    newDescribeLoggingOptionsResponse,

    -- ** ListGateways (Paginated)
    ListGateways (ListGateways'),
    newListGateways,
    ListGatewaysResponse (ListGatewaysResponse'),
    newListGatewaysResponse,

    -- ** UpdateGatewayCapabilityConfiguration
    UpdateGatewayCapabilityConfiguration (UpdateGatewayCapabilityConfiguration'),
    newUpdateGatewayCapabilityConfiguration,
    UpdateGatewayCapabilityConfigurationResponse (UpdateGatewayCapabilityConfigurationResponse'),
    newUpdateGatewayCapabilityConfigurationResponse,

    -- ** DescribeDashboard
    DescribeDashboard (DescribeDashboard'),
    newDescribeDashboard,
    DescribeDashboardResponse (DescribeDashboardResponse'),
    newDescribeDashboardResponse,

    -- ** DescribePortal
    DescribePortal (DescribePortal'),
    newDescribePortal,
    DescribePortalResponse (DescribePortalResponse'),
    newDescribePortalResponse,

    -- ** CreateProject
    CreateProject (CreateProject'),
    newCreateProject,
    CreateProjectResponse (CreateProjectResponse'),
    newCreateProjectResponse,

    -- ** DescribeDefaultEncryptionConfiguration
    DescribeDefaultEncryptionConfiguration (DescribeDefaultEncryptionConfiguration'),
    newDescribeDefaultEncryptionConfiguration,
    DescribeDefaultEncryptionConfigurationResponse (DescribeDefaultEncryptionConfigurationResponse'),
    newDescribeDefaultEncryptionConfigurationResponse,

    -- ** ListAssets (Paginated)
    ListAssets (ListAssets'),
    newListAssets,
    ListAssetsResponse (ListAssetsResponse'),
    newListAssetsResponse,

    -- ** DisassociateAssets
    DisassociateAssets (DisassociateAssets'),
    newDisassociateAssets,
    DisassociateAssetsResponse (DisassociateAssetsResponse'),
    newDisassociateAssetsResponse,

    -- * Types

    -- ** AggregateType
    AggregateType (..),

    -- ** AssetErrorCode
    AssetErrorCode (..),

    -- ** AssetModelState
    AssetModelState (..),

    -- ** AssetRelationshipType
    AssetRelationshipType (..),

    -- ** AssetState
    AssetState (..),

    -- ** AuthMode
    AuthMode (..),

    -- ** BatchPutAssetPropertyValueErrorCode
    BatchPutAssetPropertyValueErrorCode (..),

    -- ** CapabilitySyncStatus
    CapabilitySyncStatus (..),

    -- ** ComputeLocation
    ComputeLocation (..),

    -- ** ConfigurationState
    ConfigurationState (..),

    -- ** DetailedErrorCode
    DetailedErrorCode (..),

    -- ** EncryptionType
    EncryptionType (..),

    -- ** ErrorCode
    ErrorCode (..),

    -- ** ForwardingConfigState
    ForwardingConfigState (..),

    -- ** IdentityType
    IdentityType (..),

    -- ** ImageFileType
    ImageFileType (..),

    -- ** ListAssetsFilter
    ListAssetsFilter (..),

    -- ** LoggingLevel
    LoggingLevel (..),

    -- ** MonitorErrorCode
    MonitorErrorCode (..),

    -- ** Permission
    Permission (..),

    -- ** PortalState
    PortalState (..),

    -- ** PropertyDataType
    PropertyDataType (..),

    -- ** PropertyNotificationState
    PropertyNotificationState (..),

    -- ** Quality
    Quality (..),

    -- ** ResourceType
    ResourceType (..),

    -- ** StorageType
    StorageType (..),

    -- ** TimeOrdering
    TimeOrdering (..),

    -- ** TraversalDirection
    TraversalDirection (..),

    -- ** TraversalType
    TraversalType (..),

    -- ** AccessPolicySummary
    AccessPolicySummary (AccessPolicySummary'),
    newAccessPolicySummary,

    -- ** AggregatedValue
    AggregatedValue (AggregatedValue'),
    newAggregatedValue,

    -- ** Aggregates
    Aggregates (Aggregates'),
    newAggregates,

    -- ** Alarms
    Alarms (Alarms'),
    newAlarms,

    -- ** AssetCompositeModel
    AssetCompositeModel (AssetCompositeModel'),
    newAssetCompositeModel,

    -- ** AssetErrorDetails
    AssetErrorDetails (AssetErrorDetails'),
    newAssetErrorDetails,

    -- ** AssetHierarchy
    AssetHierarchy (AssetHierarchy'),
    newAssetHierarchy,

    -- ** AssetHierarchyInfo
    AssetHierarchyInfo (AssetHierarchyInfo'),
    newAssetHierarchyInfo,

    -- ** AssetModelCompositeModel
    AssetModelCompositeModel (AssetModelCompositeModel'),
    newAssetModelCompositeModel,

    -- ** AssetModelCompositeModelDefinition
    AssetModelCompositeModelDefinition (AssetModelCompositeModelDefinition'),
    newAssetModelCompositeModelDefinition,

    -- ** AssetModelHierarchy
    AssetModelHierarchy (AssetModelHierarchy'),
    newAssetModelHierarchy,

    -- ** AssetModelHierarchyDefinition
    AssetModelHierarchyDefinition (AssetModelHierarchyDefinition'),
    newAssetModelHierarchyDefinition,

    -- ** AssetModelProperty
    AssetModelProperty (AssetModelProperty'),
    newAssetModelProperty,

    -- ** AssetModelPropertyDefinition
    AssetModelPropertyDefinition (AssetModelPropertyDefinition'),
    newAssetModelPropertyDefinition,

    -- ** AssetModelStatus
    AssetModelStatus (AssetModelStatus'),
    newAssetModelStatus,

    -- ** AssetModelSummary
    AssetModelSummary (AssetModelSummary'),
    newAssetModelSummary,

    -- ** AssetProperty
    AssetProperty (AssetProperty'),
    newAssetProperty,

    -- ** AssetPropertyValue
    AssetPropertyValue (AssetPropertyValue'),
    newAssetPropertyValue,

    -- ** AssetRelationshipSummary
    AssetRelationshipSummary (AssetRelationshipSummary'),
    newAssetRelationshipSummary,

    -- ** AssetStatus
    AssetStatus (AssetStatus'),
    newAssetStatus,

    -- ** AssetSummary
    AssetSummary (AssetSummary'),
    newAssetSummary,

    -- ** AssociatedAssetsSummary
    AssociatedAssetsSummary (AssociatedAssetsSummary'),
    newAssociatedAssetsSummary,

    -- ** Attribute
    Attribute (Attribute'),
    newAttribute,

    -- ** BatchPutAssetPropertyError
    BatchPutAssetPropertyError (BatchPutAssetPropertyError'),
    newBatchPutAssetPropertyError,

    -- ** BatchPutAssetPropertyErrorEntry
    BatchPutAssetPropertyErrorEntry (BatchPutAssetPropertyErrorEntry'),
    newBatchPutAssetPropertyErrorEntry,

    -- ** CompositeModelProperty
    CompositeModelProperty (CompositeModelProperty'),
    newCompositeModelProperty,

    -- ** ConfigurationErrorDetails
    ConfigurationErrorDetails (ConfigurationErrorDetails'),
    newConfigurationErrorDetails,

    -- ** ConfigurationStatus
    ConfigurationStatus (ConfigurationStatus'),
    newConfigurationStatus,

    -- ** CustomerManagedS3Storage
    CustomerManagedS3Storage (CustomerManagedS3Storage'),
    newCustomerManagedS3Storage,

    -- ** DashboardSummary
    DashboardSummary (DashboardSummary'),
    newDashboardSummary,

    -- ** DetailedError
    DetailedError (DetailedError'),
    newDetailedError,

    -- ** ErrorDetails
    ErrorDetails (ErrorDetails'),
    newErrorDetails,

    -- ** ExpressionVariable
    ExpressionVariable (ExpressionVariable'),
    newExpressionVariable,

    -- ** ForwardingConfig
    ForwardingConfig (ForwardingConfig'),
    newForwardingConfig,

    -- ** GatewayCapabilitySummary
    GatewayCapabilitySummary (GatewayCapabilitySummary'),
    newGatewayCapabilitySummary,

    -- ** GatewayPlatform
    GatewayPlatform (GatewayPlatform'),
    newGatewayPlatform,

    -- ** GatewaySummary
    GatewaySummary (GatewaySummary'),
    newGatewaySummary,

    -- ** Greengrass
    Greengrass (Greengrass'),
    newGreengrass,

    -- ** GreengrassV2
    GreengrassV2 (GreengrassV2'),
    newGreengrassV2,

    -- ** GroupIdentity
    GroupIdentity (GroupIdentity'),
    newGroupIdentity,

    -- ** IAMRoleIdentity
    IAMRoleIdentity (IAMRoleIdentity'),
    newIAMRoleIdentity,

    -- ** IAMUserIdentity
    IAMUserIdentity (IAMUserIdentity'),
    newIAMUserIdentity,

    -- ** Identity
    Identity (Identity'),
    newIdentity,

    -- ** Image
    Image (Image'),
    newImage,

    -- ** ImageFile
    ImageFile (ImageFile'),
    newImageFile,

    -- ** ImageLocation
    ImageLocation (ImageLocation'),
    newImageLocation,

    -- ** InterpolatedAssetPropertyValue
    InterpolatedAssetPropertyValue (InterpolatedAssetPropertyValue'),
    newInterpolatedAssetPropertyValue,

    -- ** LoggingOptions
    LoggingOptions (LoggingOptions'),
    newLoggingOptions,

    -- ** Measurement
    Measurement (Measurement'),
    newMeasurement,

    -- ** MeasurementProcessingConfig
    MeasurementProcessingConfig (MeasurementProcessingConfig'),
    newMeasurementProcessingConfig,

    -- ** Metric
    Metric (Metric'),
    newMetric,

    -- ** MetricProcessingConfig
    MetricProcessingConfig (MetricProcessingConfig'),
    newMetricProcessingConfig,

    -- ** MetricWindow
    MetricWindow (MetricWindow'),
    newMetricWindow,

    -- ** MonitorErrorDetails
    MonitorErrorDetails (MonitorErrorDetails'),
    newMonitorErrorDetails,

    -- ** MultiLayerStorage
    MultiLayerStorage (MultiLayerStorage'),
    newMultiLayerStorage,

    -- ** PortalResource
    PortalResource (PortalResource'),
    newPortalResource,

    -- ** PortalStatus
    PortalStatus (PortalStatus'),
    newPortalStatus,

    -- ** PortalSummary
    PortalSummary (PortalSummary'),
    newPortalSummary,

    -- ** ProjectResource
    ProjectResource (ProjectResource'),
    newProjectResource,

    -- ** ProjectSummary
    ProjectSummary (ProjectSummary'),
    newProjectSummary,

    -- ** Property
    Property (Property'),
    newProperty,

    -- ** PropertyNotification
    PropertyNotification (PropertyNotification'),
    newPropertyNotification,

    -- ** PropertyType
    PropertyType (PropertyType'),
    newPropertyType,

    -- ** PutAssetPropertyValueEntry
    PutAssetPropertyValueEntry (PutAssetPropertyValueEntry'),
    newPutAssetPropertyValueEntry,

    -- ** Resource
    Resource (Resource'),
    newResource,

    -- ** TimeInNanos
    TimeInNanos (TimeInNanos'),
    newTimeInNanos,

    -- ** Transform
    Transform (Transform'),
    newTransform,

    -- ** TransformProcessingConfig
    TransformProcessingConfig (TransformProcessingConfig'),
    newTransformProcessingConfig,

    -- ** TumblingWindow
    TumblingWindow (TumblingWindow'),
    newTumblingWindow,

    -- ** UserIdentity
    UserIdentity (UserIdentity'),
    newUserIdentity,

    -- ** VariableValue
    VariableValue (VariableValue'),
    newVariableValue,

    -- ** Variant
    Variant (Variant'),
    newVariant,
  )
where

import Network.AWS.IoTSiteWise.AssociateAssets
import Network.AWS.IoTSiteWise.BatchAssociateProjectAssets
import Network.AWS.IoTSiteWise.BatchDisassociateProjectAssets
import Network.AWS.IoTSiteWise.BatchPutAssetPropertyValue
import Network.AWS.IoTSiteWise.CreateAccessPolicy
import Network.AWS.IoTSiteWise.CreateAsset
import Network.AWS.IoTSiteWise.CreateAssetModel
import Network.AWS.IoTSiteWise.CreateDashboard
import Network.AWS.IoTSiteWise.CreateGateway
import Network.AWS.IoTSiteWise.CreatePortal
import Network.AWS.IoTSiteWise.CreateProject
import Network.AWS.IoTSiteWise.DeleteAccessPolicy
import Network.AWS.IoTSiteWise.DeleteAsset
import Network.AWS.IoTSiteWise.DeleteAssetModel
import Network.AWS.IoTSiteWise.DeleteDashboard
import Network.AWS.IoTSiteWise.DeleteGateway
import Network.AWS.IoTSiteWise.DeletePortal
import Network.AWS.IoTSiteWise.DeleteProject
import Network.AWS.IoTSiteWise.DescribeAccessPolicy
import Network.AWS.IoTSiteWise.DescribeAsset
import Network.AWS.IoTSiteWise.DescribeAssetModel
import Network.AWS.IoTSiteWise.DescribeAssetProperty
import Network.AWS.IoTSiteWise.DescribeDashboard
import Network.AWS.IoTSiteWise.DescribeDefaultEncryptionConfiguration
import Network.AWS.IoTSiteWise.DescribeGateway
import Network.AWS.IoTSiteWise.DescribeGatewayCapabilityConfiguration
import Network.AWS.IoTSiteWise.DescribeLoggingOptions
import Network.AWS.IoTSiteWise.DescribePortal
import Network.AWS.IoTSiteWise.DescribeProject
import Network.AWS.IoTSiteWise.DescribeStorageConfiguration
import Network.AWS.IoTSiteWise.DisassociateAssets
import Network.AWS.IoTSiteWise.GetAssetPropertyAggregates
import Network.AWS.IoTSiteWise.GetAssetPropertyValue
import Network.AWS.IoTSiteWise.GetAssetPropertyValueHistory
import Network.AWS.IoTSiteWise.GetInterpolatedAssetPropertyValues
import Network.AWS.IoTSiteWise.Lens
import Network.AWS.IoTSiteWise.ListAccessPolicies
import Network.AWS.IoTSiteWise.ListAssetModels
import Network.AWS.IoTSiteWise.ListAssetRelationships
import Network.AWS.IoTSiteWise.ListAssets
import Network.AWS.IoTSiteWise.ListAssociatedAssets
import Network.AWS.IoTSiteWise.ListDashboards
import Network.AWS.IoTSiteWise.ListGateways
import Network.AWS.IoTSiteWise.ListPortals
import Network.AWS.IoTSiteWise.ListProjectAssets
import Network.AWS.IoTSiteWise.ListProjects
import Network.AWS.IoTSiteWise.ListTagsForResource
import Network.AWS.IoTSiteWise.PutDefaultEncryptionConfiguration
import Network.AWS.IoTSiteWise.PutLoggingOptions
import Network.AWS.IoTSiteWise.PutStorageConfiguration
import Network.AWS.IoTSiteWise.TagResource
import Network.AWS.IoTSiteWise.Types
import Network.AWS.IoTSiteWise.UntagResource
import Network.AWS.IoTSiteWise.UpdateAccessPolicy
import Network.AWS.IoTSiteWise.UpdateAsset
import Network.AWS.IoTSiteWise.UpdateAssetModel
import Network.AWS.IoTSiteWise.UpdateAssetProperty
import Network.AWS.IoTSiteWise.UpdateDashboard
import Network.AWS.IoTSiteWise.UpdateGateway
import Network.AWS.IoTSiteWise.UpdateGatewayCapabilityConfiguration
import Network.AWS.IoTSiteWise.UpdatePortal
import Network.AWS.IoTSiteWise.UpdateProject
import Network.AWS.IoTSiteWise.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'IoTSiteWise'.

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
