{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Greengrass.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Lens
  ( -- * Operations

    -- ** GetGroupCertificateConfiguration
    getGroupCertificateConfiguration_groupId,
    getGroupCertificateConfigurationResponse_certificateAuthorityExpiryInMilliseconds,
    getGroupCertificateConfigurationResponse_groupId,
    getGroupCertificateConfigurationResponse_certificateExpiryInMilliseconds,
    getGroupCertificateConfigurationResponse_httpStatus,

    -- ** ListGroupVersions
    listGroupVersions_nextToken,
    listGroupVersions_maxResults,
    listGroupVersions_groupId,
    listGroupVersionsResponse_versions,
    listGroupVersionsResponse_nextToken,
    listGroupVersionsResponse_httpStatus,

    -- ** ListFunctionDefinitionVersions
    listFunctionDefinitionVersions_nextToken,
    listFunctionDefinitionVersions_maxResults,
    listFunctionDefinitionVersions_functionDefinitionId,
    listFunctionDefinitionVersionsResponse_versions,
    listFunctionDefinitionVersionsResponse_nextToken,
    listFunctionDefinitionVersionsResponse_httpStatus,

    -- ** ListDeviceDefinitions
    listDeviceDefinitions_nextToken,
    listDeviceDefinitions_maxResults,
    listDeviceDefinitionsResponse_nextToken,
    listDeviceDefinitionsResponse_definitions,
    listDeviceDefinitionsResponse_httpStatus,

    -- ** AssociateRoleToGroup
    associateRoleToGroup_groupId,
    associateRoleToGroup_roleArn,
    associateRoleToGroupResponse_associatedAt,
    associateRoleToGroupResponse_httpStatus,

    -- ** UpdateCoreDefinition
    updateCoreDefinition_name,
    updateCoreDefinition_coreDefinitionId,
    updateCoreDefinitionResponse_httpStatus,

    -- ** DeleteCoreDefinition
    deleteCoreDefinition_coreDefinitionId,
    deleteCoreDefinitionResponse_httpStatus,

    -- ** GetLoggerDefinition
    getLoggerDefinition_loggerDefinitionId,
    getLoggerDefinitionResponse_latestVersionArn,
    getLoggerDefinitionResponse_arn,
    getLoggerDefinitionResponse_name,
    getLoggerDefinitionResponse_creationTimestamp,
    getLoggerDefinitionResponse_id,
    getLoggerDefinitionResponse_latestVersion,
    getLoggerDefinitionResponse_lastUpdatedTimestamp,
    getLoggerDefinitionResponse_tags,
    getLoggerDefinitionResponse_httpStatus,

    -- ** ListGroupCertificateAuthorities
    listGroupCertificateAuthorities_groupId,
    listGroupCertificateAuthoritiesResponse_groupCertificateAuthorities,
    listGroupCertificateAuthoritiesResponse_httpStatus,

    -- ** DisassociateRoleFromGroup
    disassociateRoleFromGroup_groupId,
    disassociateRoleFromGroupResponse_disassociatedAt,
    disassociateRoleFromGroupResponse_httpStatus,

    -- ** UpdateSubscriptionDefinition
    updateSubscriptionDefinition_name,
    updateSubscriptionDefinition_subscriptionDefinitionId,
    updateSubscriptionDefinitionResponse_httpStatus,

    -- ** DeleteSubscriptionDefinition
    deleteSubscriptionDefinition_subscriptionDefinitionId,
    deleteSubscriptionDefinitionResponse_httpStatus,

    -- ** ListCoreDefinitions
    listCoreDefinitions_nextToken,
    listCoreDefinitions_maxResults,
    listCoreDefinitionsResponse_nextToken,
    listCoreDefinitionsResponse_definitions,
    listCoreDefinitionsResponse_httpStatus,

    -- ** ListSubscriptionDefinitions
    listSubscriptionDefinitions_nextToken,
    listSubscriptionDefinitions_maxResults,
    listSubscriptionDefinitionsResponse_nextToken,
    listSubscriptionDefinitionsResponse_definitions,
    listSubscriptionDefinitionsResponse_httpStatus,

    -- ** CreateGroupCertificateAuthority
    createGroupCertificateAuthority_amznClientToken,
    createGroupCertificateAuthority_groupId,
    createGroupCertificateAuthorityResponse_groupCertificateAuthorityArn,
    createGroupCertificateAuthorityResponse_httpStatus,

    -- ** DeleteConnectorDefinition
    deleteConnectorDefinition_connectorDefinitionId,
    deleteConnectorDefinitionResponse_httpStatus,

    -- ** UpdateConnectorDefinition
    updateConnectorDefinition_name,
    updateConnectorDefinition_connectorDefinitionId,
    updateConnectorDefinitionResponse_httpStatus,

    -- ** CreateLoggerDefinitionVersion
    createLoggerDefinitionVersion_loggers,
    createLoggerDefinitionVersion_amznClientToken,
    createLoggerDefinitionVersion_loggerDefinitionId,
    createLoggerDefinitionVersionResponse_arn,
    createLoggerDefinitionVersionResponse_creationTimestamp,
    createLoggerDefinitionVersionResponse_version,
    createLoggerDefinitionVersionResponse_id,
    createLoggerDefinitionVersionResponse_httpStatus,

    -- ** CreateCoreDefinition
    createCoreDefinition_amznClientToken,
    createCoreDefinition_initialVersion,
    createCoreDefinition_name,
    createCoreDefinition_tags,
    createCoreDefinitionResponse_latestVersionArn,
    createCoreDefinitionResponse_arn,
    createCoreDefinitionResponse_name,
    createCoreDefinitionResponse_creationTimestamp,
    createCoreDefinitionResponse_id,
    createCoreDefinitionResponse_latestVersion,
    createCoreDefinitionResponse_lastUpdatedTimestamp,
    createCoreDefinitionResponse_httpStatus,

    -- ** GetConnectorDefinitionVersion
    getConnectorDefinitionVersion_nextToken,
    getConnectorDefinitionVersion_connectorDefinitionId,
    getConnectorDefinitionVersion_connectorDefinitionVersionId,
    getConnectorDefinitionVersionResponse_definition,
    getConnectorDefinitionVersionResponse_arn,
    getConnectorDefinitionVersionResponse_nextToken,
    getConnectorDefinitionVersionResponse_creationTimestamp,
    getConnectorDefinitionVersionResponse_version,
    getConnectorDefinitionVersionResponse_id,
    getConnectorDefinitionVersionResponse_httpStatus,

    -- ** UpdateConnectivityInfo
    updateConnectivityInfo_connectivityInfo,
    updateConnectivityInfo_thingName,
    updateConnectivityInfoResponse_version,
    updateConnectivityInfoResponse_message,
    updateConnectivityInfoResponse_httpStatus,

    -- ** CreateSubscriptionDefinition
    createSubscriptionDefinition_amznClientToken,
    createSubscriptionDefinition_initialVersion,
    createSubscriptionDefinition_name,
    createSubscriptionDefinition_tags,
    createSubscriptionDefinitionResponse_latestVersionArn,
    createSubscriptionDefinitionResponse_arn,
    createSubscriptionDefinitionResponse_name,
    createSubscriptionDefinitionResponse_creationTimestamp,
    createSubscriptionDefinitionResponse_id,
    createSubscriptionDefinitionResponse_latestVersion,
    createSubscriptionDefinitionResponse_lastUpdatedTimestamp,
    createSubscriptionDefinitionResponse_httpStatus,

    -- ** ListTagsForResource
    listTagsForResource_resourceArn,
    listTagsForResourceResponse_tags,
    listTagsForResourceResponse_httpStatus,

    -- ** GetGroupCertificateAuthority
    getGroupCertificateAuthority_certificateAuthorityId,
    getGroupCertificateAuthority_groupId,
    getGroupCertificateAuthorityResponse_pemEncodedCertificate,
    getGroupCertificateAuthorityResponse_groupCertificateAuthorityArn,
    getGroupCertificateAuthorityResponse_groupCertificateAuthorityId,
    getGroupCertificateAuthorityResponse_httpStatus,

    -- ** GetLoggerDefinitionVersion
    getLoggerDefinitionVersion_nextToken,
    getLoggerDefinitionVersion_loggerDefinitionVersionId,
    getLoggerDefinitionVersion_loggerDefinitionId,
    getLoggerDefinitionVersionResponse_definition,
    getLoggerDefinitionVersionResponse_arn,
    getLoggerDefinitionVersionResponse_creationTimestamp,
    getLoggerDefinitionVersionResponse_version,
    getLoggerDefinitionVersionResponse_id,
    getLoggerDefinitionVersionResponse_httpStatus,

    -- ** GetServiceRoleForAccount
    getServiceRoleForAccountResponse_associatedAt,
    getServiceRoleForAccountResponse_roleArn,
    getServiceRoleForAccountResponse_httpStatus,

    -- ** ListConnectorDefinitionVersions
    listConnectorDefinitionVersions_nextToken,
    listConnectorDefinitionVersions_maxResults,
    listConnectorDefinitionVersions_connectorDefinitionId,
    listConnectorDefinitionVersionsResponse_versions,
    listConnectorDefinitionVersionsResponse_nextToken,
    listConnectorDefinitionVersionsResponse_httpStatus,

    -- ** CreateSoftwareUpdateJob
    createSoftwareUpdateJob_updateAgentLogLevel,
    createSoftwareUpdateJob_amznClientToken,
    createSoftwareUpdateJob_s3UrlSignerRole,
    createSoftwareUpdateJob_updateTargetsArchitecture,
    createSoftwareUpdateJob_softwareToUpdate,
    createSoftwareUpdateJob_updateTargets,
    createSoftwareUpdateJob_updateTargetsOperatingSystem,
    createSoftwareUpdateJobResponse_platformSoftwareVersion,
    createSoftwareUpdateJobResponse_iotJobArn,
    createSoftwareUpdateJobResponse_iotJobId,
    createSoftwareUpdateJobResponse_httpStatus,

    -- ** CreateLoggerDefinition
    createLoggerDefinition_amznClientToken,
    createLoggerDefinition_initialVersion,
    createLoggerDefinition_name,
    createLoggerDefinition_tags,
    createLoggerDefinitionResponse_latestVersionArn,
    createLoggerDefinitionResponse_arn,
    createLoggerDefinitionResponse_name,
    createLoggerDefinitionResponse_creationTimestamp,
    createLoggerDefinitionResponse_id,
    createLoggerDefinitionResponse_latestVersion,
    createLoggerDefinitionResponse_lastUpdatedTimestamp,
    createLoggerDefinitionResponse_httpStatus,

    -- ** GetConnectivityInfo
    getConnectivityInfo_thingName,
    getConnectivityInfoResponse_message,
    getConnectivityInfoResponse_connectivityInfo,
    getConnectivityInfoResponse_httpStatus,

    -- ** CreateDeployment
    createDeployment_deploymentId,
    createDeployment_amznClientToken,
    createDeployment_groupVersionId,
    createDeployment_groupId,
    createDeployment_deploymentType,
    createDeploymentResponse_deploymentId,
    createDeploymentResponse_deploymentArn,
    createDeploymentResponse_httpStatus,

    -- ** DeleteLoggerDefinition
    deleteLoggerDefinition_loggerDefinitionId,
    deleteLoggerDefinitionResponse_httpStatus,

    -- ** UpdateLoggerDefinition
    updateLoggerDefinition_name,
    updateLoggerDefinition_loggerDefinitionId,
    updateLoggerDefinitionResponse_httpStatus,

    -- ** GetSubscriptionDefinition
    getSubscriptionDefinition_subscriptionDefinitionId,
    getSubscriptionDefinitionResponse_latestVersionArn,
    getSubscriptionDefinitionResponse_arn,
    getSubscriptionDefinitionResponse_name,
    getSubscriptionDefinitionResponse_creationTimestamp,
    getSubscriptionDefinitionResponse_id,
    getSubscriptionDefinitionResponse_latestVersion,
    getSubscriptionDefinitionResponse_lastUpdatedTimestamp,
    getSubscriptionDefinitionResponse_tags,
    getSubscriptionDefinitionResponse_httpStatus,

    -- ** GetCoreDefinition
    getCoreDefinition_coreDefinitionId,
    getCoreDefinitionResponse_latestVersionArn,
    getCoreDefinitionResponse_arn,
    getCoreDefinitionResponse_name,
    getCoreDefinitionResponse_creationTimestamp,
    getCoreDefinitionResponse_id,
    getCoreDefinitionResponse_latestVersion,
    getCoreDefinitionResponse_lastUpdatedTimestamp,
    getCoreDefinitionResponse_tags,
    getCoreDefinitionResponse_httpStatus,

    -- ** CreateConnectorDefinitionVersion
    createConnectorDefinitionVersion_amznClientToken,
    createConnectorDefinitionVersion_connectors,
    createConnectorDefinitionVersion_connectorDefinitionId,
    createConnectorDefinitionVersionResponse_arn,
    createConnectorDefinitionVersionResponse_creationTimestamp,
    createConnectorDefinitionVersionResponse_version,
    createConnectorDefinitionVersionResponse_id,
    createConnectorDefinitionVersionResponse_httpStatus,

    -- ** GetDeploymentStatus
    getDeploymentStatus_groupId,
    getDeploymentStatus_deploymentId,
    getDeploymentStatusResponse_deploymentType,
    getDeploymentStatusResponse_errorDetails,
    getDeploymentStatusResponse_deploymentStatus,
    getDeploymentStatusResponse_updatedAt,
    getDeploymentStatusResponse_errorMessage,
    getDeploymentStatusResponse_httpStatus,

    -- ** GetBulkDeploymentStatus
    getBulkDeploymentStatus_bulkDeploymentId,
    getBulkDeploymentStatusResponse_createdAt,
    getBulkDeploymentStatusResponse_errorDetails,
    getBulkDeploymentStatusResponse_bulkDeploymentStatus,
    getBulkDeploymentStatusResponse_errorMessage,
    getBulkDeploymentStatusResponse_bulkDeploymentMetrics,
    getBulkDeploymentStatusResponse_tags,
    getBulkDeploymentStatusResponse_httpStatus,

    -- ** CreateResourceDefinition
    createResourceDefinition_amznClientToken,
    createResourceDefinition_initialVersion,
    createResourceDefinition_name,
    createResourceDefinition_tags,
    createResourceDefinitionResponse_latestVersionArn,
    createResourceDefinitionResponse_arn,
    createResourceDefinitionResponse_name,
    createResourceDefinitionResponse_creationTimestamp,
    createResourceDefinitionResponse_id,
    createResourceDefinitionResponse_latestVersion,
    createResourceDefinitionResponse_lastUpdatedTimestamp,
    createResourceDefinitionResponse_httpStatus,

    -- ** GetResourceDefinitionVersion
    getResourceDefinitionVersion_resourceDefinitionVersionId,
    getResourceDefinitionVersion_resourceDefinitionId,
    getResourceDefinitionVersionResponse_definition,
    getResourceDefinitionVersionResponse_arn,
    getResourceDefinitionVersionResponse_creationTimestamp,
    getResourceDefinitionVersionResponse_version,
    getResourceDefinitionVersionResponse_id,
    getResourceDefinitionVersionResponse_httpStatus,

    -- ** UpdateFunctionDefinition
    updateFunctionDefinition_name,
    updateFunctionDefinition_functionDefinitionId,
    updateFunctionDefinitionResponse_httpStatus,

    -- ** DeleteFunctionDefinition
    deleteFunctionDefinition_functionDefinitionId,
    deleteFunctionDefinitionResponse_httpStatus,

    -- ** ListResourceDefinitions
    listResourceDefinitions_nextToken,
    listResourceDefinitions_maxResults,
    listResourceDefinitionsResponse_nextToken,
    listResourceDefinitionsResponse_definitions,
    listResourceDefinitionsResponse_httpStatus,

    -- ** StopBulkDeployment
    stopBulkDeployment_bulkDeploymentId,
    stopBulkDeploymentResponse_httpStatus,

    -- ** CreateResourceDefinitionVersion
    createResourceDefinitionVersion_amznClientToken,
    createResourceDefinitionVersion_resources,
    createResourceDefinitionVersion_resourceDefinitionId,
    createResourceDefinitionVersionResponse_arn,
    createResourceDefinitionVersionResponse_creationTimestamp,
    createResourceDefinitionVersionResponse_version,
    createResourceDefinitionVersionResponse_id,
    createResourceDefinitionVersionResponse_httpStatus,

    -- ** GetResourceDefinition
    getResourceDefinition_resourceDefinitionId,
    getResourceDefinitionResponse_latestVersionArn,
    getResourceDefinitionResponse_arn,
    getResourceDefinitionResponse_name,
    getResourceDefinitionResponse_creationTimestamp,
    getResourceDefinitionResponse_id,
    getResourceDefinitionResponse_latestVersion,
    getResourceDefinitionResponse_lastUpdatedTimestamp,
    getResourceDefinitionResponse_tags,
    getResourceDefinitionResponse_httpStatus,

    -- ** ListResourceDefinitionVersions
    listResourceDefinitionVersions_nextToken,
    listResourceDefinitionVersions_maxResults,
    listResourceDefinitionVersions_resourceDefinitionId,
    listResourceDefinitionVersionsResponse_versions,
    listResourceDefinitionVersionsResponse_nextToken,
    listResourceDefinitionVersionsResponse_httpStatus,

    -- ** DisassociateServiceRoleFromAccount
    disassociateServiceRoleFromAccountResponse_disassociatedAt,
    disassociateServiceRoleFromAccountResponse_httpStatus,

    -- ** DeleteDeviceDefinition
    deleteDeviceDefinition_deviceDefinitionId,
    deleteDeviceDefinitionResponse_httpStatus,

    -- ** UpdateDeviceDefinition
    updateDeviceDefinition_name,
    updateDeviceDefinition_deviceDefinitionId,
    updateDeviceDefinitionResponse_httpStatus,

    -- ** AssociateServiceRoleToAccount
    associateServiceRoleToAccount_roleArn,
    associateServiceRoleToAccountResponse_associatedAt,
    associateServiceRoleToAccountResponse_httpStatus,

    -- ** ResetDeployments
    resetDeployments_amznClientToken,
    resetDeployments_force,
    resetDeployments_groupId,
    resetDeploymentsResponse_deploymentId,
    resetDeploymentsResponse_deploymentArn,
    resetDeploymentsResponse_httpStatus,

    -- ** ListConnectorDefinitions
    listConnectorDefinitions_nextToken,
    listConnectorDefinitions_maxResults,
    listConnectorDefinitionsResponse_nextToken,
    listConnectorDefinitionsResponse_definitions,
    listConnectorDefinitionsResponse_httpStatus,

    -- ** GetSubscriptionDefinitionVersion
    getSubscriptionDefinitionVersion_nextToken,
    getSubscriptionDefinitionVersion_subscriptionDefinitionId,
    getSubscriptionDefinitionVersion_subscriptionDefinitionVersionId,
    getSubscriptionDefinitionVersionResponse_definition,
    getSubscriptionDefinitionVersionResponse_arn,
    getSubscriptionDefinitionVersionResponse_nextToken,
    getSubscriptionDefinitionVersionResponse_creationTimestamp,
    getSubscriptionDefinitionVersionResponse_version,
    getSubscriptionDefinitionVersionResponse_id,
    getSubscriptionDefinitionVersionResponse_httpStatus,

    -- ** GetAssociatedRole
    getAssociatedRole_groupId,
    getAssociatedRoleResponse_associatedAt,
    getAssociatedRoleResponse_roleArn,
    getAssociatedRoleResponse_httpStatus,

    -- ** ListLoggerDefinitionVersions
    listLoggerDefinitionVersions_nextToken,
    listLoggerDefinitionVersions_maxResults,
    listLoggerDefinitionVersions_loggerDefinitionId,
    listLoggerDefinitionVersionsResponse_versions,
    listLoggerDefinitionVersionsResponse_nextToken,
    listLoggerDefinitionVersionsResponse_httpStatus,

    -- ** CreateConnectorDefinition
    createConnectorDefinition_amznClientToken,
    createConnectorDefinition_initialVersion,
    createConnectorDefinition_name,
    createConnectorDefinition_tags,
    createConnectorDefinitionResponse_latestVersionArn,
    createConnectorDefinitionResponse_arn,
    createConnectorDefinitionResponse_name,
    createConnectorDefinitionResponse_creationTimestamp,
    createConnectorDefinitionResponse_id,
    createConnectorDefinitionResponse_latestVersion,
    createConnectorDefinitionResponse_lastUpdatedTimestamp,
    createConnectorDefinitionResponse_httpStatus,

    -- ** GetCoreDefinitionVersion
    getCoreDefinitionVersion_coreDefinitionId,
    getCoreDefinitionVersion_coreDefinitionVersionId,
    getCoreDefinitionVersionResponse_definition,
    getCoreDefinitionVersionResponse_arn,
    getCoreDefinitionVersionResponse_nextToken,
    getCoreDefinitionVersionResponse_creationTimestamp,
    getCoreDefinitionVersionResponse_version,
    getCoreDefinitionVersionResponse_id,
    getCoreDefinitionVersionResponse_httpStatus,

    -- ** ListSubscriptionDefinitionVersions
    listSubscriptionDefinitionVersions_nextToken,
    listSubscriptionDefinitionVersions_maxResults,
    listSubscriptionDefinitionVersions_subscriptionDefinitionId,
    listSubscriptionDefinitionVersionsResponse_versions,
    listSubscriptionDefinitionVersionsResponse_nextToken,
    listSubscriptionDefinitionVersionsResponse_httpStatus,

    -- ** ListCoreDefinitionVersions
    listCoreDefinitionVersions_nextToken,
    listCoreDefinitionVersions_maxResults,
    listCoreDefinitionVersions_coreDefinitionId,
    listCoreDefinitionVersionsResponse_versions,
    listCoreDefinitionVersionsResponse_nextToken,
    listCoreDefinitionVersionsResponse_httpStatus,

    -- ** CreateCoreDefinitionVersion
    createCoreDefinitionVersion_amznClientToken,
    createCoreDefinitionVersion_cores,
    createCoreDefinitionVersion_coreDefinitionId,
    createCoreDefinitionVersionResponse_arn,
    createCoreDefinitionVersionResponse_creationTimestamp,
    createCoreDefinitionVersionResponse_version,
    createCoreDefinitionVersionResponse_id,
    createCoreDefinitionVersionResponse_httpStatus,

    -- ** ListBulkDeployments
    listBulkDeployments_nextToken,
    listBulkDeployments_maxResults,
    listBulkDeploymentsResponse_nextToken,
    listBulkDeploymentsResponse_bulkDeployments,
    listBulkDeploymentsResponse_httpStatus,

    -- ** ListDeployments
    listDeployments_nextToken,
    listDeployments_maxResults,
    listDeployments_groupId,
    listDeploymentsResponse_nextToken,
    listDeploymentsResponse_deployments,
    listDeploymentsResponse_httpStatus,

    -- ** GetConnectorDefinition
    getConnectorDefinition_connectorDefinitionId,
    getConnectorDefinitionResponse_latestVersionArn,
    getConnectorDefinitionResponse_arn,
    getConnectorDefinitionResponse_name,
    getConnectorDefinitionResponse_creationTimestamp,
    getConnectorDefinitionResponse_id,
    getConnectorDefinitionResponse_latestVersion,
    getConnectorDefinitionResponse_lastUpdatedTimestamp,
    getConnectorDefinitionResponse_tags,
    getConnectorDefinitionResponse_httpStatus,

    -- ** ListLoggerDefinitions
    listLoggerDefinitions_nextToken,
    listLoggerDefinitions_maxResults,
    listLoggerDefinitionsResponse_nextToken,
    listLoggerDefinitionsResponse_definitions,
    listLoggerDefinitionsResponse_httpStatus,

    -- ** TagResource
    tagResource_tags,
    tagResource_resourceArn,

    -- ** CreateSubscriptionDefinitionVersion
    createSubscriptionDefinitionVersion_amznClientToken,
    createSubscriptionDefinitionVersion_subscriptions,
    createSubscriptionDefinitionVersion_subscriptionDefinitionId,
    createSubscriptionDefinitionVersionResponse_arn,
    createSubscriptionDefinitionVersionResponse_creationTimestamp,
    createSubscriptionDefinitionVersionResponse_version,
    createSubscriptionDefinitionVersionResponse_id,
    createSubscriptionDefinitionVersionResponse_httpStatus,

    -- ** GetGroupVersion
    getGroupVersion_groupVersionId,
    getGroupVersion_groupId,
    getGroupVersionResponse_definition,
    getGroupVersionResponse_arn,
    getGroupVersionResponse_creationTimestamp,
    getGroupVersionResponse_version,
    getGroupVersionResponse_id,
    getGroupVersionResponse_httpStatus,

    -- ** UpdateGroupCertificateConfiguration
    updateGroupCertificateConfiguration_certificateExpiryInMilliseconds,
    updateGroupCertificateConfiguration_groupId,
    updateGroupCertificateConfigurationResponse_certificateAuthorityExpiryInMilliseconds,
    updateGroupCertificateConfigurationResponse_groupId,
    updateGroupCertificateConfigurationResponse_certificateExpiryInMilliseconds,
    updateGroupCertificateConfigurationResponse_httpStatus,

    -- ** GetFunctionDefinitionVersion
    getFunctionDefinitionVersion_nextToken,
    getFunctionDefinitionVersion_functionDefinitionId,
    getFunctionDefinitionVersion_functionDefinitionVersionId,
    getFunctionDefinitionVersionResponse_definition,
    getFunctionDefinitionVersionResponse_arn,
    getFunctionDefinitionVersionResponse_nextToken,
    getFunctionDefinitionVersionResponse_creationTimestamp,
    getFunctionDefinitionVersionResponse_version,
    getFunctionDefinitionVersionResponse_id,
    getFunctionDefinitionVersionResponse_httpStatus,

    -- ** GetDeviceDefinition
    getDeviceDefinition_deviceDefinitionId,
    getDeviceDefinitionResponse_latestVersionArn,
    getDeviceDefinitionResponse_arn,
    getDeviceDefinitionResponse_name,
    getDeviceDefinitionResponse_creationTimestamp,
    getDeviceDefinitionResponse_id,
    getDeviceDefinitionResponse_latestVersion,
    getDeviceDefinitionResponse_lastUpdatedTimestamp,
    getDeviceDefinitionResponse_tags,
    getDeviceDefinitionResponse_httpStatus,

    -- ** CreateGroup
    createGroup_amznClientToken,
    createGroup_initialVersion,
    createGroup_tags,
    createGroup_name,
    createGroupResponse_latestVersionArn,
    createGroupResponse_arn,
    createGroupResponse_name,
    createGroupResponse_creationTimestamp,
    createGroupResponse_id,
    createGroupResponse_latestVersion,
    createGroupResponse_lastUpdatedTimestamp,
    createGroupResponse_httpStatus,

    -- ** CreateFunctionDefinition
    createFunctionDefinition_amznClientToken,
    createFunctionDefinition_initialVersion,
    createFunctionDefinition_name,
    createFunctionDefinition_tags,
    createFunctionDefinitionResponse_latestVersionArn,
    createFunctionDefinitionResponse_arn,
    createFunctionDefinitionResponse_name,
    createFunctionDefinitionResponse_creationTimestamp,
    createFunctionDefinitionResponse_id,
    createFunctionDefinitionResponse_latestVersion,
    createFunctionDefinitionResponse_lastUpdatedTimestamp,
    createFunctionDefinitionResponse_httpStatus,

    -- ** UntagResource
    untagResource_tagKeys,
    untagResource_resourceArn,

    -- ** CreateDeviceDefinitionVersion
    createDeviceDefinitionVersion_amznClientToken,
    createDeviceDefinitionVersion_devices,
    createDeviceDefinitionVersion_deviceDefinitionId,
    createDeviceDefinitionVersionResponse_arn,
    createDeviceDefinitionVersionResponse_creationTimestamp,
    createDeviceDefinitionVersionResponse_version,
    createDeviceDefinitionVersionResponse_id,
    createDeviceDefinitionVersionResponse_httpStatus,

    -- ** DeleteGroup
    deleteGroup_groupId,
    deleteGroupResponse_httpStatus,

    -- ** UpdateGroup
    updateGroup_name,
    updateGroup_groupId,
    updateGroupResponse_httpStatus,

    -- ** ListGroups
    listGroups_nextToken,
    listGroups_maxResults,
    listGroupsResponse_groups,
    listGroupsResponse_nextToken,
    listGroupsResponse_httpStatus,

    -- ** ListBulkDeploymentDetailedReports
    listBulkDeploymentDetailedReports_nextToken,
    listBulkDeploymentDetailedReports_maxResults,
    listBulkDeploymentDetailedReports_bulkDeploymentId,
    listBulkDeploymentDetailedReportsResponse_nextToken,
    listBulkDeploymentDetailedReportsResponse_deployments,
    listBulkDeploymentDetailedReportsResponse_httpStatus,

    -- ** GetThingRuntimeConfiguration
    getThingRuntimeConfiguration_thingName,
    getThingRuntimeConfigurationResponse_runtimeConfiguration,
    getThingRuntimeConfigurationResponse_httpStatus,

    -- ** DeleteResourceDefinition
    deleteResourceDefinition_resourceDefinitionId,
    deleteResourceDefinitionResponse_httpStatus,

    -- ** UpdateResourceDefinition
    updateResourceDefinition_name,
    updateResourceDefinition_resourceDefinitionId,
    updateResourceDefinitionResponse_httpStatus,

    -- ** ListDeviceDefinitionVersions
    listDeviceDefinitionVersions_nextToken,
    listDeviceDefinitionVersions_maxResults,
    listDeviceDefinitionVersions_deviceDefinitionId,
    listDeviceDefinitionVersionsResponse_versions,
    listDeviceDefinitionVersionsResponse_nextToken,
    listDeviceDefinitionVersionsResponse_httpStatus,

    -- ** ListFunctionDefinitions
    listFunctionDefinitions_nextToken,
    listFunctionDefinitions_maxResults,
    listFunctionDefinitionsResponse_nextToken,
    listFunctionDefinitionsResponse_definitions,
    listFunctionDefinitionsResponse_httpStatus,

    -- ** GetFunctionDefinition
    getFunctionDefinition_functionDefinitionId,
    getFunctionDefinitionResponse_latestVersionArn,
    getFunctionDefinitionResponse_arn,
    getFunctionDefinitionResponse_name,
    getFunctionDefinitionResponse_creationTimestamp,
    getFunctionDefinitionResponse_id,
    getFunctionDefinitionResponse_latestVersion,
    getFunctionDefinitionResponse_lastUpdatedTimestamp,
    getFunctionDefinitionResponse_tags,
    getFunctionDefinitionResponse_httpStatus,

    -- ** GetGroup
    getGroup_groupId,
    getGroupResponse_latestVersionArn,
    getGroupResponse_arn,
    getGroupResponse_name,
    getGroupResponse_creationTimestamp,
    getGroupResponse_id,
    getGroupResponse_latestVersion,
    getGroupResponse_lastUpdatedTimestamp,
    getGroupResponse_tags,
    getGroupResponse_httpStatus,

    -- ** CreateDeviceDefinition
    createDeviceDefinition_amznClientToken,
    createDeviceDefinition_initialVersion,
    createDeviceDefinition_name,
    createDeviceDefinition_tags,
    createDeviceDefinitionResponse_latestVersionArn,
    createDeviceDefinitionResponse_arn,
    createDeviceDefinitionResponse_name,
    createDeviceDefinitionResponse_creationTimestamp,
    createDeviceDefinitionResponse_id,
    createDeviceDefinitionResponse_latestVersion,
    createDeviceDefinitionResponse_lastUpdatedTimestamp,
    createDeviceDefinitionResponse_httpStatus,

    -- ** CreateGroupVersion
    createGroupVersion_amznClientToken,
    createGroupVersion_resourceDefinitionVersionArn,
    createGroupVersion_subscriptionDefinitionVersionArn,
    createGroupVersion_coreDefinitionVersionArn,
    createGroupVersion_deviceDefinitionVersionArn,
    createGroupVersion_functionDefinitionVersionArn,
    createGroupVersion_loggerDefinitionVersionArn,
    createGroupVersion_connectorDefinitionVersionArn,
    createGroupVersion_groupId,
    createGroupVersionResponse_arn,
    createGroupVersionResponse_creationTimestamp,
    createGroupVersionResponse_version,
    createGroupVersionResponse_id,
    createGroupVersionResponse_httpStatus,

    -- ** CreateFunctionDefinitionVersion
    createFunctionDefinitionVersion_amznClientToken,
    createFunctionDefinitionVersion_defaultConfig,
    createFunctionDefinitionVersion_functions,
    createFunctionDefinitionVersion_functionDefinitionId,
    createFunctionDefinitionVersionResponse_arn,
    createFunctionDefinitionVersionResponse_creationTimestamp,
    createFunctionDefinitionVersionResponse_version,
    createFunctionDefinitionVersionResponse_id,
    createFunctionDefinitionVersionResponse_httpStatus,

    -- ** StartBulkDeployment
    startBulkDeployment_amznClientToken,
    startBulkDeployment_tags,
    startBulkDeployment_executionRoleArn,
    startBulkDeployment_inputFileUri,
    startBulkDeploymentResponse_bulkDeploymentArn,
    startBulkDeploymentResponse_bulkDeploymentId,
    startBulkDeploymentResponse_httpStatus,

    -- ** UpdateThingRuntimeConfiguration
    updateThingRuntimeConfiguration_telemetryConfiguration,
    updateThingRuntimeConfiguration_thingName,
    updateThingRuntimeConfigurationResponse_httpStatus,

    -- ** GetDeviceDefinitionVersion
    getDeviceDefinitionVersion_nextToken,
    getDeviceDefinitionVersion_deviceDefinitionVersionId,
    getDeviceDefinitionVersion_deviceDefinitionId,
    getDeviceDefinitionVersionResponse_definition,
    getDeviceDefinitionVersionResponse_arn,
    getDeviceDefinitionVersionResponse_nextToken,
    getDeviceDefinitionVersionResponse_creationTimestamp,
    getDeviceDefinitionVersionResponse_version,
    getDeviceDefinitionVersionResponse_id,
    getDeviceDefinitionVersionResponse_httpStatus,

    -- * Types

    -- ** BulkDeployment
    bulkDeployment_bulkDeploymentArn,
    bulkDeployment_bulkDeploymentId,
    bulkDeployment_createdAt,

    -- ** BulkDeploymentMetrics
    bulkDeploymentMetrics_recordsProcessed,
    bulkDeploymentMetrics_retryAttempts,
    bulkDeploymentMetrics_invalidInputRecords,

    -- ** BulkDeploymentResult
    bulkDeploymentResult_deploymentId,
    bulkDeploymentResult_deploymentArn,
    bulkDeploymentResult_createdAt,
    bulkDeploymentResult_deploymentType,
    bulkDeploymentResult_errorDetails,
    bulkDeploymentResult_groupArn,
    bulkDeploymentResult_deploymentStatus,
    bulkDeploymentResult_errorMessage,

    -- ** ConnectivityInfo
    connectivityInfo_portNumber,
    connectivityInfo_id,
    connectivityInfo_metadata,
    connectivityInfo_hostAddress,

    -- ** Connector
    connector_parameters,
    connector_connectorArn,
    connector_id,

    -- ** ConnectorDefinitionVersion
    connectorDefinitionVersion_connectors,

    -- ** Core
    core_syncShadow,
    core_thingArn,
    core_id,
    core_certificateArn,

    -- ** CoreDefinitionVersion
    coreDefinitionVersion_cores,

    -- ** DefinitionInformation
    definitionInformation_latestVersionArn,
    definitionInformation_arn,
    definitionInformation_name,
    definitionInformation_creationTimestamp,
    definitionInformation_id,
    definitionInformation_tags,
    definitionInformation_latestVersion,
    definitionInformation_lastUpdatedTimestamp,

    -- ** Deployment
    deployment_deploymentId,
    deployment_deploymentArn,
    deployment_createdAt,
    deployment_deploymentType,
    deployment_groupArn,

    -- ** Device
    device_syncShadow,
    device_thingArn,
    device_id,
    device_certificateArn,

    -- ** DeviceDefinitionVersion
    deviceDefinitionVersion_devices,

    -- ** ErrorDetail
    errorDetail_detailedErrorCode,
    errorDetail_detailedErrorMessage,

    -- ** Function
    function_functionArn,
    function_functionConfiguration,
    function_id,

    -- ** FunctionConfiguration
    functionConfiguration_memorySize,
    functionConfiguration_execArgs,
    functionConfiguration_environment,
    functionConfiguration_executable,
    functionConfiguration_pinned,
    functionConfiguration_encodingType,
    functionConfiguration_timeout,

    -- ** FunctionConfigurationEnvironment
    functionConfigurationEnvironment_variables,
    functionConfigurationEnvironment_execution,
    functionConfigurationEnvironment_resourceAccessPolicies,
    functionConfigurationEnvironment_accessSysfs,

    -- ** FunctionDefaultConfig
    functionDefaultConfig_execution,

    -- ** FunctionDefaultExecutionConfig
    functionDefaultExecutionConfig_runAs,
    functionDefaultExecutionConfig_isolationMode,

    -- ** FunctionDefinitionVersion
    functionDefinitionVersion_defaultConfig,
    functionDefinitionVersion_functions,

    -- ** FunctionExecutionConfig
    functionExecutionConfig_runAs,
    functionExecutionConfig_isolationMode,

    -- ** FunctionRunAsConfig
    functionRunAsConfig_uid,
    functionRunAsConfig_gid,

    -- ** GreengrassLogger
    greengrassLogger_space,
    greengrassLogger_type,
    greengrassLogger_level,
    greengrassLogger_id,
    greengrassLogger_component,

    -- ** GroupCertificateAuthorityProperties
    groupCertificateAuthorityProperties_groupCertificateAuthorityArn,
    groupCertificateAuthorityProperties_groupCertificateAuthorityId,

    -- ** GroupInformation
    groupInformation_latestVersionArn,
    groupInformation_arn,
    groupInformation_name,
    groupInformation_creationTimestamp,
    groupInformation_id,
    groupInformation_latestVersion,
    groupInformation_lastUpdatedTimestamp,

    -- ** GroupOwnerSetting
    groupOwnerSetting_autoAddGroupOwner,
    groupOwnerSetting_groupOwner,

    -- ** GroupVersion
    groupVersion_resourceDefinitionVersionArn,
    groupVersion_subscriptionDefinitionVersionArn,
    groupVersion_coreDefinitionVersionArn,
    groupVersion_deviceDefinitionVersionArn,
    groupVersion_functionDefinitionVersionArn,
    groupVersion_loggerDefinitionVersionArn,
    groupVersion_connectorDefinitionVersionArn,

    -- ** LocalDeviceResourceData
    localDeviceResourceData_groupOwnerSetting,
    localDeviceResourceData_sourcePath,

    -- ** LocalVolumeResourceData
    localVolumeResourceData_groupOwnerSetting,
    localVolumeResourceData_destinationPath,
    localVolumeResourceData_sourcePath,

    -- ** LoggerDefinitionVersion
    loggerDefinitionVersion_loggers,

    -- ** Resource
    resource_resourceDataContainer,
    resource_id,
    resource_name,

    -- ** ResourceAccessPolicy
    resourceAccessPolicy_permission,
    resourceAccessPolicy_resourceId,

    -- ** ResourceDataContainer
    resourceDataContainer_s3MachineLearningModelResourceData,
    resourceDataContainer_sageMakerMachineLearningModelResourceData,
    resourceDataContainer_localVolumeResourceData,
    resourceDataContainer_localDeviceResourceData,
    resourceDataContainer_secretsManagerSecretResourceData,

    -- ** ResourceDefinitionVersion
    resourceDefinitionVersion_resources,

    -- ** ResourceDownloadOwnerSetting
    resourceDownloadOwnerSetting_groupOwner,
    resourceDownloadOwnerSetting_groupPermission,

    -- ** RuntimeConfiguration
    runtimeConfiguration_telemetryConfiguration,

    -- ** S3MachineLearningModelResourceData
    s3MachineLearningModelResourceData_ownerSetting,
    s3MachineLearningModelResourceData_destinationPath,
    s3MachineLearningModelResourceData_s3Uri,

    -- ** SageMakerMachineLearningModelResourceData
    sageMakerMachineLearningModelResourceData_ownerSetting,
    sageMakerMachineLearningModelResourceData_sageMakerJobArn,
    sageMakerMachineLearningModelResourceData_destinationPath,

    -- ** SecretsManagerSecretResourceData
    secretsManagerSecretResourceData_additionalStagingLabelsToDownload,
    secretsManagerSecretResourceData_arn,

    -- ** Subscription
    subscription_target,
    subscription_id,
    subscription_subject,
    subscription_source,

    -- ** SubscriptionDefinitionVersion
    subscriptionDefinitionVersion_subscriptions,

    -- ** TelemetryConfiguration
    telemetryConfiguration_configurationSyncStatus,
    telemetryConfiguration_telemetry,

    -- ** TelemetryConfigurationUpdate
    telemetryConfigurationUpdate_telemetry,

    -- ** VersionInformation
    versionInformation_arn,
    versionInformation_creationTimestamp,
    versionInformation_version,
    versionInformation_id,
  )
where

import Network.AWS.Greengrass.AssociateRoleToGroup
import Network.AWS.Greengrass.AssociateServiceRoleToAccount
import Network.AWS.Greengrass.CreateConnectorDefinition
import Network.AWS.Greengrass.CreateConnectorDefinitionVersion
import Network.AWS.Greengrass.CreateCoreDefinition
import Network.AWS.Greengrass.CreateCoreDefinitionVersion
import Network.AWS.Greengrass.CreateDeployment
import Network.AWS.Greengrass.CreateDeviceDefinition
import Network.AWS.Greengrass.CreateDeviceDefinitionVersion
import Network.AWS.Greengrass.CreateFunctionDefinition
import Network.AWS.Greengrass.CreateFunctionDefinitionVersion
import Network.AWS.Greengrass.CreateGroup
import Network.AWS.Greengrass.CreateGroupCertificateAuthority
import Network.AWS.Greengrass.CreateGroupVersion
import Network.AWS.Greengrass.CreateLoggerDefinition
import Network.AWS.Greengrass.CreateLoggerDefinitionVersion
import Network.AWS.Greengrass.CreateResourceDefinition
import Network.AWS.Greengrass.CreateResourceDefinitionVersion
import Network.AWS.Greengrass.CreateSoftwareUpdateJob
import Network.AWS.Greengrass.CreateSubscriptionDefinition
import Network.AWS.Greengrass.CreateSubscriptionDefinitionVersion
import Network.AWS.Greengrass.DeleteConnectorDefinition
import Network.AWS.Greengrass.DeleteCoreDefinition
import Network.AWS.Greengrass.DeleteDeviceDefinition
import Network.AWS.Greengrass.DeleteFunctionDefinition
import Network.AWS.Greengrass.DeleteGroup
import Network.AWS.Greengrass.DeleteLoggerDefinition
import Network.AWS.Greengrass.DeleteResourceDefinition
import Network.AWS.Greengrass.DeleteSubscriptionDefinition
import Network.AWS.Greengrass.DisassociateRoleFromGroup
import Network.AWS.Greengrass.DisassociateServiceRoleFromAccount
import Network.AWS.Greengrass.GetAssociatedRole
import Network.AWS.Greengrass.GetBulkDeploymentStatus
import Network.AWS.Greengrass.GetConnectivityInfo
import Network.AWS.Greengrass.GetConnectorDefinition
import Network.AWS.Greengrass.GetConnectorDefinitionVersion
import Network.AWS.Greengrass.GetCoreDefinition
import Network.AWS.Greengrass.GetCoreDefinitionVersion
import Network.AWS.Greengrass.GetDeploymentStatus
import Network.AWS.Greengrass.GetDeviceDefinition
import Network.AWS.Greengrass.GetDeviceDefinitionVersion
import Network.AWS.Greengrass.GetFunctionDefinition
import Network.AWS.Greengrass.GetFunctionDefinitionVersion
import Network.AWS.Greengrass.GetGroup
import Network.AWS.Greengrass.GetGroupCertificateAuthority
import Network.AWS.Greengrass.GetGroupCertificateConfiguration
import Network.AWS.Greengrass.GetGroupVersion
import Network.AWS.Greengrass.GetLoggerDefinition
import Network.AWS.Greengrass.GetLoggerDefinitionVersion
import Network.AWS.Greengrass.GetResourceDefinition
import Network.AWS.Greengrass.GetResourceDefinitionVersion
import Network.AWS.Greengrass.GetServiceRoleForAccount
import Network.AWS.Greengrass.GetSubscriptionDefinition
import Network.AWS.Greengrass.GetSubscriptionDefinitionVersion
import Network.AWS.Greengrass.GetThingRuntimeConfiguration
import Network.AWS.Greengrass.ListBulkDeploymentDetailedReports
import Network.AWS.Greengrass.ListBulkDeployments
import Network.AWS.Greengrass.ListConnectorDefinitionVersions
import Network.AWS.Greengrass.ListConnectorDefinitions
import Network.AWS.Greengrass.ListCoreDefinitionVersions
import Network.AWS.Greengrass.ListCoreDefinitions
import Network.AWS.Greengrass.ListDeployments
import Network.AWS.Greengrass.ListDeviceDefinitionVersions
import Network.AWS.Greengrass.ListDeviceDefinitions
import Network.AWS.Greengrass.ListFunctionDefinitionVersions
import Network.AWS.Greengrass.ListFunctionDefinitions
import Network.AWS.Greengrass.ListGroupCertificateAuthorities
import Network.AWS.Greengrass.ListGroupVersions
import Network.AWS.Greengrass.ListGroups
import Network.AWS.Greengrass.ListLoggerDefinitionVersions
import Network.AWS.Greengrass.ListLoggerDefinitions
import Network.AWS.Greengrass.ListResourceDefinitionVersions
import Network.AWS.Greengrass.ListResourceDefinitions
import Network.AWS.Greengrass.ListSubscriptionDefinitionVersions
import Network.AWS.Greengrass.ListSubscriptionDefinitions
import Network.AWS.Greengrass.ListTagsForResource
import Network.AWS.Greengrass.ResetDeployments
import Network.AWS.Greengrass.StartBulkDeployment
import Network.AWS.Greengrass.StopBulkDeployment
import Network.AWS.Greengrass.TagResource
import Network.AWS.Greengrass.Types.BulkDeployment
import Network.AWS.Greengrass.Types.BulkDeploymentMetrics
import Network.AWS.Greengrass.Types.BulkDeploymentResult
import Network.AWS.Greengrass.Types.ConnectivityInfo
import Network.AWS.Greengrass.Types.Connector
import Network.AWS.Greengrass.Types.ConnectorDefinitionVersion
import Network.AWS.Greengrass.Types.Core
import Network.AWS.Greengrass.Types.CoreDefinitionVersion
import Network.AWS.Greengrass.Types.DefinitionInformation
import Network.AWS.Greengrass.Types.Deployment
import Network.AWS.Greengrass.Types.Device
import Network.AWS.Greengrass.Types.DeviceDefinitionVersion
import Network.AWS.Greengrass.Types.ErrorDetail
import Network.AWS.Greengrass.Types.Function
import Network.AWS.Greengrass.Types.FunctionConfiguration
import Network.AWS.Greengrass.Types.FunctionConfigurationEnvironment
import Network.AWS.Greengrass.Types.FunctionDefaultConfig
import Network.AWS.Greengrass.Types.FunctionDefaultExecutionConfig
import Network.AWS.Greengrass.Types.FunctionDefinitionVersion
import Network.AWS.Greengrass.Types.FunctionExecutionConfig
import Network.AWS.Greengrass.Types.FunctionRunAsConfig
import Network.AWS.Greengrass.Types.GreengrassLogger
import Network.AWS.Greengrass.Types.GroupCertificateAuthorityProperties
import Network.AWS.Greengrass.Types.GroupInformation
import Network.AWS.Greengrass.Types.GroupOwnerSetting
import Network.AWS.Greengrass.Types.GroupVersion
import Network.AWS.Greengrass.Types.LocalDeviceResourceData
import Network.AWS.Greengrass.Types.LocalVolumeResourceData
import Network.AWS.Greengrass.Types.LoggerDefinitionVersion
import Network.AWS.Greengrass.Types.Resource
import Network.AWS.Greengrass.Types.ResourceAccessPolicy
import Network.AWS.Greengrass.Types.ResourceDataContainer
import Network.AWS.Greengrass.Types.ResourceDefinitionVersion
import Network.AWS.Greengrass.Types.ResourceDownloadOwnerSetting
import Network.AWS.Greengrass.Types.RuntimeConfiguration
import Network.AWS.Greengrass.Types.S3MachineLearningModelResourceData
import Network.AWS.Greengrass.Types.SageMakerMachineLearningModelResourceData
import Network.AWS.Greengrass.Types.SecretsManagerSecretResourceData
import Network.AWS.Greengrass.Types.Subscription
import Network.AWS.Greengrass.Types.SubscriptionDefinitionVersion
import Network.AWS.Greengrass.Types.TelemetryConfiguration
import Network.AWS.Greengrass.Types.TelemetryConfigurationUpdate
import Network.AWS.Greengrass.Types.VersionInformation
import Network.AWS.Greengrass.UntagResource
import Network.AWS.Greengrass.UpdateConnectivityInfo
import Network.AWS.Greengrass.UpdateConnectorDefinition
import Network.AWS.Greengrass.UpdateCoreDefinition
import Network.AWS.Greengrass.UpdateDeviceDefinition
import Network.AWS.Greengrass.UpdateFunctionDefinition
import Network.AWS.Greengrass.UpdateGroup
import Network.AWS.Greengrass.UpdateGroupCertificateConfiguration
import Network.AWS.Greengrass.UpdateLoggerDefinition
import Network.AWS.Greengrass.UpdateResourceDefinition
import Network.AWS.Greengrass.UpdateSubscriptionDefinition
import Network.AWS.Greengrass.UpdateThingRuntimeConfiguration
