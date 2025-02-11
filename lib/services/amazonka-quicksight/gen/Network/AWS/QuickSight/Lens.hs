{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.QuickSight.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Lens
  ( -- * Operations

    -- ** CancelIngestion
    cancelIngestion_awsAccountId,
    cancelIngestion_dataSetId,
    cancelIngestion_ingestionId,
    cancelIngestionResponse_requestId,
    cancelIngestionResponse_arn,
    cancelIngestionResponse_ingestionId,
    cancelIngestionResponse_status,

    -- ** UpdateDataSource
    updateDataSource_dataSourceParameters,
    updateDataSource_sslProperties,
    updateDataSource_credentials,
    updateDataSource_vpcConnectionProperties,
    updateDataSource_awsAccountId,
    updateDataSource_dataSourceId,
    updateDataSource_name,
    updateDataSourceResponse_requestId,
    updateDataSourceResponse_arn,
    updateDataSourceResponse_dataSourceId,
    updateDataSourceResponse_updateStatus,
    updateDataSourceResponse_status,

    -- ** DeleteUserByPrincipalId
    deleteUserByPrincipalId_principalId,
    deleteUserByPrincipalId_awsAccountId,
    deleteUserByPrincipalId_namespace,
    deleteUserByPrincipalIdResponse_requestId,
    deleteUserByPrincipalIdResponse_status,

    -- ** DeleteDataSource
    deleteDataSource_awsAccountId,
    deleteDataSource_dataSourceId,
    deleteDataSourceResponse_requestId,
    deleteDataSourceResponse_arn,
    deleteDataSourceResponse_dataSourceId,
    deleteDataSourceResponse_status,

    -- ** CreateTemplate
    createTemplate_versionDescription,
    createTemplate_name,
    createTemplate_permissions,
    createTemplate_tags,
    createTemplate_awsAccountId,
    createTemplate_templateId,
    createTemplate_sourceEntity,
    createTemplateResponse_requestId,
    createTemplateResponse_arn,
    createTemplateResponse_creationStatus,
    createTemplateResponse_templateId,
    createTemplateResponse_versionArn,
    createTemplateResponse_status,

    -- ** DeleteGroupMembership
    deleteGroupMembership_memberName,
    deleteGroupMembership_groupName,
    deleteGroupMembership_awsAccountId,
    deleteGroupMembership_namespace,
    deleteGroupMembershipResponse_requestId,
    deleteGroupMembershipResponse_status,

    -- ** DescribeThemePermissions
    describeThemePermissions_awsAccountId,
    describeThemePermissions_themeId,
    describeThemePermissionsResponse_requestId,
    describeThemePermissionsResponse_themeArn,
    describeThemePermissionsResponse_themeId,
    describeThemePermissionsResponse_permissions,
    describeThemePermissionsResponse_status,

    -- ** ListGroupMemberships
    listGroupMemberships_nextToken,
    listGroupMemberships_maxResults,
    listGroupMemberships_groupName,
    listGroupMemberships_awsAccountId,
    listGroupMemberships_namespace,
    listGroupMembershipsResponse_requestId,
    listGroupMembershipsResponse_nextToken,
    listGroupMembershipsResponse_groupMemberList,
    listGroupMembershipsResponse_status,

    -- ** ListFolders
    listFolders_nextToken,
    listFolders_maxResults,
    listFolders_awsAccountId,
    listFoldersResponse_requestId,
    listFoldersResponse_nextToken,
    listFoldersResponse_folderSummaryList,
    listFoldersResponse_status,

    -- ** DescribeDataSetPermissions
    describeDataSetPermissions_awsAccountId,
    describeDataSetPermissions_dataSetId,
    describeDataSetPermissionsResponse_requestId,
    describeDataSetPermissionsResponse_dataSetArn,
    describeDataSetPermissionsResponse_dataSetId,
    describeDataSetPermissionsResponse_permissions,
    describeDataSetPermissionsResponse_status,

    -- ** DeleteIAMPolicyAssignment
    deleteIAMPolicyAssignment_awsAccountId,
    deleteIAMPolicyAssignment_assignmentName,
    deleteIAMPolicyAssignment_namespace,
    deleteIAMPolicyAssignmentResponse_requestId,
    deleteIAMPolicyAssignmentResponse_assignmentName,
    deleteIAMPolicyAssignmentResponse_status,

    -- ** UpdateIAMPolicyAssignment
    updateIAMPolicyAssignment_assignmentStatus,
    updateIAMPolicyAssignment_policyArn,
    updateIAMPolicyAssignment_identities,
    updateIAMPolicyAssignment_awsAccountId,
    updateIAMPolicyAssignment_assignmentName,
    updateIAMPolicyAssignment_namespace,
    updateIAMPolicyAssignmentResponse_requestId,
    updateIAMPolicyAssignmentResponse_assignmentName,
    updateIAMPolicyAssignmentResponse_assignmentStatus,
    updateIAMPolicyAssignmentResponse_policyArn,
    updateIAMPolicyAssignmentResponse_identities,
    updateIAMPolicyAssignmentResponse_assignmentId,
    updateIAMPolicyAssignmentResponse_status,

    -- ** DescribeIngestion
    describeIngestion_awsAccountId,
    describeIngestion_dataSetId,
    describeIngestion_ingestionId,
    describeIngestionResponse_requestId,
    describeIngestionResponse_ingestion,
    describeIngestionResponse_status,

    -- ** DeleteFolder
    deleteFolder_awsAccountId,
    deleteFolder_folderId,
    deleteFolderResponse_requestId,
    deleteFolderResponse_arn,
    deleteFolderResponse_folderId,
    deleteFolderResponse_status,

    -- ** UpdateFolder
    updateFolder_awsAccountId,
    updateFolder_folderId,
    updateFolder_name,
    updateFolderResponse_requestId,
    updateFolderResponse_arn,
    updateFolderResponse_folderId,
    updateFolderResponse_status,

    -- ** ListUserGroups
    listUserGroups_nextToken,
    listUserGroups_maxResults,
    listUserGroups_userName,
    listUserGroups_awsAccountId,
    listUserGroups_namespace,
    listUserGroupsResponse_requestId,
    listUserGroupsResponse_groupList,
    listUserGroupsResponse_nextToken,
    listUserGroupsResponse_status,

    -- ** UpdateDashboardPublishedVersion
    updateDashboardPublishedVersion_awsAccountId,
    updateDashboardPublishedVersion_dashboardId,
    updateDashboardPublishedVersion_versionNumber,
    updateDashboardPublishedVersionResponse_requestId,
    updateDashboardPublishedVersionResponse_dashboardId,
    updateDashboardPublishedVersionResponse_dashboardArn,
    updateDashboardPublishedVersionResponse_status,

    -- ** DescribeAnalysisPermissions
    describeAnalysisPermissions_awsAccountId,
    describeAnalysisPermissions_analysisId,
    describeAnalysisPermissionsResponse_requestId,
    describeAnalysisPermissionsResponse_analysisId,
    describeAnalysisPermissionsResponse_analysisArn,
    describeAnalysisPermissionsResponse_permissions,
    describeAnalysisPermissionsResponse_status,

    -- ** DeleteTemplateAlias
    deleteTemplateAlias_awsAccountId,
    deleteTemplateAlias_templateId,
    deleteTemplateAlias_aliasName,
    deleteTemplateAliasResponse_requestId,
    deleteTemplateAliasResponse_arn,
    deleteTemplateAliasResponse_templateId,
    deleteTemplateAliasResponse_aliasName,
    deleteTemplateAliasResponse_status,

    -- ** UpdateTemplateAlias
    updateTemplateAlias_awsAccountId,
    updateTemplateAlias_templateId,
    updateTemplateAlias_aliasName,
    updateTemplateAlias_templateVersionNumber,
    updateTemplateAliasResponse_requestId,
    updateTemplateAliasResponse_templateAlias,
    updateTemplateAliasResponse_status,

    -- ** DescribeAnalysis
    describeAnalysis_awsAccountId,
    describeAnalysis_analysisId,
    describeAnalysisResponse_requestId,
    describeAnalysisResponse_analysis,
    describeAnalysisResponse_status,

    -- ** UpdateFolderPermissions
    updateFolderPermissions_revokePermissions,
    updateFolderPermissions_grantPermissions,
    updateFolderPermissions_awsAccountId,
    updateFolderPermissions_folderId,
    updateFolderPermissionsResponse_requestId,
    updateFolderPermissionsResponse_status,
    updateFolderPermissionsResponse_arn,
    updateFolderPermissionsResponse_folderId,
    updateFolderPermissionsResponse_permissions,
    updateFolderPermissionsResponse_httpStatus,

    -- ** DescribeDataSet
    describeDataSet_awsAccountId,
    describeDataSet_dataSetId,
    describeDataSetResponse_requestId,
    describeDataSetResponse_dataSet,
    describeDataSetResponse_status,

    -- ** ListNamespaces
    listNamespaces_nextToken,
    listNamespaces_maxResults,
    listNamespaces_awsAccountId,
    listNamespacesResponse_requestId,
    listNamespacesResponse_namespaces,
    listNamespacesResponse_nextToken,
    listNamespacesResponse_status,

    -- ** DeleteNamespace
    deleteNamespace_awsAccountId,
    deleteNamespace_namespace,
    deleteNamespaceResponse_requestId,
    deleteNamespaceResponse_status,

    -- ** CreateFolder
    createFolder_parentFolderArn,
    createFolder_name,
    createFolder_permissions,
    createFolder_folderType,
    createFolder_tags,
    createFolder_awsAccountId,
    createFolder_folderId,
    createFolderResponse_requestId,
    createFolderResponse_arn,
    createFolderResponse_folderId,
    createFolderResponse_status,

    -- ** DescribeGroup
    describeGroup_groupName,
    describeGroup_awsAccountId,
    describeGroup_namespace,
    describeGroupResponse_requestId,
    describeGroupResponse_group,
    describeGroupResponse_status,

    -- ** DescribeThemeAlias
    describeThemeAlias_awsAccountId,
    describeThemeAlias_themeId,
    describeThemeAlias_aliasName,
    describeThemeAliasResponse_requestId,
    describeThemeAliasResponse_themeAlias,
    describeThemeAliasResponse_status,

    -- ** ListTagsForResource
    listTagsForResource_resourceArn,
    listTagsForResourceResponse_requestId,
    listTagsForResourceResponse_tags,
    listTagsForResourceResponse_status,

    -- ** UpdateAccountSettings
    updateAccountSettings_notificationEmail,
    updateAccountSettings_awsAccountId,
    updateAccountSettings_defaultNamespace,
    updateAccountSettingsResponse_requestId,
    updateAccountSettingsResponse_status,

    -- ** DescribeTemplatePermissions
    describeTemplatePermissions_awsAccountId,
    describeTemplatePermissions_templateId,
    describeTemplatePermissionsResponse_requestId,
    describeTemplatePermissionsResponse_templateId,
    describeTemplatePermissionsResponse_templateArn,
    describeTemplatePermissionsResponse_permissions,
    describeTemplatePermissionsResponse_status,

    -- ** ListDashboards
    listDashboards_nextToken,
    listDashboards_maxResults,
    listDashboards_awsAccountId,
    listDashboardsResponse_requestId,
    listDashboardsResponse_nextToken,
    listDashboardsResponse_dashboardSummaryList,
    listDashboardsResponse_status,

    -- ** DescribeTemplate
    describeTemplate_aliasName,
    describeTemplate_versionNumber,
    describeTemplate_awsAccountId,
    describeTemplate_templateId,
    describeTemplateResponse_requestId,
    describeTemplateResponse_template,
    describeTemplateResponse_status,

    -- ** DeleteFolderMembership
    deleteFolderMembership_awsAccountId,
    deleteFolderMembership_folderId,
    deleteFolderMembership_memberId,
    deleteFolderMembership_memberType,
    deleteFolderMembershipResponse_requestId,
    deleteFolderMembershipResponse_status,
    deleteFolderMembershipResponse_httpStatus,

    -- ** CreateTheme
    createTheme_versionDescription,
    createTheme_permissions,
    createTheme_tags,
    createTheme_awsAccountId,
    createTheme_themeId,
    createTheme_name,
    createTheme_baseThemeId,
    createTheme_configuration,
    createThemeResponse_requestId,
    createThemeResponse_themeId,
    createThemeResponse_arn,
    createThemeResponse_creationStatus,
    createThemeResponse_versionArn,
    createThemeResponse_status,

    -- ** ListUsers
    listUsers_nextToken,
    listUsers_maxResults,
    listUsers_awsAccountId,
    listUsers_namespace,
    listUsersResponse_requestId,
    listUsersResponse_userList,
    listUsersResponse_nextToken,
    listUsersResponse_status,

    -- ** CreateFolderMembership
    createFolderMembership_awsAccountId,
    createFolderMembership_folderId,
    createFolderMembership_memberId,
    createFolderMembership_memberType,
    createFolderMembershipResponse_requestId,
    createFolderMembershipResponse_status,
    createFolderMembershipResponse_folderMember,
    createFolderMembershipResponse_httpStatus,

    -- ** UpdateThemePermissions
    updateThemePermissions_revokePermissions,
    updateThemePermissions_grantPermissions,
    updateThemePermissions_awsAccountId,
    updateThemePermissions_themeId,
    updateThemePermissionsResponse_requestId,
    updateThemePermissionsResponse_themeArn,
    updateThemePermissionsResponse_themeId,
    updateThemePermissionsResponse_permissions,
    updateThemePermissionsResponse_status,

    -- ** GetSessionEmbedUrl
    getSessionEmbedUrl_sessionLifetimeInMinutes,
    getSessionEmbedUrl_entryPoint,
    getSessionEmbedUrl_userArn,
    getSessionEmbedUrl_awsAccountId,
    getSessionEmbedUrlResponse_requestId,
    getSessionEmbedUrlResponse_embedUrl,
    getSessionEmbedUrlResponse_status,

    -- ** CreateDashboard
    createDashboard_themeArn,
    createDashboard_dashboardPublishOptions,
    createDashboard_versionDescription,
    createDashboard_parameters,
    createDashboard_permissions,
    createDashboard_tags,
    createDashboard_awsAccountId,
    createDashboard_dashboardId,
    createDashboard_name,
    createDashboard_sourceEntity,
    createDashboardResponse_requestId,
    createDashboardResponse_arn,
    createDashboardResponse_creationStatus,
    createDashboardResponse_dashboardId,
    createDashboardResponse_versionArn,
    createDashboardResponse_status,

    -- ** RegisterUser
    registerUser_userName,
    registerUser_customPermissionsName,
    registerUser_customFederationProviderUrl,
    registerUser_externalLoginFederationProviderType,
    registerUser_iamArn,
    registerUser_externalLoginId,
    registerUser_sessionName,
    registerUser_identityType,
    registerUser_email,
    registerUser_userRole,
    registerUser_awsAccountId,
    registerUser_namespace,
    registerUserResponse_requestId,
    registerUserResponse_userInvitationUrl,
    registerUserResponse_user,
    registerUserResponse_status,

    -- ** DescribeDataSource
    describeDataSource_awsAccountId,
    describeDataSource_dataSourceId,
    describeDataSourceResponse_requestId,
    describeDataSourceResponse_dataSource,
    describeDataSourceResponse_status,

    -- ** DescribeFolderResolvedPermissions
    describeFolderResolvedPermissions_awsAccountId,
    describeFolderResolvedPermissions_folderId,
    describeFolderResolvedPermissionsResponse_requestId,
    describeFolderResolvedPermissionsResponse_arn,
    describeFolderResolvedPermissionsResponse_folderId,
    describeFolderResolvedPermissionsResponse_permissions,
    describeFolderResolvedPermissionsResponse_status,

    -- ** UpdateAnalysisPermissions
    updateAnalysisPermissions_revokePermissions,
    updateAnalysisPermissions_grantPermissions,
    updateAnalysisPermissions_awsAccountId,
    updateAnalysisPermissions_analysisId,
    updateAnalysisPermissionsResponse_requestId,
    updateAnalysisPermissionsResponse_analysisId,
    updateAnalysisPermissionsResponse_analysisArn,
    updateAnalysisPermissionsResponse_permissions,
    updateAnalysisPermissionsResponse_status,

    -- ** DeleteDataSet
    deleteDataSet_awsAccountId,
    deleteDataSet_dataSetId,
    deleteDataSetResponse_requestId,
    deleteDataSetResponse_arn,
    deleteDataSetResponse_dataSetId,
    deleteDataSetResponse_status,

    -- ** UpdateDataSet
    updateDataSet_fieldFolders,
    updateDataSet_columnGroups,
    updateDataSet_dataSetUsageConfiguration,
    updateDataSet_rowLevelPermissionTagConfiguration,
    updateDataSet_rowLevelPermissionDataSet,
    updateDataSet_columnLevelPermissionRules,
    updateDataSet_logicalTableMap,
    updateDataSet_awsAccountId,
    updateDataSet_dataSetId,
    updateDataSet_name,
    updateDataSet_physicalTableMap,
    updateDataSet_importMode,
    updateDataSetResponse_requestId,
    updateDataSetResponse_ingestionArn,
    updateDataSetResponse_arn,
    updateDataSetResponse_ingestionId,
    updateDataSetResponse_dataSetId,
    updateDataSetResponse_status,

    -- ** ListThemeAliases
    listThemeAliases_nextToken,
    listThemeAliases_maxResults,
    listThemeAliases_awsAccountId,
    listThemeAliases_themeId,
    listThemeAliasesResponse_requestId,
    listThemeAliasesResponse_nextToken,
    listThemeAliasesResponse_themeAliasList,
    listThemeAliasesResponse_status,

    -- ** UpdateAnalysis
    updateAnalysis_themeArn,
    updateAnalysis_parameters,
    updateAnalysis_awsAccountId,
    updateAnalysis_analysisId,
    updateAnalysis_name,
    updateAnalysis_sourceEntity,
    updateAnalysisResponse_requestId,
    updateAnalysisResponse_analysisId,
    updateAnalysisResponse_arn,
    updateAnalysisResponse_updateStatus,
    updateAnalysisResponse_status,

    -- ** DeleteAnalysis
    deleteAnalysis_recoveryWindowInDays,
    deleteAnalysis_forceDeleteWithoutRecovery,
    deleteAnalysis_awsAccountId,
    deleteAnalysis_analysisId,
    deleteAnalysisResponse_requestId,
    deleteAnalysisResponse_analysisId,
    deleteAnalysisResponse_arn,
    deleteAnalysisResponse_deletionTime,
    deleteAnalysisResponse_status,

    -- ** SearchFolders
    searchFolders_nextToken,
    searchFolders_maxResults,
    searchFolders_awsAccountId,
    searchFolders_filters,
    searchFoldersResponse_requestId,
    searchFoldersResponse_nextToken,
    searchFoldersResponse_folderSummaryList,
    searchFoldersResponse_status,

    -- ** DescribeFolderPermissions
    describeFolderPermissions_awsAccountId,
    describeFolderPermissions_folderId,
    describeFolderPermissionsResponse_requestId,
    describeFolderPermissionsResponse_arn,
    describeFolderPermissionsResponse_folderId,
    describeFolderPermissionsResponse_permissions,
    describeFolderPermissionsResponse_status,

    -- ** UpdateDataSetPermissions
    updateDataSetPermissions_revokePermissions,
    updateDataSetPermissions_grantPermissions,
    updateDataSetPermissions_awsAccountId,
    updateDataSetPermissions_dataSetId,
    updateDataSetPermissionsResponse_requestId,
    updateDataSetPermissionsResponse_dataSetArn,
    updateDataSetPermissionsResponse_dataSetId,
    updateDataSetPermissionsResponse_status,

    -- ** CreateThemeAlias
    createThemeAlias_awsAccountId,
    createThemeAlias_themeId,
    createThemeAlias_aliasName,
    createThemeAlias_themeVersionNumber,
    createThemeAliasResponse_requestId,
    createThemeAliasResponse_themeAlias,
    createThemeAliasResponse_status,

    -- ** DescribeFolder
    describeFolder_awsAccountId,
    describeFolder_folderId,
    describeFolderResponse_requestId,
    describeFolderResponse_folder,
    describeFolderResponse_status,

    -- ** DescribeTemplateAlias
    describeTemplateAlias_awsAccountId,
    describeTemplateAlias_templateId,
    describeTemplateAlias_aliasName,
    describeTemplateAliasResponse_requestId,
    describeTemplateAliasResponse_templateAlias,
    describeTemplateAliasResponse_status,

    -- ** DescribeIAMPolicyAssignment
    describeIAMPolicyAssignment_awsAccountId,
    describeIAMPolicyAssignment_assignmentName,
    describeIAMPolicyAssignment_namespace,
    describeIAMPolicyAssignmentResponse_requestId,
    describeIAMPolicyAssignmentResponse_iAMPolicyAssignment,
    describeIAMPolicyAssignmentResponse_status,

    -- ** CreateIngestion
    createIngestion_ingestionType,
    createIngestion_dataSetId,
    createIngestion_ingestionId,
    createIngestion_awsAccountId,
    createIngestionResponse_requestId,
    createIngestionResponse_arn,
    createIngestionResponse_ingestionId,
    createIngestionResponse_ingestionStatus,
    createIngestionResponse_status,

    -- ** CreateDataSet
    createDataSet_fieldFolders,
    createDataSet_columnGroups,
    createDataSet_dataSetUsageConfiguration,
    createDataSet_rowLevelPermissionTagConfiguration,
    createDataSet_rowLevelPermissionDataSet,
    createDataSet_permissions,
    createDataSet_columnLevelPermissionRules,
    createDataSet_tags,
    createDataSet_logicalTableMap,
    createDataSet_awsAccountId,
    createDataSet_dataSetId,
    createDataSet_name,
    createDataSet_physicalTableMap,
    createDataSet_importMode,
    createDataSetResponse_requestId,
    createDataSetResponse_ingestionArn,
    createDataSetResponse_arn,
    createDataSetResponse_ingestionId,
    createDataSetResponse_dataSetId,
    createDataSetResponse_status,

    -- ** CreateDataSource
    createDataSource_dataSourceParameters,
    createDataSource_sslProperties,
    createDataSource_credentials,
    createDataSource_vpcConnectionProperties,
    createDataSource_permissions,
    createDataSource_tags,
    createDataSource_awsAccountId,
    createDataSource_dataSourceId,
    createDataSource_name,
    createDataSource_type,
    createDataSourceResponse_requestId,
    createDataSourceResponse_arn,
    createDataSourceResponse_creationStatus,
    createDataSourceResponse_dataSourceId,
    createDataSourceResponse_status,

    -- ** ListTemplates
    listTemplates_nextToken,
    listTemplates_maxResults,
    listTemplates_awsAccountId,
    listTemplatesResponse_requestId,
    listTemplatesResponse_templateSummaryList,
    listTemplatesResponse_nextToken,
    listTemplatesResponse_status,

    -- ** DescribeAccountSettings
    describeAccountSettings_awsAccountId,
    describeAccountSettingsResponse_requestId,
    describeAccountSettingsResponse_accountSettings,
    describeAccountSettingsResponse_status,

    -- ** UpdateTemplate
    updateTemplate_versionDescription,
    updateTemplate_name,
    updateTemplate_awsAccountId,
    updateTemplate_templateId,
    updateTemplate_sourceEntity,
    updateTemplateResponse_requestId,
    updateTemplateResponse_arn,
    updateTemplateResponse_creationStatus,
    updateTemplateResponse_templateId,
    updateTemplateResponse_versionArn,
    updateTemplateResponse_status,

    -- ** DeleteTemplate
    deleteTemplate_versionNumber,
    deleteTemplate_awsAccountId,
    deleteTemplate_templateId,
    deleteTemplateResponse_requestId,
    deleteTemplateResponse_arn,
    deleteTemplateResponse_templateId,
    deleteTemplateResponse_status,

    -- ** UpdateTemplatePermissions
    updateTemplatePermissions_revokePermissions,
    updateTemplatePermissions_grantPermissions,
    updateTemplatePermissions_awsAccountId,
    updateTemplatePermissions_templateId,
    updateTemplatePermissionsResponse_requestId,
    updateTemplatePermissionsResponse_templateId,
    updateTemplatePermissionsResponse_templateArn,
    updateTemplatePermissionsResponse_permissions,
    updateTemplatePermissionsResponse_status,

    -- ** SearchDashboards
    searchDashboards_nextToken,
    searchDashboards_maxResults,
    searchDashboards_awsAccountId,
    searchDashboards_filters,
    searchDashboardsResponse_requestId,
    searchDashboardsResponse_nextToken,
    searchDashboardsResponse_dashboardSummaryList,
    searchDashboardsResponse_status,

    -- ** UpdateDataSourcePermissions
    updateDataSourcePermissions_revokePermissions,
    updateDataSourcePermissions_grantPermissions,
    updateDataSourcePermissions_awsAccountId,
    updateDataSourcePermissions_dataSourceId,
    updateDataSourcePermissionsResponse_requestId,
    updateDataSourcePermissionsResponse_dataSourceId,
    updateDataSourcePermissionsResponse_dataSourceArn,
    updateDataSourcePermissionsResponse_status,

    -- ** UpdateIpRestriction
    updateIpRestriction_ipRestrictionRuleMap,
    updateIpRestriction_enabled,
    updateIpRestriction_awsAccountId,
    updateIpRestrictionResponse_requestId,
    updateIpRestrictionResponse_awsAccountId,
    updateIpRestrictionResponse_status,

    -- ** DescribeUser
    describeUser_userName,
    describeUser_awsAccountId,
    describeUser_namespace,
    describeUserResponse_requestId,
    describeUserResponse_user,
    describeUserResponse_status,

    -- ** DescribeTheme
    describeTheme_aliasName,
    describeTheme_versionNumber,
    describeTheme_awsAccountId,
    describeTheme_themeId,
    describeThemeResponse_requestId,
    describeThemeResponse_theme,
    describeThemeResponse_status,

    -- ** ListAnalyses
    listAnalyses_nextToken,
    listAnalyses_maxResults,
    listAnalyses_awsAccountId,
    listAnalysesResponse_requestId,
    listAnalysesResponse_nextToken,
    listAnalysesResponse_analysisSummaryList,
    listAnalysesResponse_status,

    -- ** ListDataSources
    listDataSources_nextToken,
    listDataSources_maxResults,
    listDataSources_awsAccountId,
    listDataSourcesResponse_requestId,
    listDataSourcesResponse_dataSources,
    listDataSourcesResponse_nextToken,
    listDataSourcesResponse_status,

    -- ** ListFolderMembers
    listFolderMembers_nextToken,
    listFolderMembers_maxResults,
    listFolderMembers_awsAccountId,
    listFolderMembers_folderId,
    listFolderMembersResponse_requestId,
    listFolderMembersResponse_folderMemberList,
    listFolderMembersResponse_nextToken,
    listFolderMembersResponse_status,

    -- ** ListIAMPolicyAssignments
    listIAMPolicyAssignments_nextToken,
    listIAMPolicyAssignments_assignmentStatus,
    listIAMPolicyAssignments_maxResults,
    listIAMPolicyAssignments_awsAccountId,
    listIAMPolicyAssignments_namespace,
    listIAMPolicyAssignmentsResponse_requestId,
    listIAMPolicyAssignmentsResponse_nextToken,
    listIAMPolicyAssignmentsResponse_iAMPolicyAssignments,
    listIAMPolicyAssignmentsResponse_status,

    -- ** ListDashboardVersions
    listDashboardVersions_nextToken,
    listDashboardVersions_maxResults,
    listDashboardVersions_awsAccountId,
    listDashboardVersions_dashboardId,
    listDashboardVersionsResponse_requestId,
    listDashboardVersionsResponse_dashboardVersionSummaryList,
    listDashboardVersionsResponse_nextToken,
    listDashboardVersionsResponse_status,

    -- ** CreateNamespace
    createNamespace_tags,
    createNamespace_awsAccountId,
    createNamespace_namespace,
    createNamespace_identityStore,
    createNamespaceResponse_requestId,
    createNamespaceResponse_capacityRegion,
    createNamespaceResponse_arn,
    createNamespaceResponse_creationStatus,
    createNamespaceResponse_name,
    createNamespaceResponse_identityStore,
    createNamespaceResponse_status,

    -- ** CreateIAMPolicyAssignment
    createIAMPolicyAssignment_policyArn,
    createIAMPolicyAssignment_identities,
    createIAMPolicyAssignment_awsAccountId,
    createIAMPolicyAssignment_assignmentName,
    createIAMPolicyAssignment_assignmentStatus,
    createIAMPolicyAssignment_namespace,
    createIAMPolicyAssignmentResponse_requestId,
    createIAMPolicyAssignmentResponse_assignmentName,
    createIAMPolicyAssignmentResponse_assignmentStatus,
    createIAMPolicyAssignmentResponse_policyArn,
    createIAMPolicyAssignmentResponse_identities,
    createIAMPolicyAssignmentResponse_assignmentId,
    createIAMPolicyAssignmentResponse_status,

    -- ** RestoreAnalysis
    restoreAnalysis_awsAccountId,
    restoreAnalysis_analysisId,
    restoreAnalysisResponse_requestId,
    restoreAnalysisResponse_analysisId,
    restoreAnalysisResponse_arn,
    restoreAnalysisResponse_status,

    -- ** CreateTemplateAlias
    createTemplateAlias_awsAccountId,
    createTemplateAlias_templateId,
    createTemplateAlias_aliasName,
    createTemplateAlias_templateVersionNumber,
    createTemplateAliasResponse_requestId,
    createTemplateAliasResponse_templateAlias,
    createTemplateAliasResponse_status,

    -- ** ListTemplateAliases
    listTemplateAliases_nextToken,
    listTemplateAliases_maxResults,
    listTemplateAliases_awsAccountId,
    listTemplateAliases_templateId,
    listTemplateAliasesResponse_requestId,
    listTemplateAliasesResponse_templateAliasList,
    listTemplateAliasesResponse_nextToken,
    listTemplateAliasesResponse_status,

    -- ** GetDashboardEmbedUrl
    getDashboardEmbedUrl_sessionLifetimeInMinutes,
    getDashboardEmbedUrl_statePersistenceEnabled,
    getDashboardEmbedUrl_namespace,
    getDashboardEmbedUrl_additionalDashboardIds,
    getDashboardEmbedUrl_undoRedoDisabled,
    getDashboardEmbedUrl_userArn,
    getDashboardEmbedUrl_resetDisabled,
    getDashboardEmbedUrl_awsAccountId,
    getDashboardEmbedUrl_dashboardId,
    getDashboardEmbedUrl_identityType,
    getDashboardEmbedUrlResponse_requestId,
    getDashboardEmbedUrlResponse_embedUrl,
    getDashboardEmbedUrlResponse_status,

    -- ** GenerateEmbedUrlForAnonymousUser
    generateEmbedUrlForAnonymousUser_sessionLifetimeInMinutes,
    generateEmbedUrlForAnonymousUser_sessionTags,
    generateEmbedUrlForAnonymousUser_awsAccountId,
    generateEmbedUrlForAnonymousUser_namespace,
    generateEmbedUrlForAnonymousUser_authorizedResourceArns,
    generateEmbedUrlForAnonymousUser_experienceConfiguration,
    generateEmbedUrlForAnonymousUserResponse_status,
    generateEmbedUrlForAnonymousUserResponse_embedUrl,
    generateEmbedUrlForAnonymousUserResponse_requestId,

    -- ** ListThemeVersions
    listThemeVersions_nextToken,
    listThemeVersions_maxResults,
    listThemeVersions_awsAccountId,
    listThemeVersions_themeId,
    listThemeVersionsResponse_requestId,
    listThemeVersionsResponse_themeVersionSummaryList,
    listThemeVersionsResponse_nextToken,
    listThemeVersionsResponse_status,

    -- ** UpdateDashboardPermissions
    updateDashboardPermissions_revokePermissions,
    updateDashboardPermissions_grantPermissions,
    updateDashboardPermissions_awsAccountId,
    updateDashboardPermissions_dashboardId,
    updateDashboardPermissionsResponse_requestId,
    updateDashboardPermissionsResponse_dashboardId,
    updateDashboardPermissionsResponse_permissions,
    updateDashboardPermissionsResponse_dashboardArn,
    updateDashboardPermissionsResponse_status,

    -- ** ListIAMPolicyAssignmentsForUser
    listIAMPolicyAssignmentsForUser_nextToken,
    listIAMPolicyAssignmentsForUser_maxResults,
    listIAMPolicyAssignmentsForUser_awsAccountId,
    listIAMPolicyAssignmentsForUser_userName,
    listIAMPolicyAssignmentsForUser_namespace,
    listIAMPolicyAssignmentsForUserResponse_requestId,
    listIAMPolicyAssignmentsForUserResponse_activeAssignments,
    listIAMPolicyAssignmentsForUserResponse_nextToken,
    listIAMPolicyAssignmentsForUserResponse_status,

    -- ** DeleteAccountCustomization
    deleteAccountCustomization_namespace,
    deleteAccountCustomization_awsAccountId,
    deleteAccountCustomizationResponse_requestId,
    deleteAccountCustomizationResponse_status,

    -- ** UpdateAccountCustomization
    updateAccountCustomization_namespace,
    updateAccountCustomization_awsAccountId,
    updateAccountCustomization_accountCustomization,
    updateAccountCustomizationResponse_requestId,
    updateAccountCustomizationResponse_accountCustomization,
    updateAccountCustomizationResponse_arn,
    updateAccountCustomizationResponse_namespace,
    updateAccountCustomizationResponse_awsAccountId,
    updateAccountCustomizationResponse_status,

    -- ** DeleteDashboard
    deleteDashboard_versionNumber,
    deleteDashboard_awsAccountId,
    deleteDashboard_dashboardId,
    deleteDashboardResponse_requestId,
    deleteDashboardResponse_arn,
    deleteDashboardResponse_dashboardId,
    deleteDashboardResponse_status,

    -- ** UpdateDashboard
    updateDashboard_themeArn,
    updateDashboard_dashboardPublishOptions,
    updateDashboard_versionDescription,
    updateDashboard_parameters,
    updateDashboard_awsAccountId,
    updateDashboard_dashboardId,
    updateDashboard_name,
    updateDashboard_sourceEntity,
    updateDashboardResponse_requestId,
    updateDashboardResponse_status,
    updateDashboardResponse_arn,
    updateDashboardResponse_creationStatus,
    updateDashboardResponse_dashboardId,
    updateDashboardResponse_versionArn,
    updateDashboardResponse_httpStatus,

    -- ** DescribeDataSourcePermissions
    describeDataSourcePermissions_awsAccountId,
    describeDataSourcePermissions_dataSourceId,
    describeDataSourcePermissionsResponse_requestId,
    describeDataSourcePermissionsResponse_dataSourceId,
    describeDataSourcePermissionsResponse_dataSourceArn,
    describeDataSourcePermissionsResponse_permissions,
    describeDataSourcePermissionsResponse_status,

    -- ** UpdateUser
    updateUser_unapplyCustomPermissions,
    updateUser_customPermissionsName,
    updateUser_customFederationProviderUrl,
    updateUser_externalLoginFederationProviderType,
    updateUser_externalLoginId,
    updateUser_userName,
    updateUser_awsAccountId,
    updateUser_namespace,
    updateUser_email,
    updateUser_role,
    updateUserResponse_requestId,
    updateUserResponse_user,
    updateUserResponse_status,

    -- ** DeleteUser
    deleteUser_userName,
    deleteUser_awsAccountId,
    deleteUser_namespace,
    deleteUserResponse_requestId,
    deleteUserResponse_status,

    -- ** SearchAnalyses
    searchAnalyses_nextToken,
    searchAnalyses_maxResults,
    searchAnalyses_awsAccountId,
    searchAnalyses_filters,
    searchAnalysesResponse_requestId,
    searchAnalysesResponse_nextToken,
    searchAnalysesResponse_analysisSummaryList,
    searchAnalysesResponse_status,

    -- ** CreateAccountCustomization
    createAccountCustomization_namespace,
    createAccountCustomization_tags,
    createAccountCustomization_awsAccountId,
    createAccountCustomization_accountCustomization,
    createAccountCustomizationResponse_requestId,
    createAccountCustomizationResponse_accountCustomization,
    createAccountCustomizationResponse_arn,
    createAccountCustomizationResponse_namespace,
    createAccountCustomizationResponse_awsAccountId,
    createAccountCustomizationResponse_status,

    -- ** DescribeIpRestriction
    describeIpRestriction_awsAccountId,
    describeIpRestrictionResponse_requestId,
    describeIpRestrictionResponse_ipRestrictionRuleMap,
    describeIpRestrictionResponse_enabled,
    describeIpRestrictionResponse_awsAccountId,
    describeIpRestrictionResponse_status,

    -- ** ListThemes
    listThemes_nextToken,
    listThemes_type,
    listThemes_maxResults,
    listThemes_awsAccountId,
    listThemesResponse_requestId,
    listThemesResponse_themeSummaryList,
    listThemesResponse_nextToken,
    listThemesResponse_status,

    -- ** TagResource
    tagResource_resourceArn,
    tagResource_tags,
    tagResourceResponse_requestId,
    tagResourceResponse_status,

    -- ** UpdateTheme
    updateTheme_versionDescription,
    updateTheme_name,
    updateTheme_configuration,
    updateTheme_awsAccountId,
    updateTheme_themeId,
    updateTheme_baseThemeId,
    updateThemeResponse_requestId,
    updateThemeResponse_themeId,
    updateThemeResponse_arn,
    updateThemeResponse_creationStatus,
    updateThemeResponse_versionArn,
    updateThemeResponse_status,

    -- ** DeleteTheme
    deleteTheme_versionNumber,
    deleteTheme_awsAccountId,
    deleteTheme_themeId,
    deleteThemeResponse_requestId,
    deleteThemeResponse_themeId,
    deleteThemeResponse_arn,
    deleteThemeResponse_status,

    -- ** ListIngestions
    listIngestions_nextToken,
    listIngestions_maxResults,
    listIngestions_dataSetId,
    listIngestions_awsAccountId,
    listIngestionsResponse_requestId,
    listIngestionsResponse_nextToken,
    listIngestionsResponse_ingestions,
    listIngestionsResponse_status,

    -- ** CreateGroup
    createGroup_description,
    createGroup_groupName,
    createGroup_awsAccountId,
    createGroup_namespace,
    createGroupResponse_requestId,
    createGroupResponse_group,
    createGroupResponse_status,

    -- ** UntagResource
    untagResource_resourceArn,
    untagResource_tagKeys,
    untagResourceResponse_requestId,
    untagResourceResponse_status,

    -- ** ListTemplateVersions
    listTemplateVersions_nextToken,
    listTemplateVersions_maxResults,
    listTemplateVersions_awsAccountId,
    listTemplateVersions_templateId,
    listTemplateVersionsResponse_requestId,
    listTemplateVersionsResponse_templateVersionSummaryList,
    listTemplateVersionsResponse_nextToken,
    listTemplateVersionsResponse_status,

    -- ** ListDataSets
    listDataSets_nextToken,
    listDataSets_maxResults,
    listDataSets_awsAccountId,
    listDataSetsResponse_requestId,
    listDataSetsResponse_nextToken,
    listDataSetsResponse_dataSetSummaries,
    listDataSetsResponse_status,

    -- ** DeleteThemeAlias
    deleteThemeAlias_awsAccountId,
    deleteThemeAlias_themeId,
    deleteThemeAlias_aliasName,
    deleteThemeAliasResponse_requestId,
    deleteThemeAliasResponse_themeId,
    deleteThemeAliasResponse_arn,
    deleteThemeAliasResponse_aliasName,
    deleteThemeAliasResponse_status,

    -- ** UpdateThemeAlias
    updateThemeAlias_awsAccountId,
    updateThemeAlias_themeId,
    updateThemeAlias_aliasName,
    updateThemeAlias_themeVersionNumber,
    updateThemeAliasResponse_requestId,
    updateThemeAliasResponse_themeAlias,
    updateThemeAliasResponse_status,

    -- ** DeleteGroup
    deleteGroup_groupName,
    deleteGroup_awsAccountId,
    deleteGroup_namespace,
    deleteGroupResponse_requestId,
    deleteGroupResponse_status,

    -- ** UpdateGroup
    updateGroup_description,
    updateGroup_groupName,
    updateGroup_awsAccountId,
    updateGroup_namespace,
    updateGroupResponse_requestId,
    updateGroupResponse_group,
    updateGroupResponse_status,

    -- ** DescribeNamespace
    describeNamespace_awsAccountId,
    describeNamespace_namespace,
    describeNamespaceResponse_requestId,
    describeNamespaceResponse_namespace,
    describeNamespaceResponse_status,

    -- ** ListGroups
    listGroups_nextToken,
    listGroups_maxResults,
    listGroups_awsAccountId,
    listGroups_namespace,
    listGroupsResponse_requestId,
    listGroupsResponse_groupList,
    listGroupsResponse_nextToken,
    listGroupsResponse_status,

    -- ** CreateAnalysis
    createAnalysis_themeArn,
    createAnalysis_parameters,
    createAnalysis_permissions,
    createAnalysis_tags,
    createAnalysis_awsAccountId,
    createAnalysis_analysisId,
    createAnalysis_name,
    createAnalysis_sourceEntity,
    createAnalysisResponse_requestId,
    createAnalysisResponse_analysisId,
    createAnalysisResponse_arn,
    createAnalysisResponse_creationStatus,
    createAnalysisResponse_status,

    -- ** DescribeAccountCustomization
    describeAccountCustomization_resolved,
    describeAccountCustomization_namespace,
    describeAccountCustomization_awsAccountId,
    describeAccountCustomizationResponse_requestId,
    describeAccountCustomizationResponse_accountCustomization,
    describeAccountCustomizationResponse_arn,
    describeAccountCustomizationResponse_namespace,
    describeAccountCustomizationResponse_awsAccountId,
    describeAccountCustomizationResponse_status,

    -- ** GenerateEmbedUrlForRegisteredUser
    generateEmbedUrlForRegisteredUser_sessionLifetimeInMinutes,
    generateEmbedUrlForRegisteredUser_awsAccountId,
    generateEmbedUrlForRegisteredUser_userArn,
    generateEmbedUrlForRegisteredUser_experienceConfiguration,
    generateEmbedUrlForRegisteredUserResponse_status,
    generateEmbedUrlForRegisteredUserResponse_embedUrl,
    generateEmbedUrlForRegisteredUserResponse_requestId,

    -- ** DescribeDashboard
    describeDashboard_aliasName,
    describeDashboard_versionNumber,
    describeDashboard_awsAccountId,
    describeDashboard_dashboardId,
    describeDashboardResponse_requestId,
    describeDashboardResponse_dashboard,
    describeDashboardResponse_status,

    -- ** CreateGroupMembership
    createGroupMembership_memberName,
    createGroupMembership_groupName,
    createGroupMembership_awsAccountId,
    createGroupMembership_namespace,
    createGroupMembershipResponse_requestId,
    createGroupMembershipResponse_groupMember,
    createGroupMembershipResponse_status,

    -- ** DescribeDashboardPermissions
    describeDashboardPermissions_awsAccountId,
    describeDashboardPermissions_dashboardId,
    describeDashboardPermissionsResponse_requestId,
    describeDashboardPermissionsResponse_dashboardId,
    describeDashboardPermissionsResponse_permissions,
    describeDashboardPermissionsResponse_dashboardArn,
    describeDashboardPermissionsResponse_status,

    -- * Types

    -- ** AccountCustomization
    accountCustomization_defaultTheme,

    -- ** AccountSettings
    accountSettings_edition,
    accountSettings_accountName,
    accountSettings_defaultNamespace,
    accountSettings_notificationEmail,

    -- ** ActiveIAMPolicyAssignment
    activeIAMPolicyAssignment_assignmentName,
    activeIAMPolicyAssignment_policyArn,

    -- ** AdHocFilteringOption
    adHocFilteringOption_availabilityStatus,

    -- ** AmazonElasticsearchParameters
    amazonElasticsearchParameters_domain,

    -- ** AmazonOpenSearchParameters
    amazonOpenSearchParameters_domain,

    -- ** Analysis
    analysis_status,
    analysis_themeArn,
    analysis_dataSetArns,
    analysis_sheets,
    analysis_analysisId,
    analysis_lastUpdatedTime,
    analysis_arn,
    analysis_createdTime,
    analysis_name,
    analysis_errors,

    -- ** AnalysisError
    analysisError_type,
    analysisError_message,

    -- ** AnalysisSearchFilter
    analysisSearchFilter_operator,
    analysisSearchFilter_value,
    analysisSearchFilter_name,

    -- ** AnalysisSourceEntity
    analysisSourceEntity_sourceTemplate,

    -- ** AnalysisSourceTemplate
    analysisSourceTemplate_dataSetReferences,
    analysisSourceTemplate_arn,

    -- ** AnalysisSummary
    analysisSummary_status,
    analysisSummary_analysisId,
    analysisSummary_lastUpdatedTime,
    analysisSummary_arn,
    analysisSummary_createdTime,
    analysisSummary_name,

    -- ** AnonymousUserDashboardEmbeddingConfiguration
    anonymousUserDashboardEmbeddingConfiguration_initialDashboardId,

    -- ** AnonymousUserEmbeddingExperienceConfiguration
    anonymousUserEmbeddingExperienceConfiguration_dashboard,

    -- ** AthenaParameters
    athenaParameters_workGroup,

    -- ** AuroraParameters
    auroraParameters_host,
    auroraParameters_port,
    auroraParameters_database,

    -- ** AuroraPostgreSqlParameters
    auroraPostgreSqlParameters_host,
    auroraPostgreSqlParameters_port,
    auroraPostgreSqlParameters_database,

    -- ** AwsIotAnalyticsParameters
    awsIotAnalyticsParameters_dataSetName,

    -- ** BorderStyle
    borderStyle_show,

    -- ** CalculatedColumn
    calculatedColumn_columnName,
    calculatedColumn_columnId,
    calculatedColumn_expression,

    -- ** CastColumnTypeOperation
    castColumnTypeOperation_format,
    castColumnTypeOperation_columnName,
    castColumnTypeOperation_newColumnType,

    -- ** ColumnDescription
    columnDescription_text,

    -- ** ColumnGroup
    columnGroup_geoSpatialColumnGroup,

    -- ** ColumnGroupColumnSchema
    columnGroupColumnSchema_name,

    -- ** ColumnGroupSchema
    columnGroupSchema_columnGroupColumnSchemaList,
    columnGroupSchema_name,

    -- ** ColumnLevelPermissionRule
    columnLevelPermissionRule_principals,
    columnLevelPermissionRule_columnNames,

    -- ** ColumnSchema
    columnSchema_geographicRole,
    columnSchema_name,
    columnSchema_dataType,

    -- ** ColumnTag
    columnTag_columnDescription,
    columnTag_columnGeographicRole,

    -- ** CreateColumnsOperation
    createColumnsOperation_columns,

    -- ** CredentialPair
    credentialPair_alternateDataSourceParameters,
    credentialPair_username,
    credentialPair_password,

    -- ** CustomSql
    customSql_columns,
    customSql_dataSourceArn,
    customSql_name,
    customSql_sqlQuery,

    -- ** Dashboard
    dashboard_lastUpdatedTime,
    dashboard_arn,
    dashboard_createdTime,
    dashboard_dashboardId,
    dashboard_lastPublishedTime,
    dashboard_name,
    dashboard_version,

    -- ** DashboardError
    dashboardError_type,
    dashboardError_message,

    -- ** DashboardPublishOptions
    dashboardPublishOptions_adHocFilteringOption,
    dashboardPublishOptions_exportToCSVOption,
    dashboardPublishOptions_sheetControlsOption,

    -- ** DashboardSearchFilter
    dashboardSearchFilter_value,
    dashboardSearchFilter_name,
    dashboardSearchFilter_operator,

    -- ** DashboardSourceEntity
    dashboardSourceEntity_sourceTemplate,

    -- ** DashboardSourceTemplate
    dashboardSourceTemplate_dataSetReferences,
    dashboardSourceTemplate_arn,

    -- ** DashboardSummary
    dashboardSummary_lastUpdatedTime,
    dashboardSummary_arn,
    dashboardSummary_createdTime,
    dashboardSummary_dashboardId,
    dashboardSummary_publishedVersionNumber,
    dashboardSummary_lastPublishedTime,
    dashboardSummary_name,

    -- ** DashboardVersion
    dashboardVersion_status,
    dashboardVersion_themeArn,
    dashboardVersion_dataSetArns,
    dashboardVersion_sheets,
    dashboardVersion_arn,
    dashboardVersion_createdTime,
    dashboardVersion_sourceEntityArn,
    dashboardVersion_versionNumber,
    dashboardVersion_errors,
    dashboardVersion_description,

    -- ** DashboardVersionSummary
    dashboardVersionSummary_status,
    dashboardVersionSummary_arn,
    dashboardVersionSummary_createdTime,
    dashboardVersionSummary_sourceEntityArn,
    dashboardVersionSummary_versionNumber,
    dashboardVersionSummary_description,

    -- ** DataColorPalette
    dataColorPalette_minMaxGradient,
    dataColorPalette_emptyFillColor,
    dataColorPalette_colors,

    -- ** DataSet
    dataSet_fieldFolders,
    dataSet_columnGroups,
    dataSet_lastUpdatedTime,
    dataSet_arn,
    dataSet_createdTime,
    dataSet_consumedSpiceCapacityInBytes,
    dataSet_importMode,
    dataSet_physicalTableMap,
    dataSet_dataSetId,
    dataSet_name,
    dataSet_dataSetUsageConfiguration,
    dataSet_outputColumns,
    dataSet_rowLevelPermissionTagConfiguration,
    dataSet_rowLevelPermissionDataSet,
    dataSet_columnLevelPermissionRules,
    dataSet_logicalTableMap,

    -- ** DataSetConfiguration
    dataSetConfiguration_columnGroupSchemaList,
    dataSetConfiguration_dataSetSchema,
    dataSetConfiguration_placeholder,

    -- ** DataSetReference
    dataSetReference_dataSetPlaceholder,
    dataSetReference_dataSetArn,

    -- ** DataSetSchema
    dataSetSchema_columnSchemaList,

    -- ** DataSetSummary
    dataSetSummary_lastUpdatedTime,
    dataSetSummary_arn,
    dataSetSummary_createdTime,
    dataSetSummary_rowLevelPermissionTagConfigurationApplied,
    dataSetSummary_columnLevelPermissionRulesApplied,
    dataSetSummary_importMode,
    dataSetSummary_dataSetId,
    dataSetSummary_name,
    dataSetSummary_rowLevelPermissionDataSet,

    -- ** DataSetUsageConfiguration
    dataSetUsageConfiguration_disableUseAsImportedSource,
    dataSetUsageConfiguration_disableUseAsDirectQuerySource,

    -- ** DataSource
    dataSource_status,
    dataSource_dataSourceParameters,
    dataSource_lastUpdatedTime,
    dataSource_arn,
    dataSource_createdTime,
    dataSource_sslProperties,
    dataSource_dataSourceId,
    dataSource_name,
    dataSource_alternateDataSourceParameters,
    dataSource_vpcConnectionProperties,
    dataSource_type,
    dataSource_errorInfo,

    -- ** DataSourceCredentials
    dataSourceCredentials_copySourceArn,
    dataSourceCredentials_credentialPair,

    -- ** DataSourceErrorInfo
    dataSourceErrorInfo_type,
    dataSourceErrorInfo_message,

    -- ** DataSourceParameters
    dataSourceParameters_rdsParameters,
    dataSourceParameters_s3Parameters,
    dataSourceParameters_athenaParameters,
    dataSourceParameters_teradataParameters,
    dataSourceParameters_auroraParameters,
    dataSourceParameters_awsIotAnalyticsParameters,
    dataSourceParameters_amazonOpenSearchParameters,
    dataSourceParameters_sqlServerParameters,
    dataSourceParameters_redshiftParameters,
    dataSourceParameters_postgreSqlParameters,
    dataSourceParameters_oracleParameters,
    dataSourceParameters_amazonElasticsearchParameters,
    dataSourceParameters_twitterParameters,
    dataSourceParameters_mariaDbParameters,
    dataSourceParameters_jiraParameters,
    dataSourceParameters_snowflakeParameters,
    dataSourceParameters_prestoParameters,
    dataSourceParameters_mySqlParameters,
    dataSourceParameters_auroraPostgreSqlParameters,
    dataSourceParameters_sparkParameters,
    dataSourceParameters_serviceNowParameters,

    -- ** DateTimeParameter
    dateTimeParameter_name,
    dateTimeParameter_values,

    -- ** DecimalParameter
    decimalParameter_name,
    decimalParameter_values,

    -- ** ErrorInfo
    errorInfo_type,
    errorInfo_message,

    -- ** ExportToCSVOption
    exportToCSVOption_availabilityStatus,

    -- ** FieldFolder
    fieldFolder_columns,
    fieldFolder_description,

    -- ** FilterOperation
    filterOperation_conditionExpression,

    -- ** Folder
    folder_lastUpdatedTime,
    folder_arn,
    folder_createdTime,
    folder_folderId,
    folder_name,
    folder_folderPath,
    folder_folderType,

    -- ** FolderMember
    folderMember_memberId,
    folderMember_memberType,

    -- ** FolderSearchFilter
    folderSearchFilter_operator,
    folderSearchFilter_value,
    folderSearchFilter_name,

    -- ** FolderSummary
    folderSummary_lastUpdatedTime,
    folderSummary_arn,
    folderSummary_createdTime,
    folderSummary_folderId,
    folderSummary_name,
    folderSummary_folderType,

    -- ** GeoSpatialColumnGroup
    geoSpatialColumnGroup_name,
    geoSpatialColumnGroup_countryCode,
    geoSpatialColumnGroup_columns,

    -- ** Group
    group_principalId,
    group_arn,
    group_groupName,
    group_description,

    -- ** GroupMember
    groupMember_memberName,
    groupMember_arn,

    -- ** GutterStyle
    gutterStyle_show,

    -- ** IAMPolicyAssignment
    iAMPolicyAssignment_assignmentName,
    iAMPolicyAssignment_awsAccountId,
    iAMPolicyAssignment_assignmentStatus,
    iAMPolicyAssignment_policyArn,
    iAMPolicyAssignment_identities,
    iAMPolicyAssignment_assignmentId,

    -- ** IAMPolicyAssignmentSummary
    iAMPolicyAssignmentSummary_assignmentName,
    iAMPolicyAssignmentSummary_assignmentStatus,

    -- ** Ingestion
    ingestion_requestSource,
    ingestion_queueInfo,
    ingestion_ingestionTimeInSeconds,
    ingestion_requestType,
    ingestion_ingestionSizeInBytes,
    ingestion_rowInfo,
    ingestion_ingestionId,
    ingestion_errorInfo,
    ingestion_arn,
    ingestion_ingestionStatus,
    ingestion_createdTime,

    -- ** InputColumn
    inputColumn_name,
    inputColumn_type,

    -- ** IntegerParameter
    integerParameter_name,
    integerParameter_values,

    -- ** JiraParameters
    jiraParameters_siteBaseUrl,

    -- ** JoinInstruction
    joinInstruction_rightJoinKeyProperties,
    joinInstruction_leftJoinKeyProperties,
    joinInstruction_leftOperand,
    joinInstruction_rightOperand,
    joinInstruction_type,
    joinInstruction_onClause,

    -- ** JoinKeyProperties
    joinKeyProperties_uniqueKey,

    -- ** LogicalTable
    logicalTable_dataTransforms,
    logicalTable_alias,
    logicalTable_source,

    -- ** LogicalTableSource
    logicalTableSource_dataSetArn,
    logicalTableSource_joinInstruction,
    logicalTableSource_physicalTableId,

    -- ** ManifestFileLocation
    manifestFileLocation_bucket,
    manifestFileLocation_key,

    -- ** MarginStyle
    marginStyle_show,

    -- ** MariaDbParameters
    mariaDbParameters_host,
    mariaDbParameters_port,
    mariaDbParameters_database,

    -- ** MemberIdArnPair
    memberIdArnPair_memberId,
    memberIdArnPair_memberArn,

    -- ** MySqlParameters
    mySqlParameters_host,
    mySqlParameters_port,
    mySqlParameters_database,

    -- ** NamespaceError
    namespaceError_type,
    namespaceError_message,

    -- ** NamespaceInfoV2
    namespaceInfoV2_capacityRegion,
    namespaceInfoV2_arn,
    namespaceInfoV2_creationStatus,
    namespaceInfoV2_name,
    namespaceInfoV2_namespaceError,
    namespaceInfoV2_identityStore,

    -- ** OracleParameters
    oracleParameters_host,
    oracleParameters_port,
    oracleParameters_database,

    -- ** OutputColumn
    outputColumn_name,
    outputColumn_type,
    outputColumn_description,

    -- ** Parameters
    parameters_dateTimeParameters,
    parameters_decimalParameters,
    parameters_integerParameters,
    parameters_stringParameters,

    -- ** PhysicalTable
    physicalTable_s3Source,
    physicalTable_relationalTable,
    physicalTable_customSql,

    -- ** PostgreSqlParameters
    postgreSqlParameters_host,
    postgreSqlParameters_port,
    postgreSqlParameters_database,

    -- ** PrestoParameters
    prestoParameters_host,
    prestoParameters_port,
    prestoParameters_catalog,

    -- ** ProjectOperation
    projectOperation_projectedColumns,

    -- ** QueueInfo
    queueInfo_waitingOnIngestion,
    queueInfo_queuedIngestion,

    -- ** RdsParameters
    rdsParameters_instanceId,
    rdsParameters_database,

    -- ** RedshiftParameters
    redshiftParameters_clusterId,
    redshiftParameters_host,
    redshiftParameters_port,
    redshiftParameters_database,

    -- ** RegisteredUserDashboardEmbeddingConfiguration
    registeredUserDashboardEmbeddingConfiguration_initialDashboardId,

    -- ** RegisteredUserEmbeddingExperienceConfiguration
    registeredUserEmbeddingExperienceConfiguration_dashboard,
    registeredUserEmbeddingExperienceConfiguration_quickSightConsole,
    registeredUserEmbeddingExperienceConfiguration_qSearchBar,

    -- ** RegisteredUserQSearchBarEmbeddingConfiguration
    registeredUserQSearchBarEmbeddingConfiguration_initialTopicId,

    -- ** RegisteredUserQuickSightConsoleEmbeddingConfiguration
    registeredUserQuickSightConsoleEmbeddingConfiguration_initialPath,

    -- ** RelationalTable
    relationalTable_catalog,
    relationalTable_schema,
    relationalTable_dataSourceArn,
    relationalTable_name,
    relationalTable_inputColumns,

    -- ** RenameColumnOperation
    renameColumnOperation_columnName,
    renameColumnOperation_newColumnName,

    -- ** ResourcePermission
    resourcePermission_principal,
    resourcePermission_actions,

    -- ** RowInfo
    rowInfo_rowsIngested,
    rowInfo_totalRowsInDataset,
    rowInfo_rowsDropped,

    -- ** RowLevelPermissionDataSet
    rowLevelPermissionDataSet_status,
    rowLevelPermissionDataSet_namespace,
    rowLevelPermissionDataSet_formatVersion,
    rowLevelPermissionDataSet_arn,
    rowLevelPermissionDataSet_permissionPolicy,

    -- ** RowLevelPermissionTagConfiguration
    rowLevelPermissionTagConfiguration_status,
    rowLevelPermissionTagConfiguration_tagRules,

    -- ** RowLevelPermissionTagRule
    rowLevelPermissionTagRule_tagMultiValueDelimiter,
    rowLevelPermissionTagRule_matchAllValue,
    rowLevelPermissionTagRule_tagKey,
    rowLevelPermissionTagRule_columnName,

    -- ** S3Parameters
    s3Parameters_manifestFileLocation,

    -- ** S3Source
    s3Source_uploadSettings,
    s3Source_dataSourceArn,
    s3Source_inputColumns,

    -- ** ServiceNowParameters
    serviceNowParameters_siteBaseUrl,

    -- ** SessionTag
    sessionTag_key,
    sessionTag_value,

    -- ** Sheet
    sheet_name,
    sheet_sheetId,

    -- ** SheetControlsOption
    sheetControlsOption_visibilityState,

    -- ** SheetStyle
    sheetStyle_tileLayout,
    sheetStyle_tile,

    -- ** SnowflakeParameters
    snowflakeParameters_host,
    snowflakeParameters_database,
    snowflakeParameters_warehouse,

    -- ** SparkParameters
    sparkParameters_host,
    sparkParameters_port,

    -- ** SqlServerParameters
    sqlServerParameters_host,
    sqlServerParameters_port,
    sqlServerParameters_database,

    -- ** SslProperties
    sslProperties_disableSsl,

    -- ** StringParameter
    stringParameter_name,
    stringParameter_values,

    -- ** Tag
    tag_key,
    tag_value,

    -- ** TagColumnOperation
    tagColumnOperation_columnName,
    tagColumnOperation_tags,

    -- ** Template
    template_lastUpdatedTime,
    template_arn,
    template_createdTime,
    template_templateId,
    template_name,
    template_version,

    -- ** TemplateAlias
    templateAlias_arn,
    templateAlias_aliasName,
    templateAlias_templateVersionNumber,

    -- ** TemplateError
    templateError_type,
    templateError_message,

    -- ** TemplateSourceAnalysis
    templateSourceAnalysis_arn,
    templateSourceAnalysis_dataSetReferences,

    -- ** TemplateSourceEntity
    templateSourceEntity_sourceAnalysis,
    templateSourceEntity_sourceTemplate,

    -- ** TemplateSourceTemplate
    templateSourceTemplate_arn,

    -- ** TemplateSummary
    templateSummary_lastUpdatedTime,
    templateSummary_latestVersionNumber,
    templateSummary_arn,
    templateSummary_createdTime,
    templateSummary_templateId,
    templateSummary_name,

    -- ** TemplateVersion
    templateVersion_status,
    templateVersion_themeArn,
    templateVersion_sheets,
    templateVersion_createdTime,
    templateVersion_sourceEntityArn,
    templateVersion_dataSetConfigurations,
    templateVersion_versionNumber,
    templateVersion_errors,
    templateVersion_description,

    -- ** TemplateVersionSummary
    templateVersionSummary_status,
    templateVersionSummary_arn,
    templateVersionSummary_createdTime,
    templateVersionSummary_versionNumber,
    templateVersionSummary_description,

    -- ** TeradataParameters
    teradataParameters_host,
    teradataParameters_port,
    teradataParameters_database,

    -- ** Theme
    theme_themeId,
    theme_lastUpdatedTime,
    theme_arn,
    theme_createdTime,
    theme_name,
    theme_version,
    theme_type,

    -- ** ThemeAlias
    themeAlias_arn,
    themeAlias_themeVersionNumber,
    themeAlias_aliasName,

    -- ** ThemeConfiguration
    themeConfiguration_uIColorPalette,
    themeConfiguration_sheet,
    themeConfiguration_dataColorPalette,

    -- ** ThemeError
    themeError_type,
    themeError_message,

    -- ** ThemeSummary
    themeSummary_themeId,
    themeSummary_lastUpdatedTime,
    themeSummary_latestVersionNumber,
    themeSummary_arn,
    themeSummary_createdTime,
    themeSummary_name,

    -- ** ThemeVersion
    themeVersion_status,
    themeVersion_arn,
    themeVersion_createdTime,
    themeVersion_versionNumber,
    themeVersion_configuration,
    themeVersion_errors,
    themeVersion_description,
    themeVersion_baseThemeId,

    -- ** ThemeVersionSummary
    themeVersionSummary_status,
    themeVersionSummary_arn,
    themeVersionSummary_createdTime,
    themeVersionSummary_versionNumber,
    themeVersionSummary_description,

    -- ** TileLayoutStyle
    tileLayoutStyle_margin,
    tileLayoutStyle_gutter,

    -- ** TileStyle
    tileStyle_border,

    -- ** TransformOperation
    transformOperation_castColumnTypeOperation,
    transformOperation_tagColumnOperation,
    transformOperation_createColumnsOperation,
    transformOperation_untagColumnOperation,
    transformOperation_filterOperation,
    transformOperation_projectOperation,
    transformOperation_renameColumnOperation,

    -- ** TwitterParameters
    twitterParameters_query,
    twitterParameters_maxRows,

    -- ** UIColorPalette
    uIColorPalette_secondaryBackground,
    uIColorPalette_successForeground,
    uIColorPalette_dimension,
    uIColorPalette_dimensionForeground,
    uIColorPalette_success,
    uIColorPalette_accent,
    uIColorPalette_secondaryForeground,
    uIColorPalette_primaryForeground,
    uIColorPalette_warning,
    uIColorPalette_primaryBackground,
    uIColorPalette_accentForeground,
    uIColorPalette_measure,
    uIColorPalette_dangerForeground,
    uIColorPalette_measureForeground,
    uIColorPalette_danger,
    uIColorPalette_warningForeground,

    -- ** UntagColumnOperation
    untagColumnOperation_columnName,
    untagColumnOperation_tagNames,

    -- ** UploadSettings
    uploadSettings_startFromRow,
    uploadSettings_containsHeader,
    uploadSettings_textQualifier,
    uploadSettings_format,
    uploadSettings_delimiter,

    -- ** User
    user_email,
    user_principalId,
    user_arn,
    user_userName,
    user_identityType,
    user_externalLoginFederationProviderUrl,
    user_customPermissionsName,
    user_active,
    user_role,
    user_externalLoginFederationProviderType,
    user_externalLoginId,

    -- ** VpcConnectionProperties
    vpcConnectionProperties_vpcConnectionArn,
  )
where

import Network.AWS.QuickSight.CancelIngestion
import Network.AWS.QuickSight.CreateAccountCustomization
import Network.AWS.QuickSight.CreateAnalysis
import Network.AWS.QuickSight.CreateDashboard
import Network.AWS.QuickSight.CreateDataSet
import Network.AWS.QuickSight.CreateDataSource
import Network.AWS.QuickSight.CreateFolder
import Network.AWS.QuickSight.CreateFolderMembership
import Network.AWS.QuickSight.CreateGroup
import Network.AWS.QuickSight.CreateGroupMembership
import Network.AWS.QuickSight.CreateIAMPolicyAssignment
import Network.AWS.QuickSight.CreateIngestion
import Network.AWS.QuickSight.CreateNamespace
import Network.AWS.QuickSight.CreateTemplate
import Network.AWS.QuickSight.CreateTemplateAlias
import Network.AWS.QuickSight.CreateTheme
import Network.AWS.QuickSight.CreateThemeAlias
import Network.AWS.QuickSight.DeleteAccountCustomization
import Network.AWS.QuickSight.DeleteAnalysis
import Network.AWS.QuickSight.DeleteDashboard
import Network.AWS.QuickSight.DeleteDataSet
import Network.AWS.QuickSight.DeleteDataSource
import Network.AWS.QuickSight.DeleteFolder
import Network.AWS.QuickSight.DeleteFolderMembership
import Network.AWS.QuickSight.DeleteGroup
import Network.AWS.QuickSight.DeleteGroupMembership
import Network.AWS.QuickSight.DeleteIAMPolicyAssignment
import Network.AWS.QuickSight.DeleteNamespace
import Network.AWS.QuickSight.DeleteTemplate
import Network.AWS.QuickSight.DeleteTemplateAlias
import Network.AWS.QuickSight.DeleteTheme
import Network.AWS.QuickSight.DeleteThemeAlias
import Network.AWS.QuickSight.DeleteUser
import Network.AWS.QuickSight.DeleteUserByPrincipalId
import Network.AWS.QuickSight.DescribeAccountCustomization
import Network.AWS.QuickSight.DescribeAccountSettings
import Network.AWS.QuickSight.DescribeAnalysis
import Network.AWS.QuickSight.DescribeAnalysisPermissions
import Network.AWS.QuickSight.DescribeDashboard
import Network.AWS.QuickSight.DescribeDashboardPermissions
import Network.AWS.QuickSight.DescribeDataSet
import Network.AWS.QuickSight.DescribeDataSetPermissions
import Network.AWS.QuickSight.DescribeDataSource
import Network.AWS.QuickSight.DescribeDataSourcePermissions
import Network.AWS.QuickSight.DescribeFolder
import Network.AWS.QuickSight.DescribeFolderPermissions
import Network.AWS.QuickSight.DescribeFolderResolvedPermissions
import Network.AWS.QuickSight.DescribeGroup
import Network.AWS.QuickSight.DescribeIAMPolicyAssignment
import Network.AWS.QuickSight.DescribeIngestion
import Network.AWS.QuickSight.DescribeIpRestriction
import Network.AWS.QuickSight.DescribeNamespace
import Network.AWS.QuickSight.DescribeTemplate
import Network.AWS.QuickSight.DescribeTemplateAlias
import Network.AWS.QuickSight.DescribeTemplatePermissions
import Network.AWS.QuickSight.DescribeTheme
import Network.AWS.QuickSight.DescribeThemeAlias
import Network.AWS.QuickSight.DescribeThemePermissions
import Network.AWS.QuickSight.DescribeUser
import Network.AWS.QuickSight.GenerateEmbedUrlForAnonymousUser
import Network.AWS.QuickSight.GenerateEmbedUrlForRegisteredUser
import Network.AWS.QuickSight.GetDashboardEmbedUrl
import Network.AWS.QuickSight.GetSessionEmbedUrl
import Network.AWS.QuickSight.ListAnalyses
import Network.AWS.QuickSight.ListDashboardVersions
import Network.AWS.QuickSight.ListDashboards
import Network.AWS.QuickSight.ListDataSets
import Network.AWS.QuickSight.ListDataSources
import Network.AWS.QuickSight.ListFolderMembers
import Network.AWS.QuickSight.ListFolders
import Network.AWS.QuickSight.ListGroupMemberships
import Network.AWS.QuickSight.ListGroups
import Network.AWS.QuickSight.ListIAMPolicyAssignments
import Network.AWS.QuickSight.ListIAMPolicyAssignmentsForUser
import Network.AWS.QuickSight.ListIngestions
import Network.AWS.QuickSight.ListNamespaces
import Network.AWS.QuickSight.ListTagsForResource
import Network.AWS.QuickSight.ListTemplateAliases
import Network.AWS.QuickSight.ListTemplateVersions
import Network.AWS.QuickSight.ListTemplates
import Network.AWS.QuickSight.ListThemeAliases
import Network.AWS.QuickSight.ListThemeVersions
import Network.AWS.QuickSight.ListThemes
import Network.AWS.QuickSight.ListUserGroups
import Network.AWS.QuickSight.ListUsers
import Network.AWS.QuickSight.RegisterUser
import Network.AWS.QuickSight.RestoreAnalysis
import Network.AWS.QuickSight.SearchAnalyses
import Network.AWS.QuickSight.SearchDashboards
import Network.AWS.QuickSight.SearchFolders
import Network.AWS.QuickSight.TagResource
import Network.AWS.QuickSight.Types.AccountCustomization
import Network.AWS.QuickSight.Types.AccountSettings
import Network.AWS.QuickSight.Types.ActiveIAMPolicyAssignment
import Network.AWS.QuickSight.Types.AdHocFilteringOption
import Network.AWS.QuickSight.Types.AmazonElasticsearchParameters
import Network.AWS.QuickSight.Types.AmazonOpenSearchParameters
import Network.AWS.QuickSight.Types.Analysis
import Network.AWS.QuickSight.Types.AnalysisError
import Network.AWS.QuickSight.Types.AnalysisSearchFilter
import Network.AWS.QuickSight.Types.AnalysisSourceEntity
import Network.AWS.QuickSight.Types.AnalysisSourceTemplate
import Network.AWS.QuickSight.Types.AnalysisSummary
import Network.AWS.QuickSight.Types.AnonymousUserDashboardEmbeddingConfiguration
import Network.AWS.QuickSight.Types.AnonymousUserEmbeddingExperienceConfiguration
import Network.AWS.QuickSight.Types.AthenaParameters
import Network.AWS.QuickSight.Types.AuroraParameters
import Network.AWS.QuickSight.Types.AuroraPostgreSqlParameters
import Network.AWS.QuickSight.Types.AwsIotAnalyticsParameters
import Network.AWS.QuickSight.Types.BorderStyle
import Network.AWS.QuickSight.Types.CalculatedColumn
import Network.AWS.QuickSight.Types.CastColumnTypeOperation
import Network.AWS.QuickSight.Types.ColumnDescription
import Network.AWS.QuickSight.Types.ColumnGroup
import Network.AWS.QuickSight.Types.ColumnGroupColumnSchema
import Network.AWS.QuickSight.Types.ColumnGroupSchema
import Network.AWS.QuickSight.Types.ColumnLevelPermissionRule
import Network.AWS.QuickSight.Types.ColumnSchema
import Network.AWS.QuickSight.Types.ColumnTag
import Network.AWS.QuickSight.Types.CreateColumnsOperation
import Network.AWS.QuickSight.Types.CredentialPair
import Network.AWS.QuickSight.Types.CustomSql
import Network.AWS.QuickSight.Types.Dashboard
import Network.AWS.QuickSight.Types.DashboardError
import Network.AWS.QuickSight.Types.DashboardPublishOptions
import Network.AWS.QuickSight.Types.DashboardSearchFilter
import Network.AWS.QuickSight.Types.DashboardSourceEntity
import Network.AWS.QuickSight.Types.DashboardSourceTemplate
import Network.AWS.QuickSight.Types.DashboardSummary
import Network.AWS.QuickSight.Types.DashboardVersion
import Network.AWS.QuickSight.Types.DashboardVersionSummary
import Network.AWS.QuickSight.Types.DataColorPalette
import Network.AWS.QuickSight.Types.DataSet
import Network.AWS.QuickSight.Types.DataSetConfiguration
import Network.AWS.QuickSight.Types.DataSetReference
import Network.AWS.QuickSight.Types.DataSetSchema
import Network.AWS.QuickSight.Types.DataSetSummary
import Network.AWS.QuickSight.Types.DataSetUsageConfiguration
import Network.AWS.QuickSight.Types.DataSource
import Network.AWS.QuickSight.Types.DataSourceCredentials
import Network.AWS.QuickSight.Types.DataSourceErrorInfo
import Network.AWS.QuickSight.Types.DataSourceParameters
import Network.AWS.QuickSight.Types.DateTimeParameter
import Network.AWS.QuickSight.Types.DecimalParameter
import Network.AWS.QuickSight.Types.ErrorInfo
import Network.AWS.QuickSight.Types.ExportToCSVOption
import Network.AWS.QuickSight.Types.FieldFolder
import Network.AWS.QuickSight.Types.FilterOperation
import Network.AWS.QuickSight.Types.Folder
import Network.AWS.QuickSight.Types.FolderMember
import Network.AWS.QuickSight.Types.FolderSearchFilter
import Network.AWS.QuickSight.Types.FolderSummary
import Network.AWS.QuickSight.Types.GeoSpatialColumnGroup
import Network.AWS.QuickSight.Types.Group
import Network.AWS.QuickSight.Types.GroupMember
import Network.AWS.QuickSight.Types.GutterStyle
import Network.AWS.QuickSight.Types.IAMPolicyAssignment
import Network.AWS.QuickSight.Types.IAMPolicyAssignmentSummary
import Network.AWS.QuickSight.Types.Ingestion
import Network.AWS.QuickSight.Types.InputColumn
import Network.AWS.QuickSight.Types.IntegerParameter
import Network.AWS.QuickSight.Types.JiraParameters
import Network.AWS.QuickSight.Types.JoinInstruction
import Network.AWS.QuickSight.Types.JoinKeyProperties
import Network.AWS.QuickSight.Types.LogicalTable
import Network.AWS.QuickSight.Types.LogicalTableSource
import Network.AWS.QuickSight.Types.ManifestFileLocation
import Network.AWS.QuickSight.Types.MarginStyle
import Network.AWS.QuickSight.Types.MariaDbParameters
import Network.AWS.QuickSight.Types.MemberIdArnPair
import Network.AWS.QuickSight.Types.MySqlParameters
import Network.AWS.QuickSight.Types.NamespaceError
import Network.AWS.QuickSight.Types.NamespaceInfoV2
import Network.AWS.QuickSight.Types.OracleParameters
import Network.AWS.QuickSight.Types.OutputColumn
import Network.AWS.QuickSight.Types.Parameters
import Network.AWS.QuickSight.Types.PhysicalTable
import Network.AWS.QuickSight.Types.PostgreSqlParameters
import Network.AWS.QuickSight.Types.PrestoParameters
import Network.AWS.QuickSight.Types.ProjectOperation
import Network.AWS.QuickSight.Types.QueueInfo
import Network.AWS.QuickSight.Types.RdsParameters
import Network.AWS.QuickSight.Types.RedshiftParameters
import Network.AWS.QuickSight.Types.RegisteredUserDashboardEmbeddingConfiguration
import Network.AWS.QuickSight.Types.RegisteredUserEmbeddingExperienceConfiguration
import Network.AWS.QuickSight.Types.RegisteredUserQSearchBarEmbeddingConfiguration
import Network.AWS.QuickSight.Types.RegisteredUserQuickSightConsoleEmbeddingConfiguration
import Network.AWS.QuickSight.Types.RelationalTable
import Network.AWS.QuickSight.Types.RenameColumnOperation
import Network.AWS.QuickSight.Types.ResourcePermission
import Network.AWS.QuickSight.Types.RowInfo
import Network.AWS.QuickSight.Types.RowLevelPermissionDataSet
import Network.AWS.QuickSight.Types.RowLevelPermissionTagConfiguration
import Network.AWS.QuickSight.Types.RowLevelPermissionTagRule
import Network.AWS.QuickSight.Types.S3Parameters
import Network.AWS.QuickSight.Types.S3Source
import Network.AWS.QuickSight.Types.ServiceNowParameters
import Network.AWS.QuickSight.Types.SessionTag
import Network.AWS.QuickSight.Types.Sheet
import Network.AWS.QuickSight.Types.SheetControlsOption
import Network.AWS.QuickSight.Types.SheetStyle
import Network.AWS.QuickSight.Types.SnowflakeParameters
import Network.AWS.QuickSight.Types.SparkParameters
import Network.AWS.QuickSight.Types.SqlServerParameters
import Network.AWS.QuickSight.Types.SslProperties
import Network.AWS.QuickSight.Types.StringParameter
import Network.AWS.QuickSight.Types.Tag
import Network.AWS.QuickSight.Types.TagColumnOperation
import Network.AWS.QuickSight.Types.Template
import Network.AWS.QuickSight.Types.TemplateAlias
import Network.AWS.QuickSight.Types.TemplateError
import Network.AWS.QuickSight.Types.TemplateSourceAnalysis
import Network.AWS.QuickSight.Types.TemplateSourceEntity
import Network.AWS.QuickSight.Types.TemplateSourceTemplate
import Network.AWS.QuickSight.Types.TemplateSummary
import Network.AWS.QuickSight.Types.TemplateVersion
import Network.AWS.QuickSight.Types.TemplateVersionSummary
import Network.AWS.QuickSight.Types.TeradataParameters
import Network.AWS.QuickSight.Types.Theme
import Network.AWS.QuickSight.Types.ThemeAlias
import Network.AWS.QuickSight.Types.ThemeConfiguration
import Network.AWS.QuickSight.Types.ThemeError
import Network.AWS.QuickSight.Types.ThemeSummary
import Network.AWS.QuickSight.Types.ThemeVersion
import Network.AWS.QuickSight.Types.ThemeVersionSummary
import Network.AWS.QuickSight.Types.TileLayoutStyle
import Network.AWS.QuickSight.Types.TileStyle
import Network.AWS.QuickSight.Types.TransformOperation
import Network.AWS.QuickSight.Types.TwitterParameters
import Network.AWS.QuickSight.Types.UIColorPalette
import Network.AWS.QuickSight.Types.UntagColumnOperation
import Network.AWS.QuickSight.Types.UploadSettings
import Network.AWS.QuickSight.Types.User
import Network.AWS.QuickSight.Types.VpcConnectionProperties
import Network.AWS.QuickSight.UntagResource
import Network.AWS.QuickSight.UpdateAccountCustomization
import Network.AWS.QuickSight.UpdateAccountSettings
import Network.AWS.QuickSight.UpdateAnalysis
import Network.AWS.QuickSight.UpdateAnalysisPermissions
import Network.AWS.QuickSight.UpdateDashboard
import Network.AWS.QuickSight.UpdateDashboardPermissions
import Network.AWS.QuickSight.UpdateDashboardPublishedVersion
import Network.AWS.QuickSight.UpdateDataSet
import Network.AWS.QuickSight.UpdateDataSetPermissions
import Network.AWS.QuickSight.UpdateDataSource
import Network.AWS.QuickSight.UpdateDataSourcePermissions
import Network.AWS.QuickSight.UpdateFolder
import Network.AWS.QuickSight.UpdateFolderPermissions
import Network.AWS.QuickSight.UpdateGroup
import Network.AWS.QuickSight.UpdateIAMPolicyAssignment
import Network.AWS.QuickSight.UpdateIpRestriction
import Network.AWS.QuickSight.UpdateTemplate
import Network.AWS.QuickSight.UpdateTemplateAlias
import Network.AWS.QuickSight.UpdateTemplatePermissions
import Network.AWS.QuickSight.UpdateTheme
import Network.AWS.QuickSight.UpdateThemeAlias
import Network.AWS.QuickSight.UpdateThemePermissions
import Network.AWS.QuickSight.UpdateUser
