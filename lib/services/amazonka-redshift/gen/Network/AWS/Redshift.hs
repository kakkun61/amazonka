{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.AWS.Redshift
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2012-12-01@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- Amazon Redshift
--
-- __Overview__
--
-- This is an interface reference for Amazon Redshift. It contains
-- documentation for one of the programming or command line interfaces you
-- can use to manage Amazon Redshift clusters. Note that Amazon Redshift is
-- asynchronous, which means that some interfaces may require techniques,
-- such as polling or asynchronous callback handlers, to determine when a
-- command has been applied. In this reference, the parameter descriptions
-- indicate whether a change is applied immediately, on the next instance
-- reboot, or during the next maintenance window. For a summary of the
-- Amazon Redshift cluster management interfaces, go to
-- <https://docs.aws.amazon.com/redshift/latest/mgmt/using-aws-sdk.html Using the Amazon Redshift Management Interfaces>.
--
-- Amazon Redshift manages all the work of setting up, operating, and
-- scaling a data warehouse: provisioning capacity, monitoring and backing
-- up the cluster, and applying patches and upgrades to the Amazon Redshift
-- engine. You can focus on using your data to acquire new insights for
-- your business and customers.
--
-- If you are a first-time user of Amazon Redshift, we recommend that you
-- begin by reading the
-- <https://docs.aws.amazon.com/redshift/latest/gsg/getting-started.html Amazon Redshift Getting Started Guide>.
--
-- If you are a database developer, the
-- <https://docs.aws.amazon.com/redshift/latest/dg/welcome.html Amazon Redshift Database Developer Guide>
-- explains how to design, build, query, and maintain the databases that
-- make up your data warehouse.
module Network.AWS.Redshift
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** ClusterSecurityGroupQuotaExceededFault
    _ClusterSecurityGroupQuotaExceededFault,

    -- ** InvalidS3KeyPrefixFault
    _InvalidS3KeyPrefixFault,

    -- ** SourceNotFoundFault
    _SourceNotFoundFault,

    -- ** AuthenticationProfileQuotaExceededFault
    _AuthenticationProfileQuotaExceededFault,

    -- ** AuthorizationQuotaExceededFault
    _AuthorizationQuotaExceededFault,

    -- ** CopyToRegionDisabledFault
    _CopyToRegionDisabledFault,

    -- ** LimitExceededFault
    _LimitExceededFault,

    -- ** EndpointAuthorizationAlreadyExistsFault
    _EndpointAuthorizationAlreadyExistsFault,

    -- ** InvalidClusterSecurityGroupStateFault
    _InvalidClusterSecurityGroupStateFault,

    -- ** ClusterSecurityGroupAlreadyExistsFault
    _ClusterSecurityGroupAlreadyExistsFault,

    -- ** ClusterSnapshotNotFoundFault
    _ClusterSnapshotNotFoundFault,

    -- ** InvalidElasticIpFault
    _InvalidElasticIpFault,

    -- ** TableRestoreNotFoundFault
    _TableRestoreNotFoundFault,

    -- ** HsmConfigurationNotFoundFault
    _HsmConfigurationNotFoundFault,

    -- ** AuthenticationProfileAlreadyExistsFault
    _AuthenticationProfileAlreadyExistsFault,

    -- ** ScheduleDefinitionTypeUnsupportedFault
    _ScheduleDefinitionTypeUnsupportedFault,

    -- ** AuthorizationAlreadyExistsFault
    _AuthorizationAlreadyExistsFault,

    -- ** SubscriptionCategoryNotFoundFault
    _SubscriptionCategoryNotFoundFault,

    -- ** InvalidRetentionPeriodFault
    _InvalidRetentionPeriodFault,

    -- ** HsmConfigurationAlreadyExistsFault
    _HsmConfigurationAlreadyExistsFault,

    -- ** EndpointNotFoundFault
    _EndpointNotFoundFault,

    -- ** SubscriptionNotFoundFault
    _SubscriptionNotFoundFault,

    -- ** InvalidS3BucketNameFault
    _InvalidS3BucketNameFault,

    -- ** ClusterSnapshotAlreadyExistsFault
    _ClusterSnapshotAlreadyExistsFault,

    -- ** InvalidSubnet
    _InvalidSubnet,

    -- ** TableLimitExceededFault
    _TableLimitExceededFault,

    -- ** InvalidHsmConfigurationStateFault
    _InvalidHsmConfigurationStateFault,

    -- ** SnapshotCopyAlreadyDisabledFault
    _SnapshotCopyAlreadyDisabledFault,

    -- ** ClusterQuotaExceededFault
    _ClusterQuotaExceededFault,

    -- ** HsmClientCertificateQuotaExceededFault
    _HsmClientCertificateQuotaExceededFault,

    -- ** SnapshotScheduleAlreadyExistsFault
    _SnapshotScheduleAlreadyExistsFault,

    -- ** BatchModifyClusterSnapshotsLimitExceededFault
    _BatchModifyClusterSnapshotsLimitExceededFault,

    -- ** ClusterParameterGroupNotFoundFault
    _ClusterParameterGroupNotFoundFault,

    -- ** SnapshotCopyGrantQuotaExceededFault
    _SnapshotCopyGrantQuotaExceededFault,

    -- ** InvalidNamespaceFault
    _InvalidNamespaceFault,

    -- ** NumberOfNodesPerClusterLimitExceededFault
    _NumberOfNodesPerClusterLimitExceededFault,

    -- ** SnapshotCopyAlreadyEnabledFault
    _SnapshotCopyAlreadyEnabledFault,

    -- ** ClusterParameterGroupAlreadyExistsFault
    _ClusterParameterGroupAlreadyExistsFault,

    -- ** BatchDeleteRequestSizeExceededFault
    _BatchDeleteRequestSizeExceededFault,

    -- ** SnapshotCopyDisabledFault
    _SnapshotCopyDisabledFault,

    -- ** ResizeNotFoundFault
    _ResizeNotFoundFault,

    -- ** HsmClientCertificateNotFoundFault
    _HsmClientCertificateNotFoundFault,

    -- ** SNSTopicArnNotFoundFault
    _SNSTopicArnNotFoundFault,

    -- ** ClusterNotFoundFault
    _ClusterNotFoundFault,

    -- ** ClusterParameterGroupQuotaExceededFault
    _ClusterParameterGroupQuotaExceededFault,

    -- ** SnapshotCopyGrantAlreadyExistsFault
    _SnapshotCopyGrantAlreadyExistsFault,

    -- ** SNSNoAuthorizationFault
    _SNSNoAuthorizationFault,

    -- ** InvalidClusterStateFault
    _InvalidClusterStateFault,

    -- ** InvalidTableRestoreArgumentFault
    _InvalidTableRestoreArgumentFault,

    -- ** SnapshotCopyGrantNotFoundFault
    _SnapshotCopyGrantNotFoundFault,

    -- ** InvalidScheduleFault
    _InvalidScheduleFault,

    -- ** InvalidClusterTrackFault
    _InvalidClusterTrackFault,

    -- ** HsmConfigurationQuotaExceededFault
    _HsmConfigurationQuotaExceededFault,

    -- ** ClusterSnapshotQuotaExceededFault
    _ClusterSnapshotQuotaExceededFault,

    -- ** InsufficientClusterCapacityFault
    _InsufficientClusterCapacityFault,

    -- ** InvalidAuthenticationProfileRequestFault
    _InvalidAuthenticationProfileRequestFault,

    -- ** EndpointAuthorizationNotFoundFault
    _EndpointAuthorizationNotFoundFault,

    -- ** InvalidScheduledActionFault
    _InvalidScheduledActionFault,

    -- ** SNSInvalidTopicFault
    _SNSInvalidTopicFault,

    -- ** UsageLimitAlreadyExistsFault
    _UsageLimitAlreadyExistsFault,

    -- ** DependentServiceUnavailableFault
    _DependentServiceUnavailableFault,

    -- ** UnsupportedOptionFault
    _UnsupportedOptionFault,

    -- ** SubscriptionAlreadyExistFault
    _SubscriptionAlreadyExistFault,

    -- ** InvalidAuthorizationStateFault
    _InvalidAuthorizationStateFault,

    -- ** EndpointAlreadyExistsFault
    _EndpointAlreadyExistsFault,

    -- ** InvalidClusterSnapshotScheduleStateFault
    _InvalidClusterSnapshotScheduleStateFault,

    -- ** InvalidVPCNetworkStateFault
    _InvalidVPCNetworkStateFault,

    -- ** ClusterSubnetGroupNotFoundFault
    _ClusterSubnetGroupNotFoundFault,

    -- ** BucketNotFoundFault
    _BucketNotFoundFault,

    -- ** PartnerNotFoundFault
    _PartnerNotFoundFault,

    -- ** InvalidSubscriptionStateFault
    _InvalidSubscriptionStateFault,

    -- ** InvalidEndpointStateFault
    _InvalidEndpointStateFault,

    -- ** DependentServiceRequestThrottlingFault
    _DependentServiceRequestThrottlingFault,

    -- ** AuthorizationNotFoundFault
    _AuthorizationNotFoundFault,

    -- ** InvalidClusterSubnetGroupStateFault
    _InvalidClusterSubnetGroupStateFault,

    -- ** EndpointAuthorizationsPerClusterLimitExceededFault
    _EndpointAuthorizationsPerClusterLimitExceededFault,

    -- ** AuthenticationProfileNotFoundFault
    _AuthenticationProfileNotFoundFault,

    -- ** UnsupportedOperationFault
    _UnsupportedOperationFault,

    -- ** ClusterSubnetGroupAlreadyExistsFault
    _ClusterSubnetGroupAlreadyExistsFault,

    -- ** InvalidClusterSnapshotStateFault
    _InvalidClusterSnapshotStateFault,

    -- ** ClusterSecurityGroupNotFoundFault
    _ClusterSecurityGroupNotFoundFault,

    -- ** ReservedNodeNotFoundFault
    _ReservedNodeNotFoundFault,

    -- ** ReservedNodeOfferingNotFoundFault
    _ReservedNodeOfferingNotFoundFault,

    -- ** InvalidClusterSubnetStateFault
    _InvalidClusterSubnetStateFault,

    -- ** IncompatibleOrderableOptions
    _IncompatibleOrderableOptions,

    -- ** ReservedNodeAlreadyMigratedFault
    _ReservedNodeAlreadyMigratedFault,

    -- ** EndpointsPerAuthorizationLimitExceededFault
    _EndpointsPerAuthorizationLimitExceededFault,

    -- ** AccessToClusterDeniedFault
    _AccessToClusterDeniedFault,

    -- ** EventSubscriptionQuotaExceededFault
    _EventSubscriptionQuotaExceededFault,

    -- ** SnapshotScheduleNotFoundFault
    _SnapshotScheduleNotFoundFault,

    -- ** InvalidClusterParameterGroupStateFault
    _InvalidClusterParameterGroupStateFault,

    -- ** ScheduledActionQuotaExceededFault
    _ScheduledActionQuotaExceededFault,

    -- ** InvalidReservedNodeStateFault
    _InvalidReservedNodeStateFault,

    -- ** ReservedNodeAlreadyExistsFault
    _ReservedNodeAlreadyExistsFault,

    -- ** ScheduledActionTypeUnsupportedFault
    _ScheduledActionTypeUnsupportedFault,

    -- ** SnapshotScheduleUpdateInProgressFault
    _SnapshotScheduleUpdateInProgressFault,

    -- ** InProgressTableRestoreQuotaExceededFault
    _InProgressTableRestoreQuotaExceededFault,

    -- ** InvalidRestoreFault
    _InvalidRestoreFault,

    -- ** ResourceNotFoundFault
    _ResourceNotFoundFault,

    -- ** SubscriptionEventIdNotFoundFault
    _SubscriptionEventIdNotFoundFault,

    -- ** InvalidUsageLimitFault
    _InvalidUsageLimitFault,

    -- ** InvalidSnapshotCopyGrantStateFault
    _InvalidSnapshotCopyGrantStateFault,

    -- ** UnknownSnapshotCopyRegionFault
    _UnknownSnapshotCopyRegionFault,

    -- ** ReservedNodeQuotaExceededFault
    _ReservedNodeQuotaExceededFault,

    -- ** ScheduledActionAlreadyExistsFault
    _ScheduledActionAlreadyExistsFault,

    -- ** ClusterSubnetQuotaExceededFault
    _ClusterSubnetQuotaExceededFault,

    -- ** ClusterAlreadyExistsFault
    _ClusterAlreadyExistsFault,

    -- ** AccessToSnapshotDeniedFault
    _AccessToSnapshotDeniedFault,

    -- ** TagLimitExceededFault
    _TagLimitExceededFault,

    -- ** NumberOfNodesQuotaExceededFault
    _NumberOfNodesQuotaExceededFault,

    -- ** ScheduledActionNotFoundFault
    _ScheduledActionNotFoundFault,

    -- ** UnauthorizedPartnerIntegrationFault
    _UnauthorizedPartnerIntegrationFault,

    -- ** HsmClientCertificateAlreadyExistsFault
    _HsmClientCertificateAlreadyExistsFault,

    -- ** SnapshotScheduleQuotaExceededFault
    _SnapshotScheduleQuotaExceededFault,

    -- ** InvalidHsmClientCertificateStateFault
    _InvalidHsmClientCertificateStateFault,

    -- ** InvalidDataShareFault
    _InvalidDataShareFault,

    -- ** ClusterOnLatestRevisionFault
    _ClusterOnLatestRevisionFault,

    -- ** SubnetAlreadyInUse
    _SubnetAlreadyInUse,

    -- ** SubscriptionSeverityNotFoundFault
    _SubscriptionSeverityNotFoundFault,

    -- ** UsageLimitNotFoundFault
    _UsageLimitNotFoundFault,

    -- ** UnauthorizedOperation
    _UnauthorizedOperation,

    -- ** InvalidTagFault
    _InvalidTagFault,

    -- ** InsufficientS3BucketPolicyFault
    _InsufficientS3BucketPolicyFault,

    -- ** ClusterSubnetGroupQuotaExceededFault
    _ClusterSubnetGroupQuotaExceededFault,

    -- ** EndpointsPerClusterLimitExceededFault
    _EndpointsPerClusterLimitExceededFault,

    -- * Waiters
    -- $waiters

    -- ** ClusterRestored
    newClusterRestored,

    -- ** ClusterDeleted
    newClusterDeleted,

    -- ** SnapshotAvailable
    newSnapshotAvailable,

    -- ** ClusterAvailable
    newClusterAvailable,

    -- * Operations
    -- $operations

    -- ** CancelResize
    CancelResize (CancelResize'),
    newCancelResize,
    ResizeProgressMessage (ResizeProgressMessage'),
    newResizeProgressMessage,

    -- ** DescribeStorage
    DescribeStorage (DescribeStorage'),
    newDescribeStorage,
    DescribeStorageResponse (DescribeStorageResponse'),
    newDescribeStorageResponse,

    -- ** DescribeClusters (Paginated)
    DescribeClusters (DescribeClusters'),
    newDescribeClusters,
    DescribeClustersResponse (DescribeClustersResponse'),
    newDescribeClustersResponse,

    -- ** DescribeTags (Paginated)
    DescribeTags (DescribeTags'),
    newDescribeTags,
    DescribeTagsResponse (DescribeTagsResponse'),
    newDescribeTagsResponse,

    -- ** CreateUsageLimit
    CreateUsageLimit (CreateUsageLimit'),
    newCreateUsageLimit,
    UsageLimit (UsageLimit'),
    newUsageLimit,

    -- ** ModifyEndpointAccess
    ModifyEndpointAccess (ModifyEndpointAccess'),
    newModifyEndpointAccess,
    EndpointAccess (EndpointAccess'),
    newEndpointAccess,

    -- ** AssociateDataShareConsumer
    AssociateDataShareConsumer (AssociateDataShareConsumer'),
    newAssociateDataShareConsumer,
    DataShare (DataShare'),
    newDataShare,

    -- ** DeleteClusterSubnetGroup
    DeleteClusterSubnetGroup (DeleteClusterSubnetGroup'),
    newDeleteClusterSubnetGroup,
    DeleteClusterSubnetGroupResponse (DeleteClusterSubnetGroupResponse'),
    newDeleteClusterSubnetGroupResponse,

    -- ** ModifyScheduledAction
    ModifyScheduledAction (ModifyScheduledAction'),
    newModifyScheduledAction,
    ScheduledAction (ScheduledAction'),
    newScheduledAction,

    -- ** DisableLogging
    DisableLogging (DisableLogging'),
    newDisableLogging,
    LoggingStatus (LoggingStatus'),
    newLoggingStatus,

    -- ** DescribeSnapshotSchedules (Paginated)
    DescribeSnapshotSchedules (DescribeSnapshotSchedules'),
    newDescribeSnapshotSchedules,
    DescribeSnapshotSchedulesResponse (DescribeSnapshotSchedulesResponse'),
    newDescribeSnapshotSchedulesResponse,

    -- ** RevokeEndpointAccess
    RevokeEndpointAccess (RevokeEndpointAccess'),
    newRevokeEndpointAccess,
    EndpointAuthorization (EndpointAuthorization'),
    newEndpointAuthorization,

    -- ** ModifyEventSubscription
    ModifyEventSubscription (ModifyEventSubscription'),
    newModifyEventSubscription,
    ModifyEventSubscriptionResponse (ModifyEventSubscriptionResponse'),
    newModifyEventSubscriptionResponse,

    -- ** ModifyClusterDbRevision
    ModifyClusterDbRevision (ModifyClusterDbRevision'),
    newModifyClusterDbRevision,
    ModifyClusterDbRevisionResponse (ModifyClusterDbRevisionResponse'),
    newModifyClusterDbRevisionResponse,

    -- ** DeleteClusterSnapshot
    DeleteClusterSnapshot (DeleteClusterSnapshot'),
    newDeleteClusterSnapshot,
    DeleteClusterSnapshotResponse (DeleteClusterSnapshotResponse'),
    newDeleteClusterSnapshotResponse,

    -- ** AddPartner
    AddPartner (AddPartner'),
    newAddPartner,
    PartnerIntegrationOutputMessage (PartnerIntegrationOutputMessage'),
    newPartnerIntegrationOutputMessage,

    -- ** PurchaseReservedNodeOffering
    PurchaseReservedNodeOffering (PurchaseReservedNodeOffering'),
    newPurchaseReservedNodeOffering,
    PurchaseReservedNodeOfferingResponse (PurchaseReservedNodeOfferingResponse'),
    newPurchaseReservedNodeOfferingResponse,

    -- ** DescribeReservedNodeOfferings (Paginated)
    DescribeReservedNodeOfferings (DescribeReservedNodeOfferings'),
    newDescribeReservedNodeOfferings,
    DescribeReservedNodeOfferingsResponse (DescribeReservedNodeOfferingsResponse'),
    newDescribeReservedNodeOfferingsResponse,

    -- ** DescribeEndpointAccess (Paginated)
    DescribeEndpointAccess (DescribeEndpointAccess'),
    newDescribeEndpointAccess,
    DescribeEndpointAccessResponse (DescribeEndpointAccessResponse'),
    newDescribeEndpointAccessResponse,

    -- ** DescribeEvents (Paginated)
    DescribeEvents (DescribeEvents'),
    newDescribeEvents,
    DescribeEventsResponse (DescribeEventsResponse'),
    newDescribeEventsResponse,

    -- ** DescribeReservedNodes (Paginated)
    DescribeReservedNodes (DescribeReservedNodes'),
    newDescribeReservedNodes,
    DescribeReservedNodesResponse (DescribeReservedNodesResponse'),
    newDescribeReservedNodesResponse,

    -- ** GetReservedNodeExchangeOfferings (Paginated)
    GetReservedNodeExchangeOfferings (GetReservedNodeExchangeOfferings'),
    newGetReservedNodeExchangeOfferings,
    GetReservedNodeExchangeOfferingsResponse (GetReservedNodeExchangeOfferingsResponse'),
    newGetReservedNodeExchangeOfferingsResponse,

    -- ** DeleteAuthenticationProfile
    DeleteAuthenticationProfile (DeleteAuthenticationProfile'),
    newDeleteAuthenticationProfile,
    DeleteAuthenticationProfileResponse (DeleteAuthenticationProfileResponse'),
    newDeleteAuthenticationProfileResponse,

    -- ** DescribeClusterParameterGroups (Paginated)
    DescribeClusterParameterGroups (DescribeClusterParameterGroups'),
    newDescribeClusterParameterGroups,
    DescribeClusterParameterGroupsResponse (DescribeClusterParameterGroupsResponse'),
    newDescribeClusterParameterGroupsResponse,

    -- ** EnableLogging
    EnableLogging (EnableLogging'),
    newEnableLogging,
    LoggingStatus (LoggingStatus'),
    newLoggingStatus,

    -- ** CreateClusterSubnetGroup
    CreateClusterSubnetGroup (CreateClusterSubnetGroup'),
    newCreateClusterSubnetGroup,
    CreateClusterSubnetGroupResponse (CreateClusterSubnetGroupResponse'),
    newCreateClusterSubnetGroupResponse,

    -- ** DeleteClusterParameterGroup
    DeleteClusterParameterGroup (DeleteClusterParameterGroup'),
    newDeleteClusterParameterGroup,
    DeleteClusterParameterGroupResponse (DeleteClusterParameterGroupResponse'),
    newDeleteClusterParameterGroupResponse,

    -- ** DescribeClusterSecurityGroups (Paginated)
    DescribeClusterSecurityGroups (DescribeClusterSecurityGroups'),
    newDescribeClusterSecurityGroups,
    DescribeClusterSecurityGroupsResponse (DescribeClusterSecurityGroupsResponse'),
    newDescribeClusterSecurityGroupsResponse,

    -- ** CreateTags
    CreateTags (CreateTags'),
    newCreateTags,
    CreateTagsResponse (CreateTagsResponse'),
    newCreateTagsResponse,

    -- ** DescribeEndpointAuthorization (Paginated)
    DescribeEndpointAuthorization (DescribeEndpointAuthorization'),
    newDescribeEndpointAuthorization,
    DescribeEndpointAuthorizationResponse (DescribeEndpointAuthorizationResponse'),
    newDescribeEndpointAuthorizationResponse,

    -- ** EnableSnapshotCopy
    EnableSnapshotCopy (EnableSnapshotCopy'),
    newEnableSnapshotCopy,
    EnableSnapshotCopyResponse (EnableSnapshotCopyResponse'),
    newEnableSnapshotCopyResponse,

    -- ** DescribeClusterSnapshots (Paginated)
    DescribeClusterSnapshots (DescribeClusterSnapshots'),
    newDescribeClusterSnapshots,
    DescribeClusterSnapshotsResponse (DescribeClusterSnapshotsResponse'),
    newDescribeClusterSnapshotsResponse,

    -- ** BatchDeleteClusterSnapshots
    BatchDeleteClusterSnapshots (BatchDeleteClusterSnapshots'),
    newBatchDeleteClusterSnapshots,
    BatchDeleteClusterSnapshotsResponse (BatchDeleteClusterSnapshotsResponse'),
    newBatchDeleteClusterSnapshotsResponse,

    -- ** DeleteTags
    DeleteTags (DeleteTags'),
    newDeleteTags,
    DeleteTagsResponse (DeleteTagsResponse'),
    newDeleteTagsResponse,

    -- ** ModifyUsageLimit
    ModifyUsageLimit (ModifyUsageLimit'),
    newModifyUsageLimit,
    UsageLimit (UsageLimit'),
    newUsageLimit,

    -- ** DescribeClusterSubnetGroups (Paginated)
    DescribeClusterSubnetGroups (DescribeClusterSubnetGroups'),
    newDescribeClusterSubnetGroups,
    DescribeClusterSubnetGroupsResponse (DescribeClusterSubnetGroupsResponse'),
    newDescribeClusterSubnetGroupsResponse,

    -- ** ResizeCluster
    ResizeCluster (ResizeCluster'),
    newResizeCluster,
    ResizeClusterResponse (ResizeClusterResponse'),
    newResizeClusterResponse,

    -- ** ModifySnapshotCopyRetentionPeriod
    ModifySnapshotCopyRetentionPeriod (ModifySnapshotCopyRetentionPeriod'),
    newModifySnapshotCopyRetentionPeriod,
    ModifySnapshotCopyRetentionPeriodResponse (ModifySnapshotCopyRetentionPeriodResponse'),
    newModifySnapshotCopyRetentionPeriodResponse,

    -- ** ModifyClusterIamRoles
    ModifyClusterIamRoles (ModifyClusterIamRoles'),
    newModifyClusterIamRoles,
    ModifyClusterIamRolesResponse (ModifyClusterIamRolesResponse'),
    newModifyClusterIamRolesResponse,

    -- ** AuthorizeSnapshotAccess
    AuthorizeSnapshotAccess (AuthorizeSnapshotAccess'),
    newAuthorizeSnapshotAccess,
    AuthorizeSnapshotAccessResponse (AuthorizeSnapshotAccessResponse'),
    newAuthorizeSnapshotAccessResponse,

    -- ** RebootCluster
    RebootCluster (RebootCluster'),
    newRebootCluster,
    RebootClusterResponse (RebootClusterResponse'),
    newRebootClusterResponse,

    -- ** ResumeCluster
    ResumeCluster (ResumeCluster'),
    newResumeCluster,
    ResumeClusterResponse (ResumeClusterResponse'),
    newResumeClusterResponse,

    -- ** DeleteCluster
    DeleteCluster (DeleteCluster'),
    newDeleteCluster,
    DeleteClusterResponse (DeleteClusterResponse'),
    newDeleteClusterResponse,

    -- ** CreateEventSubscription
    CreateEventSubscription (CreateEventSubscription'),
    newCreateEventSubscription,
    CreateEventSubscriptionResponse (CreateEventSubscriptionResponse'),
    newCreateEventSubscriptionResponse,

    -- ** CreateScheduledAction
    CreateScheduledAction (CreateScheduledAction'),
    newCreateScheduledAction,
    ScheduledAction (ScheduledAction'),
    newScheduledAction,

    -- ** DescribeOrderableClusterOptions (Paginated)
    DescribeOrderableClusterOptions (DescribeOrderableClusterOptions'),
    newDescribeOrderableClusterOptions,
    DescribeOrderableClusterOptionsResponse (DescribeOrderableClusterOptionsResponse'),
    newDescribeOrderableClusterOptionsResponse,

    -- ** CreateEndpointAccess
    CreateEndpointAccess (CreateEndpointAccess'),
    newCreateEndpointAccess,
    EndpointAccess (EndpointAccess'),
    newEndpointAccess,

    -- ** DescribeClusterTracks (Paginated)
    DescribeClusterTracks (DescribeClusterTracks'),
    newDescribeClusterTracks,
    DescribeClusterTracksResponse (DescribeClusterTracksResponse'),
    newDescribeClusterTracksResponse,

    -- ** CreateCluster
    CreateCluster (CreateCluster'),
    newCreateCluster,
    CreateClusterResponse (CreateClusterResponse'),
    newCreateClusterResponse,

    -- ** CreateHsmClientCertificate
    CreateHsmClientCertificate (CreateHsmClientCertificate'),
    newCreateHsmClientCertificate,
    CreateHsmClientCertificateResponse (CreateHsmClientCertificateResponse'),
    newCreateHsmClientCertificateResponse,

    -- ** RestoreTableFromClusterSnapshot
    RestoreTableFromClusterSnapshot (RestoreTableFromClusterSnapshot'),
    newRestoreTableFromClusterSnapshot,
    RestoreTableFromClusterSnapshotResponse (RestoreTableFromClusterSnapshotResponse'),
    newRestoreTableFromClusterSnapshotResponse,

    -- ** DeleteScheduledAction
    DeleteScheduledAction (DeleteScheduledAction'),
    newDeleteScheduledAction,
    DeleteScheduledActionResponse (DeleteScheduledActionResponse'),
    newDeleteScheduledActionResponse,

    -- ** DescribeDefaultClusterParameters (Paginated)
    DescribeDefaultClusterParameters (DescribeDefaultClusterParameters'),
    newDescribeDefaultClusterParameters,
    DescribeDefaultClusterParametersResponse (DescribeDefaultClusterParametersResponse'),
    newDescribeDefaultClusterParametersResponse,

    -- ** DeleteEventSubscription
    DeleteEventSubscription (DeleteEventSubscription'),
    newDeleteEventSubscription,
    DeleteEventSubscriptionResponse (DeleteEventSubscriptionResponse'),
    newDeleteEventSubscriptionResponse,

    -- ** ModifyClusterSnapshot
    ModifyClusterSnapshot (ModifyClusterSnapshot'),
    newModifyClusterSnapshot,
    ModifyClusterSnapshotResponse (ModifyClusterSnapshotResponse'),
    newModifyClusterSnapshotResponse,

    -- ** DescribeDataSharesForConsumer
    DescribeDataSharesForConsumer (DescribeDataSharesForConsumer'),
    newDescribeDataSharesForConsumer,
    DescribeDataSharesForConsumerResponse (DescribeDataSharesForConsumerResponse'),
    newDescribeDataSharesForConsumerResponse,

    -- ** AuthorizeDataShare
    AuthorizeDataShare (AuthorizeDataShare'),
    newAuthorizeDataShare,
    DataShare (DataShare'),
    newDataShare,

    -- ** ResetClusterParameterGroup
    ResetClusterParameterGroup (ResetClusterParameterGroup'),
    newResetClusterParameterGroup,
    ClusterParameterGroupNameMessage (ClusterParameterGroupNameMessage'),
    newClusterParameterGroupNameMessage,

    -- ** DescribeScheduledActions (Paginated)
    DescribeScheduledActions (DescribeScheduledActions'),
    newDescribeScheduledActions,
    DescribeScheduledActionsResponse (DescribeScheduledActionsResponse'),
    newDescribeScheduledActionsResponse,

    -- ** DisassociateDataShareConsumer
    DisassociateDataShareConsumer (DisassociateDataShareConsumer'),
    newDisassociateDataShareConsumer,
    DataShare (DataShare'),
    newDataShare,

    -- ** DescribeEventSubscriptions (Paginated)
    DescribeEventSubscriptions (DescribeEventSubscriptions'),
    newDescribeEventSubscriptions,
    DescribeEventSubscriptionsResponse (DescribeEventSubscriptionsResponse'),
    newDescribeEventSubscriptionsResponse,

    -- ** DescribeClusterDbRevisions (Paginated)
    DescribeClusterDbRevisions (DescribeClusterDbRevisions'),
    newDescribeClusterDbRevisions,
    DescribeClusterDbRevisionsResponse (DescribeClusterDbRevisionsResponse'),
    newDescribeClusterDbRevisionsResponse,

    -- ** BatchModifyClusterSnapshots
    BatchModifyClusterSnapshots (BatchModifyClusterSnapshots'),
    newBatchModifyClusterSnapshots,
    BatchModifyClusterSnapshotsResponse (BatchModifyClusterSnapshotsResponse'),
    newBatchModifyClusterSnapshotsResponse,

    -- ** DeleteUsageLimit
    DeleteUsageLimit (DeleteUsageLimit'),
    newDeleteUsageLimit,
    DeleteUsageLimitResponse (DeleteUsageLimitResponse'),
    newDeleteUsageLimitResponse,

    -- ** RevokeClusterSecurityGroupIngress
    RevokeClusterSecurityGroupIngress (RevokeClusterSecurityGroupIngress'),
    newRevokeClusterSecurityGroupIngress,
    RevokeClusterSecurityGroupIngressResponse (RevokeClusterSecurityGroupIngressResponse'),
    newRevokeClusterSecurityGroupIngressResponse,

    -- ** DescribeHsmClientCertificates (Paginated)
    DescribeHsmClientCertificates (DescribeHsmClientCertificates'),
    newDescribeHsmClientCertificates,
    DescribeHsmClientCertificatesResponse (DescribeHsmClientCertificatesResponse'),
    newDescribeHsmClientCertificatesResponse,

    -- ** ModifyClusterParameterGroup
    ModifyClusterParameterGroup (ModifyClusterParameterGroup'),
    newModifyClusterParameterGroup,
    ClusterParameterGroupNameMessage (ClusterParameterGroupNameMessage'),
    newClusterParameterGroupNameMessage,

    -- ** AuthorizeEndpointAccess
    AuthorizeEndpointAccess (AuthorizeEndpointAccess'),
    newAuthorizeEndpointAccess,
    EndpointAuthorization (EndpointAuthorization'),
    newEndpointAuthorization,

    -- ** ModifyAquaConfiguration
    ModifyAquaConfiguration (ModifyAquaConfiguration'),
    newModifyAquaConfiguration,
    ModifyAquaConfigurationResponse (ModifyAquaConfigurationResponse'),
    newModifyAquaConfigurationResponse,

    -- ** GetClusterCredentials
    GetClusterCredentials (GetClusterCredentials'),
    newGetClusterCredentials,
    GetClusterCredentialsResponse (GetClusterCredentialsResponse'),
    newGetClusterCredentialsResponse,

    -- ** ModifyClusterMaintenance
    ModifyClusterMaintenance (ModifyClusterMaintenance'),
    newModifyClusterMaintenance,
    ModifyClusterMaintenanceResponse (ModifyClusterMaintenanceResponse'),
    newModifyClusterMaintenanceResponse,

    -- ** CreateClusterSecurityGroup
    CreateClusterSecurityGroup (CreateClusterSecurityGroup'),
    newCreateClusterSecurityGroup,
    CreateClusterSecurityGroupResponse (CreateClusterSecurityGroupResponse'),
    newCreateClusterSecurityGroupResponse,

    -- ** DescribeEventCategories
    DescribeEventCategories (DescribeEventCategories'),
    newDescribeEventCategories,
    DescribeEventCategoriesResponse (DescribeEventCategoriesResponse'),
    newDescribeEventCategoriesResponse,

    -- ** DescribeResize
    DescribeResize (DescribeResize'),
    newDescribeResize,
    ResizeProgressMessage (ResizeProgressMessage'),
    newResizeProgressMessage,

    -- ** DeleteHsmConfiguration
    DeleteHsmConfiguration (DeleteHsmConfiguration'),
    newDeleteHsmConfiguration,
    DeleteHsmConfigurationResponse (DeleteHsmConfigurationResponse'),
    newDeleteHsmConfigurationResponse,

    -- ** CreateAuthenticationProfile
    CreateAuthenticationProfile (CreateAuthenticationProfile'),
    newCreateAuthenticationProfile,
    CreateAuthenticationProfileResponse (CreateAuthenticationProfileResponse'),
    newCreateAuthenticationProfileResponse,

    -- ** DeauthorizeDataShare
    DeauthorizeDataShare (DeauthorizeDataShare'),
    newDeauthorizeDataShare,
    DataShare (DataShare'),
    newDataShare,

    -- ** AcceptReservedNodeExchange
    AcceptReservedNodeExchange (AcceptReservedNodeExchange'),
    newAcceptReservedNodeExchange,
    AcceptReservedNodeExchangeResponse (AcceptReservedNodeExchangeResponse'),
    newAcceptReservedNodeExchangeResponse,

    -- ** AuthorizeClusterSecurityGroupIngress
    AuthorizeClusterSecurityGroupIngress (AuthorizeClusterSecurityGroupIngress'),
    newAuthorizeClusterSecurityGroupIngress,
    AuthorizeClusterSecurityGroupIngressResponse (AuthorizeClusterSecurityGroupIngressResponse'),
    newAuthorizeClusterSecurityGroupIngressResponse,

    -- ** DeletePartner
    DeletePartner (DeletePartner'),
    newDeletePartner,
    PartnerIntegrationOutputMessage (PartnerIntegrationOutputMessage'),
    newPartnerIntegrationOutputMessage,

    -- ** DescribeTableRestoreStatus (Paginated)
    DescribeTableRestoreStatus (DescribeTableRestoreStatus'),
    newDescribeTableRestoreStatus,
    DescribeTableRestoreStatusResponse (DescribeTableRestoreStatusResponse'),
    newDescribeTableRestoreStatusResponse,

    -- ** CreateClusterSnapshot
    CreateClusterSnapshot (CreateClusterSnapshot'),
    newCreateClusterSnapshot,
    CreateClusterSnapshotResponse (CreateClusterSnapshotResponse'),
    newCreateClusterSnapshotResponse,

    -- ** RejectDataShare
    RejectDataShare (RejectDataShare'),
    newRejectDataShare,
    DataShare (DataShare'),
    newDataShare,

    -- ** CreateHsmConfiguration
    CreateHsmConfiguration (CreateHsmConfiguration'),
    newCreateHsmConfiguration,
    CreateHsmConfigurationResponse (CreateHsmConfigurationResponse'),
    newCreateHsmConfigurationResponse,

    -- ** DescribeLoggingStatus
    DescribeLoggingStatus (DescribeLoggingStatus'),
    newDescribeLoggingStatus,
    LoggingStatus (LoggingStatus'),
    newLoggingStatus,

    -- ** ModifyCluster
    ModifyCluster (ModifyCluster'),
    newModifyCluster,
    ModifyClusterResponse (ModifyClusterResponse'),
    newModifyClusterResponse,

    -- ** DeleteClusterSecurityGroup
    DeleteClusterSecurityGroup (DeleteClusterSecurityGroup'),
    newDeleteClusterSecurityGroup,
    DeleteClusterSecurityGroupResponse (DeleteClusterSecurityGroupResponse'),
    newDeleteClusterSecurityGroupResponse,

    -- ** CreateSnapshotSchedule
    CreateSnapshotSchedule (CreateSnapshotSchedule'),
    newCreateSnapshotSchedule,
    SnapshotSchedule (SnapshotSchedule'),
    newSnapshotSchedule,

    -- ** DescribeAuthenticationProfiles
    DescribeAuthenticationProfiles (DescribeAuthenticationProfiles'),
    newDescribeAuthenticationProfiles,
    DescribeAuthenticationProfilesResponse (DescribeAuthenticationProfilesResponse'),
    newDescribeAuthenticationProfilesResponse,

    -- ** DescribeNodeConfigurationOptions (Paginated)
    DescribeNodeConfigurationOptions (DescribeNodeConfigurationOptions'),
    newDescribeNodeConfigurationOptions,
    DescribeNodeConfigurationOptionsResponse (DescribeNodeConfigurationOptionsResponse'),
    newDescribeNodeConfigurationOptionsResponse,

    -- ** DisableSnapshotCopy
    DisableSnapshotCopy (DisableSnapshotCopy'),
    newDisableSnapshotCopy,
    DisableSnapshotCopyResponse (DisableSnapshotCopyResponse'),
    newDisableSnapshotCopyResponse,

    -- ** DescribeClusterParameters (Paginated)
    DescribeClusterParameters (DescribeClusterParameters'),
    newDescribeClusterParameters,
    DescribeClusterParametersResponse (DescribeClusterParametersResponse'),
    newDescribeClusterParametersResponse,

    -- ** PauseCluster
    PauseCluster (PauseCluster'),
    newPauseCluster,
    PauseClusterResponse (PauseClusterResponse'),
    newPauseClusterResponse,

    -- ** DescribeDataSharesForProducer
    DescribeDataSharesForProducer (DescribeDataSharesForProducer'),
    newDescribeDataSharesForProducer,
    DescribeDataSharesForProducerResponse (DescribeDataSharesForProducerResponse'),
    newDescribeDataSharesForProducerResponse,

    -- ** DeleteSnapshotSchedule
    DeleteSnapshotSchedule (DeleteSnapshotSchedule'),
    newDeleteSnapshotSchedule,
    DeleteSnapshotScheduleResponse (DeleteSnapshotScheduleResponse'),
    newDeleteSnapshotScheduleResponse,

    -- ** RestoreFromClusterSnapshot
    RestoreFromClusterSnapshot (RestoreFromClusterSnapshot'),
    newRestoreFromClusterSnapshot,
    RestoreFromClusterSnapshotResponse (RestoreFromClusterSnapshotResponse'),
    newRestoreFromClusterSnapshotResponse,

    -- ** CreateClusterParameterGroup
    CreateClusterParameterGroup (CreateClusterParameterGroup'),
    newCreateClusterParameterGroup,
    CreateClusterParameterGroupResponse (CreateClusterParameterGroupResponse'),
    newCreateClusterParameterGroupResponse,

    -- ** DescribePartners
    DescribePartners (DescribePartners'),
    newDescribePartners,
    DescribePartnersResponse (DescribePartnersResponse'),
    newDescribePartnersResponse,

    -- ** RevokeSnapshotAccess
    RevokeSnapshotAccess (RevokeSnapshotAccess'),
    newRevokeSnapshotAccess,
    RevokeSnapshotAccessResponse (RevokeSnapshotAccessResponse'),
    newRevokeSnapshotAccessResponse,

    -- ** DescribeHsmConfigurations (Paginated)
    DescribeHsmConfigurations (DescribeHsmConfigurations'),
    newDescribeHsmConfigurations,
    DescribeHsmConfigurationsResponse (DescribeHsmConfigurationsResponse'),
    newDescribeHsmConfigurationsResponse,

    -- ** DescribeAccountAttributes
    DescribeAccountAttributes (DescribeAccountAttributes'),
    newDescribeAccountAttributes,
    DescribeAccountAttributesResponse (DescribeAccountAttributesResponse'),
    newDescribeAccountAttributesResponse,

    -- ** CreateSnapshotCopyGrant
    CreateSnapshotCopyGrant (CreateSnapshotCopyGrant'),
    newCreateSnapshotCopyGrant,
    CreateSnapshotCopyGrantResponse (CreateSnapshotCopyGrantResponse'),
    newCreateSnapshotCopyGrantResponse,

    -- ** CopyClusterSnapshot
    CopyClusterSnapshot (CopyClusterSnapshot'),
    newCopyClusterSnapshot,
    CopyClusterSnapshotResponse (CopyClusterSnapshotResponse'),
    newCopyClusterSnapshotResponse,

    -- ** DescribeDataShares
    DescribeDataShares (DescribeDataShares'),
    newDescribeDataShares,
    DescribeDataSharesResponse (DescribeDataSharesResponse'),
    newDescribeDataSharesResponse,

    -- ** DeleteHsmClientCertificate
    DeleteHsmClientCertificate (DeleteHsmClientCertificate'),
    newDeleteHsmClientCertificate,
    DeleteHsmClientCertificateResponse (DeleteHsmClientCertificateResponse'),
    newDeleteHsmClientCertificateResponse,

    -- ** ModifyAuthenticationProfile
    ModifyAuthenticationProfile (ModifyAuthenticationProfile'),
    newModifyAuthenticationProfile,
    ModifyAuthenticationProfileResponse (ModifyAuthenticationProfileResponse'),
    newModifyAuthenticationProfileResponse,

    -- ** UpdatePartnerStatus
    UpdatePartnerStatus (UpdatePartnerStatus'),
    newUpdatePartnerStatus,
    PartnerIntegrationOutputMessage (PartnerIntegrationOutputMessage'),
    newPartnerIntegrationOutputMessage,

    -- ** ModifyClusterSnapshotSchedule
    ModifyClusterSnapshotSchedule (ModifyClusterSnapshotSchedule'),
    newModifyClusterSnapshotSchedule,
    ModifyClusterSnapshotScheduleResponse (ModifyClusterSnapshotScheduleResponse'),
    newModifyClusterSnapshotScheduleResponse,

    -- ** DeleteEndpointAccess
    DeleteEndpointAccess (DeleteEndpointAccess'),
    newDeleteEndpointAccess,
    EndpointAccess (EndpointAccess'),
    newEndpointAccess,

    -- ** DeleteSnapshotCopyGrant
    DeleteSnapshotCopyGrant (DeleteSnapshotCopyGrant'),
    newDeleteSnapshotCopyGrant,
    DeleteSnapshotCopyGrantResponse (DeleteSnapshotCopyGrantResponse'),
    newDeleteSnapshotCopyGrantResponse,

    -- ** DescribeClusterVersions (Paginated)
    DescribeClusterVersions (DescribeClusterVersions'),
    newDescribeClusterVersions,
    DescribeClusterVersionsResponse (DescribeClusterVersionsResponse'),
    newDescribeClusterVersionsResponse,

    -- ** ModifyClusterSubnetGroup
    ModifyClusterSubnetGroup (ModifyClusterSubnetGroup'),
    newModifyClusterSubnetGroup,
    ModifyClusterSubnetGroupResponse (ModifyClusterSubnetGroupResponse'),
    newModifyClusterSubnetGroupResponse,

    -- ** DescribeUsageLimits (Paginated)
    DescribeUsageLimits (DescribeUsageLimits'),
    newDescribeUsageLimits,
    DescribeUsageLimitsResponse (DescribeUsageLimitsResponse'),
    newDescribeUsageLimitsResponse,

    -- ** ModifySnapshotSchedule
    ModifySnapshotSchedule (ModifySnapshotSchedule'),
    newModifySnapshotSchedule,
    SnapshotSchedule (SnapshotSchedule'),
    newSnapshotSchedule,

    -- ** RotateEncryptionKey
    RotateEncryptionKey (RotateEncryptionKey'),
    newRotateEncryptionKey,
    RotateEncryptionKeyResponse (RotateEncryptionKeyResponse'),
    newRotateEncryptionKeyResponse,

    -- ** DescribeSnapshotCopyGrants (Paginated)
    DescribeSnapshotCopyGrants (DescribeSnapshotCopyGrants'),
    newDescribeSnapshotCopyGrants,
    DescribeSnapshotCopyGrantsResponse (DescribeSnapshotCopyGrantsResponse'),
    newDescribeSnapshotCopyGrantsResponse,

    -- * Types

    -- ** Common
    module Network.AWS.Redshift.Internal,

    -- ** ActionType
    ActionType (..),

    -- ** AquaConfigurationStatus
    AquaConfigurationStatus (..),

    -- ** AquaStatus
    AquaStatus (..),

    -- ** AuthorizationStatus
    AuthorizationStatus (..),

    -- ** DataShareStatus
    DataShareStatus (..),

    -- ** DataShareStatusForConsumer
    DataShareStatusForConsumer (..),

    -- ** DataShareStatusForProducer
    DataShareStatusForProducer (..),

    -- ** Mode
    Mode (..),

    -- ** NodeConfigurationOptionsFilterName
    NodeConfigurationOptionsFilterName (..),

    -- ** OperatorType
    OperatorType (..),

    -- ** ParameterApplyType
    ParameterApplyType (..),

    -- ** PartnerIntegrationStatus
    PartnerIntegrationStatus (..),

    -- ** ReservedNodeOfferingType
    ReservedNodeOfferingType (..),

    -- ** ScheduleState
    ScheduleState (..),

    -- ** ScheduledActionFilterName
    ScheduledActionFilterName (..),

    -- ** ScheduledActionState
    ScheduledActionState (..),

    -- ** ScheduledActionTypeValues
    ScheduledActionTypeValues (..),

    -- ** SnapshotAttributeToSortBy
    SnapshotAttributeToSortBy (..),

    -- ** SortByOrder
    SortByOrder (..),

    -- ** SourceType
    SourceType (..),

    -- ** TableRestoreStatusType
    TableRestoreStatusType (..),

    -- ** UsageLimitBreachAction
    UsageLimitBreachAction (..),

    -- ** UsageLimitFeatureType
    UsageLimitFeatureType (..),

    -- ** UsageLimitLimitType
    UsageLimitLimitType (..),

    -- ** UsageLimitPeriod
    UsageLimitPeriod (..),

    -- ** AccountAttribute
    AccountAttribute (AccountAttribute'),
    newAccountAttribute,

    -- ** AccountWithRestoreAccess
    AccountWithRestoreAccess (AccountWithRestoreAccess'),
    newAccountWithRestoreAccess,

    -- ** AquaConfiguration
    AquaConfiguration (AquaConfiguration'),
    newAquaConfiguration,

    -- ** AttributeValueTarget
    AttributeValueTarget (AttributeValueTarget'),
    newAttributeValueTarget,

    -- ** AuthenticationProfile
    AuthenticationProfile (AuthenticationProfile'),
    newAuthenticationProfile,

    -- ** AvailabilityZone
    AvailabilityZone (AvailabilityZone'),
    newAvailabilityZone,

    -- ** Cluster
    Cluster (Cluster'),
    newCluster,

    -- ** ClusterAssociatedToSchedule
    ClusterAssociatedToSchedule (ClusterAssociatedToSchedule'),
    newClusterAssociatedToSchedule,

    -- ** ClusterDbRevision
    ClusterDbRevision (ClusterDbRevision'),
    newClusterDbRevision,

    -- ** ClusterIamRole
    ClusterIamRole (ClusterIamRole'),
    newClusterIamRole,

    -- ** ClusterNode
    ClusterNode (ClusterNode'),
    newClusterNode,

    -- ** ClusterParameterGroup
    ClusterParameterGroup (ClusterParameterGroup'),
    newClusterParameterGroup,

    -- ** ClusterParameterGroupNameMessage
    ClusterParameterGroupNameMessage (ClusterParameterGroupNameMessage'),
    newClusterParameterGroupNameMessage,

    -- ** ClusterParameterGroupStatus
    ClusterParameterGroupStatus (ClusterParameterGroupStatus'),
    newClusterParameterGroupStatus,

    -- ** ClusterParameterStatus
    ClusterParameterStatus (ClusterParameterStatus'),
    newClusterParameterStatus,

    -- ** ClusterSecurityGroup
    ClusterSecurityGroup (ClusterSecurityGroup'),
    newClusterSecurityGroup,

    -- ** ClusterSecurityGroupMembership
    ClusterSecurityGroupMembership (ClusterSecurityGroupMembership'),
    newClusterSecurityGroupMembership,

    -- ** ClusterSnapshotCopyStatus
    ClusterSnapshotCopyStatus (ClusterSnapshotCopyStatus'),
    newClusterSnapshotCopyStatus,

    -- ** ClusterSubnetGroup
    ClusterSubnetGroup (ClusterSubnetGroup'),
    newClusterSubnetGroup,

    -- ** ClusterVersion
    ClusterVersion (ClusterVersion'),
    newClusterVersion,

    -- ** DataShare
    DataShare (DataShare'),
    newDataShare,

    -- ** DataShareAssociation
    DataShareAssociation (DataShareAssociation'),
    newDataShareAssociation,

    -- ** DataTransferProgress
    DataTransferProgress (DataTransferProgress'),
    newDataTransferProgress,

    -- ** DefaultClusterParameters
    DefaultClusterParameters (DefaultClusterParameters'),
    newDefaultClusterParameters,

    -- ** DeferredMaintenanceWindow
    DeferredMaintenanceWindow (DeferredMaintenanceWindow'),
    newDeferredMaintenanceWindow,

    -- ** DeleteClusterSnapshotMessage
    DeleteClusterSnapshotMessage (DeleteClusterSnapshotMessage'),
    newDeleteClusterSnapshotMessage,

    -- ** EC2SecurityGroup
    EC2SecurityGroup (EC2SecurityGroup'),
    newEC2SecurityGroup,

    -- ** ElasticIpStatus
    ElasticIpStatus (ElasticIpStatus'),
    newElasticIpStatus,

    -- ** Endpoint
    Endpoint (Endpoint'),
    newEndpoint,

    -- ** EndpointAccess
    EndpointAccess (EndpointAccess'),
    newEndpointAccess,

    -- ** EndpointAuthorization
    EndpointAuthorization (EndpointAuthorization'),
    newEndpointAuthorization,

    -- ** Event
    Event (Event'),
    newEvent,

    -- ** EventCategoriesMap
    EventCategoriesMap (EventCategoriesMap'),
    newEventCategoriesMap,

    -- ** EventInfoMap
    EventInfoMap (EventInfoMap'),
    newEventInfoMap,

    -- ** EventSubscription
    EventSubscription (EventSubscription'),
    newEventSubscription,

    -- ** HsmClientCertificate
    HsmClientCertificate (HsmClientCertificate'),
    newHsmClientCertificate,

    -- ** HsmConfiguration
    HsmConfiguration (HsmConfiguration'),
    newHsmConfiguration,

    -- ** HsmStatus
    HsmStatus (HsmStatus'),
    newHsmStatus,

    -- ** IPRange
    IPRange (IPRange'),
    newIPRange,

    -- ** LoggingStatus
    LoggingStatus (LoggingStatus'),
    newLoggingStatus,

    -- ** MaintenanceTrack
    MaintenanceTrack (MaintenanceTrack'),
    newMaintenanceTrack,

    -- ** NetworkInterface
    NetworkInterface (NetworkInterface'),
    newNetworkInterface,

    -- ** NodeConfigurationOption
    NodeConfigurationOption (NodeConfigurationOption'),
    newNodeConfigurationOption,

    -- ** NodeConfigurationOptionsFilter
    NodeConfigurationOptionsFilter (NodeConfigurationOptionsFilter'),
    newNodeConfigurationOptionsFilter,

    -- ** OrderableClusterOption
    OrderableClusterOption (OrderableClusterOption'),
    newOrderableClusterOption,

    -- ** Parameter
    Parameter (Parameter'),
    newParameter,

    -- ** PartnerIntegrationInfo
    PartnerIntegrationInfo (PartnerIntegrationInfo'),
    newPartnerIntegrationInfo,

    -- ** PartnerIntegrationInputMessage
    PartnerIntegrationInputMessage (PartnerIntegrationInputMessage'),
    newPartnerIntegrationInputMessage,

    -- ** PartnerIntegrationOutputMessage
    PartnerIntegrationOutputMessage (PartnerIntegrationOutputMessage'),
    newPartnerIntegrationOutputMessage,

    -- ** PauseClusterMessage
    PauseClusterMessage (PauseClusterMessage'),
    newPauseClusterMessage,

    -- ** PendingModifiedValues
    PendingModifiedValues (PendingModifiedValues'),
    newPendingModifiedValues,

    -- ** RecurringCharge
    RecurringCharge (RecurringCharge'),
    newRecurringCharge,

    -- ** ReservedNode
    ReservedNode (ReservedNode'),
    newReservedNode,

    -- ** ReservedNodeOffering
    ReservedNodeOffering (ReservedNodeOffering'),
    newReservedNodeOffering,

    -- ** ResizeClusterMessage
    ResizeClusterMessage (ResizeClusterMessage'),
    newResizeClusterMessage,

    -- ** ResizeInfo
    ResizeInfo (ResizeInfo'),
    newResizeInfo,

    -- ** ResizeProgressMessage
    ResizeProgressMessage (ResizeProgressMessage'),
    newResizeProgressMessage,

    -- ** RestoreStatus
    RestoreStatus (RestoreStatus'),
    newRestoreStatus,

    -- ** ResumeClusterMessage
    ResumeClusterMessage (ResumeClusterMessage'),
    newResumeClusterMessage,

    -- ** RevisionTarget
    RevisionTarget (RevisionTarget'),
    newRevisionTarget,

    -- ** ScheduledAction
    ScheduledAction (ScheduledAction'),
    newScheduledAction,

    -- ** ScheduledActionFilter
    ScheduledActionFilter (ScheduledActionFilter'),
    newScheduledActionFilter,

    -- ** ScheduledActionType
    ScheduledActionType (ScheduledActionType'),
    newScheduledActionType,

    -- ** Snapshot
    Snapshot (Snapshot'),
    newSnapshot,

    -- ** SnapshotCopyGrant
    SnapshotCopyGrant (SnapshotCopyGrant'),
    newSnapshotCopyGrant,

    -- ** SnapshotErrorMessage
    SnapshotErrorMessage (SnapshotErrorMessage'),
    newSnapshotErrorMessage,

    -- ** SnapshotSchedule
    SnapshotSchedule (SnapshotSchedule'),
    newSnapshotSchedule,

    -- ** SnapshotSortingEntity
    SnapshotSortingEntity (SnapshotSortingEntity'),
    newSnapshotSortingEntity,

    -- ** Subnet
    Subnet (Subnet'),
    newSubnet,

    -- ** SupportedOperation
    SupportedOperation (SupportedOperation'),
    newSupportedOperation,

    -- ** SupportedPlatform
    SupportedPlatform (SupportedPlatform'),
    newSupportedPlatform,

    -- ** TableRestoreStatus
    TableRestoreStatus (TableRestoreStatus'),
    newTableRestoreStatus,

    -- ** Tag
    Tag (Tag'),
    newTag,

    -- ** TaggedResource
    TaggedResource (TaggedResource'),
    newTaggedResource,

    -- ** UpdateTarget
    UpdateTarget (UpdateTarget'),
    newUpdateTarget,

    -- ** UsageLimit
    UsageLimit (UsageLimit'),
    newUsageLimit,

    -- ** VpcEndpoint
    VpcEndpoint (VpcEndpoint'),
    newVpcEndpoint,

    -- ** VpcSecurityGroupMembership
    VpcSecurityGroupMembership (VpcSecurityGroupMembership'),
    newVpcSecurityGroupMembership,
  )
where

import Network.AWS.Redshift.AcceptReservedNodeExchange
import Network.AWS.Redshift.AddPartner
import Network.AWS.Redshift.AssociateDataShareConsumer
import Network.AWS.Redshift.AuthorizeClusterSecurityGroupIngress
import Network.AWS.Redshift.AuthorizeDataShare
import Network.AWS.Redshift.AuthorizeEndpointAccess
import Network.AWS.Redshift.AuthorizeSnapshotAccess
import Network.AWS.Redshift.BatchDeleteClusterSnapshots
import Network.AWS.Redshift.BatchModifyClusterSnapshots
import Network.AWS.Redshift.CancelResize
import Network.AWS.Redshift.CopyClusterSnapshot
import Network.AWS.Redshift.CreateAuthenticationProfile
import Network.AWS.Redshift.CreateCluster
import Network.AWS.Redshift.CreateClusterParameterGroup
import Network.AWS.Redshift.CreateClusterSecurityGroup
import Network.AWS.Redshift.CreateClusterSnapshot
import Network.AWS.Redshift.CreateClusterSubnetGroup
import Network.AWS.Redshift.CreateEndpointAccess
import Network.AWS.Redshift.CreateEventSubscription
import Network.AWS.Redshift.CreateHsmClientCertificate
import Network.AWS.Redshift.CreateHsmConfiguration
import Network.AWS.Redshift.CreateScheduledAction
import Network.AWS.Redshift.CreateSnapshotCopyGrant
import Network.AWS.Redshift.CreateSnapshotSchedule
import Network.AWS.Redshift.CreateTags
import Network.AWS.Redshift.CreateUsageLimit
import Network.AWS.Redshift.DeauthorizeDataShare
import Network.AWS.Redshift.DeleteAuthenticationProfile
import Network.AWS.Redshift.DeleteCluster
import Network.AWS.Redshift.DeleteClusterParameterGroup
import Network.AWS.Redshift.DeleteClusterSecurityGroup
import Network.AWS.Redshift.DeleteClusterSnapshot
import Network.AWS.Redshift.DeleteClusterSubnetGroup
import Network.AWS.Redshift.DeleteEndpointAccess
import Network.AWS.Redshift.DeleteEventSubscription
import Network.AWS.Redshift.DeleteHsmClientCertificate
import Network.AWS.Redshift.DeleteHsmConfiguration
import Network.AWS.Redshift.DeletePartner
import Network.AWS.Redshift.DeleteScheduledAction
import Network.AWS.Redshift.DeleteSnapshotCopyGrant
import Network.AWS.Redshift.DeleteSnapshotSchedule
import Network.AWS.Redshift.DeleteTags
import Network.AWS.Redshift.DeleteUsageLimit
import Network.AWS.Redshift.DescribeAccountAttributes
import Network.AWS.Redshift.DescribeAuthenticationProfiles
import Network.AWS.Redshift.DescribeClusterDbRevisions
import Network.AWS.Redshift.DescribeClusterParameterGroups
import Network.AWS.Redshift.DescribeClusterParameters
import Network.AWS.Redshift.DescribeClusterSecurityGroups
import Network.AWS.Redshift.DescribeClusterSnapshots
import Network.AWS.Redshift.DescribeClusterSubnetGroups
import Network.AWS.Redshift.DescribeClusterTracks
import Network.AWS.Redshift.DescribeClusterVersions
import Network.AWS.Redshift.DescribeClusters
import Network.AWS.Redshift.DescribeDataShares
import Network.AWS.Redshift.DescribeDataSharesForConsumer
import Network.AWS.Redshift.DescribeDataSharesForProducer
import Network.AWS.Redshift.DescribeDefaultClusterParameters
import Network.AWS.Redshift.DescribeEndpointAccess
import Network.AWS.Redshift.DescribeEndpointAuthorization
import Network.AWS.Redshift.DescribeEventCategories
import Network.AWS.Redshift.DescribeEventSubscriptions
import Network.AWS.Redshift.DescribeEvents
import Network.AWS.Redshift.DescribeHsmClientCertificates
import Network.AWS.Redshift.DescribeHsmConfigurations
import Network.AWS.Redshift.DescribeLoggingStatus
import Network.AWS.Redshift.DescribeNodeConfigurationOptions
import Network.AWS.Redshift.DescribeOrderableClusterOptions
import Network.AWS.Redshift.DescribePartners
import Network.AWS.Redshift.DescribeReservedNodeOfferings
import Network.AWS.Redshift.DescribeReservedNodes
import Network.AWS.Redshift.DescribeResize
import Network.AWS.Redshift.DescribeScheduledActions
import Network.AWS.Redshift.DescribeSnapshotCopyGrants
import Network.AWS.Redshift.DescribeSnapshotSchedules
import Network.AWS.Redshift.DescribeStorage
import Network.AWS.Redshift.DescribeTableRestoreStatus
import Network.AWS.Redshift.DescribeTags
import Network.AWS.Redshift.DescribeUsageLimits
import Network.AWS.Redshift.DisableLogging
import Network.AWS.Redshift.DisableSnapshotCopy
import Network.AWS.Redshift.DisassociateDataShareConsumer
import Network.AWS.Redshift.EnableLogging
import Network.AWS.Redshift.EnableSnapshotCopy
import Network.AWS.Redshift.GetClusterCredentials
import Network.AWS.Redshift.GetReservedNodeExchangeOfferings
import Network.AWS.Redshift.Internal
import Network.AWS.Redshift.Lens
import Network.AWS.Redshift.ModifyAquaConfiguration
import Network.AWS.Redshift.ModifyAuthenticationProfile
import Network.AWS.Redshift.ModifyCluster
import Network.AWS.Redshift.ModifyClusterDbRevision
import Network.AWS.Redshift.ModifyClusterIamRoles
import Network.AWS.Redshift.ModifyClusterMaintenance
import Network.AWS.Redshift.ModifyClusterParameterGroup
import Network.AWS.Redshift.ModifyClusterSnapshot
import Network.AWS.Redshift.ModifyClusterSnapshotSchedule
import Network.AWS.Redshift.ModifyClusterSubnetGroup
import Network.AWS.Redshift.ModifyEndpointAccess
import Network.AWS.Redshift.ModifyEventSubscription
import Network.AWS.Redshift.ModifyScheduledAction
import Network.AWS.Redshift.ModifySnapshotCopyRetentionPeriod
import Network.AWS.Redshift.ModifySnapshotSchedule
import Network.AWS.Redshift.ModifyUsageLimit
import Network.AWS.Redshift.PauseCluster
import Network.AWS.Redshift.PurchaseReservedNodeOffering
import Network.AWS.Redshift.RebootCluster
import Network.AWS.Redshift.RejectDataShare
import Network.AWS.Redshift.ResetClusterParameterGroup
import Network.AWS.Redshift.ResizeCluster
import Network.AWS.Redshift.RestoreFromClusterSnapshot
import Network.AWS.Redshift.RestoreTableFromClusterSnapshot
import Network.AWS.Redshift.ResumeCluster
import Network.AWS.Redshift.RevokeClusterSecurityGroupIngress
import Network.AWS.Redshift.RevokeEndpointAccess
import Network.AWS.Redshift.RevokeSnapshotAccess
import Network.AWS.Redshift.RotateEncryptionKey
import Network.AWS.Redshift.Types
import Network.AWS.Redshift.UpdatePartnerStatus
import Network.AWS.Redshift.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'Redshift'.

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
