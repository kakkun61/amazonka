{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Lens
  ( -- * Operations

    -- ** StartMigration
    startMigration_replicationGroupId,
    startMigration_customerNodeEndpointList,
    startMigrationResponse_replicationGroup,
    startMigrationResponse_httpStatus,

    -- ** DeleteCacheSecurityGroup
    deleteCacheSecurityGroup_cacheSecurityGroupName,

    -- ** CreateReplicationGroup
    createReplicationGroup_automaticFailoverEnabled,
    createReplicationGroup_engineVersion,
    createReplicationGroup_cacheNodeType,
    createReplicationGroup_nodeGroupConfiguration,
    createReplicationGroup_atRestEncryptionEnabled,
    createReplicationGroup_securityGroupIds,
    createReplicationGroup_snapshotArns,
    createReplicationGroup_autoMinorVersionUpgrade,
    createReplicationGroup_cacheParameterGroupName,
    createReplicationGroup_transitEncryptionEnabled,
    createReplicationGroup_userGroupIds,
    createReplicationGroup_snapshotWindow,
    createReplicationGroup_logDeliveryConfigurations,
    createReplicationGroup_authToken,
    createReplicationGroup_primaryClusterId,
    createReplicationGroup_engine,
    createReplicationGroup_preferredMaintenanceWindow,
    createReplicationGroup_kmsKeyId,
    createReplicationGroup_multiAZEnabled,
    createReplicationGroup_cacheSubnetGroupName,
    createReplicationGroup_numNodeGroups,
    createReplicationGroup_snapshotRetentionLimit,
    createReplicationGroup_globalReplicationGroupId,
    createReplicationGroup_replicasPerNodeGroup,
    createReplicationGroup_numCacheClusters,
    createReplicationGroup_preferredCacheClusterAZs,
    createReplicationGroup_snapshotName,
    createReplicationGroup_notificationTopicArn,
    createReplicationGroup_tags,
    createReplicationGroup_port,
    createReplicationGroup_cacheSecurityGroupNames,
    createReplicationGroup_replicationGroupId,
    createReplicationGroup_replicationGroupDescription,
    createReplicationGroupResponse_replicationGroup,
    createReplicationGroupResponse_httpStatus,

    -- ** DeleteCacheCluster
    deleteCacheCluster_finalSnapshotIdentifier,
    deleteCacheCluster_cacheClusterId,
    deleteCacheClusterResponse_cacheCluster,
    deleteCacheClusterResponse_httpStatus,

    -- ** IncreaseNodeGroupsInGlobalReplicationGroup
    increaseNodeGroupsInGlobalReplicationGroup_regionalConfigurations,
    increaseNodeGroupsInGlobalReplicationGroup_globalReplicationGroupId,
    increaseNodeGroupsInGlobalReplicationGroup_nodeGroupCount,
    increaseNodeGroupsInGlobalReplicationGroup_applyImmediately,
    increaseNodeGroupsInGlobalReplicationGroupResponse_globalReplicationGroup,
    increaseNodeGroupsInGlobalReplicationGroupResponse_httpStatus,

    -- ** DescribeUsers
    describeUsers_filters,
    describeUsers_engine,
    describeUsers_userId,
    describeUsers_marker,
    describeUsers_maxRecords,
    describeUsersResponse_users,
    describeUsersResponse_marker,
    describeUsersResponse_httpStatus,

    -- ** RebootCacheCluster
    rebootCacheCluster_cacheClusterId,
    rebootCacheCluster_cacheNodeIdsToReboot,
    rebootCacheClusterResponse_cacheCluster,
    rebootCacheClusterResponse_httpStatus,

    -- ** CreateUserGroup
    createUserGroup_userIds,
    createUserGroup_tags,
    createUserGroup_userGroupId,
    createUserGroup_engine,
    userGroup_status,
    userGroup_userIds,
    userGroup_arn,
    userGroup_userGroupId,
    userGroup_engine,
    userGroup_pendingChanges,
    userGroup_replicationGroups,

    -- ** RevokeCacheSecurityGroupIngress
    revokeCacheSecurityGroupIngress_cacheSecurityGroupName,
    revokeCacheSecurityGroupIngress_eC2SecurityGroupName,
    revokeCacheSecurityGroupIngress_eC2SecurityGroupOwnerId,
    revokeCacheSecurityGroupIngressResponse_cacheSecurityGroup,
    revokeCacheSecurityGroupIngressResponse_httpStatus,

    -- ** CreateCacheCluster
    createCacheCluster_engineVersion,
    createCacheCluster_cacheNodeType,
    createCacheCluster_securityGroupIds,
    createCacheCluster_snapshotArns,
    createCacheCluster_autoMinorVersionUpgrade,
    createCacheCluster_outpostMode,
    createCacheCluster_cacheParameterGroupName,
    createCacheCluster_snapshotWindow,
    createCacheCluster_logDeliveryConfigurations,
    createCacheCluster_authToken,
    createCacheCluster_engine,
    createCacheCluster_preferredAvailabilityZones,
    createCacheCluster_preferredMaintenanceWindow,
    createCacheCluster_cacheSubnetGroupName,
    createCacheCluster_preferredAvailabilityZone,
    createCacheCluster_snapshotRetentionLimit,
    createCacheCluster_preferredOutpostArns,
    createCacheCluster_aZMode,
    createCacheCluster_snapshotName,
    createCacheCluster_preferredOutpostArn,
    createCacheCluster_replicationGroupId,
    createCacheCluster_notificationTopicArn,
    createCacheCluster_numCacheNodes,
    createCacheCluster_tags,
    createCacheCluster_port,
    createCacheCluster_cacheSecurityGroupNames,
    createCacheCluster_cacheClusterId,
    createCacheClusterResponse_cacheCluster,
    createCacheClusterResponse_httpStatus,

    -- ** DescribeEvents
    describeEvents_startTime,
    describeEvents_sourceType,
    describeEvents_sourceIdentifier,
    describeEvents_marker,
    describeEvents_maxRecords,
    describeEvents_endTime,
    describeEvents_duration,
    describeEventsResponse_events,
    describeEventsResponse_marker,
    describeEventsResponse_httpStatus,

    -- ** DescribeEngineDefaultParameters
    describeEngineDefaultParameters_marker,
    describeEngineDefaultParameters_maxRecords,
    describeEngineDefaultParameters_cacheParameterGroupFamily,
    describeEngineDefaultParametersResponse_httpStatus,
    describeEngineDefaultParametersResponse_engineDefaults,

    -- ** DisassociateGlobalReplicationGroup
    disassociateGlobalReplicationGroup_globalReplicationGroupId,
    disassociateGlobalReplicationGroup_replicationGroupId,
    disassociateGlobalReplicationGroup_replicationGroupRegion,
    disassociateGlobalReplicationGroupResponse_globalReplicationGroup,
    disassociateGlobalReplicationGroupResponse_httpStatus,

    -- ** ModifyCacheParameterGroup
    modifyCacheParameterGroup_cacheParameterGroupName,
    modifyCacheParameterGroup_parameterNameValues,
    cacheParameterGroupNameMessage_cacheParameterGroupName,

    -- ** TestFailover
    testFailover_replicationGroupId,
    testFailover_nodeGroupId,
    testFailoverResponse_replicationGroup,
    testFailoverResponse_httpStatus,

    -- ** DeleteReplicationGroup
    deleteReplicationGroup_finalSnapshotIdentifier,
    deleteReplicationGroup_retainPrimaryCluster,
    deleteReplicationGroup_replicationGroupId,
    deleteReplicationGroupResponse_replicationGroup,
    deleteReplicationGroupResponse_httpStatus,

    -- ** ListTagsForResource
    listTagsForResource_resourceName,
    tagListMessage_tagList,

    -- ** CompleteMigration
    completeMigration_force,
    completeMigration_replicationGroupId,
    completeMigrationResponse_replicationGroup,
    completeMigrationResponse_httpStatus,

    -- ** DescribeCacheClusters
    describeCacheClusters_showCacheClustersNotInReplicationGroups,
    describeCacheClusters_cacheClusterId,
    describeCacheClusters_marker,
    describeCacheClusters_maxRecords,
    describeCacheClusters_showCacheNodeInfo,
    describeCacheClustersResponse_cacheClusters,
    describeCacheClustersResponse_marker,
    describeCacheClustersResponse_httpStatus,

    -- ** PurchaseReservedCacheNodesOffering
    purchaseReservedCacheNodesOffering_cacheNodeCount,
    purchaseReservedCacheNodesOffering_reservedCacheNodeId,
    purchaseReservedCacheNodesOffering_tags,
    purchaseReservedCacheNodesOffering_reservedCacheNodesOfferingId,
    purchaseReservedCacheNodesOfferingResponse_reservedCacheNode,
    purchaseReservedCacheNodesOfferingResponse_httpStatus,

    -- ** RemoveTagsFromResource
    removeTagsFromResource_resourceName,
    removeTagsFromResource_tagKeys,
    tagListMessage_tagList,

    -- ** ModifyReplicationGroup
    modifyReplicationGroup_automaticFailoverEnabled,
    modifyReplicationGroup_engineVersion,
    modifyReplicationGroup_cacheNodeType,
    modifyReplicationGroup_snapshottingClusterId,
    modifyReplicationGroup_securityGroupIds,
    modifyReplicationGroup_autoMinorVersionUpgrade,
    modifyReplicationGroup_cacheParameterGroupName,
    modifyReplicationGroup_replicationGroupDescription,
    modifyReplicationGroup_snapshotWindow,
    modifyReplicationGroup_logDeliveryConfigurations,
    modifyReplicationGroup_authToken,
    modifyReplicationGroup_primaryClusterId,
    modifyReplicationGroup_preferredMaintenanceWindow,
    modifyReplicationGroup_multiAZEnabled,
    modifyReplicationGroup_userGroupIdsToAdd,
    modifyReplicationGroup_nodeGroupId,
    modifyReplicationGroup_snapshotRetentionLimit,
    modifyReplicationGroup_userGroupIdsToRemove,
    modifyReplicationGroup_notificationTopicStatus,
    modifyReplicationGroup_applyImmediately,
    modifyReplicationGroup_removeUserGroups,
    modifyReplicationGroup_authTokenUpdateStrategy,
    modifyReplicationGroup_notificationTopicArn,
    modifyReplicationGroup_cacheSecurityGroupNames,
    modifyReplicationGroup_replicationGroupId,
    modifyReplicationGroupResponse_replicationGroup,
    modifyReplicationGroupResponse_httpStatus,

    -- ** DescribeCacheParameters
    describeCacheParameters_marker,
    describeCacheParameters_maxRecords,
    describeCacheParameters_source,
    describeCacheParameters_cacheParameterGroupName,
    describeCacheParametersResponse_cacheNodeTypeSpecificParameters,
    describeCacheParametersResponse_marker,
    describeCacheParametersResponse_parameters,
    describeCacheParametersResponse_httpStatus,

    -- ** DescribeGlobalReplicationGroups
    describeGlobalReplicationGroups_showMemberInfo,
    describeGlobalReplicationGroups_marker,
    describeGlobalReplicationGroups_maxRecords,
    describeGlobalReplicationGroups_globalReplicationGroupId,
    describeGlobalReplicationGroupsResponse_marker,
    describeGlobalReplicationGroupsResponse_globalReplicationGroups,
    describeGlobalReplicationGroupsResponse_httpStatus,

    -- ** DescribeCacheSubnetGroups
    describeCacheSubnetGroups_cacheSubnetGroupName,
    describeCacheSubnetGroups_marker,
    describeCacheSubnetGroups_maxRecords,
    describeCacheSubnetGroupsResponse_marker,
    describeCacheSubnetGroupsResponse_cacheSubnetGroups,
    describeCacheSubnetGroupsResponse_httpStatus,

    -- ** DescribeUpdateActions
    describeUpdateActions_cacheClusterIds,
    describeUpdateActions_serviceUpdateName,
    describeUpdateActions_updateActionStatus,
    describeUpdateActions_engine,
    describeUpdateActions_serviceUpdateTimeRange,
    describeUpdateActions_marker,
    describeUpdateActions_maxRecords,
    describeUpdateActions_replicationGroupIds,
    describeUpdateActions_showNodeLevelUpdateStatus,
    describeUpdateActions_serviceUpdateStatus,
    describeUpdateActionsResponse_updateActions,
    describeUpdateActionsResponse_marker,
    describeUpdateActionsResponse_httpStatus,

    -- ** RebalanceSlotsInGlobalReplicationGroup
    rebalanceSlotsInGlobalReplicationGroup_globalReplicationGroupId,
    rebalanceSlotsInGlobalReplicationGroup_applyImmediately,
    rebalanceSlotsInGlobalReplicationGroupResponse_globalReplicationGroup,
    rebalanceSlotsInGlobalReplicationGroupResponse_httpStatus,

    -- ** CreateCacheSecurityGroup
    createCacheSecurityGroup_tags,
    createCacheSecurityGroup_cacheSecurityGroupName,
    createCacheSecurityGroup_description,
    createCacheSecurityGroupResponse_cacheSecurityGroup,
    createCacheSecurityGroupResponse_httpStatus,

    -- ** DecreaseReplicaCount
    decreaseReplicaCount_newReplicaCount,
    decreaseReplicaCount_replicaConfiguration,
    decreaseReplicaCount_replicasToRemove,
    decreaseReplicaCount_replicationGroupId,
    decreaseReplicaCount_applyImmediately,
    decreaseReplicaCountResponse_replicationGroup,
    decreaseReplicaCountResponse_httpStatus,

    -- ** AddTagsToResource
    addTagsToResource_resourceName,
    addTagsToResource_tags,
    tagListMessage_tagList,

    -- ** AuthorizeCacheSecurityGroupIngress
    authorizeCacheSecurityGroupIngress_cacheSecurityGroupName,
    authorizeCacheSecurityGroupIngress_eC2SecurityGroupName,
    authorizeCacheSecurityGroupIngress_eC2SecurityGroupOwnerId,
    authorizeCacheSecurityGroupIngressResponse_cacheSecurityGroup,
    authorizeCacheSecurityGroupIngressResponse_httpStatus,

    -- ** CopySnapshot
    copySnapshot_targetBucket,
    copySnapshot_kmsKeyId,
    copySnapshot_tags,
    copySnapshot_sourceSnapshotName,
    copySnapshot_targetSnapshotName,
    copySnapshotResponse_snapshot,
    copySnapshotResponse_httpStatus,

    -- ** FailoverGlobalReplicationGroup
    failoverGlobalReplicationGroup_globalReplicationGroupId,
    failoverGlobalReplicationGroup_primaryRegion,
    failoverGlobalReplicationGroup_primaryReplicationGroupId,
    failoverGlobalReplicationGroupResponse_globalReplicationGroup,
    failoverGlobalReplicationGroupResponse_httpStatus,

    -- ** CreateCacheSubnetGroup
    createCacheSubnetGroup_tags,
    createCacheSubnetGroup_cacheSubnetGroupName,
    createCacheSubnetGroup_cacheSubnetGroupDescription,
    createCacheSubnetGroup_subnetIds,
    createCacheSubnetGroupResponse_cacheSubnetGroup,
    createCacheSubnetGroupResponse_httpStatus,

    -- ** CreateGlobalReplicationGroup
    createGlobalReplicationGroup_globalReplicationGroupDescription,
    createGlobalReplicationGroup_globalReplicationGroupIdSuffix,
    createGlobalReplicationGroup_primaryReplicationGroupId,
    createGlobalReplicationGroupResponse_globalReplicationGroup,
    createGlobalReplicationGroupResponse_httpStatus,

    -- ** DescribeCacheParameterGroups
    describeCacheParameterGroups_cacheParameterGroupName,
    describeCacheParameterGroups_marker,
    describeCacheParameterGroups_maxRecords,
    describeCacheParameterGroupsResponse_cacheParameterGroups,
    describeCacheParameterGroupsResponse_marker,
    describeCacheParameterGroupsResponse_httpStatus,

    -- ** ResetCacheParameterGroup
    resetCacheParameterGroup_resetAllParameters,
    resetCacheParameterGroup_parameterNameValues,
    resetCacheParameterGroup_cacheParameterGroupName,
    cacheParameterGroupNameMessage_cacheParameterGroupName,

    -- ** ListAllowedNodeTypeModifications
    listAllowedNodeTypeModifications_cacheClusterId,
    listAllowedNodeTypeModifications_replicationGroupId,
    listAllowedNodeTypeModificationsResponse_scaleUpModifications,
    listAllowedNodeTypeModificationsResponse_scaleDownModifications,
    listAllowedNodeTypeModificationsResponse_httpStatus,

    -- ** IncreaseReplicaCount
    increaseReplicaCount_newReplicaCount,
    increaseReplicaCount_replicaConfiguration,
    increaseReplicaCount_replicationGroupId,
    increaseReplicaCount_applyImmediately,
    increaseReplicaCountResponse_replicationGroup,
    increaseReplicaCountResponse_httpStatus,

    -- ** ModifyReplicationGroupShardConfiguration
    modifyReplicationGroupShardConfiguration_nodeGroupsToRetain,
    modifyReplicationGroupShardConfiguration_reshardingConfiguration,
    modifyReplicationGroupShardConfiguration_nodeGroupsToRemove,
    modifyReplicationGroupShardConfiguration_replicationGroupId,
    modifyReplicationGroupShardConfiguration_nodeGroupCount,
    modifyReplicationGroupShardConfiguration_applyImmediately,
    modifyReplicationGroupShardConfigurationResponse_replicationGroup,
    modifyReplicationGroupShardConfigurationResponse_httpStatus,

    -- ** BatchApplyUpdateAction
    batchApplyUpdateAction_cacheClusterIds,
    batchApplyUpdateAction_replicationGroupIds,
    batchApplyUpdateAction_serviceUpdateName,
    updateActionResultsMessage_unprocessedUpdateActions,
    updateActionResultsMessage_processedUpdateActions,

    -- ** DeleteUserGroup
    deleteUserGroup_userGroupId,
    userGroup_status,
    userGroup_userIds,
    userGroup_arn,
    userGroup_userGroupId,
    userGroup_engine,
    userGroup_pendingChanges,
    userGroup_replicationGroups,

    -- ** DescribeServiceUpdates
    describeServiceUpdates_serviceUpdateName,
    describeServiceUpdates_marker,
    describeServiceUpdates_maxRecords,
    describeServiceUpdates_serviceUpdateStatus,
    describeServiceUpdatesResponse_serviceUpdates,
    describeServiceUpdatesResponse_marker,
    describeServiceUpdatesResponse_httpStatus,

    -- ** DescribeSnapshots
    describeSnapshots_cacheClusterId,
    describeSnapshots_marker,
    describeSnapshots_maxRecords,
    describeSnapshots_snapshotName,
    describeSnapshots_showNodeGroupConfig,
    describeSnapshots_replicationGroupId,
    describeSnapshots_snapshotSource,
    describeSnapshotsResponse_snapshots,
    describeSnapshotsResponse_marker,
    describeSnapshotsResponse_httpStatus,

    -- ** DescribeReplicationGroups
    describeReplicationGroups_marker,
    describeReplicationGroups_maxRecords,
    describeReplicationGroups_replicationGroupId,
    describeReplicationGroupsResponse_marker,
    describeReplicationGroupsResponse_replicationGroups,
    describeReplicationGroupsResponse_httpStatus,

    -- ** CreateUser
    createUser_passwords,
    createUser_noPasswordRequired,
    createUser_tags,
    createUser_userId,
    createUser_userName,
    createUser_engine,
    createUser_accessString,
    user_status,
    user_arn,
    user_userGroupIds,
    user_authentication,
    user_engine,
    user_userName,
    user_accessString,
    user_userId,

    -- ** DeleteSnapshot
    deleteSnapshot_snapshotName,
    deleteSnapshotResponse_snapshot,
    deleteSnapshotResponse_httpStatus,

    -- ** DescribeReservedCacheNodesOfferings
    describeReservedCacheNodesOfferings_cacheNodeType,
    describeReservedCacheNodesOfferings_productDescription,
    describeReservedCacheNodesOfferings_marker,
    describeReservedCacheNodesOfferings_maxRecords,
    describeReservedCacheNodesOfferings_offeringType,
    describeReservedCacheNodesOfferings_duration,
    describeReservedCacheNodesOfferings_reservedCacheNodesOfferingId,
    describeReservedCacheNodesOfferingsResponse_marker,
    describeReservedCacheNodesOfferingsResponse_reservedCacheNodesOfferings,
    describeReservedCacheNodesOfferingsResponse_httpStatus,

    -- ** ModifyCacheSubnetGroup
    modifyCacheSubnetGroup_subnetIds,
    modifyCacheSubnetGroup_cacheSubnetGroupDescription,
    modifyCacheSubnetGroup_cacheSubnetGroupName,
    modifyCacheSubnetGroupResponse_cacheSubnetGroup,
    modifyCacheSubnetGroupResponse_httpStatus,

    -- ** DeleteUser
    deleteUser_userId,
    user_status,
    user_arn,
    user_userGroupIds,
    user_authentication,
    user_engine,
    user_userName,
    user_accessString,
    user_userId,

    -- ** CreateSnapshot
    createSnapshot_cacheClusterId,
    createSnapshot_kmsKeyId,
    createSnapshot_replicationGroupId,
    createSnapshot_tags,
    createSnapshot_snapshotName,
    createSnapshotResponse_snapshot,
    createSnapshotResponse_httpStatus,

    -- ** ModifyGlobalReplicationGroup
    modifyGlobalReplicationGroup_automaticFailoverEnabled,
    modifyGlobalReplicationGroup_engineVersion,
    modifyGlobalReplicationGroup_cacheNodeType,
    modifyGlobalReplicationGroup_cacheParameterGroupName,
    modifyGlobalReplicationGroup_globalReplicationGroupDescription,
    modifyGlobalReplicationGroup_globalReplicationGroupId,
    modifyGlobalReplicationGroup_applyImmediately,
    modifyGlobalReplicationGroupResponse_globalReplicationGroup,
    modifyGlobalReplicationGroupResponse_httpStatus,

    -- ** DescribeUserGroups
    describeUserGroups_userGroupId,
    describeUserGroups_marker,
    describeUserGroups_maxRecords,
    describeUserGroupsResponse_userGroups,
    describeUserGroupsResponse_marker,
    describeUserGroupsResponse_httpStatus,

    -- ** DeleteCacheParameterGroup
    deleteCacheParameterGroup_cacheParameterGroupName,

    -- ** DescribeCacheSecurityGroups
    describeCacheSecurityGroups_cacheSecurityGroupName,
    describeCacheSecurityGroups_marker,
    describeCacheSecurityGroups_maxRecords,
    describeCacheSecurityGroupsResponse_cacheSecurityGroups,
    describeCacheSecurityGroupsResponse_marker,
    describeCacheSecurityGroupsResponse_httpStatus,

    -- ** BatchStopUpdateAction
    batchStopUpdateAction_cacheClusterIds,
    batchStopUpdateAction_replicationGroupIds,
    batchStopUpdateAction_serviceUpdateName,
    updateActionResultsMessage_unprocessedUpdateActions,
    updateActionResultsMessage_processedUpdateActions,

    -- ** ModifyCacheCluster
    modifyCacheCluster_engineVersion,
    modifyCacheCluster_cacheNodeType,
    modifyCacheCluster_securityGroupIds,
    modifyCacheCluster_autoMinorVersionUpgrade,
    modifyCacheCluster_cacheParameterGroupName,
    modifyCacheCluster_snapshotWindow,
    modifyCacheCluster_newAvailabilityZones,
    modifyCacheCluster_logDeliveryConfigurations,
    modifyCacheCluster_authToken,
    modifyCacheCluster_preferredMaintenanceWindow,
    modifyCacheCluster_cacheNodeIdsToRemove,
    modifyCacheCluster_snapshotRetentionLimit,
    modifyCacheCluster_notificationTopicStatus,
    modifyCacheCluster_aZMode,
    modifyCacheCluster_applyImmediately,
    modifyCacheCluster_authTokenUpdateStrategy,
    modifyCacheCluster_notificationTopicArn,
    modifyCacheCluster_numCacheNodes,
    modifyCacheCluster_cacheSecurityGroupNames,
    modifyCacheCluster_cacheClusterId,
    modifyCacheClusterResponse_cacheCluster,
    modifyCacheClusterResponse_httpStatus,

    -- ** DescribeCacheEngineVersions
    describeCacheEngineVersions_engineVersion,
    describeCacheEngineVersions_cacheParameterGroupFamily,
    describeCacheEngineVersions_defaultOnly,
    describeCacheEngineVersions_engine,
    describeCacheEngineVersions_marker,
    describeCacheEngineVersions_maxRecords,
    describeCacheEngineVersionsResponse_cacheEngineVersions,
    describeCacheEngineVersionsResponse_marker,
    describeCacheEngineVersionsResponse_httpStatus,

    -- ** ModifyUserGroup
    modifyUserGroup_userIdsToAdd,
    modifyUserGroup_userIdsToRemove,
    modifyUserGroup_userGroupId,
    userGroup_status,
    userGroup_userIds,
    userGroup_arn,
    userGroup_userGroupId,
    userGroup_engine,
    userGroup_pendingChanges,
    userGroup_replicationGroups,

    -- ** CreateCacheParameterGroup
    createCacheParameterGroup_tags,
    createCacheParameterGroup_cacheParameterGroupName,
    createCacheParameterGroup_cacheParameterGroupFamily,
    createCacheParameterGroup_description,
    createCacheParameterGroupResponse_cacheParameterGroup,
    createCacheParameterGroupResponse_httpStatus,

    -- ** DescribeReservedCacheNodes
    describeReservedCacheNodes_cacheNodeType,
    describeReservedCacheNodes_productDescription,
    describeReservedCacheNodes_marker,
    describeReservedCacheNodes_maxRecords,
    describeReservedCacheNodes_reservedCacheNodeId,
    describeReservedCacheNodes_offeringType,
    describeReservedCacheNodes_duration,
    describeReservedCacheNodes_reservedCacheNodesOfferingId,
    describeReservedCacheNodesResponse_marker,
    describeReservedCacheNodesResponse_reservedCacheNodes,
    describeReservedCacheNodesResponse_httpStatus,

    -- ** DeleteGlobalReplicationGroup
    deleteGlobalReplicationGroup_globalReplicationGroupId,
    deleteGlobalReplicationGroup_retainPrimaryReplicationGroup,
    deleteGlobalReplicationGroupResponse_globalReplicationGroup,
    deleteGlobalReplicationGroupResponse_httpStatus,

    -- ** DecreaseNodeGroupsInGlobalReplicationGroup
    decreaseNodeGroupsInGlobalReplicationGroup_globalNodeGroupsToRemove,
    decreaseNodeGroupsInGlobalReplicationGroup_globalNodeGroupsToRetain,
    decreaseNodeGroupsInGlobalReplicationGroup_globalReplicationGroupId,
    decreaseNodeGroupsInGlobalReplicationGroup_nodeGroupCount,
    decreaseNodeGroupsInGlobalReplicationGroup_applyImmediately,
    decreaseNodeGroupsInGlobalReplicationGroupResponse_globalReplicationGroup,
    decreaseNodeGroupsInGlobalReplicationGroupResponse_httpStatus,

    -- ** ModifyUser
    modifyUser_appendAccessString,
    modifyUser_accessString,
    modifyUser_passwords,
    modifyUser_noPasswordRequired,
    modifyUser_userId,
    user_status,
    user_arn,
    user_userGroupIds,
    user_authentication,
    user_engine,
    user_userName,
    user_accessString,
    user_userId,

    -- ** DeleteCacheSubnetGroup
    deleteCacheSubnetGroup_cacheSubnetGroupName,

    -- * Types

    -- ** Authentication
    authentication_passwordCount,
    authentication_type,

    -- ** AvailabilityZone
    availabilityZone_name,

    -- ** CacheCluster
    cacheCluster_authTokenLastModifiedDate,
    cacheCluster_engineVersion,
    cacheCluster_cacheNodeType,
    cacheCluster_cacheNodes,
    cacheCluster_cacheClusterCreateTime,
    cacheCluster_atRestEncryptionEnabled,
    cacheCluster_autoMinorVersionUpgrade,
    cacheCluster_securityGroups,
    cacheCluster_notificationConfiguration,
    cacheCluster_arn,
    cacheCluster_transitEncryptionEnabled,
    cacheCluster_snapshotWindow,
    cacheCluster_cacheClusterId,
    cacheCluster_logDeliveryConfigurations,
    cacheCluster_configurationEndpoint,
    cacheCluster_engine,
    cacheCluster_cacheSecurityGroups,
    cacheCluster_replicationGroupLogDeliveryEnabled,
    cacheCluster_authTokenEnabled,
    cacheCluster_clientDownloadLandingPage,
    cacheCluster_preferredMaintenanceWindow,
    cacheCluster_cacheSubnetGroupName,
    cacheCluster_preferredAvailabilityZone,
    cacheCluster_cacheParameterGroup,
    cacheCluster_cacheClusterStatus,
    cacheCluster_snapshotRetentionLimit,
    cacheCluster_preferredOutpostArn,
    cacheCluster_replicationGroupId,
    cacheCluster_pendingModifiedValues,
    cacheCluster_numCacheNodes,

    -- ** CacheEngineVersion
    cacheEngineVersion_engineVersion,
    cacheEngineVersion_cacheParameterGroupFamily,
    cacheEngineVersion_cacheEngineDescription,
    cacheEngineVersion_engine,
    cacheEngineVersion_cacheEngineVersionDescription,

    -- ** CacheNode
    cacheNode_sourceCacheNodeId,
    cacheNode_parameterGroupStatus,
    cacheNode_cacheNodeCreateTime,
    cacheNode_customerAvailabilityZone,
    cacheNode_cacheNodeId,
    cacheNode_customerOutpostArn,
    cacheNode_cacheNodeStatus,
    cacheNode_endpoint,

    -- ** CacheNodeTypeSpecificParameter
    cacheNodeTypeSpecificParameter_cacheNodeTypeSpecificValues,
    cacheNodeTypeSpecificParameter_minimumEngineVersion,
    cacheNodeTypeSpecificParameter_source,
    cacheNodeTypeSpecificParameter_isModifiable,
    cacheNodeTypeSpecificParameter_dataType,
    cacheNodeTypeSpecificParameter_allowedValues,
    cacheNodeTypeSpecificParameter_parameterName,
    cacheNodeTypeSpecificParameter_description,
    cacheNodeTypeSpecificParameter_changeType,

    -- ** CacheNodeTypeSpecificValue
    cacheNodeTypeSpecificValue_cacheNodeType,
    cacheNodeTypeSpecificValue_value,

    -- ** CacheNodeUpdateStatus
    cacheNodeUpdateStatus_nodeUpdateEndDate,
    cacheNodeUpdateStatus_nodeUpdateInitiatedBy,
    cacheNodeUpdateStatus_nodeUpdateStatusModifiedDate,
    cacheNodeUpdateStatus_cacheNodeId,
    cacheNodeUpdateStatus_nodeUpdateInitiatedDate,
    cacheNodeUpdateStatus_nodeUpdateStartDate,
    cacheNodeUpdateStatus_nodeUpdateStatus,
    cacheNodeUpdateStatus_nodeDeletionDate,

    -- ** CacheParameterGroup
    cacheParameterGroup_cacheParameterGroupFamily,
    cacheParameterGroup_arn,
    cacheParameterGroup_cacheParameterGroupName,
    cacheParameterGroup_isGlobal,
    cacheParameterGroup_description,

    -- ** CacheParameterGroupNameMessage
    cacheParameterGroupNameMessage_cacheParameterGroupName,

    -- ** CacheParameterGroupStatus
    cacheParameterGroupStatus_cacheParameterGroupName,
    cacheParameterGroupStatus_cacheNodeIdsToReboot,
    cacheParameterGroupStatus_parameterApplyStatus,

    -- ** CacheSecurityGroup
    cacheSecurityGroup_cacheSecurityGroupName,
    cacheSecurityGroup_arn,
    cacheSecurityGroup_ownerId,
    cacheSecurityGroup_eC2SecurityGroups,
    cacheSecurityGroup_description,

    -- ** CacheSecurityGroupMembership
    cacheSecurityGroupMembership_status,
    cacheSecurityGroupMembership_cacheSecurityGroupName,

    -- ** CacheSubnetGroup
    cacheSubnetGroup_arn,
    cacheSubnetGroup_vpcId,
    cacheSubnetGroup_subnets,
    cacheSubnetGroup_cacheSubnetGroupName,
    cacheSubnetGroup_cacheSubnetGroupDescription,

    -- ** CloudWatchLogsDestinationDetails
    cloudWatchLogsDestinationDetails_logGroup,

    -- ** ConfigureShard
    configureShard_preferredAvailabilityZones,
    configureShard_preferredOutpostArns,
    configureShard_nodeGroupId,
    configureShard_newReplicaCount,

    -- ** CustomerNodeEndpoint
    customerNodeEndpoint_address,
    customerNodeEndpoint_port,

    -- ** DestinationDetails
    destinationDetails_cloudWatchLogsDetails,
    destinationDetails_kinesisFirehoseDetails,

    -- ** EC2SecurityGroup
    eC2SecurityGroup_status,
    eC2SecurityGroup_eC2SecurityGroupOwnerId,
    eC2SecurityGroup_eC2SecurityGroupName,

    -- ** Endpoint
    endpoint_address,
    endpoint_port,

    -- ** EngineDefaults
    engineDefaults_cacheParameterGroupFamily,
    engineDefaults_cacheNodeTypeSpecificParameters,
    engineDefaults_marker,
    engineDefaults_parameters,

    -- ** Event
    event_sourceType,
    event_sourceIdentifier,
    event_date,
    event_message,

    -- ** Filter
    filter_name,
    filter_values,

    -- ** GlobalNodeGroup
    globalNodeGroup_slots,
    globalNodeGroup_globalNodeGroupId,

    -- ** GlobalReplicationGroup
    globalReplicationGroup_engineVersion,
    globalReplicationGroup_status,
    globalReplicationGroup_cacheNodeType,
    globalReplicationGroup_clusterEnabled,
    globalReplicationGroup_atRestEncryptionEnabled,
    globalReplicationGroup_arn,
    globalReplicationGroup_transitEncryptionEnabled,
    globalReplicationGroup_members,
    globalReplicationGroup_engine,
    globalReplicationGroup_authTokenEnabled,
    globalReplicationGroup_globalNodeGroups,
    globalReplicationGroup_globalReplicationGroupId,
    globalReplicationGroup_globalReplicationGroupDescription,

    -- ** GlobalReplicationGroupInfo
    globalReplicationGroupInfo_globalReplicationGroupMemberRole,
    globalReplicationGroupInfo_globalReplicationGroupId,

    -- ** GlobalReplicationGroupMember
    globalReplicationGroupMember_status,
    globalReplicationGroupMember_replicationGroupRegion,
    globalReplicationGroupMember_role,
    globalReplicationGroupMember_replicationGroupId,
    globalReplicationGroupMember_automaticFailover,

    -- ** KinesisFirehoseDestinationDetails
    kinesisFirehoseDestinationDetails_deliveryStream,

    -- ** LogDeliveryConfiguration
    logDeliveryConfiguration_status,
    logDeliveryConfiguration_logFormat,
    logDeliveryConfiguration_destinationDetails,
    logDeliveryConfiguration_logType,
    logDeliveryConfiguration_destinationType,
    logDeliveryConfiguration_message,

    -- ** LogDeliveryConfigurationRequest
    logDeliveryConfigurationRequest_logFormat,
    logDeliveryConfigurationRequest_enabled,
    logDeliveryConfigurationRequest_destinationDetails,
    logDeliveryConfigurationRequest_logType,
    logDeliveryConfigurationRequest_destinationType,

    -- ** NodeGroup
    nodeGroup_status,
    nodeGroup_primaryEndpoint,
    nodeGroup_slots,
    nodeGroup_nodeGroupMembers,
    nodeGroup_nodeGroupId,
    nodeGroup_readerEndpoint,

    -- ** NodeGroupConfiguration
    nodeGroupConfiguration_slots,
    nodeGroupConfiguration_replicaOutpostArns,
    nodeGroupConfiguration_replicaCount,
    nodeGroupConfiguration_primaryAvailabilityZone,
    nodeGroupConfiguration_replicaAvailabilityZones,
    nodeGroupConfiguration_primaryOutpostArn,
    nodeGroupConfiguration_nodeGroupId,

    -- ** NodeGroupMember
    nodeGroupMember_cacheClusterId,
    nodeGroupMember_cacheNodeId,
    nodeGroupMember_preferredAvailabilityZone,
    nodeGroupMember_currentRole,
    nodeGroupMember_preferredOutpostArn,
    nodeGroupMember_readEndpoint,

    -- ** NodeGroupMemberUpdateStatus
    nodeGroupMemberUpdateStatus_nodeUpdateEndDate,
    nodeGroupMemberUpdateStatus_nodeUpdateInitiatedBy,
    nodeGroupMemberUpdateStatus_nodeUpdateStatusModifiedDate,
    nodeGroupMemberUpdateStatus_cacheClusterId,
    nodeGroupMemberUpdateStatus_cacheNodeId,
    nodeGroupMemberUpdateStatus_nodeUpdateInitiatedDate,
    nodeGroupMemberUpdateStatus_nodeUpdateStartDate,
    nodeGroupMemberUpdateStatus_nodeUpdateStatus,
    nodeGroupMemberUpdateStatus_nodeDeletionDate,

    -- ** NodeGroupUpdateStatus
    nodeGroupUpdateStatus_nodeGroupMemberUpdateStatus,
    nodeGroupUpdateStatus_nodeGroupId,

    -- ** NodeSnapshot
    nodeSnapshot_nodeGroupConfiguration,
    nodeSnapshot_cacheNodeCreateTime,
    nodeSnapshot_cacheClusterId,
    nodeSnapshot_cacheNodeId,
    nodeSnapshot_nodeGroupId,
    nodeSnapshot_snapshotCreateTime,
    nodeSnapshot_cacheSize,

    -- ** NotificationConfiguration
    notificationConfiguration_topicStatus,
    notificationConfiguration_topicArn,

    -- ** Parameter
    parameter_parameterValue,
    parameter_minimumEngineVersion,
    parameter_source,
    parameter_isModifiable,
    parameter_dataType,
    parameter_allowedValues,
    parameter_parameterName,
    parameter_description,
    parameter_changeType,

    -- ** ParameterNameValue
    parameterNameValue_parameterValue,
    parameterNameValue_parameterName,

    -- ** PendingLogDeliveryConfiguration
    pendingLogDeliveryConfiguration_logFormat,
    pendingLogDeliveryConfiguration_destinationDetails,
    pendingLogDeliveryConfiguration_logType,
    pendingLogDeliveryConfiguration_destinationType,

    -- ** PendingModifiedValues
    pendingModifiedValues_engineVersion,
    pendingModifiedValues_cacheNodeType,
    pendingModifiedValues_authTokenStatus,
    pendingModifiedValues_logDeliveryConfigurations,
    pendingModifiedValues_cacheNodeIdsToRemove,
    pendingModifiedValues_numCacheNodes,

    -- ** ProcessedUpdateAction
    processedUpdateAction_cacheClusterId,
    processedUpdateAction_serviceUpdateName,
    processedUpdateAction_updateActionStatus,
    processedUpdateAction_replicationGroupId,

    -- ** RecurringCharge
    recurringCharge_recurringChargeFrequency,
    recurringCharge_recurringChargeAmount,

    -- ** RegionalConfiguration
    regionalConfiguration_replicationGroupId,
    regionalConfiguration_replicationGroupRegion,
    regionalConfiguration_reshardingConfiguration,

    -- ** ReplicationGroup
    replicationGroup_authTokenLastModifiedDate,
    replicationGroup_status,
    replicationGroup_cacheNodeType,
    replicationGroup_nodeGroups,
    replicationGroup_snapshottingClusterId,
    replicationGroup_clusterEnabled,
    replicationGroup_atRestEncryptionEnabled,
    replicationGroup_replicationGroupCreateTime,
    replicationGroup_arn,
    replicationGroup_transitEncryptionEnabled,
    replicationGroup_userGroupIds,
    replicationGroup_snapshotWindow,
    replicationGroup_logDeliveryConfigurations,
    replicationGroup_configurationEndpoint,
    replicationGroup_authTokenEnabled,
    replicationGroup_memberClusters,
    replicationGroup_kmsKeyId,
    replicationGroup_multiAZ,
    replicationGroup_snapshotRetentionLimit,
    replicationGroup_description,
    replicationGroup_replicationGroupId,
    replicationGroup_pendingModifiedValues,
    replicationGroup_globalReplicationGroupInfo,
    replicationGroup_memberClustersOutpostArns,
    replicationGroup_automaticFailover,

    -- ** ReplicationGroupPendingModifiedValues
    replicationGroupPendingModifiedValues_authTokenStatus,
    replicationGroupPendingModifiedValues_userGroups,
    replicationGroupPendingModifiedValues_logDeliveryConfigurations,
    replicationGroupPendingModifiedValues_resharding,
    replicationGroupPendingModifiedValues_primaryClusterId,
    replicationGroupPendingModifiedValues_automaticFailoverStatus,

    -- ** ReservedCacheNode
    reservedCacheNode_cacheNodeType,
    reservedCacheNode_state,
    reservedCacheNode_startTime,
    reservedCacheNode_productDescription,
    reservedCacheNode_reservationARN,
    reservedCacheNode_cacheNodeCount,
    reservedCacheNode_reservedCacheNodeId,
    reservedCacheNode_recurringCharges,
    reservedCacheNode_offeringType,
    reservedCacheNode_usagePrice,
    reservedCacheNode_fixedPrice,
    reservedCacheNode_duration,
    reservedCacheNode_reservedCacheNodesOfferingId,

    -- ** ReservedCacheNodesOffering
    reservedCacheNodesOffering_cacheNodeType,
    reservedCacheNodesOffering_productDescription,
    reservedCacheNodesOffering_recurringCharges,
    reservedCacheNodesOffering_offeringType,
    reservedCacheNodesOffering_usagePrice,
    reservedCacheNodesOffering_fixedPrice,
    reservedCacheNodesOffering_duration,
    reservedCacheNodesOffering_reservedCacheNodesOfferingId,

    -- ** ReshardingConfiguration
    reshardingConfiguration_preferredAvailabilityZones,
    reshardingConfiguration_nodeGroupId,

    -- ** ReshardingStatus
    reshardingStatus_slotMigration,

    -- ** SecurityGroupMembership
    securityGroupMembership_status,
    securityGroupMembership_securityGroupId,

    -- ** ServiceUpdate
    serviceUpdate_engineVersion,
    serviceUpdate_serviceUpdateType,
    serviceUpdate_serviceUpdateName,
    serviceUpdate_engine,
    serviceUpdate_serviceUpdateReleaseDate,
    serviceUpdate_autoUpdateAfterRecommendedApplyByDate,
    serviceUpdate_serviceUpdateSeverity,
    serviceUpdate_serviceUpdateEndDate,
    serviceUpdate_serviceUpdateDescription,
    serviceUpdate_serviceUpdateRecommendedApplyByDate,
    serviceUpdate_serviceUpdateStatus,
    serviceUpdate_estimatedUpdateTime,

    -- ** SlotMigration
    slotMigration_progressPercentage,

    -- ** Snapshot
    snapshot_engineVersion,
    snapshot_cacheNodeType,
    snapshot_cacheClusterCreateTime,
    snapshot_autoMinorVersionUpgrade,
    snapshot_arn,
    snapshot_cacheParameterGroupName,
    snapshot_replicationGroupDescription,
    snapshot_vpcId,
    snapshot_snapshotStatus,
    snapshot_snapshotWindow,
    snapshot_cacheClusterId,
    snapshot_engine,
    snapshot_preferredMaintenanceWindow,
    snapshot_topicArn,
    snapshot_kmsKeyId,
    snapshot_nodeSnapshots,
    snapshot_cacheSubnetGroupName,
    snapshot_preferredAvailabilityZone,
    snapshot_numNodeGroups,
    snapshot_snapshotRetentionLimit,
    snapshot_snapshotName,
    snapshot_preferredOutpostArn,
    snapshot_replicationGroupId,
    snapshot_numCacheNodes,
    snapshot_port,
    snapshot_automaticFailover,
    snapshot_snapshotSource,

    -- ** Subnet
    subnet_subnetIdentifier,
    subnet_subnetAvailabilityZone,
    subnet_subnetOutpost,

    -- ** SubnetOutpost
    subnetOutpost_subnetOutpostArn,

    -- ** Tag
    tag_value,
    tag_key,

    -- ** TagListMessage
    tagListMessage_tagList,

    -- ** TimeRangeFilter
    timeRangeFilter_startTime,
    timeRangeFilter_endTime,

    -- ** UnprocessedUpdateAction
    unprocessedUpdateAction_cacheClusterId,
    unprocessedUpdateAction_serviceUpdateName,
    unprocessedUpdateAction_errorType,
    unprocessedUpdateAction_errorMessage,
    unprocessedUpdateAction_replicationGroupId,

    -- ** UpdateAction
    updateAction_serviceUpdateType,
    updateAction_slaMet,
    updateAction_cacheClusterId,
    updateAction_serviceUpdateName,
    updateAction_updateActionStatus,
    updateAction_engine,
    updateAction_nodesUpdated,
    updateAction_updateActionStatusModifiedDate,
    updateAction_serviceUpdateReleaseDate,
    updateAction_cacheNodeUpdateStatus,
    updateAction_serviceUpdateSeverity,
    updateAction_nodeGroupUpdateStatus,
    updateAction_serviceUpdateRecommendedApplyByDate,
    updateAction_updateActionAvailableDate,
    updateAction_serviceUpdateStatus,
    updateAction_estimatedUpdateTime,
    updateAction_replicationGroupId,

    -- ** UpdateActionResultsMessage
    updateActionResultsMessage_unprocessedUpdateActions,
    updateActionResultsMessage_processedUpdateActions,

    -- ** User
    user_status,
    user_arn,
    user_userGroupIds,
    user_authentication,
    user_engine,
    user_userName,
    user_accessString,
    user_userId,

    -- ** UserGroup
    userGroup_status,
    userGroup_userIds,
    userGroup_arn,
    userGroup_userGroupId,
    userGroup_engine,
    userGroup_pendingChanges,
    userGroup_replicationGroups,

    -- ** UserGroupPendingChanges
    userGroupPendingChanges_userIdsToAdd,
    userGroupPendingChanges_userIdsToRemove,

    -- ** UserGroupsUpdateStatus
    userGroupsUpdateStatus_userGroupIdsToAdd,
    userGroupsUpdateStatus_userGroupIdsToRemove,
  )
where

import Network.AWS.ElastiCache.AddTagsToResource
import Network.AWS.ElastiCache.AuthorizeCacheSecurityGroupIngress
import Network.AWS.ElastiCache.BatchApplyUpdateAction
import Network.AWS.ElastiCache.BatchStopUpdateAction
import Network.AWS.ElastiCache.CompleteMigration
import Network.AWS.ElastiCache.CopySnapshot
import Network.AWS.ElastiCache.CreateCacheCluster
import Network.AWS.ElastiCache.CreateCacheParameterGroup
import Network.AWS.ElastiCache.CreateCacheSecurityGroup
import Network.AWS.ElastiCache.CreateCacheSubnetGroup
import Network.AWS.ElastiCache.CreateGlobalReplicationGroup
import Network.AWS.ElastiCache.CreateReplicationGroup
import Network.AWS.ElastiCache.CreateSnapshot
import Network.AWS.ElastiCache.CreateUser
import Network.AWS.ElastiCache.CreateUserGroup
import Network.AWS.ElastiCache.DecreaseNodeGroupsInGlobalReplicationGroup
import Network.AWS.ElastiCache.DecreaseReplicaCount
import Network.AWS.ElastiCache.DeleteCacheCluster
import Network.AWS.ElastiCache.DeleteCacheParameterGroup
import Network.AWS.ElastiCache.DeleteCacheSecurityGroup
import Network.AWS.ElastiCache.DeleteCacheSubnetGroup
import Network.AWS.ElastiCache.DeleteGlobalReplicationGroup
import Network.AWS.ElastiCache.DeleteReplicationGroup
import Network.AWS.ElastiCache.DeleteSnapshot
import Network.AWS.ElastiCache.DeleteUser
import Network.AWS.ElastiCache.DeleteUserGroup
import Network.AWS.ElastiCache.DescribeCacheClusters
import Network.AWS.ElastiCache.DescribeCacheEngineVersions
import Network.AWS.ElastiCache.DescribeCacheParameterGroups
import Network.AWS.ElastiCache.DescribeCacheParameters
import Network.AWS.ElastiCache.DescribeCacheSecurityGroups
import Network.AWS.ElastiCache.DescribeCacheSubnetGroups
import Network.AWS.ElastiCache.DescribeEngineDefaultParameters
import Network.AWS.ElastiCache.DescribeEvents
import Network.AWS.ElastiCache.DescribeGlobalReplicationGroups
import Network.AWS.ElastiCache.DescribeReplicationGroups
import Network.AWS.ElastiCache.DescribeReservedCacheNodes
import Network.AWS.ElastiCache.DescribeReservedCacheNodesOfferings
import Network.AWS.ElastiCache.DescribeServiceUpdates
import Network.AWS.ElastiCache.DescribeSnapshots
import Network.AWS.ElastiCache.DescribeUpdateActions
import Network.AWS.ElastiCache.DescribeUserGroups
import Network.AWS.ElastiCache.DescribeUsers
import Network.AWS.ElastiCache.DisassociateGlobalReplicationGroup
import Network.AWS.ElastiCache.FailoverGlobalReplicationGroup
import Network.AWS.ElastiCache.IncreaseNodeGroupsInGlobalReplicationGroup
import Network.AWS.ElastiCache.IncreaseReplicaCount
import Network.AWS.ElastiCache.ListAllowedNodeTypeModifications
import Network.AWS.ElastiCache.ListTagsForResource
import Network.AWS.ElastiCache.ModifyCacheCluster
import Network.AWS.ElastiCache.ModifyCacheParameterGroup
import Network.AWS.ElastiCache.ModifyCacheSubnetGroup
import Network.AWS.ElastiCache.ModifyGlobalReplicationGroup
import Network.AWS.ElastiCache.ModifyReplicationGroup
import Network.AWS.ElastiCache.ModifyReplicationGroupShardConfiguration
import Network.AWS.ElastiCache.ModifyUser
import Network.AWS.ElastiCache.ModifyUserGroup
import Network.AWS.ElastiCache.PurchaseReservedCacheNodesOffering
import Network.AWS.ElastiCache.RebalanceSlotsInGlobalReplicationGroup
import Network.AWS.ElastiCache.RebootCacheCluster
import Network.AWS.ElastiCache.RemoveTagsFromResource
import Network.AWS.ElastiCache.ResetCacheParameterGroup
import Network.AWS.ElastiCache.RevokeCacheSecurityGroupIngress
import Network.AWS.ElastiCache.StartMigration
import Network.AWS.ElastiCache.TestFailover
import Network.AWS.ElastiCache.Types.Authentication
import Network.AWS.ElastiCache.Types.AvailabilityZone
import Network.AWS.ElastiCache.Types.CacheCluster
import Network.AWS.ElastiCache.Types.CacheEngineVersion
import Network.AWS.ElastiCache.Types.CacheNode
import Network.AWS.ElastiCache.Types.CacheNodeTypeSpecificParameter
import Network.AWS.ElastiCache.Types.CacheNodeTypeSpecificValue
import Network.AWS.ElastiCache.Types.CacheNodeUpdateStatus
import Network.AWS.ElastiCache.Types.CacheParameterGroup
import Network.AWS.ElastiCache.Types.CacheParameterGroupNameMessage
import Network.AWS.ElastiCache.Types.CacheParameterGroupStatus
import Network.AWS.ElastiCache.Types.CacheSecurityGroup
import Network.AWS.ElastiCache.Types.CacheSecurityGroupMembership
import Network.AWS.ElastiCache.Types.CacheSubnetGroup
import Network.AWS.ElastiCache.Types.CloudWatchLogsDestinationDetails
import Network.AWS.ElastiCache.Types.ConfigureShard
import Network.AWS.ElastiCache.Types.CustomerNodeEndpoint
import Network.AWS.ElastiCache.Types.DestinationDetails
import Network.AWS.ElastiCache.Types.EC2SecurityGroup
import Network.AWS.ElastiCache.Types.Endpoint
import Network.AWS.ElastiCache.Types.EngineDefaults
import Network.AWS.ElastiCache.Types.Event
import Network.AWS.ElastiCache.Types.Filter
import Network.AWS.ElastiCache.Types.GlobalNodeGroup
import Network.AWS.ElastiCache.Types.GlobalReplicationGroup
import Network.AWS.ElastiCache.Types.GlobalReplicationGroupInfo
import Network.AWS.ElastiCache.Types.GlobalReplicationGroupMember
import Network.AWS.ElastiCache.Types.KinesisFirehoseDestinationDetails
import Network.AWS.ElastiCache.Types.LogDeliveryConfiguration
import Network.AWS.ElastiCache.Types.LogDeliveryConfigurationRequest
import Network.AWS.ElastiCache.Types.NodeGroup
import Network.AWS.ElastiCache.Types.NodeGroupConfiguration
import Network.AWS.ElastiCache.Types.NodeGroupMember
import Network.AWS.ElastiCache.Types.NodeGroupMemberUpdateStatus
import Network.AWS.ElastiCache.Types.NodeGroupUpdateStatus
import Network.AWS.ElastiCache.Types.NodeSnapshot
import Network.AWS.ElastiCache.Types.NotificationConfiguration
import Network.AWS.ElastiCache.Types.Parameter
import Network.AWS.ElastiCache.Types.ParameterNameValue
import Network.AWS.ElastiCache.Types.PendingLogDeliveryConfiguration
import Network.AWS.ElastiCache.Types.PendingModifiedValues
import Network.AWS.ElastiCache.Types.ProcessedUpdateAction
import Network.AWS.ElastiCache.Types.RecurringCharge
import Network.AWS.ElastiCache.Types.RegionalConfiguration
import Network.AWS.ElastiCache.Types.ReplicationGroup
import Network.AWS.ElastiCache.Types.ReplicationGroupPendingModifiedValues
import Network.AWS.ElastiCache.Types.ReservedCacheNode
import Network.AWS.ElastiCache.Types.ReservedCacheNodesOffering
import Network.AWS.ElastiCache.Types.ReshardingConfiguration
import Network.AWS.ElastiCache.Types.ReshardingStatus
import Network.AWS.ElastiCache.Types.SecurityGroupMembership
import Network.AWS.ElastiCache.Types.ServiceUpdate
import Network.AWS.ElastiCache.Types.SlotMigration
import Network.AWS.ElastiCache.Types.Snapshot
import Network.AWS.ElastiCache.Types.Subnet
import Network.AWS.ElastiCache.Types.SubnetOutpost
import Network.AWS.ElastiCache.Types.Tag
import Network.AWS.ElastiCache.Types.TagListMessage
import Network.AWS.ElastiCache.Types.TimeRangeFilter
import Network.AWS.ElastiCache.Types.UnprocessedUpdateAction
import Network.AWS.ElastiCache.Types.UpdateAction
import Network.AWS.ElastiCache.Types.UpdateActionResultsMessage
import Network.AWS.ElastiCache.Types.User
import Network.AWS.ElastiCache.Types.UserGroup
import Network.AWS.ElastiCache.Types.UserGroupPendingChanges
import Network.AWS.ElastiCache.Types.UserGroupsUpdateStatus
