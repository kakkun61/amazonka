{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SecurityHub.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Lens
  ( -- * Operations

    -- ** EnableOrganizationAdminAccount
    enableOrganizationAdminAccount_adminAccountId,
    enableOrganizationAdminAccountResponse_httpStatus,

    -- ** GetAdministratorAccount
    getAdministratorAccountResponse_administrator,
    getAdministratorAccountResponse_httpStatus,

    -- ** ListOrganizationAdminAccounts
    listOrganizationAdminAccounts_nextToken,
    listOrganizationAdminAccounts_maxResults,
    listOrganizationAdminAccountsResponse_adminAccounts,
    listOrganizationAdminAccountsResponse_nextToken,
    listOrganizationAdminAccountsResponse_httpStatus,

    -- ** CreateInsight
    createInsight_name,
    createInsight_filters,
    createInsight_groupByAttribute,
    createInsightResponse_httpStatus,
    createInsightResponse_insightArn,

    -- ** AcceptAdministratorInvitation
    acceptAdministratorInvitation_administratorId,
    acceptAdministratorInvitation_invitationId,
    acceptAdministratorInvitationResponse_httpStatus,

    -- ** DeleteMembers
    deleteMembers_accountIds,
    deleteMembersResponse_unprocessedAccounts,
    deleteMembersResponse_httpStatus,

    -- ** DescribeHub
    describeHub_hubArn,
    describeHubResponse_autoEnableControls,
    describeHubResponse_subscribedAt,
    describeHubResponse_hubArn,
    describeHubResponse_httpStatus,

    -- ** ListTagsForResource
    listTagsForResource_resourceArn,
    listTagsForResourceResponse_tags,
    listTagsForResourceResponse_httpStatus,

    -- ** GetInsightResults
    getInsightResults_insightArn,
    getInsightResultsResponse_httpStatus,
    getInsightResultsResponse_insightResults,

    -- ** EnableImportFindingsForProduct
    enableImportFindingsForProduct_productArn,
    enableImportFindingsForProductResponse_productSubscriptionArn,
    enableImportFindingsForProductResponse_httpStatus,

    -- ** DescribeStandards
    describeStandards_nextToken,
    describeStandards_maxResults,
    describeStandardsResponse_standards,
    describeStandardsResponse_nextToken,
    describeStandardsResponse_httpStatus,

    -- ** DescribeProducts
    describeProducts_nextToken,
    describeProducts_productArn,
    describeProducts_maxResults,
    describeProductsResponse_nextToken,
    describeProductsResponse_httpStatus,
    describeProductsResponse_products,

    -- ** DeleteFindingAggregator
    deleteFindingAggregator_findingAggregatorArn,
    deleteFindingAggregatorResponse_httpStatus,

    -- ** UpdateFindingAggregator
    updateFindingAggregator_regions,
    updateFindingAggregator_findingAggregatorArn,
    updateFindingAggregator_regionLinkingMode,
    updateFindingAggregatorResponse_regions,
    updateFindingAggregatorResponse_findingAggregatorArn,
    updateFindingAggregatorResponse_regionLinkingMode,
    updateFindingAggregatorResponse_findingAggregationRegion,
    updateFindingAggregatorResponse_httpStatus,

    -- ** ListInvitations
    listInvitations_nextToken,
    listInvitations_maxResults,
    listInvitationsResponse_invitations,
    listInvitationsResponse_nextToken,
    listInvitationsResponse_httpStatus,

    -- ** DeleteInvitations
    deleteInvitations_accountIds,
    deleteInvitationsResponse_unprocessedAccounts,
    deleteInvitationsResponse_httpStatus,

    -- ** GetEnabledStandards
    getEnabledStandards_nextToken,
    getEnabledStandards_standardsSubscriptionArns,
    getEnabledStandards_maxResults,
    getEnabledStandardsResponse_nextToken,
    getEnabledStandardsResponse_standardsSubscriptions,
    getEnabledStandardsResponse_httpStatus,

    -- ** DeclineInvitations
    declineInvitations_accountIds,
    declineInvitationsResponse_unprocessedAccounts,
    declineInvitationsResponse_httpStatus,

    -- ** UpdateActionTarget
    updateActionTarget_name,
    updateActionTarget_description,
    updateActionTarget_actionTargetArn,
    updateActionTargetResponse_httpStatus,

    -- ** DeleteActionTarget
    deleteActionTarget_actionTargetArn,
    deleteActionTargetResponse_httpStatus,
    deleteActionTargetResponse_actionTargetArn,

    -- ** UpdateStandardsControl
    updateStandardsControl_controlStatus,
    updateStandardsControl_disabledReason,
    updateStandardsControl_standardsControlArn,
    updateStandardsControlResponse_httpStatus,

    -- ** DescribeOrganizationConfiguration
    describeOrganizationConfigurationResponse_memberAccountLimitReached,
    describeOrganizationConfigurationResponse_autoEnable,
    describeOrganizationConfigurationResponse_httpStatus,

    -- ** DescribeActionTargets
    describeActionTargets_actionTargetArns,
    describeActionTargets_nextToken,
    describeActionTargets_maxResults,
    describeActionTargetsResponse_nextToken,
    describeActionTargetsResponse_httpStatus,
    describeActionTargetsResponse_actionTargets,

    -- ** DisassociateMembers
    disassociateMembers_accountIds,
    disassociateMembersResponse_httpStatus,

    -- ** ListEnabledProductsForImport
    listEnabledProductsForImport_nextToken,
    listEnabledProductsForImport_maxResults,
    listEnabledProductsForImportResponse_nextToken,
    listEnabledProductsForImportResponse_productSubscriptions,
    listEnabledProductsForImportResponse_httpStatus,

    -- ** DescribeStandardsControls
    describeStandardsControls_nextToken,
    describeStandardsControls_maxResults,
    describeStandardsControls_standardsSubscriptionArn,
    describeStandardsControlsResponse_controls,
    describeStandardsControlsResponse_nextToken,
    describeStandardsControlsResponse_httpStatus,

    -- ** ListMembers
    listMembers_onlyAssociated,
    listMembers_nextToken,
    listMembers_maxResults,
    listMembersResponse_members,
    listMembersResponse_nextToken,
    listMembersResponse_httpStatus,

    -- ** CreateMembers
    createMembers_accountDetails,
    createMembersResponse_unprocessedAccounts,
    createMembersResponse_httpStatus,

    -- ** BatchImportFindings
    batchImportFindings_findings,
    batchImportFindingsResponse_failedFindings,
    batchImportFindingsResponse_httpStatus,
    batchImportFindingsResponse_failedCount,
    batchImportFindingsResponse_successCount,

    -- ** GetInvitationsCount
    getInvitationsCountResponse_invitationsCount,
    getInvitationsCountResponse_httpStatus,

    -- ** DeleteInsight
    deleteInsight_insightArn,
    deleteInsightResponse_httpStatus,
    deleteInsightResponse_insightArn,

    -- ** UpdateInsight
    updateInsight_groupByAttribute,
    updateInsight_filters,
    updateInsight_name,
    updateInsight_insightArn,
    updateInsightResponse_httpStatus,

    -- ** DisableImportFindingsForProduct
    disableImportFindingsForProduct_productSubscriptionArn,
    disableImportFindingsForProductResponse_httpStatus,

    -- ** UpdateFindings
    updateFindings_recordState,
    updateFindings_note,
    updateFindings_filters,
    updateFindingsResponse_httpStatus,

    -- ** UpdateOrganizationConfiguration
    updateOrganizationConfiguration_autoEnable,
    updateOrganizationConfigurationResponse_httpStatus,

    -- ** GetFindingAggregator
    getFindingAggregator_findingAggregatorArn,
    getFindingAggregatorResponse_regions,
    getFindingAggregatorResponse_findingAggregatorArn,
    getFindingAggregatorResponse_regionLinkingMode,
    getFindingAggregatorResponse_findingAggregationRegion,
    getFindingAggregatorResponse_httpStatus,

    -- ** InviteMembers
    inviteMembers_accountIds,
    inviteMembersResponse_unprocessedAccounts,
    inviteMembersResponse_httpStatus,

    -- ** GetMembers
    getMembers_accountIds,
    getMembersResponse_members,
    getMembersResponse_unprocessedAccounts,
    getMembersResponse_httpStatus,

    -- ** DisableSecurityHub
    disableSecurityHubResponse_httpStatus,

    -- ** ListFindingAggregators
    listFindingAggregators_nextToken,
    listFindingAggregators_maxResults,
    listFindingAggregatorsResponse_nextToken,
    listFindingAggregatorsResponse_findingAggregators,
    listFindingAggregatorsResponse_httpStatus,

    -- ** BatchEnableStandards
    batchEnableStandards_standardsSubscriptionRequests,
    batchEnableStandardsResponse_standardsSubscriptions,
    batchEnableStandardsResponse_httpStatus,

    -- ** CreateFindingAggregator
    createFindingAggregator_regions,
    createFindingAggregator_regionLinkingMode,
    createFindingAggregatorResponse_regions,
    createFindingAggregatorResponse_findingAggregatorArn,
    createFindingAggregatorResponse_regionLinkingMode,
    createFindingAggregatorResponse_findingAggregationRegion,
    createFindingAggregatorResponse_httpStatus,

    -- ** BatchDisableStandards
    batchDisableStandards_standardsSubscriptionArns,
    batchDisableStandardsResponse_standardsSubscriptions,
    batchDisableStandardsResponse_httpStatus,

    -- ** TagResource
    tagResource_resourceArn,
    tagResource_tags,
    tagResourceResponse_httpStatus,

    -- ** EnableSecurityHub
    enableSecurityHub_enableDefaultStandards,
    enableSecurityHub_tags,
    enableSecurityHubResponse_httpStatus,

    -- ** UpdateSecurityHubConfiguration
    updateSecurityHubConfiguration_autoEnableControls,
    updateSecurityHubConfigurationResponse_httpStatus,

    -- ** GetFindings
    getFindings_filters,
    getFindings_sortCriteria,
    getFindings_nextToken,
    getFindings_maxResults,
    getFindingsResponse_nextToken,
    getFindingsResponse_httpStatus,
    getFindingsResponse_findings,

    -- ** GetInsights
    getInsights_nextToken,
    getInsights_insightArns,
    getInsights_maxResults,
    getInsightsResponse_nextToken,
    getInsightsResponse_httpStatus,
    getInsightsResponse_insights,

    -- ** UntagResource
    untagResource_resourceArn,
    untagResource_tagKeys,
    untagResourceResponse_httpStatus,

    -- ** BatchUpdateFindings
    batchUpdateFindings_criticality,
    batchUpdateFindings_note,
    batchUpdateFindings_severity,
    batchUpdateFindings_types,
    batchUpdateFindings_relatedFindings,
    batchUpdateFindings_confidence,
    batchUpdateFindings_workflow,
    batchUpdateFindings_verificationState,
    batchUpdateFindings_userDefinedFields,
    batchUpdateFindings_findingIdentifiers,
    batchUpdateFindingsResponse_httpStatus,
    batchUpdateFindingsResponse_processedFindings,
    batchUpdateFindingsResponse_unprocessedFindings,

    -- ** CreateActionTarget
    createActionTarget_name,
    createActionTarget_description,
    createActionTarget_id,
    createActionTargetResponse_httpStatus,
    createActionTargetResponse_actionTargetArn,

    -- ** DisassociateFromAdministratorAccount
    disassociateFromAdministratorAccountResponse_httpStatus,

    -- ** DisableOrganizationAdminAccount
    disableOrganizationAdminAccount_adminAccountId,
    disableOrganizationAdminAccountResponse_httpStatus,

    -- * Types

    -- ** AccountDetails
    accountDetails_email,
    accountDetails_accountId,

    -- ** Action
    action_networkConnectionAction,
    action_portProbeAction,
    action_actionType,
    action_dnsRequestAction,
    action_awsApiCallAction,

    -- ** ActionLocalIpDetails
    actionLocalIpDetails_ipAddressV4,

    -- ** ActionLocalPortDetails
    actionLocalPortDetails_portName,
    actionLocalPortDetails_port,

    -- ** ActionRemoteIpDetails
    actionRemoteIpDetails_country,
    actionRemoteIpDetails_city,
    actionRemoteIpDetails_ipAddressV4,
    actionRemoteIpDetails_geoLocation,
    actionRemoteIpDetails_organization,

    -- ** ActionRemotePortDetails
    actionRemotePortDetails_portName,
    actionRemotePortDetails_port,

    -- ** ActionTarget
    actionTarget_actionTargetArn,
    actionTarget_name,
    actionTarget_description,

    -- ** Adjustment
    adjustment_reason,
    adjustment_metric,

    -- ** AdminAccount
    adminAccount_status,
    adminAccount_accountId,

    -- ** AvailabilityZone
    availabilityZone_subnetId,
    availabilityZone_zoneName,

    -- ** AwsApiCallAction
    awsApiCallAction_remoteIpDetails,
    awsApiCallAction_firstSeen,
    awsApiCallAction_callerType,
    awsApiCallAction_affectedResources,
    awsApiCallAction_lastSeen,
    awsApiCallAction_domainDetails,
    awsApiCallAction_serviceName,
    awsApiCallAction_api,

    -- ** AwsApiCallActionDomainDetails
    awsApiCallActionDomainDetails_domain,

    -- ** AwsApiGatewayAccessLogSettings
    awsApiGatewayAccessLogSettings_format,
    awsApiGatewayAccessLogSettings_destinationArn,

    -- ** AwsApiGatewayCanarySettings
    awsApiGatewayCanarySettings_deploymentId,
    awsApiGatewayCanarySettings_stageVariableOverrides,
    awsApiGatewayCanarySettings_useStageCache,
    awsApiGatewayCanarySettings_percentTraffic,

    -- ** AwsApiGatewayEndpointConfiguration
    awsApiGatewayEndpointConfiguration_types,

    -- ** AwsApiGatewayMethodSettings
    awsApiGatewayMethodSettings_dataTraceEnabled,
    awsApiGatewayMethodSettings_cacheTtlInSeconds,
    awsApiGatewayMethodSettings_httpMethod,
    awsApiGatewayMethodSettings_throttlingBurstLimit,
    awsApiGatewayMethodSettings_cacheDataEncrypted,
    awsApiGatewayMethodSettings_loggingLevel,
    awsApiGatewayMethodSettings_requireAuthorizationForCacheControl,
    awsApiGatewayMethodSettings_cachingEnabled,
    awsApiGatewayMethodSettings_resourcePath,
    awsApiGatewayMethodSettings_throttlingRateLimit,
    awsApiGatewayMethodSettings_metricsEnabled,
    awsApiGatewayMethodSettings_unauthorizedCacheControlHeaderStrategy,

    -- ** AwsApiGatewayRestApiDetails
    awsApiGatewayRestApiDetails_minimumCompressionSize,
    awsApiGatewayRestApiDetails_binaryMediaTypes,
    awsApiGatewayRestApiDetails_createdDate,
    awsApiGatewayRestApiDetails_name,
    awsApiGatewayRestApiDetails_apiKeySource,
    awsApiGatewayRestApiDetails_version,
    awsApiGatewayRestApiDetails_id,
    awsApiGatewayRestApiDetails_endpointConfiguration,
    awsApiGatewayRestApiDetails_description,

    -- ** AwsApiGatewayStageDetails
    awsApiGatewayStageDetails_deploymentId,
    awsApiGatewayStageDetails_accessLogSettings,
    awsApiGatewayStageDetails_variables,
    awsApiGatewayStageDetails_documentationVersion,
    awsApiGatewayStageDetails_clientCertificateId,
    awsApiGatewayStageDetails_tracingEnabled,
    awsApiGatewayStageDetails_createdDate,
    awsApiGatewayStageDetails_methodSettings,
    awsApiGatewayStageDetails_cacheClusterStatus,
    awsApiGatewayStageDetails_webAclArn,
    awsApiGatewayStageDetails_stageName,
    awsApiGatewayStageDetails_cacheClusterEnabled,
    awsApiGatewayStageDetails_cacheClusterSize,
    awsApiGatewayStageDetails_lastUpdatedDate,
    awsApiGatewayStageDetails_canarySettings,
    awsApiGatewayStageDetails_description,

    -- ** AwsApiGatewayV2ApiDetails
    awsApiGatewayV2ApiDetails_apiId,
    awsApiGatewayV2ApiDetails_apiEndpoint,
    awsApiGatewayV2ApiDetails_createdDate,
    awsApiGatewayV2ApiDetails_name,
    awsApiGatewayV2ApiDetails_version,
    awsApiGatewayV2ApiDetails_apiKeySelectionExpression,
    awsApiGatewayV2ApiDetails_corsConfiguration,
    awsApiGatewayV2ApiDetails_routeSelectionExpression,
    awsApiGatewayV2ApiDetails_description,
    awsApiGatewayV2ApiDetails_protocolType,

    -- ** AwsApiGatewayV2RouteSettings
    awsApiGatewayV2RouteSettings_dataTraceEnabled,
    awsApiGatewayV2RouteSettings_throttlingBurstLimit,
    awsApiGatewayV2RouteSettings_loggingLevel,
    awsApiGatewayV2RouteSettings_throttlingRateLimit,
    awsApiGatewayV2RouteSettings_detailedMetricsEnabled,

    -- ** AwsApiGatewayV2StageDetails
    awsApiGatewayV2StageDetails_lastDeploymentStatusMessage,
    awsApiGatewayV2StageDetails_deploymentId,
    awsApiGatewayV2StageDetails_routeSettings,
    awsApiGatewayV2StageDetails_accessLogSettings,
    awsApiGatewayV2StageDetails_clientCertificateId,
    awsApiGatewayV2StageDetails_stageVariables,
    awsApiGatewayV2StageDetails_autoDeploy,
    awsApiGatewayV2StageDetails_createdDate,
    awsApiGatewayV2StageDetails_defaultRouteSettings,
    awsApiGatewayV2StageDetails_apiGatewayManaged,
    awsApiGatewayV2StageDetails_stageName,
    awsApiGatewayV2StageDetails_lastUpdatedDate,
    awsApiGatewayV2StageDetails_description,

    -- ** AwsAutoScalingAutoScalingGroupDetails
    awsAutoScalingAutoScalingGroupDetails_createdTime,
    awsAutoScalingAutoScalingGroupDetails_healthCheckGracePeriod,
    awsAutoScalingAutoScalingGroupDetails_launchConfigurationName,
    awsAutoScalingAutoScalingGroupDetails_healthCheckType,
    awsAutoScalingAutoScalingGroupDetails_loadBalancerNames,

    -- ** AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails
    awsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails_virtualName,
    awsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails_noDevice,
    awsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails_ebs,
    awsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails_deviceName,

    -- ** AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails
    awsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails_deleteOnTermination,
    awsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails_volumeSize,
    awsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails_iops,
    awsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails_encrypted,
    awsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails_volumeType,
    awsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails_snapshotId,

    -- ** AwsAutoScalingLaunchConfigurationDetails
    awsAutoScalingLaunchConfigurationDetails_associatePublicIpAddress,
    awsAutoScalingLaunchConfigurationDetails_securityGroups,
    awsAutoScalingLaunchConfigurationDetails_spotPrice,
    awsAutoScalingLaunchConfigurationDetails_createdTime,
    awsAutoScalingLaunchConfigurationDetails_instanceMonitoring,
    awsAutoScalingLaunchConfigurationDetails_keyName,
    awsAutoScalingLaunchConfigurationDetails_classicLinkVpcSecurityGroups,
    awsAutoScalingLaunchConfigurationDetails_ramdiskId,
    awsAutoScalingLaunchConfigurationDetails_kernelId,
    awsAutoScalingLaunchConfigurationDetails_instanceType,
    awsAutoScalingLaunchConfigurationDetails_ebsOptimized,
    awsAutoScalingLaunchConfigurationDetails_userData,
    awsAutoScalingLaunchConfigurationDetails_classicLinkVpcId,
    awsAutoScalingLaunchConfigurationDetails_iamInstanceProfile,
    awsAutoScalingLaunchConfigurationDetails_imageId,
    awsAutoScalingLaunchConfigurationDetails_launchConfigurationName,
    awsAutoScalingLaunchConfigurationDetails_placementTenancy,
    awsAutoScalingLaunchConfigurationDetails_blockDeviceMappings,

    -- ** AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails
    awsAutoScalingLaunchConfigurationInstanceMonitoringDetails_enabled,

    -- ** AwsCertificateManagerCertificateDetails
    awsCertificateManagerCertificateDetails_subject,
    awsCertificateManagerCertificateDetails_status,
    awsCertificateManagerCertificateDetails_failureReason,
    awsCertificateManagerCertificateDetails_subjectAlternativeNames,
    awsCertificateManagerCertificateDetails_inUseBy,
    awsCertificateManagerCertificateDetails_createdAt,
    awsCertificateManagerCertificateDetails_serial,
    awsCertificateManagerCertificateDetails_renewalEligibility,
    awsCertificateManagerCertificateDetails_extendedKeyUsages,
    awsCertificateManagerCertificateDetails_importedAt,
    awsCertificateManagerCertificateDetails_keyUsages,
    awsCertificateManagerCertificateDetails_notBefore,
    awsCertificateManagerCertificateDetails_domainName,
    awsCertificateManagerCertificateDetails_renewalSummary,
    awsCertificateManagerCertificateDetails_keyAlgorithm,
    awsCertificateManagerCertificateDetails_type,
    awsCertificateManagerCertificateDetails_options,
    awsCertificateManagerCertificateDetails_issuedAt,
    awsCertificateManagerCertificateDetails_signatureAlgorithm,
    awsCertificateManagerCertificateDetails_domainValidationOptions,
    awsCertificateManagerCertificateDetails_issuer,
    awsCertificateManagerCertificateDetails_notAfter,
    awsCertificateManagerCertificateDetails_certificateAuthorityArn,

    -- ** AwsCertificateManagerCertificateDomainValidationOption
    awsCertificateManagerCertificateDomainValidationOption_validationEmails,
    awsCertificateManagerCertificateDomainValidationOption_validationMethod,
    awsCertificateManagerCertificateDomainValidationOption_resourceRecord,
    awsCertificateManagerCertificateDomainValidationOption_validationStatus,
    awsCertificateManagerCertificateDomainValidationOption_domainName,
    awsCertificateManagerCertificateDomainValidationOption_validationDomain,

    -- ** AwsCertificateManagerCertificateExtendedKeyUsage
    awsCertificateManagerCertificateExtendedKeyUsage_oId,
    awsCertificateManagerCertificateExtendedKeyUsage_name,

    -- ** AwsCertificateManagerCertificateKeyUsage
    awsCertificateManagerCertificateKeyUsage_name,

    -- ** AwsCertificateManagerCertificateOptions
    awsCertificateManagerCertificateOptions_certificateTransparencyLoggingPreference,

    -- ** AwsCertificateManagerCertificateRenewalSummary
    awsCertificateManagerCertificateRenewalSummary_renewalStatus,
    awsCertificateManagerCertificateRenewalSummary_updatedAt,
    awsCertificateManagerCertificateRenewalSummary_domainValidationOptions,
    awsCertificateManagerCertificateRenewalSummary_renewalStatusReason,

    -- ** AwsCertificateManagerCertificateResourceRecord
    awsCertificateManagerCertificateResourceRecord_value,
    awsCertificateManagerCertificateResourceRecord_name,
    awsCertificateManagerCertificateResourceRecord_type,

    -- ** AwsCloudFrontDistributionCacheBehavior
    awsCloudFrontDistributionCacheBehavior_viewerProtocolPolicy,

    -- ** AwsCloudFrontDistributionCacheBehaviors
    awsCloudFrontDistributionCacheBehaviors_items,

    -- ** AwsCloudFrontDistributionDefaultCacheBehavior
    awsCloudFrontDistributionDefaultCacheBehavior_viewerProtocolPolicy,

    -- ** AwsCloudFrontDistributionDetails
    awsCloudFrontDistributionDetails_status,
    awsCloudFrontDistributionDetails_eTag,
    awsCloudFrontDistributionDetails_originGroups,
    awsCloudFrontDistributionDetails_defaultRootObject,
    awsCloudFrontDistributionDetails_webAclId,
    awsCloudFrontDistributionDetails_lastModifiedTime,
    awsCloudFrontDistributionDetails_viewerCertificate,
    awsCloudFrontDistributionDetails_domainName,
    awsCloudFrontDistributionDetails_origins,
    awsCloudFrontDistributionDetails_logging,
    awsCloudFrontDistributionDetails_cacheBehaviors,
    awsCloudFrontDistributionDetails_defaultCacheBehavior,

    -- ** AwsCloudFrontDistributionLogging
    awsCloudFrontDistributionLogging_enabled,
    awsCloudFrontDistributionLogging_prefix,
    awsCloudFrontDistributionLogging_bucket,
    awsCloudFrontDistributionLogging_includeCookies,

    -- ** AwsCloudFrontDistributionOriginGroup
    awsCloudFrontDistributionOriginGroup_failoverCriteria,

    -- ** AwsCloudFrontDistributionOriginGroupFailover
    awsCloudFrontDistributionOriginGroupFailover_statusCodes,

    -- ** AwsCloudFrontDistributionOriginGroupFailoverStatusCodes
    awsCloudFrontDistributionOriginGroupFailoverStatusCodes_quantity,
    awsCloudFrontDistributionOriginGroupFailoverStatusCodes_items,

    -- ** AwsCloudFrontDistributionOriginGroups
    awsCloudFrontDistributionOriginGroups_items,

    -- ** AwsCloudFrontDistributionOriginItem
    awsCloudFrontDistributionOriginItem_s3OriginConfig,
    awsCloudFrontDistributionOriginItem_originPath,
    awsCloudFrontDistributionOriginItem_domainName,
    awsCloudFrontDistributionOriginItem_id,

    -- ** AwsCloudFrontDistributionOriginS3OriginConfig
    awsCloudFrontDistributionOriginS3OriginConfig_originAccessIdentity,

    -- ** AwsCloudFrontDistributionOrigins
    awsCloudFrontDistributionOrigins_items,

    -- ** AwsCloudFrontDistributionViewerCertificate
    awsCloudFrontDistributionViewerCertificate_sslSupportMethod,
    awsCloudFrontDistributionViewerCertificate_acmCertificateArn,
    awsCloudFrontDistributionViewerCertificate_certificateSource,
    awsCloudFrontDistributionViewerCertificate_minimumProtocolVersion,
    awsCloudFrontDistributionViewerCertificate_certificate,
    awsCloudFrontDistributionViewerCertificate_iamCertificateId,
    awsCloudFrontDistributionViewerCertificate_cloudFrontDefaultCertificate,

    -- ** AwsCloudTrailTrailDetails
    awsCloudTrailTrailDetails_logFileValidationEnabled,
    awsCloudTrailTrailDetails_trailArn,
    awsCloudTrailTrailDetails_s3KeyPrefix,
    awsCloudTrailTrailDetails_snsTopicArn,
    awsCloudTrailTrailDetails_snsTopicName,
    awsCloudTrailTrailDetails_cloudWatchLogsLogGroupArn,
    awsCloudTrailTrailDetails_kmsKeyId,
    awsCloudTrailTrailDetails_homeRegion,
    awsCloudTrailTrailDetails_name,
    awsCloudTrailTrailDetails_includeGlobalServiceEvents,
    awsCloudTrailTrailDetails_hasCustomEventSelectors,
    awsCloudTrailTrailDetails_isOrganizationTrail,
    awsCloudTrailTrailDetails_cloudWatchLogsRoleArn,
    awsCloudTrailTrailDetails_s3BucketName,
    awsCloudTrailTrailDetails_isMultiRegionTrail,

    -- ** AwsCodeBuildProjectArtifactsDetails
    awsCodeBuildProjectArtifactsDetails_packaging,
    awsCodeBuildProjectArtifactsDetails_location,
    awsCodeBuildProjectArtifactsDetails_path,
    awsCodeBuildProjectArtifactsDetails_encryptionDisabled,
    awsCodeBuildProjectArtifactsDetails_name,
    awsCodeBuildProjectArtifactsDetails_overrideArtifactName,
    awsCodeBuildProjectArtifactsDetails_artifactIdentifier,
    awsCodeBuildProjectArtifactsDetails_type,
    awsCodeBuildProjectArtifactsDetails_namespaceType,

    -- ** AwsCodeBuildProjectDetails
    awsCodeBuildProjectDetails_artifacts,
    awsCodeBuildProjectDetails_environment,
    awsCodeBuildProjectDetails_vpcConfig,
    awsCodeBuildProjectDetails_name,
    awsCodeBuildProjectDetails_source,
    awsCodeBuildProjectDetails_logsConfig,
    awsCodeBuildProjectDetails_encryptionKey,
    awsCodeBuildProjectDetails_serviceRole,

    -- ** AwsCodeBuildProjectEnvironment
    awsCodeBuildProjectEnvironment_imagePullCredentialsType,
    awsCodeBuildProjectEnvironment_privilegedMode,
    awsCodeBuildProjectEnvironment_registryCredential,
    awsCodeBuildProjectEnvironment_certificate,
    awsCodeBuildProjectEnvironment_environmentVariables,
    awsCodeBuildProjectEnvironment_type,

    -- ** AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails
    awsCodeBuildProjectEnvironmentEnvironmentVariablesDetails_value,
    awsCodeBuildProjectEnvironmentEnvironmentVariablesDetails_name,
    awsCodeBuildProjectEnvironmentEnvironmentVariablesDetails_type,

    -- ** AwsCodeBuildProjectEnvironmentRegistryCredential
    awsCodeBuildProjectEnvironmentRegistryCredential_credential,
    awsCodeBuildProjectEnvironmentRegistryCredential_credentialProvider,

    -- ** AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails
    awsCodeBuildProjectLogsConfigCloudWatchLogsDetails_status,
    awsCodeBuildProjectLogsConfigCloudWatchLogsDetails_groupName,
    awsCodeBuildProjectLogsConfigCloudWatchLogsDetails_streamName,

    -- ** AwsCodeBuildProjectLogsConfigDetails
    awsCodeBuildProjectLogsConfigDetails_s3Logs,
    awsCodeBuildProjectLogsConfigDetails_cloudWatchLogs,

    -- ** AwsCodeBuildProjectLogsConfigS3LogsDetails
    awsCodeBuildProjectLogsConfigS3LogsDetails_status,
    awsCodeBuildProjectLogsConfigS3LogsDetails_location,
    awsCodeBuildProjectLogsConfigS3LogsDetails_encryptionDisabled,

    -- ** AwsCodeBuildProjectSource
    awsCodeBuildProjectSource_insecureSsl,
    awsCodeBuildProjectSource_location,
    awsCodeBuildProjectSource_gitCloneDepth,
    awsCodeBuildProjectSource_type,

    -- ** AwsCodeBuildProjectVpcConfig
    awsCodeBuildProjectVpcConfig_securityGroupIds,
    awsCodeBuildProjectVpcConfig_vpcId,
    awsCodeBuildProjectVpcConfig_subnets,

    -- ** AwsCorsConfiguration
    awsCorsConfiguration_maxAge,
    awsCorsConfiguration_allowMethods,
    awsCorsConfiguration_allowHeaders,
    awsCorsConfiguration_exposeHeaders,
    awsCorsConfiguration_allowOrigins,
    awsCorsConfiguration_allowCredentials,

    -- ** AwsDynamoDbTableAttributeDefinition
    awsDynamoDbTableAttributeDefinition_attributeType,
    awsDynamoDbTableAttributeDefinition_attributeName,

    -- ** AwsDynamoDbTableBillingModeSummary
    awsDynamoDbTableBillingModeSummary_lastUpdateToPayPerRequestDateTime,
    awsDynamoDbTableBillingModeSummary_billingMode,

    -- ** AwsDynamoDbTableDetails
    awsDynamoDbTableDetails_restoreSummary,
    awsDynamoDbTableDetails_globalTableVersion,
    awsDynamoDbTableDetails_tableSizeBytes,
    awsDynamoDbTableDetails_attributeDefinitions,
    awsDynamoDbTableDetails_latestStreamArn,
    awsDynamoDbTableDetails_provisionedThroughput,
    awsDynamoDbTableDetails_tableStatus,
    awsDynamoDbTableDetails_keySchema,
    awsDynamoDbTableDetails_globalSecondaryIndexes,
    awsDynamoDbTableDetails_latestStreamLabel,
    awsDynamoDbTableDetails_billingModeSummary,
    awsDynamoDbTableDetails_localSecondaryIndexes,
    awsDynamoDbTableDetails_creationDateTime,
    awsDynamoDbTableDetails_sseDescription,
    awsDynamoDbTableDetails_tableId,
    awsDynamoDbTableDetails_replicas,
    awsDynamoDbTableDetails_itemCount,
    awsDynamoDbTableDetails_tableName,
    awsDynamoDbTableDetails_streamSpecification,

    -- ** AwsDynamoDbTableGlobalSecondaryIndex
    awsDynamoDbTableGlobalSecondaryIndex_backfilling,
    awsDynamoDbTableGlobalSecondaryIndex_indexSizeBytes,
    awsDynamoDbTableGlobalSecondaryIndex_indexStatus,
    awsDynamoDbTableGlobalSecondaryIndex_provisionedThroughput,
    awsDynamoDbTableGlobalSecondaryIndex_indexArn,
    awsDynamoDbTableGlobalSecondaryIndex_keySchema,
    awsDynamoDbTableGlobalSecondaryIndex_projection,
    awsDynamoDbTableGlobalSecondaryIndex_itemCount,
    awsDynamoDbTableGlobalSecondaryIndex_indexName,

    -- ** AwsDynamoDbTableKeySchema
    awsDynamoDbTableKeySchema_keyType,
    awsDynamoDbTableKeySchema_attributeName,

    -- ** AwsDynamoDbTableLocalSecondaryIndex
    awsDynamoDbTableLocalSecondaryIndex_indexArn,
    awsDynamoDbTableLocalSecondaryIndex_keySchema,
    awsDynamoDbTableLocalSecondaryIndex_projection,
    awsDynamoDbTableLocalSecondaryIndex_indexName,

    -- ** AwsDynamoDbTableProjection
    awsDynamoDbTableProjection_projectionType,
    awsDynamoDbTableProjection_nonKeyAttributes,

    -- ** AwsDynamoDbTableProvisionedThroughput
    awsDynamoDbTableProvisionedThroughput_readCapacityUnits,
    awsDynamoDbTableProvisionedThroughput_lastDecreaseDateTime,
    awsDynamoDbTableProvisionedThroughput_writeCapacityUnits,
    awsDynamoDbTableProvisionedThroughput_numberOfDecreasesToday,
    awsDynamoDbTableProvisionedThroughput_lastIncreaseDateTime,

    -- ** AwsDynamoDbTableProvisionedThroughputOverride
    awsDynamoDbTableProvisionedThroughputOverride_readCapacityUnits,

    -- ** AwsDynamoDbTableReplica
    awsDynamoDbTableReplica_replicaStatus,
    awsDynamoDbTableReplica_regionName,
    awsDynamoDbTableReplica_replicaStatusDescription,
    awsDynamoDbTableReplica_kmsMasterKeyId,
    awsDynamoDbTableReplica_provisionedThroughputOverride,
    awsDynamoDbTableReplica_globalSecondaryIndexes,

    -- ** AwsDynamoDbTableReplicaGlobalSecondaryIndex
    awsDynamoDbTableReplicaGlobalSecondaryIndex_provisionedThroughputOverride,
    awsDynamoDbTableReplicaGlobalSecondaryIndex_indexName,

    -- ** AwsDynamoDbTableRestoreSummary
    awsDynamoDbTableRestoreSummary_sourceTableArn,
    awsDynamoDbTableRestoreSummary_sourceBackupArn,
    awsDynamoDbTableRestoreSummary_restoreInProgress,
    awsDynamoDbTableRestoreSummary_restoreDateTime,

    -- ** AwsDynamoDbTableSseDescription
    awsDynamoDbTableSseDescription_status,
    awsDynamoDbTableSseDescription_inaccessibleEncryptionDateTime,
    awsDynamoDbTableSseDescription_sseType,
    awsDynamoDbTableSseDescription_kmsMasterKeyArn,

    -- ** AwsDynamoDbTableStreamSpecification
    awsDynamoDbTableStreamSpecification_streamViewType,
    awsDynamoDbTableStreamSpecification_streamEnabled,

    -- ** AwsEc2EipDetails
    awsEc2EipDetails_associationId,
    awsEc2EipDetails_instanceId,
    awsEc2EipDetails_networkInterfaceOwnerId,
    awsEc2EipDetails_allocationId,
    awsEc2EipDetails_networkBorderGroup,
    awsEc2EipDetails_domain,
    awsEc2EipDetails_networkInterfaceId,
    awsEc2EipDetails_publicIpv4Pool,
    awsEc2EipDetails_privateIpAddress,
    awsEc2EipDetails_publicIp,

    -- ** AwsEc2InstanceDetails
    awsEc2InstanceDetails_iamInstanceProfileArn,
    awsEc2InstanceDetails_vpcId,
    awsEc2InstanceDetails_keyName,
    awsEc2InstanceDetails_networkInterfaces,
    awsEc2InstanceDetails_ipV4Addresses,
    awsEc2InstanceDetails_subnetId,
    awsEc2InstanceDetails_imageId,
    awsEc2InstanceDetails_type,
    awsEc2InstanceDetails_ipV6Addresses,
    awsEc2InstanceDetails_launchedAt,

    -- ** AwsEc2InstanceNetworkInterfacesDetails
    awsEc2InstanceNetworkInterfacesDetails_networkInterfaceId,

    -- ** AwsEc2NetworkAclAssociation
    awsEc2NetworkAclAssociation_networkAclId,
    awsEc2NetworkAclAssociation_subnetId,
    awsEc2NetworkAclAssociation_networkAclAssociationId,

    -- ** AwsEc2NetworkAclDetails
    awsEc2NetworkAclDetails_entries,
    awsEc2NetworkAclDetails_networkAclId,
    awsEc2NetworkAclDetails_vpcId,
    awsEc2NetworkAclDetails_ownerId,
    awsEc2NetworkAclDetails_associations,
    awsEc2NetworkAclDetails_isDefault,

    -- ** AwsEc2NetworkAclEntry
    awsEc2NetworkAclEntry_ipv6CidrBlock,
    awsEc2NetworkAclEntry_icmpTypeCode,
    awsEc2NetworkAclEntry_ruleNumber,
    awsEc2NetworkAclEntry_ruleAction,
    awsEc2NetworkAclEntry_protocol,
    awsEc2NetworkAclEntry_portRange,
    awsEc2NetworkAclEntry_cidrBlock,
    awsEc2NetworkAclEntry_egress,

    -- ** AwsEc2NetworkInterfaceAttachment
    awsEc2NetworkInterfaceAttachment_instanceId,
    awsEc2NetworkInterfaceAttachment_status,
    awsEc2NetworkInterfaceAttachment_deleteOnTermination,
    awsEc2NetworkInterfaceAttachment_attachmentId,
    awsEc2NetworkInterfaceAttachment_instanceOwnerId,
    awsEc2NetworkInterfaceAttachment_attachTime,
    awsEc2NetworkInterfaceAttachment_deviceIndex,

    -- ** AwsEc2NetworkInterfaceDetails
    awsEc2NetworkInterfaceDetails_privateIpAddresses,
    awsEc2NetworkInterfaceDetails_publicDnsName,
    awsEc2NetworkInterfaceDetails_securityGroups,
    awsEc2NetworkInterfaceDetails_sourceDestCheck,
    awsEc2NetworkInterfaceDetails_networkInterfaceId,
    awsEc2NetworkInterfaceDetails_attachment,
    awsEc2NetworkInterfaceDetails_publicIp,
    awsEc2NetworkInterfaceDetails_ipV6Addresses,

    -- ** AwsEc2NetworkInterfaceIpV6AddressDetail
    awsEc2NetworkInterfaceIpV6AddressDetail_ipV6Address,

    -- ** AwsEc2NetworkInterfacePrivateIpAddressDetail
    awsEc2NetworkInterfacePrivateIpAddressDetail_privateIpAddress,
    awsEc2NetworkInterfacePrivateIpAddressDetail_privateDnsName,

    -- ** AwsEc2NetworkInterfaceSecurityGroup
    awsEc2NetworkInterfaceSecurityGroup_groupId,
    awsEc2NetworkInterfaceSecurityGroup_groupName,

    -- ** AwsEc2SecurityGroupDetails
    awsEc2SecurityGroupDetails_vpcId,
    awsEc2SecurityGroupDetails_ipPermissions,
    awsEc2SecurityGroupDetails_ownerId,
    awsEc2SecurityGroupDetails_ipPermissionsEgress,
    awsEc2SecurityGroupDetails_groupId,
    awsEc2SecurityGroupDetails_groupName,

    -- ** AwsEc2SecurityGroupIpPermission
    awsEc2SecurityGroupIpPermission_fromPort,
    awsEc2SecurityGroupIpPermission_userIdGroupPairs,
    awsEc2SecurityGroupIpPermission_prefixListIds,
    awsEc2SecurityGroupIpPermission_ipProtocol,
    awsEc2SecurityGroupIpPermission_toPort,
    awsEc2SecurityGroupIpPermission_ipv6Ranges,
    awsEc2SecurityGroupIpPermission_ipRanges,

    -- ** AwsEc2SecurityGroupIpRange
    awsEc2SecurityGroupIpRange_cidrIp,

    -- ** AwsEc2SecurityGroupIpv6Range
    awsEc2SecurityGroupIpv6Range_cidrIpv6,

    -- ** AwsEc2SecurityGroupPrefixListId
    awsEc2SecurityGroupPrefixListId_prefixListId,

    -- ** AwsEc2SecurityGroupUserIdGroupPair
    awsEc2SecurityGroupUserIdGroupPair_vpcPeeringConnectionId,
    awsEc2SecurityGroupUserIdGroupPair_vpcId,
    awsEc2SecurityGroupUserIdGroupPair_userId,
    awsEc2SecurityGroupUserIdGroupPair_groupId,
    awsEc2SecurityGroupUserIdGroupPair_groupName,
    awsEc2SecurityGroupUserIdGroupPair_peeringStatus,

    -- ** AwsEc2SubnetDetails
    awsEc2SubnetDetails_state,
    awsEc2SubnetDetails_ipv6CidrBlockAssociationSet,
    awsEc2SubnetDetails_availabilityZoneId,
    awsEc2SubnetDetails_availableIpAddressCount,
    awsEc2SubnetDetails_vpcId,
    awsEc2SubnetDetails_assignIpv6AddressOnCreation,
    awsEc2SubnetDetails_subnetId,
    awsEc2SubnetDetails_subnetArn,
    awsEc2SubnetDetails_ownerId,
    awsEc2SubnetDetails_availabilityZone,
    awsEc2SubnetDetails_cidrBlock,
    awsEc2SubnetDetails_mapPublicIpOnLaunch,
    awsEc2SubnetDetails_defaultForAz,

    -- ** AwsEc2VolumeAttachment
    awsEc2VolumeAttachment_instanceId,
    awsEc2VolumeAttachment_status,
    awsEc2VolumeAttachment_deleteOnTermination,
    awsEc2VolumeAttachment_attachTime,

    -- ** AwsEc2VolumeDetails
    awsEc2VolumeDetails_status,
    awsEc2VolumeDetails_attachments,
    awsEc2VolumeDetails_size,
    awsEc2VolumeDetails_encrypted,
    awsEc2VolumeDetails_kmsKeyId,
    awsEc2VolumeDetails_createTime,
    awsEc2VolumeDetails_snapshotId,

    -- ** AwsEc2VpcDetails
    awsEc2VpcDetails_state,
    awsEc2VpcDetails_ipv6CidrBlockAssociationSet,
    awsEc2VpcDetails_cidrBlockAssociationSet,
    awsEc2VpcDetails_dhcpOptionsId,

    -- ** AwsEc2VpcEndpointServiceDetails
    awsEc2VpcEndpointServiceDetails_networkLoadBalancerArns,
    awsEc2VpcEndpointServiceDetails_baseEndpointDnsNames,
    awsEc2VpcEndpointServiceDetails_availabilityZones,
    awsEc2VpcEndpointServiceDetails_gatewayLoadBalancerArns,
    awsEc2VpcEndpointServiceDetails_managesVpcEndpoints,
    awsEc2VpcEndpointServiceDetails_serviceName,
    awsEc2VpcEndpointServiceDetails_serviceState,
    awsEc2VpcEndpointServiceDetails_serviceType,
    awsEc2VpcEndpointServiceDetails_acceptanceRequired,
    awsEc2VpcEndpointServiceDetails_serviceId,
    awsEc2VpcEndpointServiceDetails_privateDnsName,

    -- ** AwsEc2VpcEndpointServiceServiceTypeDetails
    awsEc2VpcEndpointServiceServiceTypeDetails_serviceType,

    -- ** AwsEc2VpnConnectionDetails
    awsEc2VpnConnectionDetails_customerGatewayConfiguration,
    awsEc2VpnConnectionDetails_state,
    awsEc2VpnConnectionDetails_routes,
    awsEc2VpnConnectionDetails_vpnGatewayId,
    awsEc2VpnConnectionDetails_category,
    awsEc2VpnConnectionDetails_customerGatewayId,
    awsEc2VpnConnectionDetails_transitGatewayId,
    awsEc2VpnConnectionDetails_type,
    awsEc2VpnConnectionDetails_options,
    awsEc2VpnConnectionDetails_vpnConnectionId,
    awsEc2VpnConnectionDetails_vgwTelemetry,

    -- ** AwsEc2VpnConnectionOptionsDetails
    awsEc2VpnConnectionOptionsDetails_tunnelOptions,
    awsEc2VpnConnectionOptionsDetails_staticRoutesOnly,

    -- ** AwsEc2VpnConnectionOptionsTunnelOptionsDetails
    awsEc2VpnConnectionOptionsTunnelOptionsDetails_outsideIpAddress,
    awsEc2VpnConnectionOptionsTunnelOptionsDetails_replayWindowSize,
    awsEc2VpnConnectionOptionsTunnelOptionsDetails_rekeyFuzzPercentage,
    awsEc2VpnConnectionOptionsTunnelOptionsDetails_phase1LifetimeSeconds,
    awsEc2VpnConnectionOptionsTunnelOptionsDetails_ikeVersions,
    awsEc2VpnConnectionOptionsTunnelOptionsDetails_phase2IntegrityAlgorithms,
    awsEc2VpnConnectionOptionsTunnelOptionsDetails_phase2LifetimeSeconds,
    awsEc2VpnConnectionOptionsTunnelOptionsDetails_phase1EncryptionAlgorithms,
    awsEc2VpnConnectionOptionsTunnelOptionsDetails_phase1DhGroupNumbers,
    awsEc2VpnConnectionOptionsTunnelOptionsDetails_phase1IntegrityAlgorithms,
    awsEc2VpnConnectionOptionsTunnelOptionsDetails_rekeyMarginTimeSeconds,
    awsEc2VpnConnectionOptionsTunnelOptionsDetails_dpdTimeoutSeconds,
    awsEc2VpnConnectionOptionsTunnelOptionsDetails_tunnelInsideCidr,
    awsEc2VpnConnectionOptionsTunnelOptionsDetails_phase2EncryptionAlgorithms,
    awsEc2VpnConnectionOptionsTunnelOptionsDetails_phase2DhGroupNumbers,
    awsEc2VpnConnectionOptionsTunnelOptionsDetails_preSharedKey,

    -- ** AwsEc2VpnConnectionRoutesDetails
    awsEc2VpnConnectionRoutesDetails_state,
    awsEc2VpnConnectionRoutesDetails_destinationCidrBlock,

    -- ** AwsEc2VpnConnectionVgwTelemetryDetails
    awsEc2VpnConnectionVgwTelemetryDetails_status,
    awsEc2VpnConnectionVgwTelemetryDetails_outsideIpAddress,
    awsEc2VpnConnectionVgwTelemetryDetails_certificateArn,
    awsEc2VpnConnectionVgwTelemetryDetails_lastStatusChange,
    awsEc2VpnConnectionVgwTelemetryDetails_acceptedRouteCount,
    awsEc2VpnConnectionVgwTelemetryDetails_statusMessage,

    -- ** AwsEcrContainerImageDetails
    awsEcrContainerImageDetails_registryId,
    awsEcrContainerImageDetails_imageTags,
    awsEcrContainerImageDetails_imageDigest,
    awsEcrContainerImageDetails_imagePublishedAt,
    awsEcrContainerImageDetails_architecture,
    awsEcrContainerImageDetails_repositoryName,

    -- ** AwsEcrRepositoryDetails
    awsEcrRepositoryDetails_arn,
    awsEcrRepositoryDetails_imageScanningConfiguration,
    awsEcrRepositoryDetails_repositoryPolicyText,
    awsEcrRepositoryDetails_repositoryName,
    awsEcrRepositoryDetails_imageTagMutability,
    awsEcrRepositoryDetails_lifecyclePolicy,

    -- ** AwsEcrRepositoryImageScanningConfigurationDetails
    awsEcrRepositoryImageScanningConfigurationDetails_scanOnPush,

    -- ** AwsEcrRepositoryLifecyclePolicyDetails
    awsEcrRepositoryLifecyclePolicyDetails_registryId,
    awsEcrRepositoryLifecyclePolicyDetails_lifecyclePolicyText,

    -- ** AwsEcsClusterClusterSettingsDetails
    awsEcsClusterClusterSettingsDetails_value,
    awsEcsClusterClusterSettingsDetails_name,

    -- ** AwsEcsClusterConfigurationDetails
    awsEcsClusterConfigurationDetails_executeCommandConfiguration,

    -- ** AwsEcsClusterConfigurationExecuteCommandConfigurationDetails
    awsEcsClusterConfigurationExecuteCommandConfigurationDetails_logConfiguration,
    awsEcsClusterConfigurationExecuteCommandConfigurationDetails_kmsKeyId,
    awsEcsClusterConfigurationExecuteCommandConfigurationDetails_logging,

    -- ** AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails
    awsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails_cloudWatchLogGroupName,
    awsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails_s3KeyPrefix,
    awsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails_cloudWatchEncryptionEnabled,
    awsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails_s3EncryptionEnabled,
    awsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails_s3BucketName,

    -- ** AwsEcsClusterDefaultCapacityProviderStrategyDetails
    awsEcsClusterDefaultCapacityProviderStrategyDetails_base,
    awsEcsClusterDefaultCapacityProviderStrategyDetails_capacityProvider,
    awsEcsClusterDefaultCapacityProviderStrategyDetails_weight,

    -- ** AwsEcsClusterDetails
    awsEcsClusterDetails_clusterSettings,
    awsEcsClusterDetails_defaultCapacityProviderStrategy,
    awsEcsClusterDetails_configuration,
    awsEcsClusterDetails_capacityProviders,

    -- ** AwsEcsServiceCapacityProviderStrategyDetails
    awsEcsServiceCapacityProviderStrategyDetails_base,
    awsEcsServiceCapacityProviderStrategyDetails_capacityProvider,
    awsEcsServiceCapacityProviderStrategyDetails_weight,

    -- ** AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails
    awsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails_rollback,
    awsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails_enable,

    -- ** AwsEcsServiceDeploymentConfigurationDetails
    awsEcsServiceDeploymentConfigurationDetails_minimumHealthyPercent,
    awsEcsServiceDeploymentConfigurationDetails_maximumPercent,
    awsEcsServiceDeploymentConfigurationDetails_deploymentCircuitBreaker,

    -- ** AwsEcsServiceDeploymentControllerDetails
    awsEcsServiceDeploymentControllerDetails_type,

    -- ** AwsEcsServiceDetails
    awsEcsServiceDetails_placementStrategies,
    awsEcsServiceDetails_cluster,
    awsEcsServiceDetails_propagateTags,
    awsEcsServiceDetails_platformVersion,
    awsEcsServiceDetails_enableEcsManagedTags,
    awsEcsServiceDetails_desiredCount,
    awsEcsServiceDetails_loadBalancers,
    awsEcsServiceDetails_role,
    awsEcsServiceDetails_name,
    awsEcsServiceDetails_placementConstraints,
    awsEcsServiceDetails_serviceName,
    awsEcsServiceDetails_deploymentController,
    awsEcsServiceDetails_launchType,
    awsEcsServiceDetails_taskDefinition,
    awsEcsServiceDetails_serviceArn,
    awsEcsServiceDetails_schedulingStrategy,
    awsEcsServiceDetails_capacityProviderStrategy,
    awsEcsServiceDetails_serviceRegistries,
    awsEcsServiceDetails_healthCheckGracePeriodSeconds,
    awsEcsServiceDetails_networkConfiguration,
    awsEcsServiceDetails_deploymentConfiguration,
    awsEcsServiceDetails_enableExecuteCommand,

    -- ** AwsEcsServiceLoadBalancersDetails
    awsEcsServiceLoadBalancersDetails_loadBalancerName,
    awsEcsServiceLoadBalancersDetails_containerName,
    awsEcsServiceLoadBalancersDetails_targetGroupArn,
    awsEcsServiceLoadBalancersDetails_containerPort,

    -- ** AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails
    awsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails_securityGroups,
    awsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails_subnets,
    awsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails_assignPublicIp,

    -- ** AwsEcsServiceNetworkConfigurationDetails
    awsEcsServiceNetworkConfigurationDetails_awsVpcConfiguration,

    -- ** AwsEcsServicePlacementConstraintsDetails
    awsEcsServicePlacementConstraintsDetails_expression,
    awsEcsServicePlacementConstraintsDetails_type,

    -- ** AwsEcsServicePlacementStrategiesDetails
    awsEcsServicePlacementStrategiesDetails_field,
    awsEcsServicePlacementStrategiesDetails_type,

    -- ** AwsEcsServiceServiceRegistriesDetails
    awsEcsServiceServiceRegistriesDetails_containerName,
    awsEcsServiceServiceRegistriesDetails_registryArn,
    awsEcsServiceServiceRegistriesDetails_containerPort,
    awsEcsServiceServiceRegistriesDetails_port,

    -- ** AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails
    awsEcsTaskDefinitionContainerDefinitionsDependsOnDetails_containerName,
    awsEcsTaskDefinitionContainerDefinitionsDependsOnDetails_condition,

    -- ** AwsEcsTaskDefinitionContainerDefinitionsDetails
    awsEcsTaskDefinitionContainerDefinitionsDetails_command,
    awsEcsTaskDefinitionContainerDefinitionsDetails_hostname,
    awsEcsTaskDefinitionContainerDefinitionsDetails_image,
    awsEcsTaskDefinitionContainerDefinitionsDetails_repositoryCredentials,
    awsEcsTaskDefinitionContainerDefinitionsDetails_dockerSecurityOptions,
    awsEcsTaskDefinitionContainerDefinitionsDetails_healthCheck,
    awsEcsTaskDefinitionContainerDefinitionsDetails_disableNetworking,
    awsEcsTaskDefinitionContainerDefinitionsDetails_volumesFrom,
    awsEcsTaskDefinitionContainerDefinitionsDetails_environment,
    awsEcsTaskDefinitionContainerDefinitionsDetails_secrets,
    awsEcsTaskDefinitionContainerDefinitionsDetails_entryPoint,
    awsEcsTaskDefinitionContainerDefinitionsDetails_workingDirectory,
    awsEcsTaskDefinitionContainerDefinitionsDetails_environmentFiles,
    awsEcsTaskDefinitionContainerDefinitionsDetails_stopTimeout,
    awsEcsTaskDefinitionContainerDefinitionsDetails_privileged,
    awsEcsTaskDefinitionContainerDefinitionsDetails_ulimits,
    awsEcsTaskDefinitionContainerDefinitionsDetails_portMappings,
    awsEcsTaskDefinitionContainerDefinitionsDetails_resourceRequirements,
    awsEcsTaskDefinitionContainerDefinitionsDetails_memory,
    awsEcsTaskDefinitionContainerDefinitionsDetails_extraHosts,
    awsEcsTaskDefinitionContainerDefinitionsDetails_dockerLabels,
    awsEcsTaskDefinitionContainerDefinitionsDetails_user,
    awsEcsTaskDefinitionContainerDefinitionsDetails_systemControls,
    awsEcsTaskDefinitionContainerDefinitionsDetails_linuxParameters,
    awsEcsTaskDefinitionContainerDefinitionsDetails_logConfiguration,
    awsEcsTaskDefinitionContainerDefinitionsDetails_firelensConfiguration,
    awsEcsTaskDefinitionContainerDefinitionsDetails_dnsSearchDomains,
    awsEcsTaskDefinitionContainerDefinitionsDetails_pseudoTerminal,
    awsEcsTaskDefinitionContainerDefinitionsDetails_dependsOn,
    awsEcsTaskDefinitionContainerDefinitionsDetails_dnsServers,
    awsEcsTaskDefinitionContainerDefinitionsDetails_name,
    awsEcsTaskDefinitionContainerDefinitionsDetails_mountPoints,
    awsEcsTaskDefinitionContainerDefinitionsDetails_interactive,
    awsEcsTaskDefinitionContainerDefinitionsDetails_startTimeout,
    awsEcsTaskDefinitionContainerDefinitionsDetails_readonlyRootFilesystem,
    awsEcsTaskDefinitionContainerDefinitionsDetails_links,
    awsEcsTaskDefinitionContainerDefinitionsDetails_cpu,
    awsEcsTaskDefinitionContainerDefinitionsDetails_essential,
    awsEcsTaskDefinitionContainerDefinitionsDetails_memoryReservation,

    -- ** AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails
    awsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails_value,
    awsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails_name,

    -- ** AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails
    awsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails_value,
    awsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails_type,

    -- ** AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails
    awsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails_hostname,
    awsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails_ipAddress,

    -- ** AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails
    awsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails_type,
    awsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails_options,

    -- ** AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails
    awsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails_command,
    awsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails_startPeriod,
    awsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails_retries,
    awsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails_interval,
    awsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails_timeout,

    -- ** AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails
    awsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails_drop,
    awsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails_add,

    -- ** AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails
    awsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails_sharedMemorySize,
    awsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails_tmpfs,
    awsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails_initProcessEnabled,
    awsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails_swappiness,
    awsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails_devices,
    awsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails_capabilities,
    awsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails_maxSwap,

    -- ** AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails
    awsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails_containerPath,
    awsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails_hostPath,
    awsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails_permissions,

    -- ** AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails
    awsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails_size,
    awsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails_containerPath,
    awsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails_mountOptions,

    -- ** AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails
    awsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails_logDriver,
    awsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails_options,
    awsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails_secretOptions,

    -- ** AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails
    awsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails_name,
    awsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails_valueFrom,

    -- ** AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails
    awsEcsTaskDefinitionContainerDefinitionsMountPointsDetails_containerPath,
    awsEcsTaskDefinitionContainerDefinitionsMountPointsDetails_sourceVolume,
    awsEcsTaskDefinitionContainerDefinitionsMountPointsDetails_readOnly,

    -- ** AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails
    awsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails_protocol,
    awsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails_hostPort,
    awsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails_containerPort,

    -- ** AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails
    awsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails_credentialsParameter,

    -- ** AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails
    awsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails_value,
    awsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails_type,

    -- ** AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails
    awsEcsTaskDefinitionContainerDefinitionsSecretsDetails_name,
    awsEcsTaskDefinitionContainerDefinitionsSecretsDetails_valueFrom,

    -- ** AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails
    awsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails_namespace,
    awsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails_value,

    -- ** AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails
    awsEcsTaskDefinitionContainerDefinitionsUlimitsDetails_name,
    awsEcsTaskDefinitionContainerDefinitionsUlimitsDetails_hardLimit,
    awsEcsTaskDefinitionContainerDefinitionsUlimitsDetails_softLimit,

    -- ** AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails
    awsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails_sourceContainer,
    awsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails_readOnly,

    -- ** AwsEcsTaskDefinitionDetails
    awsEcsTaskDefinitionDetails_inferenceAccelerators,
    awsEcsTaskDefinitionDetails_executionRoleArn,
    awsEcsTaskDefinitionDetails_pidMode,
    awsEcsTaskDefinitionDetails_family,
    awsEcsTaskDefinitionDetails_requiresCompatibilities,
    awsEcsTaskDefinitionDetails_containerDefinitions,
    awsEcsTaskDefinitionDetails_memory,
    awsEcsTaskDefinitionDetails_ipcMode,
    awsEcsTaskDefinitionDetails_taskRoleArn,
    awsEcsTaskDefinitionDetails_proxyConfiguration,
    awsEcsTaskDefinitionDetails_placementConstraints,
    awsEcsTaskDefinitionDetails_networkMode,
    awsEcsTaskDefinitionDetails_volumes,
    awsEcsTaskDefinitionDetails_cpu,

    -- ** AwsEcsTaskDefinitionInferenceAcceleratorsDetails
    awsEcsTaskDefinitionInferenceAcceleratorsDetails_deviceName,
    awsEcsTaskDefinitionInferenceAcceleratorsDetails_deviceType,

    -- ** AwsEcsTaskDefinitionPlacementConstraintsDetails
    awsEcsTaskDefinitionPlacementConstraintsDetails_expression,
    awsEcsTaskDefinitionPlacementConstraintsDetails_type,

    -- ** AwsEcsTaskDefinitionProxyConfigurationDetails
    awsEcsTaskDefinitionProxyConfigurationDetails_proxyConfigurationProperties,
    awsEcsTaskDefinitionProxyConfigurationDetails_containerName,
    awsEcsTaskDefinitionProxyConfigurationDetails_type,

    -- ** AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails
    awsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails_value,
    awsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails_name,

    -- ** AwsEcsTaskDefinitionVolumesDetails
    awsEcsTaskDefinitionVolumesDetails_dockerVolumeConfiguration,
    awsEcsTaskDefinitionVolumesDetails_name,
    awsEcsTaskDefinitionVolumesDetails_efsVolumeConfiguration,
    awsEcsTaskDefinitionVolumesDetails_host,

    -- ** AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails
    awsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails_driver,
    awsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails_driverOpts,
    awsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails_scope,
    awsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails_labels,
    awsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails_autoprovision,

    -- ** AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails
    awsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails_iam,
    awsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails_accessPointId,

    -- ** AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails
    awsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails_rootDirectory,
    awsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails_transitEncryption,
    awsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails_filesystemId,
    awsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails_authorizationConfig,
    awsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails_transitEncryptionPort,

    -- ** AwsEcsTaskDefinitionVolumesHostDetails
    awsEcsTaskDefinitionVolumesHostDetails_sourcePath,

    -- ** AwsEksClusterDetails
    awsEksClusterDetails_arn,
    awsEksClusterDetails_certificateAuthorityData,
    awsEksClusterDetails_name,
    awsEksClusterDetails_version,
    awsEksClusterDetails_logging,
    awsEksClusterDetails_endpoint,
    awsEksClusterDetails_resourcesVpcConfig,
    awsEksClusterDetails_clusterStatus,
    awsEksClusterDetails_roleArn,

    -- ** AwsEksClusterLoggingClusterLoggingDetails
    awsEksClusterLoggingClusterLoggingDetails_enabled,
    awsEksClusterLoggingClusterLoggingDetails_types,

    -- ** AwsEksClusterLoggingDetails
    awsEksClusterLoggingDetails_clusterLogging,

    -- ** AwsEksClusterResourcesVpcConfigDetails
    awsEksClusterResourcesVpcConfigDetails_securityGroupIds,
    awsEksClusterResourcesVpcConfigDetails_subnetIds,

    -- ** AwsElasticBeanstalkEnvironmentDetails
    awsElasticBeanstalkEnvironmentDetails_status,
    awsElasticBeanstalkEnvironmentDetails_cname,
    awsElasticBeanstalkEnvironmentDetails_endpointUrl,
    awsElasticBeanstalkEnvironmentDetails_optionSettings,
    awsElasticBeanstalkEnvironmentDetails_dateUpdated,
    awsElasticBeanstalkEnvironmentDetails_dateCreated,
    awsElasticBeanstalkEnvironmentDetails_versionLabel,
    awsElasticBeanstalkEnvironmentDetails_platformArn,
    awsElasticBeanstalkEnvironmentDetails_tier,
    awsElasticBeanstalkEnvironmentDetails_environmentName,
    awsElasticBeanstalkEnvironmentDetails_applicationName,
    awsElasticBeanstalkEnvironmentDetails_environmentArn,
    awsElasticBeanstalkEnvironmentDetails_solutionStackName,
    awsElasticBeanstalkEnvironmentDetails_environmentId,
    awsElasticBeanstalkEnvironmentDetails_environmentLinks,
    awsElasticBeanstalkEnvironmentDetails_description,

    -- ** AwsElasticBeanstalkEnvironmentEnvironmentLink
    awsElasticBeanstalkEnvironmentEnvironmentLink_linkName,
    awsElasticBeanstalkEnvironmentEnvironmentLink_environmentName,

    -- ** AwsElasticBeanstalkEnvironmentOptionSetting
    awsElasticBeanstalkEnvironmentOptionSetting_optionName,
    awsElasticBeanstalkEnvironmentOptionSetting_resourceName,
    awsElasticBeanstalkEnvironmentOptionSetting_namespace,
    awsElasticBeanstalkEnvironmentOptionSetting_value,

    -- ** AwsElasticBeanstalkEnvironmentTier
    awsElasticBeanstalkEnvironmentTier_name,
    awsElasticBeanstalkEnvironmentTier_version,
    awsElasticBeanstalkEnvironmentTier_type,

    -- ** AwsElasticsearchDomainDetails
    awsElasticsearchDomainDetails_nodeToNodeEncryptionOptions,
    awsElasticsearchDomainDetails_accessPolicies,
    awsElasticsearchDomainDetails_serviceSoftwareOptions,
    awsElasticsearchDomainDetails_logPublishingOptions,
    awsElasticsearchDomainDetails_elasticsearchClusterConfig,
    awsElasticsearchDomainDetails_domainName,
    awsElasticsearchDomainDetails_encryptionAtRestOptions,
    awsElasticsearchDomainDetails_vPCOptions,
    awsElasticsearchDomainDetails_domainId,
    awsElasticsearchDomainDetails_endpoints,
    awsElasticsearchDomainDetails_domainEndpointOptions,
    awsElasticsearchDomainDetails_endpoint,
    awsElasticsearchDomainDetails_elasticsearchVersion,

    -- ** AwsElasticsearchDomainDomainEndpointOptions
    awsElasticsearchDomainDomainEndpointOptions_enforceHTTPS,
    awsElasticsearchDomainDomainEndpointOptions_tLSSecurityPolicy,

    -- ** AwsElasticsearchDomainElasticsearchClusterConfigDetails
    awsElasticsearchDomainElasticsearchClusterConfigDetails_dedicatedMasterCount,
    awsElasticsearchDomainElasticsearchClusterConfigDetails_dedicatedMasterType,
    awsElasticsearchDomainElasticsearchClusterConfigDetails_dedicatedMasterEnabled,
    awsElasticsearchDomainElasticsearchClusterConfigDetails_instanceCount,
    awsElasticsearchDomainElasticsearchClusterConfigDetails_zoneAwarenessEnabled,
    awsElasticsearchDomainElasticsearchClusterConfigDetails_instanceType,
    awsElasticsearchDomainElasticsearchClusterConfigDetails_zoneAwarenessConfig,

    -- ** AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails
    awsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails_availabilityZoneCount,

    -- ** AwsElasticsearchDomainEncryptionAtRestOptions
    awsElasticsearchDomainEncryptionAtRestOptions_enabled,
    awsElasticsearchDomainEncryptionAtRestOptions_kmsKeyId,

    -- ** AwsElasticsearchDomainLogPublishingOptions
    awsElasticsearchDomainLogPublishingOptions_indexSlowLogs,
    awsElasticsearchDomainLogPublishingOptions_searchSlowLogs,
    awsElasticsearchDomainLogPublishingOptions_auditLogs,

    -- ** AwsElasticsearchDomainLogPublishingOptionsLogConfig
    awsElasticsearchDomainLogPublishingOptionsLogConfig_enabled,
    awsElasticsearchDomainLogPublishingOptionsLogConfig_cloudWatchLogsLogGroupArn,

    -- ** AwsElasticsearchDomainNodeToNodeEncryptionOptions
    awsElasticsearchDomainNodeToNodeEncryptionOptions_enabled,

    -- ** AwsElasticsearchDomainServiceSoftwareOptions
    awsElasticsearchDomainServiceSoftwareOptions_automatedUpdateDate,
    awsElasticsearchDomainServiceSoftwareOptions_currentVersion,
    awsElasticsearchDomainServiceSoftwareOptions_updateStatus,
    awsElasticsearchDomainServiceSoftwareOptions_cancellable,
    awsElasticsearchDomainServiceSoftwareOptions_updateAvailable,
    awsElasticsearchDomainServiceSoftwareOptions_description,
    awsElasticsearchDomainServiceSoftwareOptions_newVersion,

    -- ** AwsElasticsearchDomainVPCOptions
    awsElasticsearchDomainVPCOptions_securityGroupIds,
    awsElasticsearchDomainVPCOptions_subnetIds,
    awsElasticsearchDomainVPCOptions_vPCId,
    awsElasticsearchDomainVPCOptions_availabilityZones,

    -- ** AwsElbAppCookieStickinessPolicy
    awsElbAppCookieStickinessPolicy_policyName,
    awsElbAppCookieStickinessPolicy_cookieName,

    -- ** AwsElbLbCookieStickinessPolicy
    awsElbLbCookieStickinessPolicy_policyName,
    awsElbLbCookieStickinessPolicy_cookieExpirationPeriod,

    -- ** AwsElbLoadBalancerAccessLog
    awsElbLoadBalancerAccessLog_emitInterval,
    awsElbLoadBalancerAccessLog_enabled,
    awsElbLoadBalancerAccessLog_s3BucketPrefix,
    awsElbLoadBalancerAccessLog_s3BucketName,

    -- ** AwsElbLoadBalancerAttributes
    awsElbLoadBalancerAttributes_crossZoneLoadBalancing,
    awsElbLoadBalancerAttributes_accessLog,
    awsElbLoadBalancerAttributes_connectionSettings,
    awsElbLoadBalancerAttributes_connectionDraining,

    -- ** AwsElbLoadBalancerBackendServerDescription
    awsElbLoadBalancerBackendServerDescription_policyNames,
    awsElbLoadBalancerBackendServerDescription_instancePort,

    -- ** AwsElbLoadBalancerConnectionDraining
    awsElbLoadBalancerConnectionDraining_enabled,
    awsElbLoadBalancerConnectionDraining_timeout,

    -- ** AwsElbLoadBalancerConnectionSettings
    awsElbLoadBalancerConnectionSettings_idleTimeout,

    -- ** AwsElbLoadBalancerCrossZoneLoadBalancing
    awsElbLoadBalancerCrossZoneLoadBalancing_enabled,

    -- ** AwsElbLoadBalancerDetails
    awsElbLoadBalancerDetails_sourceSecurityGroup,
    awsElbLoadBalancerDetails_canonicalHostedZoneName,
    awsElbLoadBalancerDetails_securityGroups,
    awsElbLoadBalancerDetails_healthCheck,
    awsElbLoadBalancerDetails_loadBalancerName,
    awsElbLoadBalancerDetails_loadBalancerAttributes,
    awsElbLoadBalancerDetails_createdTime,
    awsElbLoadBalancerDetails_vpcId,
    awsElbLoadBalancerDetails_subnets,
    awsElbLoadBalancerDetails_availabilityZones,
    awsElbLoadBalancerDetails_backendServerDescriptions,
    awsElbLoadBalancerDetails_canonicalHostedZoneNameID,
    awsElbLoadBalancerDetails_instances,
    awsElbLoadBalancerDetails_scheme,
    awsElbLoadBalancerDetails_listenerDescriptions,
    awsElbLoadBalancerDetails_dnsName,
    awsElbLoadBalancerDetails_policies,

    -- ** AwsElbLoadBalancerHealthCheck
    awsElbLoadBalancerHealthCheck_healthyThreshold,
    awsElbLoadBalancerHealthCheck_interval,
    awsElbLoadBalancerHealthCheck_timeout,
    awsElbLoadBalancerHealthCheck_unhealthyThreshold,
    awsElbLoadBalancerHealthCheck_target,

    -- ** AwsElbLoadBalancerInstance
    awsElbLoadBalancerInstance_instanceId,

    -- ** AwsElbLoadBalancerListener
    awsElbLoadBalancerListener_instanceProtocol,
    awsElbLoadBalancerListener_instancePort,
    awsElbLoadBalancerListener_loadBalancerPort,
    awsElbLoadBalancerListener_protocol,
    awsElbLoadBalancerListener_sslCertificateId,

    -- ** AwsElbLoadBalancerListenerDescription
    awsElbLoadBalancerListenerDescription_policyNames,
    awsElbLoadBalancerListenerDescription_listener,

    -- ** AwsElbLoadBalancerPolicies
    awsElbLoadBalancerPolicies_otherPolicies,
    awsElbLoadBalancerPolicies_lbCookieStickinessPolicies,
    awsElbLoadBalancerPolicies_appCookieStickinessPolicies,

    -- ** AwsElbLoadBalancerSourceSecurityGroup
    awsElbLoadBalancerSourceSecurityGroup_ownerAlias,
    awsElbLoadBalancerSourceSecurityGroup_groupName,

    -- ** AwsElbv2LoadBalancerAttribute
    awsElbv2LoadBalancerAttribute_value,
    awsElbv2LoadBalancerAttribute_key,

    -- ** AwsElbv2LoadBalancerDetails
    awsElbv2LoadBalancerDetails_state,
    awsElbv2LoadBalancerDetails_securityGroups,
    awsElbv2LoadBalancerDetails_loadBalancerAttributes,
    awsElbv2LoadBalancerDetails_createdTime,
    awsElbv2LoadBalancerDetails_vpcId,
    awsElbv2LoadBalancerDetails_canonicalHostedZoneId,
    awsElbv2LoadBalancerDetails_availabilityZones,
    awsElbv2LoadBalancerDetails_ipAddressType,
    awsElbv2LoadBalancerDetails_scheme,
    awsElbv2LoadBalancerDetails_type,
    awsElbv2LoadBalancerDetails_dNSName,

    -- ** AwsIamAccessKeyDetails
    awsIamAccessKeyDetails_status,
    awsIamAccessKeyDetails_principalId,
    awsIamAccessKeyDetails_principalType,
    awsIamAccessKeyDetails_principalName,
    awsIamAccessKeyDetails_createdAt,
    awsIamAccessKeyDetails_userName,
    awsIamAccessKeyDetails_sessionContext,
    awsIamAccessKeyDetails_accountId,
    awsIamAccessKeyDetails_accessKeyId,

    -- ** AwsIamAccessKeySessionContext
    awsIamAccessKeySessionContext_attributes,
    awsIamAccessKeySessionContext_sessionIssuer,

    -- ** AwsIamAccessKeySessionContextAttributes
    awsIamAccessKeySessionContextAttributes_creationDate,
    awsIamAccessKeySessionContextAttributes_mfaAuthenticated,

    -- ** AwsIamAccessKeySessionContextSessionIssuer
    awsIamAccessKeySessionContextSessionIssuer_principalId,
    awsIamAccessKeySessionContextSessionIssuer_arn,
    awsIamAccessKeySessionContextSessionIssuer_userName,
    awsIamAccessKeySessionContextSessionIssuer_accountId,
    awsIamAccessKeySessionContextSessionIssuer_type,

    -- ** AwsIamAttachedManagedPolicy
    awsIamAttachedManagedPolicy_policyName,
    awsIamAttachedManagedPolicy_policyArn,

    -- ** AwsIamGroupDetails
    awsIamGroupDetails_path,
    awsIamGroupDetails_createDate,
    awsIamGroupDetails_groupId,
    awsIamGroupDetails_groupPolicyList,
    awsIamGroupDetails_groupName,
    awsIamGroupDetails_attachedManagedPolicies,

    -- ** AwsIamGroupPolicy
    awsIamGroupPolicy_policyName,

    -- ** AwsIamInstanceProfile
    awsIamInstanceProfile_roles,
    awsIamInstanceProfile_arn,
    awsIamInstanceProfile_path,
    awsIamInstanceProfile_createDate,
    awsIamInstanceProfile_instanceProfileId,
    awsIamInstanceProfile_instanceProfileName,

    -- ** AwsIamInstanceProfileRole
    awsIamInstanceProfileRole_assumeRolePolicyDocument,
    awsIamInstanceProfileRole_arn,
    awsIamInstanceProfileRole_path,
    awsIamInstanceProfileRole_createDate,
    awsIamInstanceProfileRole_roleName,
    awsIamInstanceProfileRole_roleId,

    -- ** AwsIamPermissionsBoundary
    awsIamPermissionsBoundary_permissionsBoundaryType,
    awsIamPermissionsBoundary_permissionsBoundaryArn,

    -- ** AwsIamPolicyDetails
    awsIamPolicyDetails_policyName,
    awsIamPolicyDetails_updateDate,
    awsIamPolicyDetails_policyId,
    awsIamPolicyDetails_path,
    awsIamPolicyDetails_policyVersionList,
    awsIamPolicyDetails_createDate,
    awsIamPolicyDetails_isAttachable,
    awsIamPolicyDetails_permissionsBoundaryUsageCount,
    awsIamPolicyDetails_defaultVersionId,
    awsIamPolicyDetails_attachmentCount,
    awsIamPolicyDetails_description,

    -- ** AwsIamPolicyVersion
    awsIamPolicyVersion_versionId,
    awsIamPolicyVersion_createDate,
    awsIamPolicyVersion_isDefaultVersion,

    -- ** AwsIamRoleDetails
    awsIamRoleDetails_maxSessionDuration,
    awsIamRoleDetails_assumeRolePolicyDocument,
    awsIamRoleDetails_path,
    awsIamRoleDetails_instanceProfileList,
    awsIamRoleDetails_createDate,
    awsIamRoleDetails_roleName,
    awsIamRoleDetails_roleId,
    awsIamRoleDetails_permissionsBoundary,
    awsIamRoleDetails_rolePolicyList,
    awsIamRoleDetails_attachedManagedPolicies,

    -- ** AwsIamRolePolicy
    awsIamRolePolicy_policyName,

    -- ** AwsIamUserDetails
    awsIamUserDetails_groupList,
    awsIamUserDetails_path,
    awsIamUserDetails_createDate,
    awsIamUserDetails_userName,
    awsIamUserDetails_userId,
    awsIamUserDetails_permissionsBoundary,
    awsIamUserDetails_userPolicyList,
    awsIamUserDetails_attachedManagedPolicies,

    -- ** AwsIamUserPolicy
    awsIamUserPolicy_policyName,

    -- ** AwsKmsKeyDetails
    awsKmsKeyDetails_origin,
    awsKmsKeyDetails_keyManager,
    awsKmsKeyDetails_keyId,
    awsKmsKeyDetails_keyState,
    awsKmsKeyDetails_aWSAccountId,
    awsKmsKeyDetails_keyRotationStatus,
    awsKmsKeyDetails_creationDate,
    awsKmsKeyDetails_description,

    -- ** AwsLambdaFunctionCode
    awsLambdaFunctionCode_s3ObjectVersion,
    awsLambdaFunctionCode_s3Key,
    awsLambdaFunctionCode_zipFile,
    awsLambdaFunctionCode_s3Bucket,

    -- ** AwsLambdaFunctionDeadLetterConfig
    awsLambdaFunctionDeadLetterConfig_targetArn,

    -- ** AwsLambdaFunctionDetails
    awsLambdaFunctionDetails_memorySize,
    awsLambdaFunctionDetails_runtime,
    awsLambdaFunctionDetails_kmsKeyArn,
    awsLambdaFunctionDetails_environment,
    awsLambdaFunctionDetails_deadLetterConfig,
    awsLambdaFunctionDetails_role,
    awsLambdaFunctionDetails_vpcConfig,
    awsLambdaFunctionDetails_version,
    awsLambdaFunctionDetails_functionName,
    awsLambdaFunctionDetails_code,
    awsLambdaFunctionDetails_layers,
    awsLambdaFunctionDetails_handler,
    awsLambdaFunctionDetails_timeout,
    awsLambdaFunctionDetails_lastModified,
    awsLambdaFunctionDetails_codeSha256,
    awsLambdaFunctionDetails_tracingConfig,
    awsLambdaFunctionDetails_revisionId,
    awsLambdaFunctionDetails_masterArn,

    -- ** AwsLambdaFunctionEnvironment
    awsLambdaFunctionEnvironment_variables,
    awsLambdaFunctionEnvironment_error,

    -- ** AwsLambdaFunctionEnvironmentError
    awsLambdaFunctionEnvironmentError_errorCode,
    awsLambdaFunctionEnvironmentError_message,

    -- ** AwsLambdaFunctionLayer
    awsLambdaFunctionLayer_arn,
    awsLambdaFunctionLayer_codeSize,

    -- ** AwsLambdaFunctionTracingConfig
    awsLambdaFunctionTracingConfig_mode,

    -- ** AwsLambdaFunctionVpcConfig
    awsLambdaFunctionVpcConfig_securityGroupIds,
    awsLambdaFunctionVpcConfig_subnetIds,
    awsLambdaFunctionVpcConfig_vpcId,

    -- ** AwsLambdaLayerVersionDetails
    awsLambdaLayerVersionDetails_createdDate,
    awsLambdaLayerVersionDetails_version,
    awsLambdaLayerVersionDetails_compatibleRuntimes,

    -- ** AwsOpenSearchServiceDomainClusterConfigDetails
    awsOpenSearchServiceDomainClusterConfigDetails_dedicatedMasterCount,
    awsOpenSearchServiceDomainClusterConfigDetails_dedicatedMasterType,
    awsOpenSearchServiceDomainClusterConfigDetails_dedicatedMasterEnabled,
    awsOpenSearchServiceDomainClusterConfigDetails_instanceCount,
    awsOpenSearchServiceDomainClusterConfigDetails_zoneAwarenessEnabled,
    awsOpenSearchServiceDomainClusterConfigDetails_instanceType,
    awsOpenSearchServiceDomainClusterConfigDetails_warmEnabled,
    awsOpenSearchServiceDomainClusterConfigDetails_zoneAwarenessConfig,
    awsOpenSearchServiceDomainClusterConfigDetails_warmCount,
    awsOpenSearchServiceDomainClusterConfigDetails_warmType,

    -- ** AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails
    awsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails_availabilityZoneCount,

    -- ** AwsOpenSearchServiceDomainDetails
    awsOpenSearchServiceDomainDetails_engineVersion,
    awsOpenSearchServiceDomainDetails_nodeToNodeEncryptionOptions,
    awsOpenSearchServiceDomainDetails_accessPolicies,
    awsOpenSearchServiceDomainDetails_serviceSoftwareOptions,
    awsOpenSearchServiceDomainDetails_arn,
    awsOpenSearchServiceDomainDetails_logPublishingOptions,
    awsOpenSearchServiceDomainDetails_clusterConfig,
    awsOpenSearchServiceDomainDetails_domainName,
    awsOpenSearchServiceDomainDetails_encryptionAtRestOptions,
    awsOpenSearchServiceDomainDetails_vpcOptions,
    awsOpenSearchServiceDomainDetails_id,
    awsOpenSearchServiceDomainDetails_domainEndpoints,
    awsOpenSearchServiceDomainDetails_domainEndpoint,
    awsOpenSearchServiceDomainDetails_domainEndpointOptions,

    -- ** AwsOpenSearchServiceDomainDomainEndpointOptionsDetails
    awsOpenSearchServiceDomainDomainEndpointOptionsDetails_enforceHTTPS,
    awsOpenSearchServiceDomainDomainEndpointOptionsDetails_tLSSecurityPolicy,
    awsOpenSearchServiceDomainDomainEndpointOptionsDetails_customEndpointEnabled,
    awsOpenSearchServiceDomainDomainEndpointOptionsDetails_customEndpoint,
    awsOpenSearchServiceDomainDomainEndpointOptionsDetails_customEndpointCertificateArn,

    -- ** AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails
    awsOpenSearchServiceDomainEncryptionAtRestOptionsDetails_enabled,
    awsOpenSearchServiceDomainEncryptionAtRestOptionsDetails_kmsKeyId,

    -- ** AwsOpenSearchServiceDomainLogPublishingOption
    awsOpenSearchServiceDomainLogPublishingOption_enabled,
    awsOpenSearchServiceDomainLogPublishingOption_cloudWatchLogsLogGroupArn,

    -- ** AwsOpenSearchServiceDomainLogPublishingOptionsDetails
    awsOpenSearchServiceDomainLogPublishingOptionsDetails_indexSlowLogs,
    awsOpenSearchServiceDomainLogPublishingOptionsDetails_searchSlowLogs,
    awsOpenSearchServiceDomainLogPublishingOptionsDetails_auditLogs,

    -- ** AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails
    awsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails_enabled,

    -- ** AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails
    awsOpenSearchServiceDomainServiceSoftwareOptionsDetails_automatedUpdateDate,
    awsOpenSearchServiceDomainServiceSoftwareOptionsDetails_currentVersion,
    awsOpenSearchServiceDomainServiceSoftwareOptionsDetails_optionalDeployment,
    awsOpenSearchServiceDomainServiceSoftwareOptionsDetails_updateStatus,
    awsOpenSearchServiceDomainServiceSoftwareOptionsDetails_cancellable,
    awsOpenSearchServiceDomainServiceSoftwareOptionsDetails_updateAvailable,
    awsOpenSearchServiceDomainServiceSoftwareOptionsDetails_description,
    awsOpenSearchServiceDomainServiceSoftwareOptionsDetails_newVersion,

    -- ** AwsOpenSearchServiceDomainVpcOptionsDetails
    awsOpenSearchServiceDomainVpcOptionsDetails_securityGroupIds,
    awsOpenSearchServiceDomainVpcOptionsDetails_subnetIds,

    -- ** AwsRdsDbClusterAssociatedRole
    awsRdsDbClusterAssociatedRole_status,
    awsRdsDbClusterAssociatedRole_roleArn,

    -- ** AwsRdsDbClusterDetails
    awsRdsDbClusterDetails_engineVersion,
    awsRdsDbClusterDetails_status,
    awsRdsDbClusterDetails_dbClusterMembers,
    awsRdsDbClusterDetails_deletionProtection,
    awsRdsDbClusterDetails_storageEncrypted,
    awsRdsDbClusterDetails_dbClusterIdentifier,
    awsRdsDbClusterDetails_readReplicaIdentifiers,
    awsRdsDbClusterDetails_dbClusterParameterGroup,
    awsRdsDbClusterDetails_hostedZoneId,
    awsRdsDbClusterDetails_masterUsername,
    awsRdsDbClusterDetails_iamDatabaseAuthenticationEnabled,
    awsRdsDbClusterDetails_dbClusterResourceId,
    awsRdsDbClusterDetails_customEndpoints,
    awsRdsDbClusterDetails_engine,
    awsRdsDbClusterDetails_httpEndpointEnabled,
    awsRdsDbClusterDetails_crossAccountClone,
    awsRdsDbClusterDetails_preferredMaintenanceWindow,
    awsRdsDbClusterDetails_availabilityZones,
    awsRdsDbClusterDetails_kmsKeyId,
    awsRdsDbClusterDetails_preferredBackupWindow,
    awsRdsDbClusterDetails_associatedRoles,
    awsRdsDbClusterDetails_vpcSecurityGroups,
    awsRdsDbClusterDetails_backupRetentionPeriod,
    awsRdsDbClusterDetails_dbSubnetGroup,
    awsRdsDbClusterDetails_multiAz,
    awsRdsDbClusterDetails_databaseName,
    awsRdsDbClusterDetails_engineMode,
    awsRdsDbClusterDetails_enabledCloudWatchLogsExports,
    awsRdsDbClusterDetails_activityStreamStatus,
    awsRdsDbClusterDetails_allocatedStorage,
    awsRdsDbClusterDetails_copyTagsToSnapshot,
    awsRdsDbClusterDetails_clusterCreateTime,
    awsRdsDbClusterDetails_endpoint,
    awsRdsDbClusterDetails_readerEndpoint,
    awsRdsDbClusterDetails_dbClusterOptionGroupMemberships,
    awsRdsDbClusterDetails_port,
    awsRdsDbClusterDetails_domainMemberships,

    -- ** AwsRdsDbClusterMember
    awsRdsDbClusterMember_promotionTier,
    awsRdsDbClusterMember_dbInstanceIdentifier,
    awsRdsDbClusterMember_isClusterWriter,
    awsRdsDbClusterMember_dbClusterParameterGroupStatus,

    -- ** AwsRdsDbClusterOptionGroupMembership
    awsRdsDbClusterOptionGroupMembership_status,
    awsRdsDbClusterOptionGroupMembership_dbClusterOptionGroupName,

    -- ** AwsRdsDbClusterSnapshotDetails
    awsRdsDbClusterSnapshotDetails_engineVersion,
    awsRdsDbClusterSnapshotDetails_status,
    awsRdsDbClusterSnapshotDetails_storageEncrypted,
    awsRdsDbClusterSnapshotDetails_dbClusterIdentifier,
    awsRdsDbClusterSnapshotDetails_masterUsername,
    awsRdsDbClusterSnapshotDetails_iamDatabaseAuthenticationEnabled,
    awsRdsDbClusterSnapshotDetails_vpcId,
    awsRdsDbClusterSnapshotDetails_dbClusterSnapshotIdentifier,
    awsRdsDbClusterSnapshotDetails_engine,
    awsRdsDbClusterSnapshotDetails_licenseModel,
    awsRdsDbClusterSnapshotDetails_availabilityZones,
    awsRdsDbClusterSnapshotDetails_snapshotType,
    awsRdsDbClusterSnapshotDetails_kmsKeyId,
    awsRdsDbClusterSnapshotDetails_snapshotCreateTime,
    awsRdsDbClusterSnapshotDetails_allocatedStorage,
    awsRdsDbClusterSnapshotDetails_clusterCreateTime,
    awsRdsDbClusterSnapshotDetails_percentProgress,
    awsRdsDbClusterSnapshotDetails_port,

    -- ** AwsRdsDbDomainMembership
    awsRdsDbDomainMembership_status,
    awsRdsDbDomainMembership_fqdn,
    awsRdsDbDomainMembership_domain,
    awsRdsDbDomainMembership_iamRoleName,

    -- ** AwsRdsDbInstanceAssociatedRole
    awsRdsDbInstanceAssociatedRole_status,
    awsRdsDbInstanceAssociatedRole_featureName,
    awsRdsDbInstanceAssociatedRole_roleArn,

    -- ** AwsRdsDbInstanceDetails
    awsRdsDbInstanceDetails_dbSecurityGroups,
    awsRdsDbInstanceDetails_engineVersion,
    awsRdsDbInstanceDetails_deletionProtection,
    awsRdsDbInstanceDetails_storageEncrypted,
    awsRdsDbInstanceDetails_dbClusterIdentifier,
    awsRdsDbInstanceDetails_publiclyAccessible,
    awsRdsDbInstanceDetails_autoMinorVersionUpgrade,
    awsRdsDbInstanceDetails_masterUsername,
    awsRdsDbInstanceDetails_readReplicaDBInstanceIdentifiers,
    awsRdsDbInstanceDetails_iAMDatabaseAuthenticationEnabled,
    awsRdsDbInstanceDetails_monitoringRoleArn,
    awsRdsDbInstanceDetails_iops,
    awsRdsDbInstanceDetails_instanceCreateTime,
    awsRdsDbInstanceDetails_readReplicaSourceDBInstanceIdentifier,
    awsRdsDbInstanceDetails_monitoringInterval,
    awsRdsDbInstanceDetails_engine,
    awsRdsDbInstanceDetails_processorFeatures,
    awsRdsDbInstanceDetails_latestRestorableTime,
    awsRdsDbInstanceDetails_dbInstanceClass,
    awsRdsDbInstanceDetails_promotionTier,
    awsRdsDbInstanceDetails_licenseModel,
    awsRdsDbInstanceDetails_preferredMaintenanceWindow,
    awsRdsDbInstanceDetails_performanceInsightsRetentionPeriod,
    awsRdsDbInstanceDetails_cACertificateIdentifier,
    awsRdsDbInstanceDetails_dbInstanceIdentifier,
    awsRdsDbInstanceDetails_characterSetName,
    awsRdsDbInstanceDetails_maxAllocatedStorage,
    awsRdsDbInstanceDetails_kmsKeyId,
    awsRdsDbInstanceDetails_preferredBackupWindow,
    awsRdsDbInstanceDetails_associatedRoles,
    awsRdsDbInstanceDetails_availabilityZone,
    awsRdsDbInstanceDetails_vpcSecurityGroups,
    awsRdsDbInstanceDetails_backupRetentionPeriod,
    awsRdsDbInstanceDetails_performanceInsightsKmsKeyId,
    awsRdsDbInstanceDetails_dbSubnetGroup,
    awsRdsDbInstanceDetails_multiAz,
    awsRdsDbInstanceDetails_listenerEndpoint,
    awsRdsDbInstanceDetails_optionGroupMemberships,
    awsRdsDbInstanceDetails_enhancedMonitoringResourceArn,
    awsRdsDbInstanceDetails_secondaryAvailabilityZone,
    awsRdsDbInstanceDetails_enabledCloudWatchLogsExports,
    awsRdsDbInstanceDetails_performanceInsightsEnabled,
    awsRdsDbInstanceDetails_allocatedStorage,
    awsRdsDbInstanceDetails_dbiResourceId,
    awsRdsDbInstanceDetails_dbInstanceStatus,
    awsRdsDbInstanceDetails_copyTagsToSnapshot,
    awsRdsDbInstanceDetails_timezone,
    awsRdsDbInstanceDetails_tdeCredentialArn,
    awsRdsDbInstanceDetails_dbParameterGroups,
    awsRdsDbInstanceDetails_endpoint,
    awsRdsDbInstanceDetails_dbInstancePort,
    awsRdsDbInstanceDetails_pendingModifiedValues,
    awsRdsDbInstanceDetails_readReplicaDBClusterIdentifiers,
    awsRdsDbInstanceDetails_storageType,
    awsRdsDbInstanceDetails_statusInfos,
    awsRdsDbInstanceDetails_domainMemberships,
    awsRdsDbInstanceDetails_dbName,

    -- ** AwsRdsDbInstanceEndpoint
    awsRdsDbInstanceEndpoint_hostedZoneId,
    awsRdsDbInstanceEndpoint_address,
    awsRdsDbInstanceEndpoint_port,

    -- ** AwsRdsDbInstanceVpcSecurityGroup
    awsRdsDbInstanceVpcSecurityGroup_status,
    awsRdsDbInstanceVpcSecurityGroup_vpcSecurityGroupId,

    -- ** AwsRdsDbOptionGroupMembership
    awsRdsDbOptionGroupMembership_status,
    awsRdsDbOptionGroupMembership_optionGroupName,

    -- ** AwsRdsDbParameterGroup
    awsRdsDbParameterGroup_dbParameterGroupName,
    awsRdsDbParameterGroup_parameterApplyStatus,

    -- ** AwsRdsDbPendingModifiedValues
    awsRdsDbPendingModifiedValues_engineVersion,
    awsRdsDbPendingModifiedValues_masterUserPassword,
    awsRdsDbPendingModifiedValues_dbSubnetGroupName,
    awsRdsDbPendingModifiedValues_iops,
    awsRdsDbPendingModifiedValues_dbInstanceClass,
    awsRdsDbPendingModifiedValues_processorFeatures,
    awsRdsDbPendingModifiedValues_licenseModel,
    awsRdsDbPendingModifiedValues_dbInstanceIdentifier,
    awsRdsDbPendingModifiedValues_caCertificateIdentifier,
    awsRdsDbPendingModifiedValues_pendingCloudWatchLogsExports,
    awsRdsDbPendingModifiedValues_backupRetentionPeriod,
    awsRdsDbPendingModifiedValues_multiAZ,
    awsRdsDbPendingModifiedValues_allocatedStorage,
    awsRdsDbPendingModifiedValues_port,
    awsRdsDbPendingModifiedValues_storageType,

    -- ** AwsRdsDbProcessorFeature
    awsRdsDbProcessorFeature_value,
    awsRdsDbProcessorFeature_name,

    -- ** AwsRdsDbSnapshotDetails
    awsRdsDbSnapshotDetails_engineVersion,
    awsRdsDbSnapshotDetails_status,
    awsRdsDbSnapshotDetails_masterUsername,
    awsRdsDbSnapshotDetails_sourceRegion,
    awsRdsDbSnapshotDetails_iops,
    awsRdsDbSnapshotDetails_iamDatabaseAuthenticationEnabled,
    awsRdsDbSnapshotDetails_vpcId,
    awsRdsDbSnapshotDetails_instanceCreateTime,
    awsRdsDbSnapshotDetails_engine,
    awsRdsDbSnapshotDetails_encrypted,
    awsRdsDbSnapshotDetails_dbSnapshotIdentifier,
    awsRdsDbSnapshotDetails_processorFeatures,
    awsRdsDbSnapshotDetails_licenseModel,
    awsRdsDbSnapshotDetails_dbInstanceIdentifier,
    awsRdsDbSnapshotDetails_snapshotType,
    awsRdsDbSnapshotDetails_sourceDbSnapshotIdentifier,
    awsRdsDbSnapshotDetails_kmsKeyId,
    awsRdsDbSnapshotDetails_availabilityZone,
    awsRdsDbSnapshotDetails_snapshotCreateTime,
    awsRdsDbSnapshotDetails_allocatedStorage,
    awsRdsDbSnapshotDetails_dbiResourceId,
    awsRdsDbSnapshotDetails_optionGroupName,
    awsRdsDbSnapshotDetails_timezone,
    awsRdsDbSnapshotDetails_tdeCredentialArn,
    awsRdsDbSnapshotDetails_percentProgress,
    awsRdsDbSnapshotDetails_port,
    awsRdsDbSnapshotDetails_storageType,

    -- ** AwsRdsDbStatusInfo
    awsRdsDbStatusInfo_status,
    awsRdsDbStatusInfo_normal,
    awsRdsDbStatusInfo_statusType,
    awsRdsDbStatusInfo_message,

    -- ** AwsRdsDbSubnetGroup
    awsRdsDbSubnetGroup_dbSubnetGroupName,
    awsRdsDbSubnetGroup_vpcId,
    awsRdsDbSubnetGroup_subnets,
    awsRdsDbSubnetGroup_dbSubnetGroupDescription,
    awsRdsDbSubnetGroup_dbSubnetGroupArn,
    awsRdsDbSubnetGroup_subnetGroupStatus,

    -- ** AwsRdsDbSubnetGroupSubnet
    awsRdsDbSubnetGroupSubnet_subnetStatus,
    awsRdsDbSubnetGroupSubnet_subnetIdentifier,
    awsRdsDbSubnetGroupSubnet_subnetAvailabilityZone,

    -- ** AwsRdsDbSubnetGroupSubnetAvailabilityZone
    awsRdsDbSubnetGroupSubnetAvailabilityZone_name,

    -- ** AwsRdsEventSubscriptionDetails
    awsRdsEventSubscriptionDetails_status,
    awsRdsEventSubscriptionDetails_customerAwsId,
    awsRdsEventSubscriptionDetails_custSubscriptionId,
    awsRdsEventSubscriptionDetails_snsTopicArn,
    awsRdsEventSubscriptionDetails_eventSubscriptionArn,
    awsRdsEventSubscriptionDetails_enabled,
    awsRdsEventSubscriptionDetails_sourceType,
    awsRdsEventSubscriptionDetails_subscriptionCreationTime,
    awsRdsEventSubscriptionDetails_eventCategoriesList,
    awsRdsEventSubscriptionDetails_sourceIdsList,

    -- ** AwsRdsPendingCloudWatchLogsExports
    awsRdsPendingCloudWatchLogsExports_logTypesToEnable,
    awsRdsPendingCloudWatchLogsExports_logTypesToDisable,

    -- ** AwsRedshiftClusterClusterNode
    awsRedshiftClusterClusterNode_nodeRole,
    awsRedshiftClusterClusterNode_privateIpAddress,
    awsRedshiftClusterClusterNode_publicIpAddress,

    -- ** AwsRedshiftClusterClusterParameterGroup
    awsRedshiftClusterClusterParameterGroup_clusterParameterStatusList,
    awsRedshiftClusterClusterParameterGroup_parameterApplyStatus,
    awsRedshiftClusterClusterParameterGroup_parameterGroupName,

    -- ** AwsRedshiftClusterClusterParameterStatus
    awsRedshiftClusterClusterParameterStatus_parameterApplyErrorDescription,
    awsRedshiftClusterClusterParameterStatus_parameterName,
    awsRedshiftClusterClusterParameterStatus_parameterApplyStatus,

    -- ** AwsRedshiftClusterClusterSecurityGroup
    awsRedshiftClusterClusterSecurityGroup_status,
    awsRedshiftClusterClusterSecurityGroup_clusterSecurityGroupName,

    -- ** AwsRedshiftClusterClusterSnapshotCopyStatus
    awsRedshiftClusterClusterSnapshotCopyStatus_manualSnapshotRetentionPeriod,
    awsRedshiftClusterClusterSnapshotCopyStatus_retentionPeriod,
    awsRedshiftClusterClusterSnapshotCopyStatus_destinationRegion,
    awsRedshiftClusterClusterSnapshotCopyStatus_snapshotCopyGrantName,

    -- ** AwsRedshiftClusterDeferredMaintenanceWindow
    awsRedshiftClusterDeferredMaintenanceWindow_deferMaintenanceEndTime,
    awsRedshiftClusterDeferredMaintenanceWindow_deferMaintenanceStartTime,
    awsRedshiftClusterDeferredMaintenanceWindow_deferMaintenanceIdentifier,

    -- ** AwsRedshiftClusterDetails
    awsRedshiftClusterDetails_resizeInfo,
    awsRedshiftClusterDetails_restoreStatus,
    awsRedshiftClusterDetails_manualSnapshotRetentionPeriod,
    awsRedshiftClusterDetails_enhancedVpcRouting,
    awsRedshiftClusterDetails_clusterSnapshotCopyStatus,
    awsRedshiftClusterDetails_clusterAvailabilityStatus,
    awsRedshiftClusterDetails_clusterRevisionNumber,
    awsRedshiftClusterDetails_snapshotScheduleIdentifier,
    awsRedshiftClusterDetails_publiclyAccessible,
    awsRedshiftClusterDetails_masterUsername,
    awsRedshiftClusterDetails_maintenanceTrackName,
    awsRedshiftClusterDetails_expectedNextSnapshotScheduleTime,
    awsRedshiftClusterDetails_elasticResizeNumberOfNodeOptions,
    awsRedshiftClusterDetails_vpcId,
    awsRedshiftClusterDetails_clusterSecurityGroups,
    awsRedshiftClusterDetails_automatedSnapshotRetentionPeriod,
    awsRedshiftClusterDetails_snapshotScheduleState,
    awsRedshiftClusterDetails_encrypted,
    awsRedshiftClusterDetails_clusterSubnetGroupName,
    awsRedshiftClusterDetails_expectedNextSnapshotScheduleTimeStatus,
    awsRedshiftClusterDetails_clusterIdentifier,
    awsRedshiftClusterDetails_deferredMaintenanceWindows,
    awsRedshiftClusterDetails_numberOfNodes,
    awsRedshiftClusterDetails_clusterPublicKey,
    awsRedshiftClusterDetails_preferredMaintenanceWindow,
    awsRedshiftClusterDetails_kmsKeyId,
    awsRedshiftClusterDetails_clusterParameterGroups,
    awsRedshiftClusterDetails_availabilityZone,
    awsRedshiftClusterDetails_vpcSecurityGroups,
    awsRedshiftClusterDetails_hsmStatus,
    awsRedshiftClusterDetails_iamRoles,
    awsRedshiftClusterDetails_pendingActions,
    awsRedshiftClusterDetails_elasticIpStatus,
    awsRedshiftClusterDetails_clusterVersion,
    awsRedshiftClusterDetails_nodeType,
    awsRedshiftClusterDetails_nextMaintenanceWindowStartTime,
    awsRedshiftClusterDetails_clusterCreateTime,
    awsRedshiftClusterDetails_endpoint,
    awsRedshiftClusterDetails_allowVersionUpgrade,
    awsRedshiftClusterDetails_clusterStatus,
    awsRedshiftClusterDetails_pendingModifiedValues,
    awsRedshiftClusterDetails_clusterNodes,
    awsRedshiftClusterDetails_dbName,

    -- ** AwsRedshiftClusterElasticIpStatus
    awsRedshiftClusterElasticIpStatus_status,
    awsRedshiftClusterElasticIpStatus_elasticIp,

    -- ** AwsRedshiftClusterEndpoint
    awsRedshiftClusterEndpoint_address,
    awsRedshiftClusterEndpoint_port,

    -- ** AwsRedshiftClusterHsmStatus
    awsRedshiftClusterHsmStatus_status,
    awsRedshiftClusterHsmStatus_hsmConfigurationIdentifier,
    awsRedshiftClusterHsmStatus_hsmClientCertificateIdentifier,

    -- ** AwsRedshiftClusterIamRole
    awsRedshiftClusterIamRole_iamRoleArn,
    awsRedshiftClusterIamRole_applyStatus,

    -- ** AwsRedshiftClusterPendingModifiedValues
    awsRedshiftClusterPendingModifiedValues_encryptionType,
    awsRedshiftClusterPendingModifiedValues_enhancedVpcRouting,
    awsRedshiftClusterPendingModifiedValues_masterUserPassword,
    awsRedshiftClusterPendingModifiedValues_publiclyAccessible,
    awsRedshiftClusterPendingModifiedValues_maintenanceTrackName,
    awsRedshiftClusterPendingModifiedValues_automatedSnapshotRetentionPeriod,
    awsRedshiftClusterPendingModifiedValues_clusterIdentifier,
    awsRedshiftClusterPendingModifiedValues_numberOfNodes,
    awsRedshiftClusterPendingModifiedValues_clusterType,
    awsRedshiftClusterPendingModifiedValues_clusterVersion,
    awsRedshiftClusterPendingModifiedValues_nodeType,

    -- ** AwsRedshiftClusterResizeInfo
    awsRedshiftClusterResizeInfo_allowCancelResize,
    awsRedshiftClusterResizeInfo_resizeType,

    -- ** AwsRedshiftClusterRestoreStatus
    awsRedshiftClusterRestoreStatus_status,
    awsRedshiftClusterRestoreStatus_estimatedTimeToCompletionInSeconds,
    awsRedshiftClusterRestoreStatus_currentRestoreRateInMegaBytesPerSecond,
    awsRedshiftClusterRestoreStatus_progressInMegaBytes,
    awsRedshiftClusterRestoreStatus_elapsedTimeInSeconds,
    awsRedshiftClusterRestoreStatus_snapshotSizeInMegaBytes,

    -- ** AwsRedshiftClusterVpcSecurityGroup
    awsRedshiftClusterVpcSecurityGroup_status,
    awsRedshiftClusterVpcSecurityGroup_vpcSecurityGroupId,

    -- ** AwsS3AccountPublicAccessBlockDetails
    awsS3AccountPublicAccessBlockDetails_ignorePublicAcls,
    awsS3AccountPublicAccessBlockDetails_blockPublicAcls,
    awsS3AccountPublicAccessBlockDetails_restrictPublicBuckets,
    awsS3AccountPublicAccessBlockDetails_blockPublicPolicy,

    -- ** AwsS3BucketBucketLifecycleConfigurationDetails
    awsS3BucketBucketLifecycleConfigurationDetails_rules,

    -- ** AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails
    awsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails_daysAfterInitiation,

    -- ** AwsS3BucketBucketLifecycleConfigurationRulesDetails
    awsS3BucketBucketLifecycleConfigurationRulesDetails_status,
    awsS3BucketBucketLifecycleConfigurationRulesDetails_transitions,
    awsS3BucketBucketLifecycleConfigurationRulesDetails_prefix,
    awsS3BucketBucketLifecycleConfigurationRulesDetails_noncurrentVersionTransitions,
    awsS3BucketBucketLifecycleConfigurationRulesDetails_noncurrentVersionExpirationInDays,
    awsS3BucketBucketLifecycleConfigurationRulesDetails_expirationDate,
    awsS3BucketBucketLifecycleConfigurationRulesDetails_id,
    awsS3BucketBucketLifecycleConfigurationRulesDetails_filter,
    awsS3BucketBucketLifecycleConfigurationRulesDetails_expirationInDays,
    awsS3BucketBucketLifecycleConfigurationRulesDetails_abortIncompleteMultipartUpload,
    awsS3BucketBucketLifecycleConfigurationRulesDetails_expiredObjectDeleteMarker,

    -- ** AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails
    awsS3BucketBucketLifecycleConfigurationRulesFilterDetails_predicate,

    -- ** AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails
    awsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails_tag,
    awsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails_prefix,
    awsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails_type,
    awsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails_operands,

    -- ** AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails
    awsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails_tag,
    awsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails_prefix,
    awsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails_type,

    -- ** AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails
    awsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails_value,
    awsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails_key,

    -- ** AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails
    awsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails_value,
    awsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails_key,

    -- ** AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails
    awsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails_days,
    awsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails_storageClass,

    -- ** AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails
    awsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails_days,
    awsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails_date,
    awsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails_storageClass,

    -- ** AwsS3BucketDetails
    awsS3BucketDetails_createdAt,
    awsS3BucketDetails_ownerAccountId,
    awsS3BucketDetails_bucketLoggingConfiguration,
    awsS3BucketDetails_ownerName,
    awsS3BucketDetails_accessControlList,
    awsS3BucketDetails_ownerId,
    awsS3BucketDetails_publicAccessBlockConfiguration,
    awsS3BucketDetails_bucketWebsiteConfiguration,
    awsS3BucketDetails_bucketLifecycleConfiguration,
    awsS3BucketDetails_bucketNotificationConfiguration,
    awsS3BucketDetails_serverSideEncryptionConfiguration,

    -- ** AwsS3BucketLoggingConfiguration
    awsS3BucketLoggingConfiguration_logFilePrefix,
    awsS3BucketLoggingConfiguration_destinationBucketName,

    -- ** AwsS3BucketNotificationConfiguration
    awsS3BucketNotificationConfiguration_configurations,

    -- ** AwsS3BucketNotificationConfigurationDetail
    awsS3BucketNotificationConfigurationDetail_destination,
    awsS3BucketNotificationConfigurationDetail_events,
    awsS3BucketNotificationConfigurationDetail_type,
    awsS3BucketNotificationConfigurationDetail_filter,

    -- ** AwsS3BucketNotificationConfigurationFilter
    awsS3BucketNotificationConfigurationFilter_s3KeyFilter,

    -- ** AwsS3BucketNotificationConfigurationS3KeyFilter
    awsS3BucketNotificationConfigurationS3KeyFilter_filterRules,

    -- ** AwsS3BucketNotificationConfigurationS3KeyFilterRule
    awsS3BucketNotificationConfigurationS3KeyFilterRule_value,
    awsS3BucketNotificationConfigurationS3KeyFilterRule_name,

    -- ** AwsS3BucketServerSideEncryptionByDefault
    awsS3BucketServerSideEncryptionByDefault_sSEAlgorithm,
    awsS3BucketServerSideEncryptionByDefault_kmsMasterKeyID,

    -- ** AwsS3BucketServerSideEncryptionConfiguration
    awsS3BucketServerSideEncryptionConfiguration_rules,

    -- ** AwsS3BucketServerSideEncryptionRule
    awsS3BucketServerSideEncryptionRule_applyServerSideEncryptionByDefault,

    -- ** AwsS3BucketWebsiteConfiguration
    awsS3BucketWebsiteConfiguration_redirectAllRequestsTo,
    awsS3BucketWebsiteConfiguration_indexDocumentSuffix,
    awsS3BucketWebsiteConfiguration_errorDocument,
    awsS3BucketWebsiteConfiguration_routingRules,

    -- ** AwsS3BucketWebsiteConfigurationRedirectTo
    awsS3BucketWebsiteConfigurationRedirectTo_hostname,
    awsS3BucketWebsiteConfigurationRedirectTo_protocol,

    -- ** AwsS3BucketWebsiteConfigurationRoutingRule
    awsS3BucketWebsiteConfigurationRoutingRule_redirect,
    awsS3BucketWebsiteConfigurationRoutingRule_condition,

    -- ** AwsS3BucketWebsiteConfigurationRoutingRuleCondition
    awsS3BucketWebsiteConfigurationRoutingRuleCondition_keyPrefixEquals,
    awsS3BucketWebsiteConfigurationRoutingRuleCondition_httpErrorCodeReturnedEquals,

    -- ** AwsS3BucketWebsiteConfigurationRoutingRuleRedirect
    awsS3BucketWebsiteConfigurationRoutingRuleRedirect_hostname,
    awsS3BucketWebsiteConfigurationRoutingRuleRedirect_protocol,
    awsS3BucketWebsiteConfigurationRoutingRuleRedirect_httpRedirectCode,
    awsS3BucketWebsiteConfigurationRoutingRuleRedirect_replaceKeyWith,
    awsS3BucketWebsiteConfigurationRoutingRuleRedirect_replaceKeyPrefixWith,

    -- ** AwsS3ObjectDetails
    awsS3ObjectDetails_eTag,
    awsS3ObjectDetails_versionId,
    awsS3ObjectDetails_sSEKMSKeyId,
    awsS3ObjectDetails_lastModified,
    awsS3ObjectDetails_serverSideEncryption,
    awsS3ObjectDetails_contentType,

    -- ** AwsSecretsManagerSecretDetails
    awsSecretsManagerSecretDetails_rotationRules,
    awsSecretsManagerSecretDetails_rotationEnabled,
    awsSecretsManagerSecretDetails_kmsKeyId,
    awsSecretsManagerSecretDetails_name,
    awsSecretsManagerSecretDetails_deleted,
    awsSecretsManagerSecretDetails_description,
    awsSecretsManagerSecretDetails_rotationOccurredWithinFrequency,
    awsSecretsManagerSecretDetails_rotationLambdaArn,

    -- ** AwsSecretsManagerSecretRotationRules
    awsSecretsManagerSecretRotationRules_automaticallyAfterDays,

    -- ** AwsSecurityFinding
    awsSecurityFinding_productName,
    awsSecurityFinding_workflowState,
    awsSecurityFinding_criticality,
    awsSecurityFinding_recordState,
    awsSecurityFinding_productFields,
    awsSecurityFinding_compliance,
    awsSecurityFinding_findingProviderFields,
    awsSecurityFinding_companyName,
    awsSecurityFinding_note,
    awsSecurityFinding_process,
    awsSecurityFinding_severity,
    awsSecurityFinding_types,
    awsSecurityFinding_action,
    awsSecurityFinding_network,
    awsSecurityFinding_relatedFindings,
    awsSecurityFinding_firstObservedAt,
    awsSecurityFinding_malware,
    awsSecurityFinding_confidence,
    awsSecurityFinding_remediation,
    awsSecurityFinding_patchSummary,
    awsSecurityFinding_vulnerabilities,
    awsSecurityFinding_region,
    awsSecurityFinding_networkPath,
    awsSecurityFinding_workflow,
    awsSecurityFinding_verificationState,
    awsSecurityFinding_threatIntelIndicators,
    awsSecurityFinding_sourceUrl,
    awsSecurityFinding_lastObservedAt,
    awsSecurityFinding_userDefinedFields,
    awsSecurityFinding_schemaVersion,
    awsSecurityFinding_id,
    awsSecurityFinding_productArn,
    awsSecurityFinding_generatorId,
    awsSecurityFinding_awsAccountId,
    awsSecurityFinding_createdAt,
    awsSecurityFinding_updatedAt,
    awsSecurityFinding_title,
    awsSecurityFinding_description,
    awsSecurityFinding_resources,

    -- ** AwsSecurityFindingFilters
    awsSecurityFindingFilters_resourceAwsIamAccessKeyPrincipalName,
    awsSecurityFindingFilters_resourceAwsIamAccessKeyCreatedAt,
    awsSecurityFindingFilters_malwarePath,
    awsSecurityFindingFilters_resourceDetailsOther,
    awsSecurityFindingFilters_productName,
    awsSecurityFindingFilters_resourceAwsEc2InstanceSubnetId,
    awsSecurityFindingFilters_workflowState,
    awsSecurityFindingFilters_resourceContainerImageId,
    awsSecurityFindingFilters_relatedFindingsProductArn,
    awsSecurityFindingFilters_criticality,
    awsSecurityFindingFilters_resourceId,
    awsSecurityFindingFilters_resourceAwsIamAccessKeyUserName,
    awsSecurityFindingFilters_processParentPid,
    awsSecurityFindingFilters_resourceAwsEc2InstanceType,
    awsSecurityFindingFilters_resourceRegion,
    awsSecurityFindingFilters_recordState,
    awsSecurityFindingFilters_networkSourceIpV6,
    awsSecurityFindingFilters_resourceType,
    awsSecurityFindingFilters_productFields,
    awsSecurityFindingFilters_noteText,
    awsSecurityFindingFilters_resourceContainerImageName,
    awsSecurityFindingFilters_createdAt,
    awsSecurityFindingFilters_threatIntelIndicatorCategory,
    awsSecurityFindingFilters_severityProduct,
    awsSecurityFindingFilters_companyName,
    awsSecurityFindingFilters_findingProviderFieldsSeverityLabel,
    awsSecurityFindingFilters_networkProtocol,
    awsSecurityFindingFilters_resourceAwsEc2InstanceImageId,
    awsSecurityFindingFilters_resourcePartition,
    awsSecurityFindingFilters_resourceAwsEc2InstanceIpV6Addresses,
    awsSecurityFindingFilters_resourceTags,
    awsSecurityFindingFilters_resourceAwsEc2InstanceLaunchedAt,
    awsSecurityFindingFilters_networkSourceDomain,
    awsSecurityFindingFilters_networkDestinationPort,
    awsSecurityFindingFilters_noteUpdatedBy,
    awsSecurityFindingFilters_malwareName,
    awsSecurityFindingFilters_findingProviderFieldsTypes,
    awsSecurityFindingFilters_threatIntelIndicatorValue,
    awsSecurityFindingFilters_malwareState,
    awsSecurityFindingFilters_awsAccountId,
    awsSecurityFindingFilters_complianceStatus,
    awsSecurityFindingFilters_networkDestinationIpV4,
    awsSecurityFindingFilters_findingProviderFieldsRelatedFindingsId,
    awsSecurityFindingFilters_firstObservedAt,
    awsSecurityFindingFilters_threatIntelIndicatorLastObservedAt,
    awsSecurityFindingFilters_recommendationText,
    awsSecurityFindingFilters_resourceContainerLaunchedAt,
    awsSecurityFindingFilters_networkSourceMac,
    awsSecurityFindingFilters_confidence,
    awsSecurityFindingFilters_relatedFindingsId,
    awsSecurityFindingFilters_processName,
    awsSecurityFindingFilters_findingProviderFieldsSeverityOriginal,
    awsSecurityFindingFilters_workflowStatus,
    awsSecurityFindingFilters_resourceAwsS3BucketOwnerName,
    awsSecurityFindingFilters_findingProviderFieldsCriticality,
    awsSecurityFindingFilters_findingProviderFieldsRelatedFindingsProductArn,
    awsSecurityFindingFilters_resourceAwsEc2InstanceVpcId,
    awsSecurityFindingFilters_networkSourcePort,
    awsSecurityFindingFilters_resourceContainerName,
    awsSecurityFindingFilters_severityNormalized,
    awsSecurityFindingFilters_resourceAwsEc2InstanceKeyName,
    awsSecurityFindingFilters_networkDestinationDomain,
    awsSecurityFindingFilters_processLaunchedAt,
    awsSecurityFindingFilters_id,
    awsSecurityFindingFilters_severityLabel,
    awsSecurityFindingFilters_resourceAwsIamAccessKeyStatus,
    awsSecurityFindingFilters_resourceAwsS3BucketOwnerId,
    awsSecurityFindingFilters_threatIntelIndicatorType,
    awsSecurityFindingFilters_resourceAwsIamUserUserName,
    awsSecurityFindingFilters_noteUpdatedAt,
    awsSecurityFindingFilters_title,
    awsSecurityFindingFilters_region,
    awsSecurityFindingFilters_threatIntelIndicatorSource,
    awsSecurityFindingFilters_type,
    awsSecurityFindingFilters_networkSourceIpV4,
    awsSecurityFindingFilters_resourceAwsEc2InstanceIamInstanceProfileArn,
    awsSecurityFindingFilters_updatedAt,
    awsSecurityFindingFilters_processTerminatedAt,
    awsSecurityFindingFilters_networkDestinationIpV6,
    awsSecurityFindingFilters_threatIntelIndicatorSourceUrl,
    awsSecurityFindingFilters_networkDirection,
    awsSecurityFindingFilters_description,
    awsSecurityFindingFilters_verificationState,
    awsSecurityFindingFilters_sourceUrl,
    awsSecurityFindingFilters_processPath,
    awsSecurityFindingFilters_processPid,
    awsSecurityFindingFilters_generatorId,
    awsSecurityFindingFilters_productArn,
    awsSecurityFindingFilters_lastObservedAt,
    awsSecurityFindingFilters_findingProviderFieldsConfidence,
    awsSecurityFindingFilters_userDefinedFields,
    awsSecurityFindingFilters_resourceAwsEc2InstanceIpV4Addresses,
    awsSecurityFindingFilters_malwareType,
    awsSecurityFindingFilters_keyword,

    -- ** AwsSecurityFindingIdentifier
    awsSecurityFindingIdentifier_id,
    awsSecurityFindingIdentifier_productArn,

    -- ** AwsSnsTopicDetails
    awsSnsTopicDetails_kmsMasterKeyId,
    awsSnsTopicDetails_topicName,
    awsSnsTopicDetails_owner,
    awsSnsTopicDetails_subscription,

    -- ** AwsSnsTopicSubscription
    awsSnsTopicSubscription_protocol,
    awsSnsTopicSubscription_endpoint,

    -- ** AwsSqsQueueDetails
    awsSqsQueueDetails_kmsMasterKeyId,
    awsSqsQueueDetails_queueName,
    awsSqsQueueDetails_kmsDataKeyReusePeriodSeconds,
    awsSqsQueueDetails_deadLetterTargetArn,

    -- ** AwsSsmComplianceSummary
    awsSsmComplianceSummary_status,
    awsSsmComplianceSummary_nonCompliantLowCount,
    awsSsmComplianceSummary_compliantHighCount,
    awsSsmComplianceSummary_nonCompliantUnspecifiedCount,
    awsSsmComplianceSummary_executionType,
    awsSsmComplianceSummary_compliantInformationalCount,
    awsSsmComplianceSummary_nonCompliantHighCount,
    awsSsmComplianceSummary_nonCompliantMediumCount,
    awsSsmComplianceSummary_overallSeverity,
    awsSsmComplianceSummary_compliantCriticalCount,
    awsSsmComplianceSummary_nonCompliantInformationalCount,
    awsSsmComplianceSummary_complianceType,
    awsSsmComplianceSummary_compliantUnspecifiedCount,
    awsSsmComplianceSummary_nonCompliantCriticalCount,
    awsSsmComplianceSummary_patchBaselineId,
    awsSsmComplianceSummary_compliantLowCount,
    awsSsmComplianceSummary_patchGroup,
    awsSsmComplianceSummary_compliantMediumCount,

    -- ** AwsSsmPatch
    awsSsmPatch_complianceSummary,

    -- ** AwsSsmPatchComplianceDetails
    awsSsmPatchComplianceDetails_patch,

    -- ** AwsWafRateBasedRuleDetails
    awsWafRateBasedRuleDetails_rateLimit,
    awsWafRateBasedRuleDetails_rateKey,
    awsWafRateBasedRuleDetails_metricName,
    awsWafRateBasedRuleDetails_ruleId,
    awsWafRateBasedRuleDetails_name,
    awsWafRateBasedRuleDetails_matchPredicates,

    -- ** AwsWafRateBasedRuleMatchPredicate
    awsWafRateBasedRuleMatchPredicate_negated,
    awsWafRateBasedRuleMatchPredicate_dataId,
    awsWafRateBasedRuleMatchPredicate_type,

    -- ** AwsWafRegionalRateBasedRuleDetails
    awsWafRegionalRateBasedRuleDetails_rateLimit,
    awsWafRegionalRateBasedRuleDetails_rateKey,
    awsWafRegionalRateBasedRuleDetails_metricName,
    awsWafRegionalRateBasedRuleDetails_ruleId,
    awsWafRegionalRateBasedRuleDetails_name,
    awsWafRegionalRateBasedRuleDetails_matchPredicates,

    -- ** AwsWafRegionalRateBasedRuleMatchPredicate
    awsWafRegionalRateBasedRuleMatchPredicate_negated,
    awsWafRegionalRateBasedRuleMatchPredicate_dataId,
    awsWafRegionalRateBasedRuleMatchPredicate_type,

    -- ** AwsWafWebAclDetails
    awsWafWebAclDetails_rules,
    awsWafWebAclDetails_webAclId,
    awsWafWebAclDetails_name,
    awsWafWebAclDetails_defaultAction,

    -- ** AwsWafWebAclRule
    awsWafWebAclRule_priority,
    awsWafWebAclRule_overrideAction,
    awsWafWebAclRule_ruleId,
    awsWafWebAclRule_action,
    awsWafWebAclRule_excludedRules,
    awsWafWebAclRule_type,

    -- ** AwsXrayEncryptionConfigDetails
    awsXrayEncryptionConfigDetails_status,
    awsXrayEncryptionConfigDetails_keyId,
    awsXrayEncryptionConfigDetails_type,

    -- ** BatchUpdateFindingsUnprocessedFinding
    batchUpdateFindingsUnprocessedFinding_findingIdentifier,
    batchUpdateFindingsUnprocessedFinding_errorCode,
    batchUpdateFindingsUnprocessedFinding_errorMessage,

    -- ** Cell
    cell_row,
    cell_cellReference,
    cell_column,
    cell_columnName,

    -- ** CidrBlockAssociation
    cidrBlockAssociation_associationId,
    cidrBlockAssociation_cidrBlockState,
    cidrBlockAssociation_cidrBlock,

    -- ** City
    city_cityName,

    -- ** ClassificationResult
    classificationResult_status,
    classificationResult_sensitiveData,
    classificationResult_mimeType,
    classificationResult_sizeClassified,
    classificationResult_additionalOccurrences,
    classificationResult_customDataIdentifiers,

    -- ** ClassificationStatus
    classificationStatus_reason,
    classificationStatus_code,

    -- ** Compliance
    compliance_status,
    compliance_relatedRequirements,
    compliance_statusReasons,

    -- ** ContainerDetails
    containerDetails_name,
    containerDetails_imageId,
    containerDetails_imageName,
    containerDetails_launchedAt,

    -- ** Country
    country_countryName,
    country_countryCode,

    -- ** CustomDataIdentifiersDetections
    customDataIdentifiersDetections_occurrences,
    customDataIdentifiersDetections_arn,
    customDataIdentifiersDetections_count,
    customDataIdentifiersDetections_name,

    -- ** CustomDataIdentifiersResult
    customDataIdentifiersResult_detections,
    customDataIdentifiersResult_totalCount,

    -- ** Cvss
    cvss_adjustments,
    cvss_baseVector,
    cvss_version,
    cvss_source,
    cvss_baseScore,

    -- ** DataClassificationDetails
    dataClassificationDetails_detailedResultsLocation,
    dataClassificationDetails_result,

    -- ** DateFilter
    dateFilter_start,
    dateFilter_dateRange,
    dateFilter_end,

    -- ** DateRange
    dateRange_value,
    dateRange_unit,

    -- ** DnsRequestAction
    dnsRequestAction_domain,
    dnsRequestAction_protocol,
    dnsRequestAction_blocked,

    -- ** FindingAggregator
    findingAggregator_findingAggregatorArn,

    -- ** FindingProviderFields
    findingProviderFields_criticality,
    findingProviderFields_severity,
    findingProviderFields_types,
    findingProviderFields_relatedFindings,
    findingProviderFields_confidence,

    -- ** FindingProviderSeverity
    findingProviderSeverity_label,
    findingProviderSeverity_original,

    -- ** GeoLocation
    geoLocation_lat,
    geoLocation_lon,

    -- ** IcmpTypeCode
    icmpTypeCode_code,
    icmpTypeCode_type,

    -- ** ImportFindingsError
    importFindingsError_id,
    importFindingsError_errorCode,
    importFindingsError_errorMessage,

    -- ** Insight
    insight_insightArn,
    insight_name,
    insight_filters,
    insight_groupByAttribute,

    -- ** InsightResultValue
    insightResultValue_groupByAttributeValue,
    insightResultValue_count,

    -- ** InsightResults
    insightResults_insightArn,
    insightResults_groupByAttribute,
    insightResults_resultValues,

    -- ** Invitation
    invitation_invitedAt,
    invitation_invitationId,
    invitation_accountId,
    invitation_memberStatus,

    -- ** IpFilter
    ipFilter_cidr,

    -- ** IpOrganizationDetails
    ipOrganizationDetails_org,
    ipOrganizationDetails_asnOrg,
    ipOrganizationDetails_asn,
    ipOrganizationDetails_isp,

    -- ** Ipv6CidrBlockAssociation
    ipv6CidrBlockAssociation_associationId,
    ipv6CidrBlockAssociation_ipv6CidrBlock,
    ipv6CidrBlockAssociation_cidrBlockState,

    -- ** KeywordFilter
    keywordFilter_value,

    -- ** LoadBalancerState
    loadBalancerState_reason,
    loadBalancerState_code,

    -- ** Malware
    malware_state,
    malware_path,
    malware_type,
    malware_name,

    -- ** MapFilter
    mapFilter_value,
    mapFilter_comparison,
    mapFilter_key,

    -- ** Member
    member_email,
    member_invitedAt,
    member_administratorId,
    member_masterId,
    member_accountId,
    member_memberStatus,
    member_updatedAt,

    -- ** Network
    network_destinationDomain,
    network_sourcePort,
    network_openPortRange,
    network_sourceMac,
    network_direction,
    network_destinationIpV6,
    network_protocol,
    network_sourceIpV6,
    network_destinationIpV4,
    network_sourceDomain,
    network_destinationPort,
    network_sourceIpV4,

    -- ** NetworkConnectionAction
    networkConnectionAction_remoteIpDetails,
    networkConnectionAction_protocol,
    networkConnectionAction_remotePortDetails,
    networkConnectionAction_blocked,
    networkConnectionAction_connectionDirection,
    networkConnectionAction_localPortDetails,

    -- ** NetworkHeader
    networkHeader_destination,
    networkHeader_protocol,
    networkHeader_source,

    -- ** NetworkPathComponent
    networkPathComponent_componentType,
    networkPathComponent_ingress,
    networkPathComponent_componentId,
    networkPathComponent_egress,

    -- ** NetworkPathComponentDetails
    networkPathComponentDetails_portRanges,
    networkPathComponentDetails_address,

    -- ** Note
    note_text,
    note_updatedBy,
    note_updatedAt,

    -- ** NoteUpdate
    noteUpdate_text,
    noteUpdate_updatedBy,

    -- ** NumberFilter
    numberFilter_eq,
    numberFilter_lte,
    numberFilter_gte,

    -- ** Occurrences
    occurrences_lineRanges,
    occurrences_cells,
    occurrences_pages,
    occurrences_records,
    occurrences_offsetRanges,

    -- ** Page
    page_offsetRange,
    page_lineRange,
    page_pageNumber,

    -- ** PatchSummary
    patchSummary_operationEndTime,
    patchSummary_rebootOption,
    patchSummary_operation,
    patchSummary_installedRejectedCount,
    patchSummary_failedCount,
    patchSummary_installedOtherCount,
    patchSummary_missingCount,
    patchSummary_operationStartTime,
    patchSummary_installedCount,
    patchSummary_installedPendingReboot,
    patchSummary_id,

    -- ** PortProbeAction
    portProbeAction_portProbeDetails,
    portProbeAction_blocked,

    -- ** PortProbeDetail
    portProbeDetail_remoteIpDetails,
    portProbeDetail_localIpDetails,
    portProbeDetail_localPortDetails,

    -- ** PortRange
    portRange_begin,
    portRange_end,

    -- ** PortRangeFromTo
    portRangeFromTo_to,
    portRangeFromTo_from,

    -- ** ProcessDetails
    processDetails_path,
    processDetails_name,
    processDetails_pid,
    processDetails_terminatedAt,
    processDetails_parentPid,
    processDetails_launchedAt,

    -- ** Product
    product_productName,
    product_productSubscriptionResourcePolicy,
    product_companyName,
    product_categories,
    product_marketplaceUrl,
    product_activationUrl,
    product_integrationTypes,
    product_description,
    product_productArn,

    -- ** Range
    range_start,
    range_end,
    range_startColumn,

    -- ** Recommendation
    recommendation_text,
    recommendation_url,

    -- ** Record
    record_jsonPath,
    record_recordIndex,

    -- ** RelatedFinding
    relatedFinding_productArn,
    relatedFinding_id,

    -- ** Remediation
    remediation_recommendation,

    -- ** Resource
    resource_dataClassification,
    resource_partition,
    resource_details,
    resource_region,
    resource_resourceRole,
    resource_tags,
    resource_type,
    resource_id,

    -- ** ResourceDetails
    resourceDetails_awsCloudTrailTrail,
    resourceDetails_awsRdsDbCluster,
    resourceDetails_other,
    resourceDetails_awsIamRole,
    resourceDetails_awsElbLoadBalancer,
    resourceDetails_awsEc2VpnConnection,
    resourceDetails_awsCloudFrontDistribution,
    resourceDetails_awsKmsKey,
    resourceDetails_awsEksCluster,
    resourceDetails_awsAutoScalingLaunchConfiguration,
    resourceDetails_awsOpenSearchServiceDomain,
    resourceDetails_awsRdsDbSnapshot,
    resourceDetails_awsWafRegionalRateBasedRule,
    resourceDetails_awsApiGatewayRestApi,
    resourceDetails_awsSqsQueue,
    resourceDetails_awsSecretsManagerSecret,
    resourceDetails_awsDynamoDbTable,
    resourceDetails_awsS3AccountPublicAccessBlock,
    resourceDetails_awsRdsDbClusterSnapshot,
    resourceDetails_awsEc2SecurityGroup,
    resourceDetails_awsEc2Instance,
    resourceDetails_awsIamPolicy,
    resourceDetails_awsS3Object,
    resourceDetails_awsEcsTaskDefinition,
    resourceDetails_awsLambdaLayerVersion,
    resourceDetails_awsS3Bucket,
    resourceDetails_awsIamAccessKey,
    resourceDetails_awsCodeBuildProject,
    resourceDetails_awsApiGatewayStage,
    resourceDetails_awsEc2NetworkAcl,
    resourceDetails_awsApiGatewayV2Api,
    resourceDetails_awsElasticBeanstalkEnvironment,
    resourceDetails_awsEc2Vpc,
    resourceDetails_awsRedshiftCluster,
    resourceDetails_awsRdsDbInstance,
    resourceDetails_awsRdsEventSubscription,
    resourceDetails_container,
    resourceDetails_awsIamGroup,
    resourceDetails_awsXrayEncryptionConfig,
    resourceDetails_awsEc2Subnet,
    resourceDetails_awsEcsCluster,
    resourceDetails_awsEc2VpcEndpointService,
    resourceDetails_awsAutoScalingAutoScalingGroup,
    resourceDetails_awsSnsTopic,
    resourceDetails_awsEc2NetworkInterface,
    resourceDetails_awsEcsService,
    resourceDetails_awsEc2Eip,
    resourceDetails_awsApiGatewayV2Stage,
    resourceDetails_awsLambdaFunction,
    resourceDetails_awsElbv2LoadBalancer,
    resourceDetails_awsWafRateBasedRule,
    resourceDetails_awsEcrRepository,
    resourceDetails_awsWafWebAcl,
    resourceDetails_awsSsmPatchCompliance,
    resourceDetails_awsElasticsearchDomain,
    resourceDetails_awsCertificateManagerCertificate,
    resourceDetails_awsEcrContainerImage,
    resourceDetails_awsIamUser,
    resourceDetails_awsEc2Volume,

    -- ** Result
    result_accountId,
    result_processingResult,

    -- ** SensitiveDataDetections
    sensitiveDataDetections_occurrences,
    sensitiveDataDetections_count,
    sensitiveDataDetections_type,

    -- ** SensitiveDataResult
    sensitiveDataResult_detections,
    sensitiveDataResult_category,
    sensitiveDataResult_totalCount,

    -- ** Severity
    severity_product,
    severity_label,
    severity_original,
    severity_normalized,

    -- ** SeverityUpdate
    severityUpdate_product,
    severityUpdate_label,
    severityUpdate_normalized,

    -- ** SoftwarePackage
    softwarePackage_filePath,
    softwarePackage_release,
    softwarePackage_name,
    softwarePackage_version,
    softwarePackage_architecture,
    softwarePackage_packageManager,
    softwarePackage_epoch,

    -- ** SortCriterion
    sortCriterion_field,
    sortCriterion_sortOrder,

    -- ** Standard
    standard_standardsArn,
    standard_enabledByDefault,
    standard_name,
    standard_description,

    -- ** StandardsControl
    standardsControl_remediationUrl,
    standardsControl_severityRating,
    standardsControl_controlStatusUpdatedAt,
    standardsControl_relatedRequirements,
    standardsControl_controlStatus,
    standardsControl_disabledReason,
    standardsControl_controlId,
    standardsControl_standardsControlArn,
    standardsControl_title,
    standardsControl_description,

    -- ** StandardsSubscription
    standardsSubscription_standardsSubscriptionArn,
    standardsSubscription_standardsArn,
    standardsSubscription_standardsInput,
    standardsSubscription_standardsStatus,

    -- ** StandardsSubscriptionRequest
    standardsSubscriptionRequest_standardsInput,
    standardsSubscriptionRequest_standardsArn,

    -- ** StatusReason
    statusReason_description,
    statusReason_reasonCode,

    -- ** StringFilter
    stringFilter_value,
    stringFilter_comparison,

    -- ** ThreatIntelIndicator
    threatIntelIndicator_category,
    threatIntelIndicator_value,
    threatIntelIndicator_source,
    threatIntelIndicator_type,
    threatIntelIndicator_sourceUrl,
    threatIntelIndicator_lastObservedAt,

    -- ** Vulnerability
    vulnerability_vendor,
    vulnerability_relatedVulnerabilities,
    vulnerability_vulnerablePackages,
    vulnerability_referenceUrls,
    vulnerability_cvss,
    vulnerability_id,

    -- ** VulnerabilityVendor
    vulnerabilityVendor_vendorSeverity,
    vulnerabilityVendor_url,
    vulnerabilityVendor_vendorCreatedAt,
    vulnerabilityVendor_vendorUpdatedAt,
    vulnerabilityVendor_name,

    -- ** WafAction
    wafAction_type,

    -- ** WafExcludedRule
    wafExcludedRule_ruleId,

    -- ** WafOverrideAction
    wafOverrideAction_type,

    -- ** Workflow
    workflow_status,

    -- ** WorkflowUpdate
    workflowUpdate_status,
  )
where

import Network.AWS.SecurityHub.AcceptAdministratorInvitation
import Network.AWS.SecurityHub.BatchDisableStandards
import Network.AWS.SecurityHub.BatchEnableStandards
import Network.AWS.SecurityHub.BatchImportFindings
import Network.AWS.SecurityHub.BatchUpdateFindings
import Network.AWS.SecurityHub.CreateActionTarget
import Network.AWS.SecurityHub.CreateFindingAggregator
import Network.AWS.SecurityHub.CreateInsight
import Network.AWS.SecurityHub.CreateMembers
import Network.AWS.SecurityHub.DeclineInvitations
import Network.AWS.SecurityHub.DeleteActionTarget
import Network.AWS.SecurityHub.DeleteFindingAggregator
import Network.AWS.SecurityHub.DeleteInsight
import Network.AWS.SecurityHub.DeleteInvitations
import Network.AWS.SecurityHub.DeleteMembers
import Network.AWS.SecurityHub.DescribeActionTargets
import Network.AWS.SecurityHub.DescribeHub
import Network.AWS.SecurityHub.DescribeOrganizationConfiguration
import Network.AWS.SecurityHub.DescribeProducts
import Network.AWS.SecurityHub.DescribeStandards
import Network.AWS.SecurityHub.DescribeStandardsControls
import Network.AWS.SecurityHub.DisableImportFindingsForProduct
import Network.AWS.SecurityHub.DisableOrganizationAdminAccount
import Network.AWS.SecurityHub.DisableSecurityHub
import Network.AWS.SecurityHub.DisassociateFromAdministratorAccount
import Network.AWS.SecurityHub.DisassociateMembers
import Network.AWS.SecurityHub.EnableImportFindingsForProduct
import Network.AWS.SecurityHub.EnableOrganizationAdminAccount
import Network.AWS.SecurityHub.EnableSecurityHub
import Network.AWS.SecurityHub.GetAdministratorAccount
import Network.AWS.SecurityHub.GetEnabledStandards
import Network.AWS.SecurityHub.GetFindingAggregator
import Network.AWS.SecurityHub.GetFindings
import Network.AWS.SecurityHub.GetInsightResults
import Network.AWS.SecurityHub.GetInsights
import Network.AWS.SecurityHub.GetInvitationsCount
import Network.AWS.SecurityHub.GetMembers
import Network.AWS.SecurityHub.InviteMembers
import Network.AWS.SecurityHub.ListEnabledProductsForImport
import Network.AWS.SecurityHub.ListFindingAggregators
import Network.AWS.SecurityHub.ListInvitations
import Network.AWS.SecurityHub.ListMembers
import Network.AWS.SecurityHub.ListOrganizationAdminAccounts
import Network.AWS.SecurityHub.ListTagsForResource
import Network.AWS.SecurityHub.TagResource
import Network.AWS.SecurityHub.Types.AccountDetails
import Network.AWS.SecurityHub.Types.Action
import Network.AWS.SecurityHub.Types.ActionLocalIpDetails
import Network.AWS.SecurityHub.Types.ActionLocalPortDetails
import Network.AWS.SecurityHub.Types.ActionRemoteIpDetails
import Network.AWS.SecurityHub.Types.ActionRemotePortDetails
import Network.AWS.SecurityHub.Types.ActionTarget
import Network.AWS.SecurityHub.Types.Adjustment
import Network.AWS.SecurityHub.Types.AdminAccount
import Network.AWS.SecurityHub.Types.AvailabilityZone
import Network.AWS.SecurityHub.Types.AwsApiCallAction
import Network.AWS.SecurityHub.Types.AwsApiCallActionDomainDetails
import Network.AWS.SecurityHub.Types.AwsApiGatewayAccessLogSettings
import Network.AWS.SecurityHub.Types.AwsApiGatewayCanarySettings
import Network.AWS.SecurityHub.Types.AwsApiGatewayEndpointConfiguration
import Network.AWS.SecurityHub.Types.AwsApiGatewayMethodSettings
import Network.AWS.SecurityHub.Types.AwsApiGatewayRestApiDetails
import Network.AWS.SecurityHub.Types.AwsApiGatewayStageDetails
import Network.AWS.SecurityHub.Types.AwsApiGatewayV2ApiDetails
import Network.AWS.SecurityHub.Types.AwsApiGatewayV2RouteSettings
import Network.AWS.SecurityHub.Types.AwsApiGatewayV2StageDetails
import Network.AWS.SecurityHub.Types.AwsAutoScalingAutoScalingGroupDetails
import Network.AWS.SecurityHub.Types.AwsAutoScalingLaunchConfigurationBlockDeviceMappingsDetails
import Network.AWS.SecurityHub.Types.AwsAutoScalingLaunchConfigurationBlockDeviceMappingsEbsDetails
import Network.AWS.SecurityHub.Types.AwsAutoScalingLaunchConfigurationDetails
import Network.AWS.SecurityHub.Types.AwsAutoScalingLaunchConfigurationInstanceMonitoringDetails
import Network.AWS.SecurityHub.Types.AwsCertificateManagerCertificateDetails
import Network.AWS.SecurityHub.Types.AwsCertificateManagerCertificateDomainValidationOption
import Network.AWS.SecurityHub.Types.AwsCertificateManagerCertificateExtendedKeyUsage
import Network.AWS.SecurityHub.Types.AwsCertificateManagerCertificateKeyUsage
import Network.AWS.SecurityHub.Types.AwsCertificateManagerCertificateOptions
import Network.AWS.SecurityHub.Types.AwsCertificateManagerCertificateRenewalSummary
import Network.AWS.SecurityHub.Types.AwsCertificateManagerCertificateResourceRecord
import Network.AWS.SecurityHub.Types.AwsCloudFrontDistributionCacheBehavior
import Network.AWS.SecurityHub.Types.AwsCloudFrontDistributionCacheBehaviors
import Network.AWS.SecurityHub.Types.AwsCloudFrontDistributionDefaultCacheBehavior
import Network.AWS.SecurityHub.Types.AwsCloudFrontDistributionDetails
import Network.AWS.SecurityHub.Types.AwsCloudFrontDistributionLogging
import Network.AWS.SecurityHub.Types.AwsCloudFrontDistributionOriginGroup
import Network.AWS.SecurityHub.Types.AwsCloudFrontDistributionOriginGroupFailover
import Network.AWS.SecurityHub.Types.AwsCloudFrontDistributionOriginGroupFailoverStatusCodes
import Network.AWS.SecurityHub.Types.AwsCloudFrontDistributionOriginGroups
import Network.AWS.SecurityHub.Types.AwsCloudFrontDistributionOriginItem
import Network.AWS.SecurityHub.Types.AwsCloudFrontDistributionOriginS3OriginConfig
import Network.AWS.SecurityHub.Types.AwsCloudFrontDistributionOrigins
import Network.AWS.SecurityHub.Types.AwsCloudFrontDistributionViewerCertificate
import Network.AWS.SecurityHub.Types.AwsCloudTrailTrailDetails
import Network.AWS.SecurityHub.Types.AwsCodeBuildProjectArtifactsDetails
import Network.AWS.SecurityHub.Types.AwsCodeBuildProjectDetails
import Network.AWS.SecurityHub.Types.AwsCodeBuildProjectEnvironment
import Network.AWS.SecurityHub.Types.AwsCodeBuildProjectEnvironmentEnvironmentVariablesDetails
import Network.AWS.SecurityHub.Types.AwsCodeBuildProjectEnvironmentRegistryCredential
import Network.AWS.SecurityHub.Types.AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails
import Network.AWS.SecurityHub.Types.AwsCodeBuildProjectLogsConfigDetails
import Network.AWS.SecurityHub.Types.AwsCodeBuildProjectLogsConfigS3LogsDetails
import Network.AWS.SecurityHub.Types.AwsCodeBuildProjectSource
import Network.AWS.SecurityHub.Types.AwsCodeBuildProjectVpcConfig
import Network.AWS.SecurityHub.Types.AwsCorsConfiguration
import Network.AWS.SecurityHub.Types.AwsDynamoDbTableAttributeDefinition
import Network.AWS.SecurityHub.Types.AwsDynamoDbTableBillingModeSummary
import Network.AWS.SecurityHub.Types.AwsDynamoDbTableDetails
import Network.AWS.SecurityHub.Types.AwsDynamoDbTableGlobalSecondaryIndex
import Network.AWS.SecurityHub.Types.AwsDynamoDbTableKeySchema
import Network.AWS.SecurityHub.Types.AwsDynamoDbTableLocalSecondaryIndex
import Network.AWS.SecurityHub.Types.AwsDynamoDbTableProjection
import Network.AWS.SecurityHub.Types.AwsDynamoDbTableProvisionedThroughput
import Network.AWS.SecurityHub.Types.AwsDynamoDbTableProvisionedThroughputOverride
import Network.AWS.SecurityHub.Types.AwsDynamoDbTableReplica
import Network.AWS.SecurityHub.Types.AwsDynamoDbTableReplicaGlobalSecondaryIndex
import Network.AWS.SecurityHub.Types.AwsDynamoDbTableRestoreSummary
import Network.AWS.SecurityHub.Types.AwsDynamoDbTableSseDescription
import Network.AWS.SecurityHub.Types.AwsDynamoDbTableStreamSpecification
import Network.AWS.SecurityHub.Types.AwsEc2EipDetails
import Network.AWS.SecurityHub.Types.AwsEc2InstanceDetails
import Network.AWS.SecurityHub.Types.AwsEc2InstanceNetworkInterfacesDetails
import Network.AWS.SecurityHub.Types.AwsEc2NetworkAclAssociation
import Network.AWS.SecurityHub.Types.AwsEc2NetworkAclDetails
import Network.AWS.SecurityHub.Types.AwsEc2NetworkAclEntry
import Network.AWS.SecurityHub.Types.AwsEc2NetworkInterfaceAttachment
import Network.AWS.SecurityHub.Types.AwsEc2NetworkInterfaceDetails
import Network.AWS.SecurityHub.Types.AwsEc2NetworkInterfaceIpV6AddressDetail
import Network.AWS.SecurityHub.Types.AwsEc2NetworkInterfacePrivateIpAddressDetail
import Network.AWS.SecurityHub.Types.AwsEc2NetworkInterfaceSecurityGroup
import Network.AWS.SecurityHub.Types.AwsEc2SecurityGroupDetails
import Network.AWS.SecurityHub.Types.AwsEc2SecurityGroupIpPermission
import Network.AWS.SecurityHub.Types.AwsEc2SecurityGroupIpRange
import Network.AWS.SecurityHub.Types.AwsEc2SecurityGroupIpv6Range
import Network.AWS.SecurityHub.Types.AwsEc2SecurityGroupPrefixListId
import Network.AWS.SecurityHub.Types.AwsEc2SecurityGroupUserIdGroupPair
import Network.AWS.SecurityHub.Types.AwsEc2SubnetDetails
import Network.AWS.SecurityHub.Types.AwsEc2VolumeAttachment
import Network.AWS.SecurityHub.Types.AwsEc2VolumeDetails
import Network.AWS.SecurityHub.Types.AwsEc2VpcDetails
import Network.AWS.SecurityHub.Types.AwsEc2VpcEndpointServiceDetails
import Network.AWS.SecurityHub.Types.AwsEc2VpcEndpointServiceServiceTypeDetails
import Network.AWS.SecurityHub.Types.AwsEc2VpnConnectionDetails
import Network.AWS.SecurityHub.Types.AwsEc2VpnConnectionOptionsDetails
import Network.AWS.SecurityHub.Types.AwsEc2VpnConnectionOptionsTunnelOptionsDetails
import Network.AWS.SecurityHub.Types.AwsEc2VpnConnectionRoutesDetails
import Network.AWS.SecurityHub.Types.AwsEc2VpnConnectionVgwTelemetryDetails
import Network.AWS.SecurityHub.Types.AwsEcrContainerImageDetails
import Network.AWS.SecurityHub.Types.AwsEcrRepositoryDetails
import Network.AWS.SecurityHub.Types.AwsEcrRepositoryImageScanningConfigurationDetails
import Network.AWS.SecurityHub.Types.AwsEcrRepositoryLifecyclePolicyDetails
import Network.AWS.SecurityHub.Types.AwsEcsClusterClusterSettingsDetails
import Network.AWS.SecurityHub.Types.AwsEcsClusterConfigurationDetails
import Network.AWS.SecurityHub.Types.AwsEcsClusterConfigurationExecuteCommandConfigurationDetails
import Network.AWS.SecurityHub.Types.AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails
import Network.AWS.SecurityHub.Types.AwsEcsClusterDefaultCapacityProviderStrategyDetails
import Network.AWS.SecurityHub.Types.AwsEcsClusterDetails
import Network.AWS.SecurityHub.Types.AwsEcsServiceCapacityProviderStrategyDetails
import Network.AWS.SecurityHub.Types.AwsEcsServiceDeploymentConfigurationDeploymentCircuitBreakerDetails
import Network.AWS.SecurityHub.Types.AwsEcsServiceDeploymentConfigurationDetails
import Network.AWS.SecurityHub.Types.AwsEcsServiceDeploymentControllerDetails
import Network.AWS.SecurityHub.Types.AwsEcsServiceDetails
import Network.AWS.SecurityHub.Types.AwsEcsServiceLoadBalancersDetails
import Network.AWS.SecurityHub.Types.AwsEcsServiceNetworkConfigurationAwsVpcConfigurationDetails
import Network.AWS.SecurityHub.Types.AwsEcsServiceNetworkConfigurationDetails
import Network.AWS.SecurityHub.Types.AwsEcsServicePlacementConstraintsDetails
import Network.AWS.SecurityHub.Types.AwsEcsServicePlacementStrategiesDetails
import Network.AWS.SecurityHub.Types.AwsEcsServiceServiceRegistriesDetails
import Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsDependsOnDetails
import Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsDetails
import Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsEnvironmentDetails
import Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsEnvironmentFilesDetails
import Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsExtraHostsDetails
import Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsFirelensConfigurationDetails
import Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsHealthCheckDetails
import Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersCapabilitiesDetails
import Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDetails
import Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersDevicesDetails
import Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsLinuxParametersTmpfsDetails
import Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationDetails
import Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsLogConfigurationSecretOptionsDetails
import Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsMountPointsDetails
import Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsPortMappingsDetails
import Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsRepositoryCredentialsDetails
import Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsResourceRequirementsDetails
import Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails
import Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails
import Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsUlimitsDetails
import Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsVolumesFromDetails
import Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionDetails
import Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionInferenceAcceleratorsDetails
import Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionPlacementConstraintsDetails
import Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionProxyConfigurationDetails
import Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionProxyConfigurationProxyConfigurationPropertiesDetails
import Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionVolumesDetails
import Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails
import Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationAuthorizationConfigDetails
import Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails
import Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionVolumesHostDetails
import Network.AWS.SecurityHub.Types.AwsEksClusterDetails
import Network.AWS.SecurityHub.Types.AwsEksClusterLoggingClusterLoggingDetails
import Network.AWS.SecurityHub.Types.AwsEksClusterLoggingDetails
import Network.AWS.SecurityHub.Types.AwsEksClusterResourcesVpcConfigDetails
import Network.AWS.SecurityHub.Types.AwsElasticBeanstalkEnvironmentDetails
import Network.AWS.SecurityHub.Types.AwsElasticBeanstalkEnvironmentEnvironmentLink
import Network.AWS.SecurityHub.Types.AwsElasticBeanstalkEnvironmentOptionSetting
import Network.AWS.SecurityHub.Types.AwsElasticBeanstalkEnvironmentTier
import Network.AWS.SecurityHub.Types.AwsElasticsearchDomainDetails
import Network.AWS.SecurityHub.Types.AwsElasticsearchDomainDomainEndpointOptions
import Network.AWS.SecurityHub.Types.AwsElasticsearchDomainElasticsearchClusterConfigDetails
import Network.AWS.SecurityHub.Types.AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails
import Network.AWS.SecurityHub.Types.AwsElasticsearchDomainEncryptionAtRestOptions
import Network.AWS.SecurityHub.Types.AwsElasticsearchDomainLogPublishingOptions
import Network.AWS.SecurityHub.Types.AwsElasticsearchDomainLogPublishingOptionsLogConfig
import Network.AWS.SecurityHub.Types.AwsElasticsearchDomainNodeToNodeEncryptionOptions
import Network.AWS.SecurityHub.Types.AwsElasticsearchDomainServiceSoftwareOptions
import Network.AWS.SecurityHub.Types.AwsElasticsearchDomainVPCOptions
import Network.AWS.SecurityHub.Types.AwsElbAppCookieStickinessPolicy
import Network.AWS.SecurityHub.Types.AwsElbLbCookieStickinessPolicy
import Network.AWS.SecurityHub.Types.AwsElbLoadBalancerAccessLog
import Network.AWS.SecurityHub.Types.AwsElbLoadBalancerAttributes
import Network.AWS.SecurityHub.Types.AwsElbLoadBalancerBackendServerDescription
import Network.AWS.SecurityHub.Types.AwsElbLoadBalancerConnectionDraining
import Network.AWS.SecurityHub.Types.AwsElbLoadBalancerConnectionSettings
import Network.AWS.SecurityHub.Types.AwsElbLoadBalancerCrossZoneLoadBalancing
import Network.AWS.SecurityHub.Types.AwsElbLoadBalancerDetails
import Network.AWS.SecurityHub.Types.AwsElbLoadBalancerHealthCheck
import Network.AWS.SecurityHub.Types.AwsElbLoadBalancerInstance
import Network.AWS.SecurityHub.Types.AwsElbLoadBalancerListener
import Network.AWS.SecurityHub.Types.AwsElbLoadBalancerListenerDescription
import Network.AWS.SecurityHub.Types.AwsElbLoadBalancerPolicies
import Network.AWS.SecurityHub.Types.AwsElbLoadBalancerSourceSecurityGroup
import Network.AWS.SecurityHub.Types.AwsElbv2LoadBalancerAttribute
import Network.AWS.SecurityHub.Types.AwsElbv2LoadBalancerDetails
import Network.AWS.SecurityHub.Types.AwsIamAccessKeyDetails
import Network.AWS.SecurityHub.Types.AwsIamAccessKeySessionContext
import Network.AWS.SecurityHub.Types.AwsIamAccessKeySessionContextAttributes
import Network.AWS.SecurityHub.Types.AwsIamAccessKeySessionContextSessionIssuer
import Network.AWS.SecurityHub.Types.AwsIamAttachedManagedPolicy
import Network.AWS.SecurityHub.Types.AwsIamGroupDetails
import Network.AWS.SecurityHub.Types.AwsIamGroupPolicy
import Network.AWS.SecurityHub.Types.AwsIamInstanceProfile
import Network.AWS.SecurityHub.Types.AwsIamInstanceProfileRole
import Network.AWS.SecurityHub.Types.AwsIamPermissionsBoundary
import Network.AWS.SecurityHub.Types.AwsIamPolicyDetails
import Network.AWS.SecurityHub.Types.AwsIamPolicyVersion
import Network.AWS.SecurityHub.Types.AwsIamRoleDetails
import Network.AWS.SecurityHub.Types.AwsIamRolePolicy
import Network.AWS.SecurityHub.Types.AwsIamUserDetails
import Network.AWS.SecurityHub.Types.AwsIamUserPolicy
import Network.AWS.SecurityHub.Types.AwsKmsKeyDetails
import Network.AWS.SecurityHub.Types.AwsLambdaFunctionCode
import Network.AWS.SecurityHub.Types.AwsLambdaFunctionDeadLetterConfig
import Network.AWS.SecurityHub.Types.AwsLambdaFunctionDetails
import Network.AWS.SecurityHub.Types.AwsLambdaFunctionEnvironment
import Network.AWS.SecurityHub.Types.AwsLambdaFunctionEnvironmentError
import Network.AWS.SecurityHub.Types.AwsLambdaFunctionLayer
import Network.AWS.SecurityHub.Types.AwsLambdaFunctionTracingConfig
import Network.AWS.SecurityHub.Types.AwsLambdaFunctionVpcConfig
import Network.AWS.SecurityHub.Types.AwsLambdaLayerVersionDetails
import Network.AWS.SecurityHub.Types.AwsOpenSearchServiceDomainClusterConfigDetails
import Network.AWS.SecurityHub.Types.AwsOpenSearchServiceDomainClusterConfigZoneAwarenessConfigDetails
import Network.AWS.SecurityHub.Types.AwsOpenSearchServiceDomainDetails
import Network.AWS.SecurityHub.Types.AwsOpenSearchServiceDomainDomainEndpointOptionsDetails
import Network.AWS.SecurityHub.Types.AwsOpenSearchServiceDomainEncryptionAtRestOptionsDetails
import Network.AWS.SecurityHub.Types.AwsOpenSearchServiceDomainLogPublishingOption
import Network.AWS.SecurityHub.Types.AwsOpenSearchServiceDomainLogPublishingOptionsDetails
import Network.AWS.SecurityHub.Types.AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails
import Network.AWS.SecurityHub.Types.AwsOpenSearchServiceDomainServiceSoftwareOptionsDetails
import Network.AWS.SecurityHub.Types.AwsOpenSearchServiceDomainVpcOptionsDetails
import Network.AWS.SecurityHub.Types.AwsRdsDbClusterAssociatedRole
import Network.AWS.SecurityHub.Types.AwsRdsDbClusterDetails
import Network.AWS.SecurityHub.Types.AwsRdsDbClusterMember
import Network.AWS.SecurityHub.Types.AwsRdsDbClusterOptionGroupMembership
import Network.AWS.SecurityHub.Types.AwsRdsDbClusterSnapshotDetails
import Network.AWS.SecurityHub.Types.AwsRdsDbDomainMembership
import Network.AWS.SecurityHub.Types.AwsRdsDbInstanceAssociatedRole
import Network.AWS.SecurityHub.Types.AwsRdsDbInstanceDetails
import Network.AWS.SecurityHub.Types.AwsRdsDbInstanceEndpoint
import Network.AWS.SecurityHub.Types.AwsRdsDbInstanceVpcSecurityGroup
import Network.AWS.SecurityHub.Types.AwsRdsDbOptionGroupMembership
import Network.AWS.SecurityHub.Types.AwsRdsDbParameterGroup
import Network.AWS.SecurityHub.Types.AwsRdsDbPendingModifiedValues
import Network.AWS.SecurityHub.Types.AwsRdsDbProcessorFeature
import Network.AWS.SecurityHub.Types.AwsRdsDbSnapshotDetails
import Network.AWS.SecurityHub.Types.AwsRdsDbStatusInfo
import Network.AWS.SecurityHub.Types.AwsRdsDbSubnetGroup
import Network.AWS.SecurityHub.Types.AwsRdsDbSubnetGroupSubnet
import Network.AWS.SecurityHub.Types.AwsRdsDbSubnetGroupSubnetAvailabilityZone
import Network.AWS.SecurityHub.Types.AwsRdsEventSubscriptionDetails
import Network.AWS.SecurityHub.Types.AwsRdsPendingCloudWatchLogsExports
import Network.AWS.SecurityHub.Types.AwsRedshiftClusterClusterNode
import Network.AWS.SecurityHub.Types.AwsRedshiftClusterClusterParameterGroup
import Network.AWS.SecurityHub.Types.AwsRedshiftClusterClusterParameterStatus
import Network.AWS.SecurityHub.Types.AwsRedshiftClusterClusterSecurityGroup
import Network.AWS.SecurityHub.Types.AwsRedshiftClusterClusterSnapshotCopyStatus
import Network.AWS.SecurityHub.Types.AwsRedshiftClusterDeferredMaintenanceWindow
import Network.AWS.SecurityHub.Types.AwsRedshiftClusterDetails
import Network.AWS.SecurityHub.Types.AwsRedshiftClusterElasticIpStatus
import Network.AWS.SecurityHub.Types.AwsRedshiftClusterEndpoint
import Network.AWS.SecurityHub.Types.AwsRedshiftClusterHsmStatus
import Network.AWS.SecurityHub.Types.AwsRedshiftClusterIamRole
import Network.AWS.SecurityHub.Types.AwsRedshiftClusterPendingModifiedValues
import Network.AWS.SecurityHub.Types.AwsRedshiftClusterResizeInfo
import Network.AWS.SecurityHub.Types.AwsRedshiftClusterRestoreStatus
import Network.AWS.SecurityHub.Types.AwsRedshiftClusterVpcSecurityGroup
import Network.AWS.SecurityHub.Types.AwsS3AccountPublicAccessBlockDetails
import Network.AWS.SecurityHub.Types.AwsS3BucketBucketLifecycleConfigurationDetails
import Network.AWS.SecurityHub.Types.AwsS3BucketBucketLifecycleConfigurationRulesAbortIncompleteMultipartUploadDetails
import Network.AWS.SecurityHub.Types.AwsS3BucketBucketLifecycleConfigurationRulesDetails
import Network.AWS.SecurityHub.Types.AwsS3BucketBucketLifecycleConfigurationRulesFilterDetails
import Network.AWS.SecurityHub.Types.AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateDetails
import Network.AWS.SecurityHub.Types.AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsDetails
import Network.AWS.SecurityHub.Types.AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateOperandsTagDetails
import Network.AWS.SecurityHub.Types.AwsS3BucketBucketLifecycleConfigurationRulesFilterPredicateTagDetails
import Network.AWS.SecurityHub.Types.AwsS3BucketBucketLifecycleConfigurationRulesNoncurrentVersionTransitionsDetails
import Network.AWS.SecurityHub.Types.AwsS3BucketBucketLifecycleConfigurationRulesTransitionsDetails
import Network.AWS.SecurityHub.Types.AwsS3BucketDetails
import Network.AWS.SecurityHub.Types.AwsS3BucketLoggingConfiguration
import Network.AWS.SecurityHub.Types.AwsS3BucketNotificationConfiguration
import Network.AWS.SecurityHub.Types.AwsS3BucketNotificationConfigurationDetail
import Network.AWS.SecurityHub.Types.AwsS3BucketNotificationConfigurationFilter
import Network.AWS.SecurityHub.Types.AwsS3BucketNotificationConfigurationS3KeyFilter
import Network.AWS.SecurityHub.Types.AwsS3BucketNotificationConfigurationS3KeyFilterRule
import Network.AWS.SecurityHub.Types.AwsS3BucketServerSideEncryptionByDefault
import Network.AWS.SecurityHub.Types.AwsS3BucketServerSideEncryptionConfiguration
import Network.AWS.SecurityHub.Types.AwsS3BucketServerSideEncryptionRule
import Network.AWS.SecurityHub.Types.AwsS3BucketWebsiteConfiguration
import Network.AWS.SecurityHub.Types.AwsS3BucketWebsiteConfigurationRedirectTo
import Network.AWS.SecurityHub.Types.AwsS3BucketWebsiteConfigurationRoutingRule
import Network.AWS.SecurityHub.Types.AwsS3BucketWebsiteConfigurationRoutingRuleCondition
import Network.AWS.SecurityHub.Types.AwsS3BucketWebsiteConfigurationRoutingRuleRedirect
import Network.AWS.SecurityHub.Types.AwsS3ObjectDetails
import Network.AWS.SecurityHub.Types.AwsSecretsManagerSecretDetails
import Network.AWS.SecurityHub.Types.AwsSecretsManagerSecretRotationRules
import Network.AWS.SecurityHub.Types.AwsSecurityFinding
import Network.AWS.SecurityHub.Types.AwsSecurityFindingFilters
import Network.AWS.SecurityHub.Types.AwsSecurityFindingIdentifier
import Network.AWS.SecurityHub.Types.AwsSnsTopicDetails
import Network.AWS.SecurityHub.Types.AwsSnsTopicSubscription
import Network.AWS.SecurityHub.Types.AwsSqsQueueDetails
import Network.AWS.SecurityHub.Types.AwsSsmComplianceSummary
import Network.AWS.SecurityHub.Types.AwsSsmPatch
import Network.AWS.SecurityHub.Types.AwsSsmPatchComplianceDetails
import Network.AWS.SecurityHub.Types.AwsWafRateBasedRuleDetails
import Network.AWS.SecurityHub.Types.AwsWafRateBasedRuleMatchPredicate
import Network.AWS.SecurityHub.Types.AwsWafRegionalRateBasedRuleDetails
import Network.AWS.SecurityHub.Types.AwsWafRegionalRateBasedRuleMatchPredicate
import Network.AWS.SecurityHub.Types.AwsWafWebAclDetails
import Network.AWS.SecurityHub.Types.AwsWafWebAclRule
import Network.AWS.SecurityHub.Types.AwsXrayEncryptionConfigDetails
import Network.AWS.SecurityHub.Types.BatchUpdateFindingsUnprocessedFinding
import Network.AWS.SecurityHub.Types.Cell
import Network.AWS.SecurityHub.Types.CidrBlockAssociation
import Network.AWS.SecurityHub.Types.City
import Network.AWS.SecurityHub.Types.ClassificationResult
import Network.AWS.SecurityHub.Types.ClassificationStatus
import Network.AWS.SecurityHub.Types.Compliance
import Network.AWS.SecurityHub.Types.ContainerDetails
import Network.AWS.SecurityHub.Types.Country
import Network.AWS.SecurityHub.Types.CustomDataIdentifiersDetections
import Network.AWS.SecurityHub.Types.CustomDataIdentifiersResult
import Network.AWS.SecurityHub.Types.Cvss
import Network.AWS.SecurityHub.Types.DataClassificationDetails
import Network.AWS.SecurityHub.Types.DateFilter
import Network.AWS.SecurityHub.Types.DateRange
import Network.AWS.SecurityHub.Types.DnsRequestAction
import Network.AWS.SecurityHub.Types.FindingAggregator
import Network.AWS.SecurityHub.Types.FindingProviderFields
import Network.AWS.SecurityHub.Types.FindingProviderSeverity
import Network.AWS.SecurityHub.Types.GeoLocation
import Network.AWS.SecurityHub.Types.IcmpTypeCode
import Network.AWS.SecurityHub.Types.ImportFindingsError
import Network.AWS.SecurityHub.Types.Insight
import Network.AWS.SecurityHub.Types.InsightResultValue
import Network.AWS.SecurityHub.Types.InsightResults
import Network.AWS.SecurityHub.Types.Invitation
import Network.AWS.SecurityHub.Types.IpFilter
import Network.AWS.SecurityHub.Types.IpOrganizationDetails
import Network.AWS.SecurityHub.Types.Ipv6CidrBlockAssociation
import Network.AWS.SecurityHub.Types.KeywordFilter
import Network.AWS.SecurityHub.Types.LoadBalancerState
import Network.AWS.SecurityHub.Types.Malware
import Network.AWS.SecurityHub.Types.MapFilter
import Network.AWS.SecurityHub.Types.Member
import Network.AWS.SecurityHub.Types.Network
import Network.AWS.SecurityHub.Types.NetworkConnectionAction
import Network.AWS.SecurityHub.Types.NetworkHeader
import Network.AWS.SecurityHub.Types.NetworkPathComponent
import Network.AWS.SecurityHub.Types.NetworkPathComponentDetails
import Network.AWS.SecurityHub.Types.Note
import Network.AWS.SecurityHub.Types.NoteUpdate
import Network.AWS.SecurityHub.Types.NumberFilter
import Network.AWS.SecurityHub.Types.Occurrences
import Network.AWS.SecurityHub.Types.Page
import Network.AWS.SecurityHub.Types.PatchSummary
import Network.AWS.SecurityHub.Types.PortProbeAction
import Network.AWS.SecurityHub.Types.PortProbeDetail
import Network.AWS.SecurityHub.Types.PortRange
import Network.AWS.SecurityHub.Types.PortRangeFromTo
import Network.AWS.SecurityHub.Types.ProcessDetails
import Network.AWS.SecurityHub.Types.Product
import Network.AWS.SecurityHub.Types.Range
import Network.AWS.SecurityHub.Types.Recommendation
import Network.AWS.SecurityHub.Types.Record
import Network.AWS.SecurityHub.Types.RelatedFinding
import Network.AWS.SecurityHub.Types.Remediation
import Network.AWS.SecurityHub.Types.Resource
import Network.AWS.SecurityHub.Types.ResourceDetails
import Network.AWS.SecurityHub.Types.Result
import Network.AWS.SecurityHub.Types.SensitiveDataDetections
import Network.AWS.SecurityHub.Types.SensitiveDataResult
import Network.AWS.SecurityHub.Types.Severity
import Network.AWS.SecurityHub.Types.SeverityUpdate
import Network.AWS.SecurityHub.Types.SoftwarePackage
import Network.AWS.SecurityHub.Types.SortCriterion
import Network.AWS.SecurityHub.Types.Standard
import Network.AWS.SecurityHub.Types.StandardsControl
import Network.AWS.SecurityHub.Types.StandardsSubscription
import Network.AWS.SecurityHub.Types.StandardsSubscriptionRequest
import Network.AWS.SecurityHub.Types.StatusReason
import Network.AWS.SecurityHub.Types.StringFilter
import Network.AWS.SecurityHub.Types.ThreatIntelIndicator
import Network.AWS.SecurityHub.Types.Vulnerability
import Network.AWS.SecurityHub.Types.VulnerabilityVendor
import Network.AWS.SecurityHub.Types.WafAction
import Network.AWS.SecurityHub.Types.WafExcludedRule
import Network.AWS.SecurityHub.Types.WafOverrideAction
import Network.AWS.SecurityHub.Types.Workflow
import Network.AWS.SecurityHub.Types.WorkflowUpdate
import Network.AWS.SecurityHub.UntagResource
import Network.AWS.SecurityHub.UpdateActionTarget
import Network.AWS.SecurityHub.UpdateFindingAggregator
import Network.AWS.SecurityHub.UpdateFindings
import Network.AWS.SecurityHub.UpdateInsight
import Network.AWS.SecurityHub.UpdateOrganizationConfiguration
import Network.AWS.SecurityHub.UpdateSecurityHubConfiguration
import Network.AWS.SecurityHub.UpdateStandardsControl
