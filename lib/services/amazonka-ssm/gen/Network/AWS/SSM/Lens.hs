{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Lens
  ( -- * Operations

    -- ** GetConnectionStatus
    getConnectionStatus_target,
    getConnectionStatusResponse_status,
    getConnectionStatusResponse_target,
    getConnectionStatusResponse_httpStatus,

    -- ** DescribeInstancePatches
    describeInstancePatches_filters,
    describeInstancePatches_nextToken,
    describeInstancePatches_maxResults,
    describeInstancePatches_instanceId,
    describeInstancePatchesResponse_patches,
    describeInstancePatchesResponse_nextToken,
    describeInstancePatchesResponse_httpStatus,

    -- ** GetInventory
    getInventory_aggregators,
    getInventory_filters,
    getInventory_resultAttributes,
    getInventory_nextToken,
    getInventory_maxResults,
    getInventoryResponse_entities,
    getInventoryResponse_nextToken,
    getInventoryResponse_httpStatus,

    -- ** GetParameters
    getParameters_withDecryption,
    getParameters_names,
    getParametersResponse_parameters,
    getParametersResponse_invalidParameters,
    getParametersResponse_httpStatus,

    -- ** DeletePatchBaseline
    deletePatchBaseline_baselineId,
    deletePatchBaselineResponse_baselineId,
    deletePatchBaselineResponse_httpStatus,

    -- ** UpdatePatchBaseline
    updatePatchBaseline_replace,
    updatePatchBaseline_approvalRules,
    updatePatchBaseline_globalFilters,
    updatePatchBaseline_approvedPatchesComplianceLevel,
    updatePatchBaseline_rejectedPatchesAction,
    updatePatchBaseline_approvedPatches,
    updatePatchBaseline_approvedPatchesEnableNonSecurity,
    updatePatchBaseline_rejectedPatches,
    updatePatchBaseline_sources,
    updatePatchBaseline_name,
    updatePatchBaseline_description,
    updatePatchBaseline_baselineId,
    updatePatchBaselineResponse_approvalRules,
    updatePatchBaselineResponse_operatingSystem,
    updatePatchBaselineResponse_globalFilters,
    updatePatchBaselineResponse_approvedPatchesComplianceLevel,
    updatePatchBaselineResponse_rejectedPatchesAction,
    updatePatchBaselineResponse_approvedPatches,
    updatePatchBaselineResponse_approvedPatchesEnableNonSecurity,
    updatePatchBaselineResponse_rejectedPatches,
    updatePatchBaselineResponse_sources,
    updatePatchBaselineResponse_createdDate,
    updatePatchBaselineResponse_name,
    updatePatchBaselineResponse_modifiedDate,
    updatePatchBaselineResponse_description,
    updatePatchBaselineResponse_baselineId,
    updatePatchBaselineResponse_httpStatus,

    -- ** ListOpsItemEvents
    listOpsItemEvents_filters,
    listOpsItemEvents_nextToken,
    listOpsItemEvents_maxResults,
    listOpsItemEventsResponse_nextToken,
    listOpsItemEventsResponse_summaries,
    listOpsItemEventsResponse_httpStatus,

    -- ** TerminateSession
    terminateSession_sessionId,
    terminateSessionResponse_sessionId,
    terminateSessionResponse_httpStatus,

    -- ** GetParameter
    getParameter_withDecryption,
    getParameter_name,
    getParameterResponse_parameter,
    getParameterResponse_httpStatus,

    -- ** GetOpsMetadata
    getOpsMetadata_nextToken,
    getOpsMetadata_maxResults,
    getOpsMetadata_opsMetadataArn,
    getOpsMetadataResponse_resourceId,
    getOpsMetadataResponse_nextToken,
    getOpsMetadataResponse_metadata,
    getOpsMetadataResponse_httpStatus,

    -- ** UpdateDocumentDefaultVersion
    updateDocumentDefaultVersion_name,
    updateDocumentDefaultVersion_documentVersion,
    updateDocumentDefaultVersionResponse_description,
    updateDocumentDefaultVersionResponse_httpStatus,

    -- ** ListResourceDataSync
    listResourceDataSync_syncType,
    listResourceDataSync_nextToken,
    listResourceDataSync_maxResults,
    listResourceDataSyncResponse_resourceDataSyncItems,
    listResourceDataSyncResponse_nextToken,
    listResourceDataSyncResponse_httpStatus,

    -- ** GetOpsItem
    getOpsItem_opsItemId,
    getOpsItemResponse_opsItem,
    getOpsItemResponse_httpStatus,

    -- ** ResumeSession
    resumeSession_sessionId,
    resumeSessionResponse_streamUrl,
    resumeSessionResponse_tokenValue,
    resumeSessionResponse_sessionId,
    resumeSessionResponse_httpStatus,

    -- ** GetDeployablePatchSnapshotForInstance
    getDeployablePatchSnapshotForInstance_baselineOverride,
    getDeployablePatchSnapshotForInstance_instanceId,
    getDeployablePatchSnapshotForInstance_snapshotId,
    getDeployablePatchSnapshotForInstanceResponse_instanceId,
    getDeployablePatchSnapshotForInstanceResponse_product,
    getDeployablePatchSnapshotForInstanceResponse_snapshotDownloadUrl,
    getDeployablePatchSnapshotForInstanceResponse_snapshotId,
    getDeployablePatchSnapshotForInstanceResponse_httpStatus,

    -- ** DescribeParameters
    describeParameters_parameterFilters,
    describeParameters_filters,
    describeParameters_nextToken,
    describeParameters_maxResults,
    describeParametersResponse_nextToken,
    describeParametersResponse_parameters,
    describeParametersResponse_httpStatus,

    -- ** DescribeOpsItems
    describeOpsItems_opsItemFilters,
    describeOpsItems_nextToken,
    describeOpsItems_maxResults,
    describeOpsItemsResponse_nextToken,
    describeOpsItemsResponse_opsItemSummaries,
    describeOpsItemsResponse_httpStatus,

    -- ** GetParametersByPath
    getParametersByPath_withDecryption,
    getParametersByPath_parameterFilters,
    getParametersByPath_nextToken,
    getParametersByPath_recursive,
    getParametersByPath_maxResults,
    getParametersByPath_path,
    getParametersByPathResponse_nextToken,
    getParametersByPathResponse_parameters,
    getParametersByPathResponse_httpStatus,

    -- ** PutComplianceItems
    putComplianceItems_uploadType,
    putComplianceItems_itemContentHash,
    putComplianceItems_resourceId,
    putComplianceItems_resourceType,
    putComplianceItems_complianceType,
    putComplianceItems_executionSummary,
    putComplianceItems_items,
    putComplianceItemsResponse_httpStatus,

    -- ** ListDocumentMetadataHistory
    listDocumentMetadataHistory_nextToken,
    listDocumentMetadataHistory_documentVersion,
    listDocumentMetadataHistory_maxResults,
    listDocumentMetadataHistory_name,
    listDocumentMetadataHistory_metadata,
    listDocumentMetadataHistoryResponse_nextToken,
    listDocumentMetadataHistoryResponse_name,
    listDocumentMetadataHistoryResponse_documentVersion,
    listDocumentMetadataHistoryResponse_author,
    listDocumentMetadataHistoryResponse_metadata,
    listDocumentMetadataHistoryResponse_httpStatus,

    -- ** DescribeActivations
    describeActivations_filters,
    describeActivations_nextToken,
    describeActivations_maxResults,
    describeActivationsResponse_activationList,
    describeActivationsResponse_nextToken,
    describeActivationsResponse_httpStatus,

    -- ** GetMaintenanceWindowTask
    getMaintenanceWindowTask_windowId,
    getMaintenanceWindowTask_windowTaskId,
    getMaintenanceWindowTaskResponse_serviceRoleArn,
    getMaintenanceWindowTaskResponse_windowTaskId,
    getMaintenanceWindowTaskResponse_taskParameters,
    getMaintenanceWindowTaskResponse_priority,
    getMaintenanceWindowTaskResponse_taskType,
    getMaintenanceWindowTaskResponse_taskArn,
    getMaintenanceWindowTaskResponse_cutoffBehavior,
    getMaintenanceWindowTaskResponse_maxErrors,
    getMaintenanceWindowTaskResponse_taskInvocationParameters,
    getMaintenanceWindowTaskResponse_name,
    getMaintenanceWindowTaskResponse_targets,
    getMaintenanceWindowTaskResponse_loggingInfo,
    getMaintenanceWindowTaskResponse_description,
    getMaintenanceWindowTaskResponse_maxConcurrency,
    getMaintenanceWindowTaskResponse_windowId,
    getMaintenanceWindowTaskResponse_httpStatus,

    -- ** ListTagsForResource
    listTagsForResource_resourceType,
    listTagsForResource_resourceId,
    listTagsForResourceResponse_tagList,
    listTagsForResourceResponse_httpStatus,

    -- ** DescribeDocument
    describeDocument_versionName,
    describeDocument_documentVersion,
    describeDocument_name,
    describeDocumentResponse_document,
    describeDocumentResponse_httpStatus,

    -- ** DescribePatchProperties
    describePatchProperties_patchSet,
    describePatchProperties_nextToken,
    describePatchProperties_maxResults,
    describePatchProperties_operatingSystem,
    describePatchProperties_property,
    describePatchPropertiesResponse_nextToken,
    describePatchPropertiesResponse_properties,
    describePatchPropertiesResponse_httpStatus,

    -- ** CreateAssociation
    createAssociation_instanceId,
    createAssociation_targetLocations,
    createAssociation_applyOnlyAtCronInterval,
    createAssociation_maxErrors,
    createAssociation_scheduleExpression,
    createAssociation_outputLocation,
    createAssociation_syncCompliance,
    createAssociation_targets,
    createAssociation_parameters,
    createAssociation_documentVersion,
    createAssociation_automationTargetParameterName,
    createAssociation_associationName,
    createAssociation_calendarNames,
    createAssociation_complianceSeverity,
    createAssociation_maxConcurrency,
    createAssociation_name,
    createAssociationResponse_associationDescription,
    createAssociationResponse_httpStatus,

    -- ** DeleteActivation
    deleteActivation_activationId,
    deleteActivationResponse_httpStatus,

    -- ** DescribeMaintenanceWindowExecutions
    describeMaintenanceWindowExecutions_filters,
    describeMaintenanceWindowExecutions_nextToken,
    describeMaintenanceWindowExecutions_maxResults,
    describeMaintenanceWindowExecutions_windowId,
    describeMaintenanceWindowExecutionsResponse_windowExecutions,
    describeMaintenanceWindowExecutionsResponse_nextToken,
    describeMaintenanceWindowExecutionsResponse_httpStatus,

    -- ** DescribeMaintenanceWindowsForTarget
    describeMaintenanceWindowsForTarget_nextToken,
    describeMaintenanceWindowsForTarget_maxResults,
    describeMaintenanceWindowsForTarget_targets,
    describeMaintenanceWindowsForTarget_resourceType,
    describeMaintenanceWindowsForTargetResponse_windowIdentities,
    describeMaintenanceWindowsForTargetResponse_nextToken,
    describeMaintenanceWindowsForTargetResponse_httpStatus,

    -- ** CreateOpsMetadata
    createOpsMetadata_metadata,
    createOpsMetadata_tags,
    createOpsMetadata_resourceId,
    createOpsMetadataResponse_opsMetadataArn,
    createOpsMetadataResponse_httpStatus,

    -- ** StartChangeRequestExecution
    startChangeRequestExecution_scheduledTime,
    startChangeRequestExecution_changeDetails,
    startChangeRequestExecution_clientToken,
    startChangeRequestExecution_autoApprove,
    startChangeRequestExecution_scheduledEndTime,
    startChangeRequestExecution_parameters,
    startChangeRequestExecution_documentVersion,
    startChangeRequestExecution_changeRequestName,
    startChangeRequestExecution_tags,
    startChangeRequestExecution_documentName,
    startChangeRequestExecution_runbooks,
    startChangeRequestExecutionResponse_automationExecutionId,
    startChangeRequestExecutionResponse_httpStatus,

    -- ** CancelMaintenanceWindowExecution
    cancelMaintenanceWindowExecution_windowExecutionId,
    cancelMaintenanceWindowExecutionResponse_windowExecutionId,
    cancelMaintenanceWindowExecutionResponse_httpStatus,

    -- ** GetInventorySchema
    getInventorySchema_typeName,
    getInventorySchema_aggregator,
    getInventorySchema_nextToken,
    getInventorySchema_subType,
    getInventorySchema_maxResults,
    getInventorySchemaResponse_schemas,
    getInventorySchemaResponse_nextToken,
    getInventorySchemaResponse_httpStatus,

    -- ** ListComplianceSummaries
    listComplianceSummaries_filters,
    listComplianceSummaries_nextToken,
    listComplianceSummaries_maxResults,
    listComplianceSummariesResponse_nextToken,
    listComplianceSummariesResponse_complianceSummaryItems,
    listComplianceSummariesResponse_httpStatus,

    -- ** StartAutomationExecution
    startAutomationExecution_targetParameterName,
    startAutomationExecution_targetLocations,
    startAutomationExecution_clientToken,
    startAutomationExecution_mode,
    startAutomationExecution_targetMaps,
    startAutomationExecution_maxErrors,
    startAutomationExecution_targets,
    startAutomationExecution_parameters,
    startAutomationExecution_documentVersion,
    startAutomationExecution_tags,
    startAutomationExecution_maxConcurrency,
    startAutomationExecution_documentName,
    startAutomationExecutionResponse_automationExecutionId,
    startAutomationExecutionResponse_httpStatus,

    -- ** CreateOpsItem
    createOpsItem_actualEndTime,
    createOpsItem_priority,
    createOpsItem_category,
    createOpsItem_severity,
    createOpsItem_opsItemType,
    createOpsItem_relatedOpsItems,
    createOpsItem_operationalData,
    createOpsItem_actualStartTime,
    createOpsItem_plannedEndTime,
    createOpsItem_notifications,
    createOpsItem_tags,
    createOpsItem_plannedStartTime,
    createOpsItem_description,
    createOpsItem_source,
    createOpsItem_title,
    createOpsItemResponse_opsItemId,
    createOpsItemResponse_httpStatus,

    -- ** CreateActivation
    createActivation_defaultInstanceName,
    createActivation_registrationLimit,
    createActivation_expirationDate,
    createActivation_description,
    createActivation_tags,
    createActivation_iamRole,
    createActivationResponse_activationId,
    createActivationResponse_activationCode,
    createActivationResponse_httpStatus,

    -- ** DeleteMaintenanceWindow
    deleteMaintenanceWindow_windowId,
    deleteMaintenanceWindowResponse_windowId,
    deleteMaintenanceWindowResponse_httpStatus,

    -- ** UpdateMaintenanceWindow
    updateMaintenanceWindow_replace,
    updateMaintenanceWindow_enabled,
    updateMaintenanceWindow_schedule,
    updateMaintenanceWindow_scheduleOffset,
    updateMaintenanceWindow_endDate,
    updateMaintenanceWindow_scheduleTimezone,
    updateMaintenanceWindow_startDate,
    updateMaintenanceWindow_name,
    updateMaintenanceWindow_cutoff,
    updateMaintenanceWindow_allowUnassociatedTargets,
    updateMaintenanceWindow_description,
    updateMaintenanceWindow_duration,
    updateMaintenanceWindow_windowId,
    updateMaintenanceWindowResponse_enabled,
    updateMaintenanceWindowResponse_schedule,
    updateMaintenanceWindowResponse_scheduleOffset,
    updateMaintenanceWindowResponse_endDate,
    updateMaintenanceWindowResponse_scheduleTimezone,
    updateMaintenanceWindowResponse_startDate,
    updateMaintenanceWindowResponse_name,
    updateMaintenanceWindowResponse_cutoff,
    updateMaintenanceWindowResponse_allowUnassociatedTargets,
    updateMaintenanceWindowResponse_description,
    updateMaintenanceWindowResponse_duration,
    updateMaintenanceWindowResponse_windowId,
    updateMaintenanceWindowResponse_httpStatus,

    -- ** DescribeSessions
    describeSessions_filters,
    describeSessions_nextToken,
    describeSessions_maxResults,
    describeSessions_state,
    describeSessionsResponse_nextToken,
    describeSessionsResponse_sessions,
    describeSessionsResponse_httpStatus,

    -- ** DescribeMaintenanceWindowExecutionTasks
    describeMaintenanceWindowExecutionTasks_filters,
    describeMaintenanceWindowExecutionTasks_nextToken,
    describeMaintenanceWindowExecutionTasks_maxResults,
    describeMaintenanceWindowExecutionTasks_windowExecutionId,
    describeMaintenanceWindowExecutionTasksResponse_nextToken,
    describeMaintenanceWindowExecutionTasksResponse_windowExecutionTaskIdentities,
    describeMaintenanceWindowExecutionTasksResponse_httpStatus,

    -- ** GetDefaultPatchBaseline
    getDefaultPatchBaseline_operatingSystem,
    getDefaultPatchBaselineResponse_operatingSystem,
    getDefaultPatchBaselineResponse_baselineId,
    getDefaultPatchBaselineResponse_httpStatus,

    -- ** GetMaintenanceWindowExecutionTask
    getMaintenanceWindowExecutionTask_windowExecutionId,
    getMaintenanceWindowExecutionTask_taskId,
    getMaintenanceWindowExecutionTaskResponse_status,
    getMaintenanceWindowExecutionTaskResponse_taskParameters,
    getMaintenanceWindowExecutionTaskResponse_taskExecutionId,
    getMaintenanceWindowExecutionTaskResponse_priority,
    getMaintenanceWindowExecutionTaskResponse_startTime,
    getMaintenanceWindowExecutionTaskResponse_taskArn,
    getMaintenanceWindowExecutionTaskResponse_windowExecutionId,
    getMaintenanceWindowExecutionTaskResponse_statusDetails,
    getMaintenanceWindowExecutionTaskResponse_maxErrors,
    getMaintenanceWindowExecutionTaskResponse_endTime,
    getMaintenanceWindowExecutionTaskResponse_type,
    getMaintenanceWindowExecutionTaskResponse_maxConcurrency,
    getMaintenanceWindowExecutionTaskResponse_serviceRole,
    getMaintenanceWindowExecutionTaskResponse_httpStatus,

    -- ** CreateDocument
    createDocument_documentType,
    createDocument_attachments,
    createDocument_versionName,
    createDocument_targetType,
    createDocument_documentFormat,
    createDocument_displayName,
    createDocument_requires,
    createDocument_tags,
    createDocument_content,
    createDocument_name,
    createDocumentResponse_documentDescription,
    createDocumentResponse_httpStatus,

    -- ** RemoveTagsFromResource
    removeTagsFromResource_resourceType,
    removeTagsFromResource_resourceId,
    removeTagsFromResource_tagKeys,
    removeTagsFromResourceResponse_httpStatus,

    -- ** GetCalendarState
    getCalendarState_atTime,
    getCalendarState_calendarNames,
    getCalendarStateResponse_state,
    getCalendarStateResponse_nextTransitionTime,
    getCalendarStateResponse_atTime,
    getCalendarStateResponse_httpStatus,

    -- ** DeleteParameters
    deleteParameters_names,
    deleteParametersResponse_deletedParameters,
    deleteParametersResponse_invalidParameters,
    deleteParametersResponse_httpStatus,

    -- ** DescribePatchGroupState
    describePatchGroupState_patchGroup,
    describePatchGroupStateResponse_instancesWithMissingPatches,
    describePatchGroupStateResponse_instancesWithInstalledOtherPatches,
    describePatchGroupStateResponse_instancesWithNotApplicablePatches,
    describePatchGroupStateResponse_instancesWithInstalledPatches,
    describePatchGroupStateResponse_instancesWithCriticalNonCompliantPatches,
    describePatchGroupStateResponse_instancesWithSecurityNonCompliantPatches,
    describePatchGroupStateResponse_instancesWithInstalledRejectedPatches,
    describePatchGroupStateResponse_instancesWithInstalledPendingRebootPatches,
    describePatchGroupStateResponse_instancesWithOtherNonCompliantPatches,
    describePatchGroupStateResponse_instancesWithUnreportedNotApplicablePatches,
    describePatchGroupStateResponse_instances,
    describePatchGroupStateResponse_instancesWithFailedPatches,
    describePatchGroupStateResponse_httpStatus,

    -- ** ListCommandInvocations
    listCommandInvocations_instanceId,
    listCommandInvocations_filters,
    listCommandInvocations_nextToken,
    listCommandInvocations_commandId,
    listCommandInvocations_details,
    listCommandInvocations_maxResults,
    listCommandInvocationsResponse_nextToken,
    listCommandInvocationsResponse_commandInvocations,
    listCommandInvocationsResponse_httpStatus,

    -- ** DeregisterTargetFromMaintenanceWindow
    deregisterTargetFromMaintenanceWindow_safe,
    deregisterTargetFromMaintenanceWindow_windowId,
    deregisterTargetFromMaintenanceWindow_windowTargetId,
    deregisterTargetFromMaintenanceWindowResponse_windowTargetId,
    deregisterTargetFromMaintenanceWindowResponse_windowId,
    deregisterTargetFromMaintenanceWindowResponse_httpStatus,

    -- ** DescribeEffectivePatchesForPatchBaseline
    describeEffectivePatchesForPatchBaseline_nextToken,
    describeEffectivePatchesForPatchBaseline_maxResults,
    describeEffectivePatchesForPatchBaseline_baselineId,
    describeEffectivePatchesForPatchBaselineResponse_effectivePatches,
    describeEffectivePatchesForPatchBaselineResponse_nextToken,
    describeEffectivePatchesForPatchBaselineResponse_httpStatus,

    -- ** UnlabelParameterVersion
    unlabelParameterVersion_name,
    unlabelParameterVersion_parameterVersion,
    unlabelParameterVersion_labels,
    unlabelParameterVersionResponse_invalidLabels,
    unlabelParameterVersionResponse_removedLabels,
    unlabelParameterVersionResponse_httpStatus,

    -- ** DescribeMaintenanceWindowTargets
    describeMaintenanceWindowTargets_filters,
    describeMaintenanceWindowTargets_nextToken,
    describeMaintenanceWindowTargets_maxResults,
    describeMaintenanceWindowTargets_windowId,
    describeMaintenanceWindowTargetsResponse_nextToken,
    describeMaintenanceWindowTargetsResponse_targets,
    describeMaintenanceWindowTargetsResponse_httpStatus,

    -- ** ResetServiceSetting
    resetServiceSetting_settingId,
    resetServiceSettingResponse_serviceSetting,
    resetServiceSettingResponse_httpStatus,

    -- ** RegisterPatchBaselineForPatchGroup
    registerPatchBaselineForPatchGroup_baselineId,
    registerPatchBaselineForPatchGroup_patchGroup,
    registerPatchBaselineForPatchGroupResponse_baselineId,
    registerPatchBaselineForPatchGroupResponse_patchGroup,
    registerPatchBaselineForPatchGroupResponse_httpStatus,

    -- ** ListDocuments
    listDocuments_documentFilterList,
    listDocuments_filters,
    listDocuments_nextToken,
    listDocuments_maxResults,
    listDocumentsResponse_documentIdentifiers,
    listDocumentsResponse_nextToken,
    listDocumentsResponse_httpStatus,

    -- ** DescribeInstancePatchStates
    describeInstancePatchStates_nextToken,
    describeInstancePatchStates_maxResults,
    describeInstancePatchStates_instanceIds,
    describeInstancePatchStatesResponse_nextToken,
    describeInstancePatchStatesResponse_instancePatchStates,
    describeInstancePatchStatesResponse_httpStatus,

    -- ** GetOpsSummary
    getOpsSummary_aggregators,
    getOpsSummary_syncName,
    getOpsSummary_filters,
    getOpsSummary_resultAttributes,
    getOpsSummary_nextToken,
    getOpsSummary_maxResults,
    getOpsSummaryResponse_entities,
    getOpsSummaryResponse_nextToken,
    getOpsSummaryResponse_httpStatus,

    -- ** GetPatchBaselineForPatchGroup
    getPatchBaselineForPatchGroup_operatingSystem,
    getPatchBaselineForPatchGroup_patchGroup,
    getPatchBaselineForPatchGroupResponse_operatingSystem,
    getPatchBaselineForPatchGroupResponse_baselineId,
    getPatchBaselineForPatchGroupResponse_patchGroup,
    getPatchBaselineForPatchGroupResponse_httpStatus,

    -- ** UpdateManagedInstanceRole
    updateManagedInstanceRole_instanceId,
    updateManagedInstanceRole_iamRole,
    updateManagedInstanceRoleResponse_httpStatus,

    -- ** ListComplianceItems
    listComplianceItems_resourceIds,
    listComplianceItems_filters,
    listComplianceItems_nextToken,
    listComplianceItems_maxResults,
    listComplianceItems_resourceTypes,
    listComplianceItemsResponse_complianceItems,
    listComplianceItemsResponse_nextToken,
    listComplianceItemsResponse_httpStatus,

    -- ** GetDocument
    getDocument_versionName,
    getDocument_documentFormat,
    getDocument_documentVersion,
    getDocument_name,
    getDocumentResponse_status,
    getDocumentResponse_documentType,
    getDocumentResponse_versionName,
    getDocumentResponse_attachmentsContent,
    getDocumentResponse_reviewStatus,
    getDocumentResponse_content,
    getDocumentResponse_createdDate,
    getDocumentResponse_documentFormat,
    getDocumentResponse_name,
    getDocumentResponse_documentVersion,
    getDocumentResponse_displayName,
    getDocumentResponse_statusInformation,
    getDocumentResponse_requires,
    getDocumentResponse_httpStatus,

    -- ** DescribeMaintenanceWindowSchedule
    describeMaintenanceWindowSchedule_resourceType,
    describeMaintenanceWindowSchedule_filters,
    describeMaintenanceWindowSchedule_nextToken,
    describeMaintenanceWindowSchedule_targets,
    describeMaintenanceWindowSchedule_maxResults,
    describeMaintenanceWindowSchedule_windowId,
    describeMaintenanceWindowScheduleResponse_scheduledWindowExecutions,
    describeMaintenanceWindowScheduleResponse_nextToken,
    describeMaintenanceWindowScheduleResponse_httpStatus,

    -- ** AddTagsToResource
    addTagsToResource_resourceType,
    addTagsToResource_resourceId,
    addTagsToResource_tags,
    addTagsToResourceResponse_httpStatus,

    -- ** CancelCommand
    cancelCommand_instanceIds,
    cancelCommand_commandId,
    cancelCommandResponse_httpStatus,

    -- ** DescribeAutomationStepExecutions
    describeAutomationStepExecutions_filters,
    describeAutomationStepExecutions_reverseOrder,
    describeAutomationStepExecutions_nextToken,
    describeAutomationStepExecutions_maxResults,
    describeAutomationStepExecutions_automationExecutionId,
    describeAutomationStepExecutionsResponse_nextToken,
    describeAutomationStepExecutionsResponse_stepExecutions,
    describeAutomationStepExecutionsResponse_httpStatus,

    -- ** GetCommandInvocation
    getCommandInvocation_pluginName,
    getCommandInvocation_commandId,
    getCommandInvocation_instanceId,
    getCommandInvocationResponse_instanceId,
    getCommandInvocationResponse_status,
    getCommandInvocationResponse_standardErrorContent,
    getCommandInvocationResponse_cloudWatchOutputConfig,
    getCommandInvocationResponse_executionElapsedTime,
    getCommandInvocationResponse_documentName,
    getCommandInvocationResponse_standardErrorUrl,
    getCommandInvocationResponse_executionStartDateTime,
    getCommandInvocationResponse_responseCode,
    getCommandInvocationResponse_statusDetails,
    getCommandInvocationResponse_executionEndDateTime,
    getCommandInvocationResponse_standardOutputUrl,
    getCommandInvocationResponse_commandId,
    getCommandInvocationResponse_documentVersion,
    getCommandInvocationResponse_standardOutputContent,
    getCommandInvocationResponse_comment,
    getCommandInvocationResponse_pluginName,
    getCommandInvocationResponse_httpStatus,

    -- ** DescribeInstancePatchStatesForPatchGroup
    describeInstancePatchStatesForPatchGroup_filters,
    describeInstancePatchStatesForPatchGroup_nextToken,
    describeInstancePatchStatesForPatchGroup_maxResults,
    describeInstancePatchStatesForPatchGroup_patchGroup,
    describeInstancePatchStatesForPatchGroupResponse_nextToken,
    describeInstancePatchStatesForPatchGroupResponse_instancePatchStates,
    describeInstancePatchStatesForPatchGroupResponse_httpStatus,

    -- ** DeregisterManagedInstance
    deregisterManagedInstance_instanceId,
    deregisterManagedInstanceResponse_httpStatus,

    -- ** DescribeAssociation
    describeAssociation_associationId,
    describeAssociation_instanceId,
    describeAssociation_name,
    describeAssociation_associationVersion,
    describeAssociationResponse_associationDescription,
    describeAssociationResponse_httpStatus,

    -- ** DescribeAssociationExecutionTargets
    describeAssociationExecutionTargets_filters,
    describeAssociationExecutionTargets_nextToken,
    describeAssociationExecutionTargets_maxResults,
    describeAssociationExecutionTargets_associationId,
    describeAssociationExecutionTargets_executionId,
    describeAssociationExecutionTargetsResponse_nextToken,
    describeAssociationExecutionTargetsResponse_associationExecutionTargets,
    describeAssociationExecutionTargetsResponse_httpStatus,

    -- ** ModifyDocumentPermission
    modifyDocumentPermission_sharedDocumentVersion,
    modifyDocumentPermission_accountIdsToAdd,
    modifyDocumentPermission_accountIdsToRemove,
    modifyDocumentPermission_name,
    modifyDocumentPermission_permissionType,
    modifyDocumentPermissionResponse_httpStatus,

    -- ** UpdateResourceDataSync
    updateResourceDataSync_syncName,
    updateResourceDataSync_syncType,
    updateResourceDataSync_syncSource,
    updateResourceDataSyncResponse_httpStatus,

    -- ** DeleteResourceDataSync
    deleteResourceDataSync_syncType,
    deleteResourceDataSync_syncName,
    deleteResourceDataSyncResponse_httpStatus,

    -- ** UpdateAssociationStatus
    updateAssociationStatus_name,
    updateAssociationStatus_instanceId,
    updateAssociationStatus_associationStatus,
    updateAssociationStatusResponse_associationDescription,
    updateAssociationStatusResponse_httpStatus,

    -- ** DescribeAvailablePatches
    describeAvailablePatches_filters,
    describeAvailablePatches_nextToken,
    describeAvailablePatches_maxResults,
    describeAvailablePatchesResponse_patches,
    describeAvailablePatchesResponse_nextToken,
    describeAvailablePatchesResponse_httpStatus,

    -- ** ListDocumentVersions
    listDocumentVersions_nextToken,
    listDocumentVersions_maxResults,
    listDocumentVersions_name,
    listDocumentVersionsResponse_documentVersions,
    listDocumentVersionsResponse_nextToken,
    listDocumentVersionsResponse_httpStatus,

    -- ** DeregisterPatchBaselineForPatchGroup
    deregisterPatchBaselineForPatchGroup_baselineId,
    deregisterPatchBaselineForPatchGroup_patchGroup,
    deregisterPatchBaselineForPatchGroupResponse_baselineId,
    deregisterPatchBaselineForPatchGroupResponse_patchGroup,
    deregisterPatchBaselineForPatchGroupResponse_httpStatus,

    -- ** DescribePatchGroups
    describePatchGroups_filters,
    describePatchGroups_nextToken,
    describePatchGroups_maxResults,
    describePatchGroupsResponse_mappings,
    describePatchGroupsResponse_nextToken,
    describePatchGroupsResponse_httpStatus,

    -- ** GetMaintenanceWindow
    getMaintenanceWindow_windowId,
    getMaintenanceWindowResponse_enabled,
    getMaintenanceWindowResponse_schedule,
    getMaintenanceWindowResponse_nextExecutionTime,
    getMaintenanceWindowResponse_scheduleOffset,
    getMaintenanceWindowResponse_endDate,
    getMaintenanceWindowResponse_scheduleTimezone,
    getMaintenanceWindowResponse_startDate,
    getMaintenanceWindowResponse_createdDate,
    getMaintenanceWindowResponse_name,
    getMaintenanceWindowResponse_modifiedDate,
    getMaintenanceWindowResponse_cutoff,
    getMaintenanceWindowResponse_allowUnassociatedTargets,
    getMaintenanceWindowResponse_description,
    getMaintenanceWindowResponse_duration,
    getMaintenanceWindowResponse_windowId,
    getMaintenanceWindowResponse_httpStatus,

    -- ** DescribeMaintenanceWindows
    describeMaintenanceWindows_filters,
    describeMaintenanceWindows_nextToken,
    describeMaintenanceWindows_maxResults,
    describeMaintenanceWindowsResponse_windowIdentities,
    describeMaintenanceWindowsResponse_nextToken,
    describeMaintenanceWindowsResponse_httpStatus,

    -- ** RegisterTaskWithMaintenanceWindow
    registerTaskWithMaintenanceWindow_serviceRoleArn,
    registerTaskWithMaintenanceWindow_taskParameters,
    registerTaskWithMaintenanceWindow_priority,
    registerTaskWithMaintenanceWindow_clientToken,
    registerTaskWithMaintenanceWindow_cutoffBehavior,
    registerTaskWithMaintenanceWindow_maxErrors,
    registerTaskWithMaintenanceWindow_taskInvocationParameters,
    registerTaskWithMaintenanceWindow_name,
    registerTaskWithMaintenanceWindow_targets,
    registerTaskWithMaintenanceWindow_loggingInfo,
    registerTaskWithMaintenanceWindow_description,
    registerTaskWithMaintenanceWindow_maxConcurrency,
    registerTaskWithMaintenanceWindow_windowId,
    registerTaskWithMaintenanceWindow_taskArn,
    registerTaskWithMaintenanceWindow_taskType,
    registerTaskWithMaintenanceWindowResponse_windowTaskId,
    registerTaskWithMaintenanceWindowResponse_httpStatus,

    -- ** RegisterDefaultPatchBaseline
    registerDefaultPatchBaseline_baselineId,
    registerDefaultPatchBaselineResponse_baselineId,
    registerDefaultPatchBaselineResponse_httpStatus,

    -- ** ListResourceComplianceSummaries
    listResourceComplianceSummaries_filters,
    listResourceComplianceSummaries_nextToken,
    listResourceComplianceSummaries_maxResults,
    listResourceComplianceSummariesResponse_resourceComplianceSummaryItems,
    listResourceComplianceSummariesResponse_nextToken,
    listResourceComplianceSummariesResponse_httpStatus,

    -- ** AssociateOpsItemRelatedItem
    associateOpsItemRelatedItem_opsItemId,
    associateOpsItemRelatedItem_associationType,
    associateOpsItemRelatedItem_resourceType,
    associateOpsItemRelatedItem_resourceUri,
    associateOpsItemRelatedItemResponse_associationId,
    associateOpsItemRelatedItemResponse_httpStatus,

    -- ** ListAssociationVersions
    listAssociationVersions_nextToken,
    listAssociationVersions_maxResults,
    listAssociationVersions_associationId,
    listAssociationVersionsResponse_nextToken,
    listAssociationVersionsResponse_associationVersions,
    listAssociationVersionsResponse_httpStatus,

    -- ** UpdateServiceSetting
    updateServiceSetting_settingId,
    updateServiceSetting_settingValue,
    updateServiceSettingResponse_httpStatus,

    -- ** DescribeMaintenanceWindowTasks
    describeMaintenanceWindowTasks_filters,
    describeMaintenanceWindowTasks_nextToken,
    describeMaintenanceWindowTasks_maxResults,
    describeMaintenanceWindowTasks_windowId,
    describeMaintenanceWindowTasksResponse_tasks,
    describeMaintenanceWindowTasksResponse_nextToken,
    describeMaintenanceWindowTasksResponse_httpStatus,

    -- ** DescribeInstanceAssociationsStatus
    describeInstanceAssociationsStatus_nextToken,
    describeInstanceAssociationsStatus_maxResults,
    describeInstanceAssociationsStatus_instanceId,
    describeInstanceAssociationsStatusResponse_instanceAssociationStatusInfos,
    describeInstanceAssociationsStatusResponse_nextToken,
    describeInstanceAssociationsStatusResponse_httpStatus,

    -- ** ListOpsItemRelatedItems
    listOpsItemRelatedItems_opsItemId,
    listOpsItemRelatedItems_filters,
    listOpsItemRelatedItems_nextToken,
    listOpsItemRelatedItems_maxResults,
    listOpsItemRelatedItemsResponse_nextToken,
    listOpsItemRelatedItemsResponse_summaries,
    listOpsItemRelatedItemsResponse_httpStatus,

    -- ** DeregisterTaskFromMaintenanceWindow
    deregisterTaskFromMaintenanceWindow_windowId,
    deregisterTaskFromMaintenanceWindow_windowTaskId,
    deregisterTaskFromMaintenanceWindowResponse_windowTaskId,
    deregisterTaskFromMaintenanceWindowResponse_windowId,
    deregisterTaskFromMaintenanceWindowResponse_httpStatus,

    -- ** ListInventoryEntries
    listInventoryEntries_filters,
    listInventoryEntries_nextToken,
    listInventoryEntries_maxResults,
    listInventoryEntries_instanceId,
    listInventoryEntries_typeName,
    listInventoryEntriesResponse_instanceId,
    listInventoryEntriesResponse_typeName,
    listInventoryEntriesResponse_entries,
    listInventoryEntriesResponse_schemaVersion,
    listInventoryEntriesResponse_captureTime,
    listInventoryEntriesResponse_nextToken,
    listInventoryEntriesResponse_httpStatus,

    -- ** LabelParameterVersion
    labelParameterVersion_parameterVersion,
    labelParameterVersion_name,
    labelParameterVersion_labels,
    labelParameterVersionResponse_invalidLabels,
    labelParameterVersionResponse_parameterVersion,
    labelParameterVersionResponse_httpStatus,

    -- ** UpdateMaintenanceWindowTask
    updateMaintenanceWindowTask_serviceRoleArn,
    updateMaintenanceWindowTask_replace,
    updateMaintenanceWindowTask_taskParameters,
    updateMaintenanceWindowTask_priority,
    updateMaintenanceWindowTask_taskArn,
    updateMaintenanceWindowTask_cutoffBehavior,
    updateMaintenanceWindowTask_maxErrors,
    updateMaintenanceWindowTask_taskInvocationParameters,
    updateMaintenanceWindowTask_name,
    updateMaintenanceWindowTask_targets,
    updateMaintenanceWindowTask_loggingInfo,
    updateMaintenanceWindowTask_description,
    updateMaintenanceWindowTask_maxConcurrency,
    updateMaintenanceWindowTask_windowId,
    updateMaintenanceWindowTask_windowTaskId,
    updateMaintenanceWindowTaskResponse_serviceRoleArn,
    updateMaintenanceWindowTaskResponse_windowTaskId,
    updateMaintenanceWindowTaskResponse_taskParameters,
    updateMaintenanceWindowTaskResponse_priority,
    updateMaintenanceWindowTaskResponse_taskArn,
    updateMaintenanceWindowTaskResponse_cutoffBehavior,
    updateMaintenanceWindowTaskResponse_maxErrors,
    updateMaintenanceWindowTaskResponse_taskInvocationParameters,
    updateMaintenanceWindowTaskResponse_name,
    updateMaintenanceWindowTaskResponse_targets,
    updateMaintenanceWindowTaskResponse_loggingInfo,
    updateMaintenanceWindowTaskResponse_description,
    updateMaintenanceWindowTaskResponse_maxConcurrency,
    updateMaintenanceWindowTaskResponse_windowId,
    updateMaintenanceWindowTaskResponse_httpStatus,

    -- ** GetParameterHistory
    getParameterHistory_withDecryption,
    getParameterHistory_nextToken,
    getParameterHistory_maxResults,
    getParameterHistory_name,
    getParameterHistoryResponse_nextToken,
    getParameterHistoryResponse_parameters,
    getParameterHistoryResponse_httpStatus,

    -- ** DescribeAssociationExecutions
    describeAssociationExecutions_filters,
    describeAssociationExecutions_nextToken,
    describeAssociationExecutions_maxResults,
    describeAssociationExecutions_associationId,
    describeAssociationExecutionsResponse_nextToken,
    describeAssociationExecutionsResponse_associationExecutions,
    describeAssociationExecutionsResponse_httpStatus,

    -- ** GetServiceSetting
    getServiceSetting_settingId,
    getServiceSettingResponse_serviceSetting,
    getServiceSettingResponse_httpStatus,

    -- ** StartAssociationsOnce
    startAssociationsOnce_associationIds,
    startAssociationsOnceResponse_httpStatus,

    -- ** CreateMaintenanceWindow
    createMaintenanceWindow_clientToken,
    createMaintenanceWindow_scheduleOffset,
    createMaintenanceWindow_endDate,
    createMaintenanceWindow_scheduleTimezone,
    createMaintenanceWindow_startDate,
    createMaintenanceWindow_description,
    createMaintenanceWindow_tags,
    createMaintenanceWindow_name,
    createMaintenanceWindow_schedule,
    createMaintenanceWindow_duration,
    createMaintenanceWindow_cutoff,
    createMaintenanceWindow_allowUnassociatedTargets,
    createMaintenanceWindowResponse_windowId,
    createMaintenanceWindowResponse_httpStatus,

    -- ** StopAutomationExecution
    stopAutomationExecution_type,
    stopAutomationExecution_automationExecutionId,
    stopAutomationExecutionResponse_httpStatus,

    -- ** GetMaintenanceWindowExecution
    getMaintenanceWindowExecution_windowExecutionId,
    getMaintenanceWindowExecutionResponse_status,
    getMaintenanceWindowExecutionResponse_startTime,
    getMaintenanceWindowExecutionResponse_windowExecutionId,
    getMaintenanceWindowExecutionResponse_statusDetails,
    getMaintenanceWindowExecutionResponse_endTime,
    getMaintenanceWindowExecutionResponse_taskIds,
    getMaintenanceWindowExecutionResponse_httpStatus,

    -- ** SendAutomationSignal
    sendAutomationSignal_payload,
    sendAutomationSignal_automationExecutionId,
    sendAutomationSignal_signalType,
    sendAutomationSignalResponse_httpStatus,

    -- ** DeleteOpsMetadata
    deleteOpsMetadata_opsMetadataArn,
    deleteOpsMetadataResponse_httpStatus,

    -- ** UpdateOpsMetadata
    updateOpsMetadata_metadataToUpdate,
    updateOpsMetadata_keysToDelete,
    updateOpsMetadata_opsMetadataArn,
    updateOpsMetadataResponse_opsMetadataArn,
    updateOpsMetadataResponse_httpStatus,

    -- ** PutParameter
    putParameter_keyId,
    putParameter_tier,
    putParameter_allowedPattern,
    putParameter_type,
    putParameter_dataType,
    putParameter_overwrite,
    putParameter_description,
    putParameter_policies,
    putParameter_tags,
    putParameter_name,
    putParameter_value,
    putParameterResponse_tier,
    putParameterResponse_version,
    putParameterResponse_httpStatus,

    -- ** DescribeMaintenanceWindowExecutionTaskInvocations
    describeMaintenanceWindowExecutionTaskInvocations_filters,
    describeMaintenanceWindowExecutionTaskInvocations_nextToken,
    describeMaintenanceWindowExecutionTaskInvocations_maxResults,
    describeMaintenanceWindowExecutionTaskInvocations_windowExecutionId,
    describeMaintenanceWindowExecutionTaskInvocations_taskId,
    describeMaintenanceWindowExecutionTaskInvocationsResponse_windowExecutionTaskInvocationIdentities,
    describeMaintenanceWindowExecutionTaskInvocationsResponse_nextToken,
    describeMaintenanceWindowExecutionTaskInvocationsResponse_httpStatus,

    -- ** GetMaintenanceWindowExecutionTaskInvocation
    getMaintenanceWindowExecutionTaskInvocation_windowExecutionId,
    getMaintenanceWindowExecutionTaskInvocation_taskId,
    getMaintenanceWindowExecutionTaskInvocation_invocationId,
    getMaintenanceWindowExecutionTaskInvocationResponse_status,
    getMaintenanceWindowExecutionTaskInvocationResponse_executionId,
    getMaintenanceWindowExecutionTaskInvocationResponse_taskExecutionId,
    getMaintenanceWindowExecutionTaskInvocationResponse_startTime,
    getMaintenanceWindowExecutionTaskInvocationResponse_invocationId,
    getMaintenanceWindowExecutionTaskInvocationResponse_ownerInformation,
    getMaintenanceWindowExecutionTaskInvocationResponse_taskType,
    getMaintenanceWindowExecutionTaskInvocationResponse_windowTargetId,
    getMaintenanceWindowExecutionTaskInvocationResponse_windowExecutionId,
    getMaintenanceWindowExecutionTaskInvocationResponse_statusDetails,
    getMaintenanceWindowExecutionTaskInvocationResponse_endTime,
    getMaintenanceWindowExecutionTaskInvocationResponse_parameters,
    getMaintenanceWindowExecutionTaskInvocationResponse_httpStatus,

    -- ** DeleteParameter
    deleteParameter_name,
    deleteParameterResponse_httpStatus,

    -- ** DescribeInstanceInformation
    describeInstanceInformation_instanceInformationFilterList,
    describeInstanceInformation_filters,
    describeInstanceInformation_nextToken,
    describeInstanceInformation_maxResults,
    describeInstanceInformationResponse_nextToken,
    describeInstanceInformationResponse_instanceInformationList,
    describeInstanceInformationResponse_httpStatus,

    -- ** ListAssociations
    listAssociations_associationFilterList,
    listAssociations_nextToken,
    listAssociations_maxResults,
    listAssociationsResponse_nextToken,
    listAssociationsResponse_associations,
    listAssociationsResponse_httpStatus,

    -- ** UpdateOpsItem
    updateOpsItem_actualEndTime,
    updateOpsItem_status,
    updateOpsItem_operationalDataToDelete,
    updateOpsItem_priority,
    updateOpsItem_category,
    updateOpsItem_severity,
    updateOpsItem_relatedOpsItems,
    updateOpsItem_title,
    updateOpsItem_operationalData,
    updateOpsItem_actualStartTime,
    updateOpsItem_description,
    updateOpsItem_plannedEndTime,
    updateOpsItem_notifications,
    updateOpsItem_plannedStartTime,
    updateOpsItem_opsItemId,
    updateOpsItemResponse_httpStatus,

    -- ** DeleteAssociation
    deleteAssociation_associationId,
    deleteAssociation_instanceId,
    deleteAssociation_name,
    deleteAssociationResponse_httpStatus,

    -- ** UpdateAssociation
    updateAssociation_targetLocations,
    updateAssociation_applyOnlyAtCronInterval,
    updateAssociation_maxErrors,
    updateAssociation_scheduleExpression,
    updateAssociation_name,
    updateAssociation_outputLocation,
    updateAssociation_syncCompliance,
    updateAssociation_targets,
    updateAssociation_parameters,
    updateAssociation_documentVersion,
    updateAssociation_automationTargetParameterName,
    updateAssociation_associationVersion,
    updateAssociation_associationName,
    updateAssociation_calendarNames,
    updateAssociation_complianceSeverity,
    updateAssociation_maxConcurrency,
    updateAssociation_associationId,
    updateAssociationResponse_associationDescription,
    updateAssociationResponse_httpStatus,

    -- ** DescribeInventoryDeletions
    describeInventoryDeletions_nextToken,
    describeInventoryDeletions_maxResults,
    describeInventoryDeletions_deletionId,
    describeInventoryDeletionsResponse_inventoryDeletions,
    describeInventoryDeletionsResponse_nextToken,
    describeInventoryDeletionsResponse_httpStatus,

    -- ** DeleteInventory
    deleteInventory_clientToken,
    deleteInventory_schemaDeleteOption,
    deleteInventory_dryRun,
    deleteInventory_typeName,
    deleteInventoryResponse_typeName,
    deleteInventoryResponse_deletionSummary,
    deleteInventoryResponse_deletionId,
    deleteInventoryResponse_httpStatus,

    -- ** PutInventory
    putInventory_instanceId,
    putInventory_items,
    putInventoryResponse_message,
    putInventoryResponse_httpStatus,

    -- ** UpdateDocumentMetadata
    updateDocumentMetadata_documentVersion,
    updateDocumentMetadata_name,
    updateDocumentMetadata_documentReviews,
    updateDocumentMetadataResponse_httpStatus,

    -- ** ListOpsMetadata
    listOpsMetadata_filters,
    listOpsMetadata_nextToken,
    listOpsMetadata_maxResults,
    listOpsMetadataResponse_nextToken,
    listOpsMetadataResponse_opsMetadataList,
    listOpsMetadataResponse_httpStatus,

    -- ** DescribeEffectiveInstanceAssociations
    describeEffectiveInstanceAssociations_nextToken,
    describeEffectiveInstanceAssociations_maxResults,
    describeEffectiveInstanceAssociations_instanceId,
    describeEffectiveInstanceAssociationsResponse_nextToken,
    describeEffectiveInstanceAssociationsResponse_associations,
    describeEffectiveInstanceAssociationsResponse_httpStatus,

    -- ** DescribeAutomationExecutions
    describeAutomationExecutions_filters,
    describeAutomationExecutions_nextToken,
    describeAutomationExecutions_maxResults,
    describeAutomationExecutionsResponse_nextToken,
    describeAutomationExecutionsResponse_automationExecutionMetadataList,
    describeAutomationExecutionsResponse_httpStatus,

    -- ** GetAutomationExecution
    getAutomationExecution_automationExecutionId,
    getAutomationExecutionResponse_automationExecution,
    getAutomationExecutionResponse_httpStatus,

    -- ** SendCommand
    sendCommand_serviceRoleArn,
    sendCommand_notificationConfig,
    sendCommand_documentHashType,
    sendCommand_cloudWatchOutputConfig,
    sendCommand_outputS3KeyPrefix,
    sendCommand_maxErrors,
    sendCommand_instanceIds,
    sendCommand_outputS3Region,
    sendCommand_targets,
    sendCommand_parameters,
    sendCommand_documentHash,
    sendCommand_documentVersion,
    sendCommand_timeoutSeconds,
    sendCommand_comment,
    sendCommand_outputS3BucketName,
    sendCommand_maxConcurrency,
    sendCommand_documentName,
    sendCommandResponse_command,
    sendCommandResponse_httpStatus,

    -- ** DescribePatchBaselines
    describePatchBaselines_filters,
    describePatchBaselines_nextToken,
    describePatchBaselines_maxResults,
    describePatchBaselinesResponse_baselineIdentities,
    describePatchBaselinesResponse_nextToken,
    describePatchBaselinesResponse_httpStatus,

    -- ** GetPatchBaseline
    getPatchBaseline_baselineId,
    getPatchBaselineResponse_approvalRules,
    getPatchBaselineResponse_operatingSystem,
    getPatchBaselineResponse_globalFilters,
    getPatchBaselineResponse_approvedPatchesComplianceLevel,
    getPatchBaselineResponse_rejectedPatchesAction,
    getPatchBaselineResponse_approvedPatches,
    getPatchBaselineResponse_approvedPatchesEnableNonSecurity,
    getPatchBaselineResponse_rejectedPatches,
    getPatchBaselineResponse_sources,
    getPatchBaselineResponse_createdDate,
    getPatchBaselineResponse_name,
    getPatchBaselineResponse_patchGroups,
    getPatchBaselineResponse_modifiedDate,
    getPatchBaselineResponse_description,
    getPatchBaselineResponse_baselineId,
    getPatchBaselineResponse_httpStatus,

    -- ** RegisterTargetWithMaintenanceWindow
    registerTargetWithMaintenanceWindow_clientToken,
    registerTargetWithMaintenanceWindow_ownerInformation,
    registerTargetWithMaintenanceWindow_name,
    registerTargetWithMaintenanceWindow_description,
    registerTargetWithMaintenanceWindow_windowId,
    registerTargetWithMaintenanceWindow_resourceType,
    registerTargetWithMaintenanceWindow_targets,
    registerTargetWithMaintenanceWindowResponse_windowTargetId,
    registerTargetWithMaintenanceWindowResponse_httpStatus,

    -- ** StartSession
    startSession_documentName,
    startSession_parameters,
    startSession_target,
    startSessionResponse_streamUrl,
    startSessionResponse_tokenValue,
    startSessionResponse_sessionId,
    startSessionResponse_httpStatus,

    -- ** ListCommands
    listCommands_instanceId,
    listCommands_filters,
    listCommands_nextToken,
    listCommands_commandId,
    listCommands_maxResults,
    listCommandsResponse_commands,
    listCommandsResponse_nextToken,
    listCommandsResponse_httpStatus,

    -- ** UpdateDocument
    updateDocument_attachments,
    updateDocument_versionName,
    updateDocument_targetType,
    updateDocument_documentFormat,
    updateDocument_documentVersion,
    updateDocument_displayName,
    updateDocument_content,
    updateDocument_name,
    updateDocumentResponse_documentDescription,
    updateDocumentResponse_httpStatus,

    -- ** DeleteDocument
    deleteDocument_versionName,
    deleteDocument_force,
    deleteDocument_documentVersion,
    deleteDocument_name,
    deleteDocumentResponse_httpStatus,

    -- ** DescribeDocumentPermission
    describeDocumentPermission_nextToken,
    describeDocumentPermission_maxResults,
    describeDocumentPermission_name,
    describeDocumentPermission_permissionType,
    describeDocumentPermissionResponse_accountIds,
    describeDocumentPermissionResponse_accountSharingInfoList,
    describeDocumentPermissionResponse_nextToken,
    describeDocumentPermissionResponse_httpStatus,

    -- ** CreateAssociationBatch
    createAssociationBatch_entries,
    createAssociationBatchResponse_successful,
    createAssociationBatchResponse_failed,
    createAssociationBatchResponse_httpStatus,

    -- ** UpdateMaintenanceWindowTarget
    updateMaintenanceWindowTarget_replace,
    updateMaintenanceWindowTarget_ownerInformation,
    updateMaintenanceWindowTarget_name,
    updateMaintenanceWindowTarget_targets,
    updateMaintenanceWindowTarget_description,
    updateMaintenanceWindowTarget_windowId,
    updateMaintenanceWindowTarget_windowTargetId,
    updateMaintenanceWindowTargetResponse_ownerInformation,
    updateMaintenanceWindowTargetResponse_windowTargetId,
    updateMaintenanceWindowTargetResponse_name,
    updateMaintenanceWindowTargetResponse_targets,
    updateMaintenanceWindowTargetResponse_description,
    updateMaintenanceWindowTargetResponse_windowId,
    updateMaintenanceWindowTargetResponse_httpStatus,

    -- ** CreateResourceDataSync
    createResourceDataSync_syncType,
    createResourceDataSync_syncSource,
    createResourceDataSync_s3Destination,
    createResourceDataSync_syncName,
    createResourceDataSyncResponse_httpStatus,

    -- ** CreatePatchBaseline
    createPatchBaseline_approvalRules,
    createPatchBaseline_clientToken,
    createPatchBaseline_operatingSystem,
    createPatchBaseline_globalFilters,
    createPatchBaseline_approvedPatchesComplianceLevel,
    createPatchBaseline_rejectedPatchesAction,
    createPatchBaseline_approvedPatches,
    createPatchBaseline_approvedPatchesEnableNonSecurity,
    createPatchBaseline_rejectedPatches,
    createPatchBaseline_sources,
    createPatchBaseline_description,
    createPatchBaseline_tags,
    createPatchBaseline_name,
    createPatchBaselineResponse_baselineId,
    createPatchBaselineResponse_httpStatus,

    -- ** DisassociateOpsItemRelatedItem
    disassociateOpsItemRelatedItem_opsItemId,
    disassociateOpsItemRelatedItem_associationId,
    disassociateOpsItemRelatedItemResponse_httpStatus,

    -- * Types

    -- ** AccountSharingInfo
    accountSharingInfo_sharedDocumentVersion,
    accountSharingInfo_accountId,

    -- ** Activation
    activation_expired,
    activation_defaultInstanceName,
    activation_activationId,
    activation_createdDate,
    activation_registrationLimit,
    activation_expirationDate,
    activation_description,
    activation_tags,
    activation_registrationsCount,
    activation_iamRole,

    -- ** Association
    association_associationId,
    association_instanceId,
    association_overview,
    association_lastExecutionDate,
    association_scheduleExpression,
    association_name,
    association_targets,
    association_documentVersion,
    association_associationVersion,
    association_associationName,

    -- ** AssociationDescription
    associationDescription_associationId,
    associationDescription_instanceId,
    associationDescription_status,
    associationDescription_targetLocations,
    associationDescription_applyOnlyAtCronInterval,
    associationDescription_lastSuccessfulExecutionDate,
    associationDescription_overview,
    associationDescription_lastUpdateAssociationDate,
    associationDescription_date,
    associationDescription_lastExecutionDate,
    associationDescription_maxErrors,
    associationDescription_scheduleExpression,
    associationDescription_name,
    associationDescription_outputLocation,
    associationDescription_syncCompliance,
    associationDescription_targets,
    associationDescription_parameters,
    associationDescription_documentVersion,
    associationDescription_automationTargetParameterName,
    associationDescription_associationVersion,
    associationDescription_associationName,
    associationDescription_calendarNames,
    associationDescription_complianceSeverity,
    associationDescription_maxConcurrency,

    -- ** AssociationExecution
    associationExecution_associationId,
    associationExecution_detailedStatus,
    associationExecution_status,
    associationExecution_executionId,
    associationExecution_createdTime,
    associationExecution_resourceCountByStatus,
    associationExecution_lastExecutionDate,
    associationExecution_associationVersion,

    -- ** AssociationExecutionFilter
    associationExecutionFilter_key,
    associationExecutionFilter_value,
    associationExecutionFilter_type,

    -- ** AssociationExecutionTarget
    associationExecutionTarget_associationId,
    associationExecutionTarget_detailedStatus,
    associationExecutionTarget_status,
    associationExecutionTarget_executionId,
    associationExecutionTarget_resourceId,
    associationExecutionTarget_resourceType,
    associationExecutionTarget_outputSource,
    associationExecutionTarget_lastExecutionDate,
    associationExecutionTarget_associationVersion,

    -- ** AssociationExecutionTargetsFilter
    associationExecutionTargetsFilter_key,
    associationExecutionTargetsFilter_value,

    -- ** AssociationFilter
    associationFilter_key,
    associationFilter_value,

    -- ** AssociationOverview
    associationOverview_detailedStatus,
    associationOverview_status,
    associationOverview_associationStatusAggregatedCount,

    -- ** AssociationStatus
    associationStatus_additionalInfo,
    associationStatus_date,
    associationStatus_name,
    associationStatus_message,

    -- ** AssociationVersionInfo
    associationVersionInfo_associationId,
    associationVersionInfo_targetLocations,
    associationVersionInfo_applyOnlyAtCronInterval,
    associationVersionInfo_createdDate,
    associationVersionInfo_maxErrors,
    associationVersionInfo_scheduleExpression,
    associationVersionInfo_name,
    associationVersionInfo_outputLocation,
    associationVersionInfo_syncCompliance,
    associationVersionInfo_targets,
    associationVersionInfo_parameters,
    associationVersionInfo_documentVersion,
    associationVersionInfo_associationVersion,
    associationVersionInfo_associationName,
    associationVersionInfo_calendarNames,
    associationVersionInfo_complianceSeverity,
    associationVersionInfo_maxConcurrency,

    -- ** AttachmentContent
    attachmentContent_hash,
    attachmentContent_size,
    attachmentContent_url,
    attachmentContent_name,
    attachmentContent_hashType,

    -- ** AttachmentInformation
    attachmentInformation_name,

    -- ** AttachmentsSource
    attachmentsSource_values,
    attachmentsSource_key,
    attachmentsSource_name,

    -- ** AutomationExecution
    automationExecution_scheduledTime,
    automationExecution_associationId,
    automationExecution_opsItemId,
    automationExecution_currentStepName,
    automationExecution_targetParameterName,
    automationExecution_targetLocations,
    automationExecution_progressCounters,
    automationExecution_executedBy,
    automationExecution_documentName,
    automationExecution_executionEndTime,
    automationExecution_failureMessage,
    automationExecution_automationSubtype,
    automationExecution_mode,
    automationExecution_targetMaps,
    automationExecution_stepExecutionsTruncated,
    automationExecution_automationExecutionStatus,
    automationExecution_parentAutomationExecutionId,
    automationExecution_outputs,
    automationExecution_maxErrors,
    automationExecution_executionStartTime,
    automationExecution_currentAction,
    automationExecution_targets,
    automationExecution_resolvedTargets,
    automationExecution_parameters,
    automationExecution_documentVersion,
    automationExecution_automationExecutionId,
    automationExecution_changeRequestName,
    automationExecution_stepExecutions,
    automationExecution_runbooks,
    automationExecution_maxConcurrency,
    automationExecution_target,

    -- ** AutomationExecutionFilter
    automationExecutionFilter_key,
    automationExecutionFilter_values,

    -- ** AutomationExecutionMetadata
    automationExecutionMetadata_scheduledTime,
    automationExecutionMetadata_associationId,
    automationExecutionMetadata_opsItemId,
    automationExecutionMetadata_currentStepName,
    automationExecutionMetadata_targetParameterName,
    automationExecutionMetadata_logFile,
    automationExecutionMetadata_executedBy,
    automationExecutionMetadata_documentName,
    automationExecutionMetadata_executionEndTime,
    automationExecutionMetadata_failureMessage,
    automationExecutionMetadata_automationSubtype,
    automationExecutionMetadata_mode,
    automationExecutionMetadata_targetMaps,
    automationExecutionMetadata_automationExecutionStatus,
    automationExecutionMetadata_parentAutomationExecutionId,
    automationExecutionMetadata_outputs,
    automationExecutionMetadata_maxErrors,
    automationExecutionMetadata_executionStartTime,
    automationExecutionMetadata_automationType,
    automationExecutionMetadata_currentAction,
    automationExecutionMetadata_targets,
    automationExecutionMetadata_resolvedTargets,
    automationExecutionMetadata_documentVersion,
    automationExecutionMetadata_automationExecutionId,
    automationExecutionMetadata_changeRequestName,
    automationExecutionMetadata_runbooks,
    automationExecutionMetadata_maxConcurrency,
    automationExecutionMetadata_target,

    -- ** BaselineOverride
    baselineOverride_approvalRules,
    baselineOverride_operatingSystem,
    baselineOverride_globalFilters,
    baselineOverride_approvedPatchesComplianceLevel,
    baselineOverride_rejectedPatchesAction,
    baselineOverride_approvedPatches,
    baselineOverride_approvedPatchesEnableNonSecurity,
    baselineOverride_rejectedPatches,
    baselineOverride_sources,

    -- ** CloudWatchOutputConfig
    cloudWatchOutputConfig_cloudWatchLogGroupName,
    cloudWatchOutputConfig_cloudWatchOutputEnabled,

    -- ** Command
    command_status,
    command_expiresAfter,
    command_notificationConfig,
    command_targetCount,
    command_cloudWatchOutputConfig,
    command_deliveryTimedOutCount,
    command_outputS3KeyPrefix,
    command_documentName,
    command_errorCount,
    command_statusDetails,
    command_maxErrors,
    command_instanceIds,
    command_outputS3Region,
    command_targets,
    command_commandId,
    command_parameters,
    command_documentVersion,
    command_timeoutSeconds,
    command_comment,
    command_completedCount,
    command_outputS3BucketName,
    command_maxConcurrency,
    command_requestedDateTime,
    command_serviceRole,

    -- ** CommandFilter
    commandFilter_key,
    commandFilter_value,

    -- ** CommandInvocation
    commandInvocation_instanceId,
    commandInvocation_status,
    commandInvocation_notificationConfig,
    commandInvocation_commandPlugins,
    commandInvocation_cloudWatchOutputConfig,
    commandInvocation_documentName,
    commandInvocation_standardErrorUrl,
    commandInvocation_statusDetails,
    commandInvocation_standardOutputUrl,
    commandInvocation_commandId,
    commandInvocation_documentVersion,
    commandInvocation_comment,
    commandInvocation_traceOutput,
    commandInvocation_instanceName,
    commandInvocation_requestedDateTime,
    commandInvocation_serviceRole,

    -- ** CommandPlugin
    commandPlugin_status,
    commandPlugin_responseStartDateTime,
    commandPlugin_outputS3KeyPrefix,
    commandPlugin_standardErrorUrl,
    commandPlugin_responseCode,
    commandPlugin_statusDetails,
    commandPlugin_output,
    commandPlugin_standardOutputUrl,
    commandPlugin_name,
    commandPlugin_outputS3Region,
    commandPlugin_outputS3BucketName,
    commandPlugin_responseFinishDateTime,

    -- ** ComplianceExecutionSummary
    complianceExecutionSummary_executionId,
    complianceExecutionSummary_executionType,
    complianceExecutionSummary_executionTime,

    -- ** ComplianceItem
    complianceItem_status,
    complianceItem_resourceId,
    complianceItem_resourceType,
    complianceItem_severity,
    complianceItem_executionSummary,
    complianceItem_details,
    complianceItem_id,
    complianceItem_complianceType,
    complianceItem_title,

    -- ** ComplianceItemEntry
    complianceItemEntry_details,
    complianceItemEntry_id,
    complianceItemEntry_title,
    complianceItemEntry_severity,
    complianceItemEntry_status,

    -- ** ComplianceStringFilter
    complianceStringFilter_values,
    complianceStringFilter_key,
    complianceStringFilter_type,

    -- ** ComplianceSummaryItem
    complianceSummaryItem_nonCompliantSummary,
    complianceSummaryItem_compliantSummary,
    complianceSummaryItem_complianceType,

    -- ** CompliantSummary
    compliantSummary_compliantCount,
    compliantSummary_severitySummary,

    -- ** CreateAssociationBatchRequestEntry
    createAssociationBatchRequestEntry_instanceId,
    createAssociationBatchRequestEntry_targetLocations,
    createAssociationBatchRequestEntry_applyOnlyAtCronInterval,
    createAssociationBatchRequestEntry_maxErrors,
    createAssociationBatchRequestEntry_scheduleExpression,
    createAssociationBatchRequestEntry_outputLocation,
    createAssociationBatchRequestEntry_syncCompliance,
    createAssociationBatchRequestEntry_targets,
    createAssociationBatchRequestEntry_parameters,
    createAssociationBatchRequestEntry_documentVersion,
    createAssociationBatchRequestEntry_automationTargetParameterName,
    createAssociationBatchRequestEntry_associationName,
    createAssociationBatchRequestEntry_calendarNames,
    createAssociationBatchRequestEntry_complianceSeverity,
    createAssociationBatchRequestEntry_maxConcurrency,
    createAssociationBatchRequestEntry_name,

    -- ** DescribeActivationsFilter
    describeActivationsFilter_filterKey,
    describeActivationsFilter_filterValues,

    -- ** DocumentDefaultVersionDescription
    documentDefaultVersionDescription_defaultVersionName,
    documentDefaultVersionDescription_defaultVersion,
    documentDefaultVersionDescription_name,

    -- ** DocumentDescription
    documentDescription_status,
    documentDescription_documentType,
    documentDescription_hash,
    documentDescription_versionName,
    documentDescription_schemaVersion,
    documentDescription_sha1,
    documentDescription_reviewStatus,
    documentDescription_attachmentsInformation,
    documentDescription_defaultVersion,
    documentDescription_targetType,
    documentDescription_owner,
    documentDescription_platformTypes,
    documentDescription_createdDate,
    documentDescription_documentFormat,
    documentDescription_pendingReviewVersion,
    documentDescription_name,
    documentDescription_hashType,
    documentDescription_parameters,
    documentDescription_documentVersion,
    documentDescription_author,
    documentDescription_displayName,
    documentDescription_statusInformation,
    documentDescription_description,
    documentDescription_requires,
    documentDescription_reviewInformation,
    documentDescription_tags,
    documentDescription_latestVersion,
    documentDescription_approvedVersion,

    -- ** DocumentFilter
    documentFilter_key,
    documentFilter_value,

    -- ** DocumentIdentifier
    documentIdentifier_documentType,
    documentIdentifier_versionName,
    documentIdentifier_schemaVersion,
    documentIdentifier_reviewStatus,
    documentIdentifier_targetType,
    documentIdentifier_owner,
    documentIdentifier_platformTypes,
    documentIdentifier_createdDate,
    documentIdentifier_documentFormat,
    documentIdentifier_name,
    documentIdentifier_documentVersion,
    documentIdentifier_author,
    documentIdentifier_displayName,
    documentIdentifier_requires,
    documentIdentifier_tags,

    -- ** DocumentKeyValuesFilter
    documentKeyValuesFilter_values,
    documentKeyValuesFilter_key,

    -- ** DocumentMetadataResponseInfo
    documentMetadataResponseInfo_reviewerResponse,

    -- ** DocumentParameter
    documentParameter_name,
    documentParameter_defaultValue,
    documentParameter_type,
    documentParameter_description,

    -- ** DocumentRequires
    documentRequires_version,
    documentRequires_name,

    -- ** DocumentReviewCommentSource
    documentReviewCommentSource_content,
    documentReviewCommentSource_type,

    -- ** DocumentReviewerResponseSource
    documentReviewerResponseSource_reviewer,
    documentReviewerResponseSource_reviewStatus,
    documentReviewerResponseSource_updatedTime,
    documentReviewerResponseSource_comment,
    documentReviewerResponseSource_createTime,

    -- ** DocumentReviews
    documentReviews_comment,
    documentReviews_action,

    -- ** DocumentVersionInfo
    documentVersionInfo_status,
    documentVersionInfo_versionName,
    documentVersionInfo_reviewStatus,
    documentVersionInfo_createdDate,
    documentVersionInfo_documentFormat,
    documentVersionInfo_name,
    documentVersionInfo_documentVersion,
    documentVersionInfo_displayName,
    documentVersionInfo_statusInformation,
    documentVersionInfo_isDefaultVersion,

    -- ** EffectivePatch
    effectivePatch_patch,
    effectivePatch_patchStatus,

    -- ** FailedCreateAssociation
    failedCreateAssociation_entry,
    failedCreateAssociation_fault,
    failedCreateAssociation_message,

    -- ** FailureDetails
    failureDetails_failureType,
    failureDetails_failureStage,
    failureDetails_details,

    -- ** InstanceAggregatedAssociationOverview
    instanceAggregatedAssociationOverview_detailedStatus,
    instanceAggregatedAssociationOverview_instanceAssociationStatusAggregatedCount,

    -- ** InstanceAssociation
    instanceAssociation_associationId,
    instanceAssociation_instanceId,
    instanceAssociation_content,
    instanceAssociation_associationVersion,

    -- ** InstanceAssociationOutputLocation
    instanceAssociationOutputLocation_s3Location,

    -- ** InstanceAssociationOutputUrl
    instanceAssociationOutputUrl_s3OutputUrl,

    -- ** InstanceAssociationStatusInfo
    instanceAssociationStatusInfo_associationId,
    instanceAssociationStatusInfo_instanceId,
    instanceAssociationStatusInfo_detailedStatus,
    instanceAssociationStatusInfo_status,
    instanceAssociationStatusInfo_outputUrl,
    instanceAssociationStatusInfo_executionSummary,
    instanceAssociationStatusInfo_name,
    instanceAssociationStatusInfo_errorCode,
    instanceAssociationStatusInfo_documentVersion,
    instanceAssociationStatusInfo_associationVersion,
    instanceAssociationStatusInfo_executionDate,
    instanceAssociationStatusInfo_associationName,

    -- ** InstanceInformation
    instanceInformation_instanceId,
    instanceInformation_pingStatus,
    instanceInformation_iPAddress,
    instanceInformation_resourceType,
    instanceInformation_registrationDate,
    instanceInformation_platformVersion,
    instanceInformation_isLatestVersion,
    instanceInformation_agentVersion,
    instanceInformation_lastPingDateTime,
    instanceInformation_lastSuccessfulAssociationExecutionDate,
    instanceInformation_activationId,
    instanceInformation_name,
    instanceInformation_platformType,
    instanceInformation_associationOverview,
    instanceInformation_associationStatus,
    instanceInformation_lastAssociationExecutionDate,
    instanceInformation_platformName,
    instanceInformation_computerName,
    instanceInformation_iamRole,

    -- ** InstanceInformationFilter
    instanceInformationFilter_key,
    instanceInformationFilter_valueSet,

    -- ** InstanceInformationStringFilter
    instanceInformationStringFilter_key,
    instanceInformationStringFilter_values,

    -- ** InstancePatchState
    instancePatchState_unreportedNotApplicableCount,
    instancePatchState_otherNonCompliantCount,
    instancePatchState_rebootOption,
    instancePatchState_installedPendingRebootCount,
    instancePatchState_ownerInformation,
    instancePatchState_securityNonCompliantCount,
    instancePatchState_installedRejectedCount,
    instancePatchState_failedCount,
    instancePatchState_installedOtherCount,
    instancePatchState_missingCount,
    instancePatchState_installOverrideList,
    instancePatchState_criticalNonCompliantCount,
    instancePatchState_notApplicableCount,
    instancePatchState_installedCount,
    instancePatchState_lastNoRebootInstallOperationTime,
    instancePatchState_snapshotId,
    instancePatchState_instanceId,
    instancePatchState_patchGroup,
    instancePatchState_baselineId,
    instancePatchState_operationStartTime,
    instancePatchState_operationEndTime,
    instancePatchState_operation,

    -- ** InstancePatchStateFilter
    instancePatchStateFilter_key,
    instancePatchStateFilter_values,
    instancePatchStateFilter_type,

    -- ** InventoryAggregator
    inventoryAggregator_groups,
    inventoryAggregator_aggregators,
    inventoryAggregator_expression,

    -- ** InventoryDeletionStatusItem
    inventoryDeletionStatusItem_typeName,
    inventoryDeletionStatusItem_lastStatusUpdateTime,
    inventoryDeletionStatusItem_lastStatusMessage,
    inventoryDeletionStatusItem_deletionSummary,
    inventoryDeletionStatusItem_lastStatus,
    inventoryDeletionStatusItem_deletionStartTime,
    inventoryDeletionStatusItem_deletionId,

    -- ** InventoryDeletionSummary
    inventoryDeletionSummary_remainingCount,
    inventoryDeletionSummary_summaryItems,
    inventoryDeletionSummary_totalCount,

    -- ** InventoryDeletionSummaryItem
    inventoryDeletionSummaryItem_remainingCount,
    inventoryDeletionSummaryItem_count,
    inventoryDeletionSummaryItem_version,

    -- ** InventoryFilter
    inventoryFilter_type,
    inventoryFilter_key,
    inventoryFilter_values,

    -- ** InventoryGroup
    inventoryGroup_name,
    inventoryGroup_filters,

    -- ** InventoryItem
    inventoryItem_context,
    inventoryItem_contentHash,
    inventoryItem_content,
    inventoryItem_typeName,
    inventoryItem_schemaVersion,
    inventoryItem_captureTime,

    -- ** InventoryItemAttribute
    inventoryItemAttribute_name,
    inventoryItemAttribute_dataType,

    -- ** InventoryItemSchema
    inventoryItemSchema_version,
    inventoryItemSchema_displayName,
    inventoryItemSchema_typeName,
    inventoryItemSchema_attributes,

    -- ** InventoryResultEntity
    inventoryResultEntity_data,
    inventoryResultEntity_id,

    -- ** InventoryResultItem
    inventoryResultItem_contentHash,
    inventoryResultItem_captureTime,
    inventoryResultItem_typeName,
    inventoryResultItem_schemaVersion,
    inventoryResultItem_content,

    -- ** LoggingInfo
    loggingInfo_s3KeyPrefix,
    loggingInfo_s3BucketName,
    loggingInfo_s3Region,

    -- ** MaintenanceWindowAutomationParameters
    maintenanceWindowAutomationParameters_parameters,
    maintenanceWindowAutomationParameters_documentVersion,

    -- ** MaintenanceWindowExecution
    maintenanceWindowExecution_status,
    maintenanceWindowExecution_startTime,
    maintenanceWindowExecution_windowExecutionId,
    maintenanceWindowExecution_statusDetails,
    maintenanceWindowExecution_endTime,
    maintenanceWindowExecution_windowId,

    -- ** MaintenanceWindowExecutionTaskIdentity
    maintenanceWindowExecutionTaskIdentity_status,
    maintenanceWindowExecutionTaskIdentity_taskExecutionId,
    maintenanceWindowExecutionTaskIdentity_startTime,
    maintenanceWindowExecutionTaskIdentity_taskType,
    maintenanceWindowExecutionTaskIdentity_taskArn,
    maintenanceWindowExecutionTaskIdentity_windowExecutionId,
    maintenanceWindowExecutionTaskIdentity_statusDetails,
    maintenanceWindowExecutionTaskIdentity_endTime,

    -- ** MaintenanceWindowExecutionTaskInvocationIdentity
    maintenanceWindowExecutionTaskInvocationIdentity_status,
    maintenanceWindowExecutionTaskInvocationIdentity_executionId,
    maintenanceWindowExecutionTaskInvocationIdentity_taskExecutionId,
    maintenanceWindowExecutionTaskInvocationIdentity_startTime,
    maintenanceWindowExecutionTaskInvocationIdentity_invocationId,
    maintenanceWindowExecutionTaskInvocationIdentity_ownerInformation,
    maintenanceWindowExecutionTaskInvocationIdentity_taskType,
    maintenanceWindowExecutionTaskInvocationIdentity_windowTargetId,
    maintenanceWindowExecutionTaskInvocationIdentity_windowExecutionId,
    maintenanceWindowExecutionTaskInvocationIdentity_statusDetails,
    maintenanceWindowExecutionTaskInvocationIdentity_endTime,
    maintenanceWindowExecutionTaskInvocationIdentity_parameters,

    -- ** MaintenanceWindowFilter
    maintenanceWindowFilter_values,
    maintenanceWindowFilter_key,

    -- ** MaintenanceWindowIdentity
    maintenanceWindowIdentity_enabled,
    maintenanceWindowIdentity_schedule,
    maintenanceWindowIdentity_nextExecutionTime,
    maintenanceWindowIdentity_scheduleOffset,
    maintenanceWindowIdentity_endDate,
    maintenanceWindowIdentity_scheduleTimezone,
    maintenanceWindowIdentity_startDate,
    maintenanceWindowIdentity_name,
    maintenanceWindowIdentity_cutoff,
    maintenanceWindowIdentity_description,
    maintenanceWindowIdentity_duration,
    maintenanceWindowIdentity_windowId,

    -- ** MaintenanceWindowIdentityForTarget
    maintenanceWindowIdentityForTarget_name,
    maintenanceWindowIdentityForTarget_windowId,

    -- ** MaintenanceWindowLambdaParameters
    maintenanceWindowLambdaParameters_payload,
    maintenanceWindowLambdaParameters_qualifier,
    maintenanceWindowLambdaParameters_clientContext,

    -- ** MaintenanceWindowRunCommandParameters
    maintenanceWindowRunCommandParameters_serviceRoleArn,
    maintenanceWindowRunCommandParameters_notificationConfig,
    maintenanceWindowRunCommandParameters_documentHashType,
    maintenanceWindowRunCommandParameters_cloudWatchOutputConfig,
    maintenanceWindowRunCommandParameters_outputS3KeyPrefix,
    maintenanceWindowRunCommandParameters_parameters,
    maintenanceWindowRunCommandParameters_documentHash,
    maintenanceWindowRunCommandParameters_documentVersion,
    maintenanceWindowRunCommandParameters_timeoutSeconds,
    maintenanceWindowRunCommandParameters_comment,
    maintenanceWindowRunCommandParameters_outputS3BucketName,

    -- ** MaintenanceWindowStepFunctionsParameters
    maintenanceWindowStepFunctionsParameters_input,
    maintenanceWindowStepFunctionsParameters_name,

    -- ** MaintenanceWindowTarget
    maintenanceWindowTarget_resourceType,
    maintenanceWindowTarget_ownerInformation,
    maintenanceWindowTarget_windowTargetId,
    maintenanceWindowTarget_name,
    maintenanceWindowTarget_targets,
    maintenanceWindowTarget_description,
    maintenanceWindowTarget_windowId,

    -- ** MaintenanceWindowTask
    maintenanceWindowTask_serviceRoleArn,
    maintenanceWindowTask_windowTaskId,
    maintenanceWindowTask_taskParameters,
    maintenanceWindowTask_priority,
    maintenanceWindowTask_taskArn,
    maintenanceWindowTask_cutoffBehavior,
    maintenanceWindowTask_maxErrors,
    maintenanceWindowTask_name,
    maintenanceWindowTask_targets,
    maintenanceWindowTask_loggingInfo,
    maintenanceWindowTask_type,
    maintenanceWindowTask_description,
    maintenanceWindowTask_maxConcurrency,
    maintenanceWindowTask_windowId,

    -- ** MaintenanceWindowTaskInvocationParameters
    maintenanceWindowTaskInvocationParameters_automation,
    maintenanceWindowTaskInvocationParameters_stepFunctions,
    maintenanceWindowTaskInvocationParameters_runCommand,
    maintenanceWindowTaskInvocationParameters_lambda,

    -- ** MaintenanceWindowTaskParameterValueExpression
    maintenanceWindowTaskParameterValueExpression_values,

    -- ** MetadataValue
    metadataValue_value,

    -- ** NonCompliantSummary
    nonCompliantSummary_nonCompliantCount,
    nonCompliantSummary_severitySummary,

    -- ** NotificationConfig
    notificationConfig_notificationEvents,
    notificationConfig_notificationType,
    notificationConfig_notificationArn,

    -- ** OpsAggregator
    opsAggregator_typeName,
    opsAggregator_aggregators,
    opsAggregator_values,
    opsAggregator_filters,
    opsAggregator_attributeName,
    opsAggregator_aggregatorType,

    -- ** OpsEntity
    opsEntity_data,
    opsEntity_id,

    -- ** OpsEntityItem
    opsEntityItem_content,
    opsEntityItem_captureTime,

    -- ** OpsFilter
    opsFilter_type,
    opsFilter_key,
    opsFilter_values,

    -- ** OpsItem
    opsItem_actualEndTime,
    opsItem_opsItemId,
    opsItem_status,
    opsItem_priority,
    opsItem_createdTime,
    opsItem_category,
    opsItem_severity,
    opsItem_createdBy,
    opsItem_lastModifiedTime,
    opsItem_opsItemType,
    opsItem_version,
    opsItem_source,
    opsItem_relatedOpsItems,
    opsItem_title,
    opsItem_lastModifiedBy,
    opsItem_operationalData,
    opsItem_actualStartTime,
    opsItem_description,
    opsItem_plannedEndTime,
    opsItem_notifications,
    opsItem_plannedStartTime,

    -- ** OpsItemDataValue
    opsItemDataValue_value,
    opsItemDataValue_type,

    -- ** OpsItemEventFilter
    opsItemEventFilter_key,
    opsItemEventFilter_values,
    opsItemEventFilter_operator,

    -- ** OpsItemEventSummary
    opsItemEventSummary_opsItemId,
    opsItemEventSummary_createdTime,
    opsItemEventSummary_createdBy,
    opsItemEventSummary_detailType,
    opsItemEventSummary_source,
    opsItemEventSummary_detail,
    opsItemEventSummary_eventId,

    -- ** OpsItemFilter
    opsItemFilter_key,
    opsItemFilter_values,
    opsItemFilter_operator,

    -- ** OpsItemIdentity
    opsItemIdentity_arn,

    -- ** OpsItemNotification
    opsItemNotification_arn,

    -- ** OpsItemRelatedItemSummary
    opsItemRelatedItemSummary_associationId,
    opsItemRelatedItemSummary_opsItemId,
    opsItemRelatedItemSummary_resourceUri,
    opsItemRelatedItemSummary_resourceType,
    opsItemRelatedItemSummary_createdTime,
    opsItemRelatedItemSummary_createdBy,
    opsItemRelatedItemSummary_lastModifiedTime,
    opsItemRelatedItemSummary_associationType,
    opsItemRelatedItemSummary_lastModifiedBy,

    -- ** OpsItemRelatedItemsFilter
    opsItemRelatedItemsFilter_key,
    opsItemRelatedItemsFilter_values,
    opsItemRelatedItemsFilter_operator,

    -- ** OpsItemSummary
    opsItemSummary_actualEndTime,
    opsItemSummary_opsItemId,
    opsItemSummary_status,
    opsItemSummary_priority,
    opsItemSummary_createdTime,
    opsItemSummary_category,
    opsItemSummary_severity,
    opsItemSummary_createdBy,
    opsItemSummary_lastModifiedTime,
    opsItemSummary_opsItemType,
    opsItemSummary_source,
    opsItemSummary_title,
    opsItemSummary_lastModifiedBy,
    opsItemSummary_operationalData,
    opsItemSummary_actualStartTime,
    opsItemSummary_plannedEndTime,
    opsItemSummary_plannedStartTime,

    -- ** OpsMetadata
    opsMetadata_opsMetadataArn,
    opsMetadata_resourceId,
    opsMetadata_lastModifiedDate,
    opsMetadata_lastModifiedUser,
    opsMetadata_creationDate,

    -- ** OpsMetadataFilter
    opsMetadataFilter_key,
    opsMetadataFilter_values,

    -- ** OpsResultAttribute
    opsResultAttribute_typeName,

    -- ** OutputSource
    outputSource_outputSourceId,
    outputSource_outputSourceType,

    -- ** Parameter
    parameter_lastModifiedDate,
    parameter_selector,
    parameter_arn,
    parameter_value,
    parameter_sourceResult,
    parameter_name,
    parameter_version,
    parameter_type,
    parameter_dataType,

    -- ** ParameterHistory
    parameterHistory_lastModifiedDate,
    parameterHistory_keyId,
    parameterHistory_value,
    parameterHistory_name,
    parameterHistory_tier,
    parameterHistory_version,
    parameterHistory_lastModifiedUser,
    parameterHistory_labels,
    parameterHistory_allowedPattern,
    parameterHistory_type,
    parameterHistory_dataType,
    parameterHistory_description,
    parameterHistory_policies,

    -- ** ParameterInlinePolicy
    parameterInlinePolicy_policyType,
    parameterInlinePolicy_policyStatus,
    parameterInlinePolicy_policyText,

    -- ** ParameterMetadata
    parameterMetadata_lastModifiedDate,
    parameterMetadata_keyId,
    parameterMetadata_name,
    parameterMetadata_tier,
    parameterMetadata_version,
    parameterMetadata_lastModifiedUser,
    parameterMetadata_allowedPattern,
    parameterMetadata_type,
    parameterMetadata_dataType,
    parameterMetadata_description,
    parameterMetadata_policies,

    -- ** ParameterStringFilter
    parameterStringFilter_values,
    parameterStringFilter_option,
    parameterStringFilter_key,

    -- ** ParametersFilter
    parametersFilter_key,
    parametersFilter_values,

    -- ** Patch
    patch_bugzillaIds,
    patch_vendor,
    patch_msrcSeverity,
    patch_repository,
    patch_productFamily,
    patch_severity,
    patch_advisoryIds,
    patch_cVEIds,
    patch_classification,
    patch_release,
    patch_msrcNumber,
    patch_name,
    patch_version,
    patch_language,
    patch_kbNumber,
    patch_contentUrl,
    patch_id,
    patch_releaseDate,
    patch_title,
    patch_arch,
    patch_product,
    patch_description,
    patch_epoch,

    -- ** PatchBaselineIdentity
    patchBaselineIdentity_baselineName,
    patchBaselineIdentity_baselineDescription,
    patchBaselineIdentity_operatingSystem,
    patchBaselineIdentity_defaultBaseline,
    patchBaselineIdentity_baselineId,

    -- ** PatchComplianceData
    patchComplianceData_cVEIds,
    patchComplianceData_title,
    patchComplianceData_kBId,
    patchComplianceData_classification,
    patchComplianceData_severity,
    patchComplianceData_state,
    patchComplianceData_installedTime,

    -- ** PatchFilter
    patchFilter_key,
    patchFilter_values,

    -- ** PatchFilterGroup
    patchFilterGroup_patchFilters,

    -- ** PatchGroupPatchBaselineMapping
    patchGroupPatchBaselineMapping_baselineIdentity,
    patchGroupPatchBaselineMapping_patchGroup,

    -- ** PatchOrchestratorFilter
    patchOrchestratorFilter_values,
    patchOrchestratorFilter_key,

    -- ** PatchRule
    patchRule_approveAfterDays,
    patchRule_approveUntilDate,
    patchRule_enableNonSecurity,
    patchRule_complianceLevel,
    patchRule_patchFilterGroup,

    -- ** PatchRuleGroup
    patchRuleGroup_patchRules,

    -- ** PatchSource
    patchSource_name,
    patchSource_products,
    patchSource_configuration,

    -- ** PatchStatus
    patchStatus_approvalDate,
    patchStatus_deploymentStatus,
    patchStatus_complianceLevel,

    -- ** ProgressCounters
    progressCounters_failedSteps,
    progressCounters_cancelledSteps,
    progressCounters_successSteps,
    progressCounters_totalSteps,
    progressCounters_timedOutSteps,

    -- ** RelatedOpsItem
    relatedOpsItem_opsItemId,

    -- ** ResolvedTargets
    resolvedTargets_truncated,
    resolvedTargets_parameterValues,

    -- ** ResourceComplianceSummaryItem
    resourceComplianceSummaryItem_nonCompliantSummary,
    resourceComplianceSummaryItem_status,
    resourceComplianceSummaryItem_resourceId,
    resourceComplianceSummaryItem_resourceType,
    resourceComplianceSummaryItem_compliantSummary,
    resourceComplianceSummaryItem_executionSummary,
    resourceComplianceSummaryItem_overallSeverity,
    resourceComplianceSummaryItem_complianceType,

    -- ** ResourceDataSyncAwsOrganizationsSource
    resourceDataSyncAwsOrganizationsSource_organizationalUnits,
    resourceDataSyncAwsOrganizationsSource_organizationSourceType,

    -- ** ResourceDataSyncDestinationDataSharing
    resourceDataSyncDestinationDataSharing_destinationDataSharingType,

    -- ** ResourceDataSyncItem
    resourceDataSyncItem_syncType,
    resourceDataSyncItem_syncSource,
    resourceDataSyncItem_lastSyncStatusMessage,
    resourceDataSyncItem_syncCreatedTime,
    resourceDataSyncItem_lastSyncTime,
    resourceDataSyncItem_syncName,
    resourceDataSyncItem_lastStatus,
    resourceDataSyncItem_syncLastModifiedTime,
    resourceDataSyncItem_s3Destination,
    resourceDataSyncItem_lastSuccessfulSyncTime,

    -- ** ResourceDataSyncOrganizationalUnit
    resourceDataSyncOrganizationalUnit_organizationalUnitId,

    -- ** ResourceDataSyncS3Destination
    resourceDataSyncS3Destination_prefix,
    resourceDataSyncS3Destination_destinationDataSharing,
    resourceDataSyncS3Destination_aWSKMSKeyARN,
    resourceDataSyncS3Destination_bucketName,
    resourceDataSyncS3Destination_syncFormat,
    resourceDataSyncS3Destination_region,

    -- ** ResourceDataSyncSource
    resourceDataSyncSource_enableAllOpsDataSources,
    resourceDataSyncSource_includeFutureRegions,
    resourceDataSyncSource_awsOrganizationsSource,
    resourceDataSyncSource_sourceType,
    resourceDataSyncSource_sourceRegions,

    -- ** ResourceDataSyncSourceWithState
    resourceDataSyncSourceWithState_state,
    resourceDataSyncSourceWithState_enableAllOpsDataSources,
    resourceDataSyncSourceWithState_includeFutureRegions,
    resourceDataSyncSourceWithState_sourceType,
    resourceDataSyncSourceWithState_awsOrganizationsSource,
    resourceDataSyncSourceWithState_sourceRegions,

    -- ** ResultAttribute
    resultAttribute_typeName,

    -- ** ReviewInformation
    reviewInformation_status,
    reviewInformation_reviewer,
    reviewInformation_reviewedTime,

    -- ** Runbook
    runbook_targetParameterName,
    runbook_targetLocations,
    runbook_maxErrors,
    runbook_targets,
    runbook_parameters,
    runbook_documentVersion,
    runbook_maxConcurrency,
    runbook_documentName,

    -- ** S3OutputLocation
    s3OutputLocation_outputS3KeyPrefix,
    s3OutputLocation_outputS3Region,
    s3OutputLocation_outputS3BucketName,

    -- ** S3OutputUrl
    s3OutputUrl_outputUrl,

    -- ** ScheduledWindowExecution
    scheduledWindowExecution_executionTime,
    scheduledWindowExecution_name,
    scheduledWindowExecution_windowId,

    -- ** ServiceSetting
    serviceSetting_status,
    serviceSetting_lastModifiedDate,
    serviceSetting_arn,
    serviceSetting_settingId,
    serviceSetting_lastModifiedUser,
    serviceSetting_settingValue,

    -- ** Session
    session_status,
    session_outputUrl,
    session_documentName,
    session_endDate,
    session_owner,
    session_startDate,
    session_details,
    session_sessionId,
    session_target,

    -- ** SessionFilter
    sessionFilter_key,
    sessionFilter_value,

    -- ** SessionManagerOutputUrl
    sessionManagerOutputUrl_s3OutputUrl,
    sessionManagerOutputUrl_cloudWatchOutputUrl,

    -- ** SeveritySummary
    severitySummary_lowCount,
    severitySummary_unspecifiedCount,
    severitySummary_highCount,
    severitySummary_mediumCount,
    severitySummary_informationalCount,
    severitySummary_criticalCount,

    -- ** StepExecution
    stepExecution_failureDetails,
    stepExecution_isEnd,
    stepExecution_inputs,
    stepExecution_stepName,
    stepExecution_executionEndTime,
    stepExecution_failureMessage,
    stepExecution_response,
    stepExecution_action,
    stepExecution_responseCode,
    stepExecution_stepStatus,
    stepExecution_targetLocation,
    stepExecution_overriddenParameters,
    stepExecution_outputs,
    stepExecution_executionStartTime,
    stepExecution_maxAttempts,
    stepExecution_targets,
    stepExecution_nextStep,
    stepExecution_stepExecutionId,
    stepExecution_validNextSteps,
    stepExecution_timeoutSeconds,
    stepExecution_onFailure,
    stepExecution_isCritical,

    -- ** StepExecutionFilter
    stepExecutionFilter_key,
    stepExecutionFilter_values,

    -- ** Tag
    tag_key,
    tag_value,

    -- ** Target
    target_values,
    target_key,

    -- ** TargetLocation
    targetLocation_accounts,
    targetLocation_targetLocationMaxConcurrency,
    targetLocation_targetLocationMaxErrors,
    targetLocation_regions,
    targetLocation_executionRoleName,
  )
where

import Network.AWS.SSM.AddTagsToResource
import Network.AWS.SSM.AssociateOpsItemRelatedItem
import Network.AWS.SSM.CancelCommand
import Network.AWS.SSM.CancelMaintenanceWindowExecution
import Network.AWS.SSM.CreateActivation
import Network.AWS.SSM.CreateAssociation
import Network.AWS.SSM.CreateAssociationBatch
import Network.AWS.SSM.CreateDocument
import Network.AWS.SSM.CreateMaintenanceWindow
import Network.AWS.SSM.CreateOpsItem
import Network.AWS.SSM.CreateOpsMetadata
import Network.AWS.SSM.CreatePatchBaseline
import Network.AWS.SSM.CreateResourceDataSync
import Network.AWS.SSM.DeleteActivation
import Network.AWS.SSM.DeleteAssociation
import Network.AWS.SSM.DeleteDocument
import Network.AWS.SSM.DeleteInventory
import Network.AWS.SSM.DeleteMaintenanceWindow
import Network.AWS.SSM.DeleteOpsMetadata
import Network.AWS.SSM.DeleteParameter
import Network.AWS.SSM.DeleteParameters
import Network.AWS.SSM.DeletePatchBaseline
import Network.AWS.SSM.DeleteResourceDataSync
import Network.AWS.SSM.DeregisterManagedInstance
import Network.AWS.SSM.DeregisterPatchBaselineForPatchGroup
import Network.AWS.SSM.DeregisterTargetFromMaintenanceWindow
import Network.AWS.SSM.DeregisterTaskFromMaintenanceWindow
import Network.AWS.SSM.DescribeActivations
import Network.AWS.SSM.DescribeAssociation
import Network.AWS.SSM.DescribeAssociationExecutionTargets
import Network.AWS.SSM.DescribeAssociationExecutions
import Network.AWS.SSM.DescribeAutomationExecutions
import Network.AWS.SSM.DescribeAutomationStepExecutions
import Network.AWS.SSM.DescribeAvailablePatches
import Network.AWS.SSM.DescribeDocument
import Network.AWS.SSM.DescribeDocumentPermission
import Network.AWS.SSM.DescribeEffectiveInstanceAssociations
import Network.AWS.SSM.DescribeEffectivePatchesForPatchBaseline
import Network.AWS.SSM.DescribeInstanceAssociationsStatus
import Network.AWS.SSM.DescribeInstanceInformation
import Network.AWS.SSM.DescribeInstancePatchStates
import Network.AWS.SSM.DescribeInstancePatchStatesForPatchGroup
import Network.AWS.SSM.DescribeInstancePatches
import Network.AWS.SSM.DescribeInventoryDeletions
import Network.AWS.SSM.DescribeMaintenanceWindowExecutionTaskInvocations
import Network.AWS.SSM.DescribeMaintenanceWindowExecutionTasks
import Network.AWS.SSM.DescribeMaintenanceWindowExecutions
import Network.AWS.SSM.DescribeMaintenanceWindowSchedule
import Network.AWS.SSM.DescribeMaintenanceWindowTargets
import Network.AWS.SSM.DescribeMaintenanceWindowTasks
import Network.AWS.SSM.DescribeMaintenanceWindows
import Network.AWS.SSM.DescribeMaintenanceWindowsForTarget
import Network.AWS.SSM.DescribeOpsItems
import Network.AWS.SSM.DescribeParameters
import Network.AWS.SSM.DescribePatchBaselines
import Network.AWS.SSM.DescribePatchGroupState
import Network.AWS.SSM.DescribePatchGroups
import Network.AWS.SSM.DescribePatchProperties
import Network.AWS.SSM.DescribeSessions
import Network.AWS.SSM.DisassociateOpsItemRelatedItem
import Network.AWS.SSM.GetAutomationExecution
import Network.AWS.SSM.GetCalendarState
import Network.AWS.SSM.GetCommandInvocation
import Network.AWS.SSM.GetConnectionStatus
import Network.AWS.SSM.GetDefaultPatchBaseline
import Network.AWS.SSM.GetDeployablePatchSnapshotForInstance
import Network.AWS.SSM.GetDocument
import Network.AWS.SSM.GetInventory
import Network.AWS.SSM.GetInventorySchema
import Network.AWS.SSM.GetMaintenanceWindow
import Network.AWS.SSM.GetMaintenanceWindowExecution
import Network.AWS.SSM.GetMaintenanceWindowExecutionTask
import Network.AWS.SSM.GetMaintenanceWindowExecutionTaskInvocation
import Network.AWS.SSM.GetMaintenanceWindowTask
import Network.AWS.SSM.GetOpsItem
import Network.AWS.SSM.GetOpsMetadata
import Network.AWS.SSM.GetOpsSummary
import Network.AWS.SSM.GetParameter
import Network.AWS.SSM.GetParameterHistory
import Network.AWS.SSM.GetParameters
import Network.AWS.SSM.GetParametersByPath
import Network.AWS.SSM.GetPatchBaseline
import Network.AWS.SSM.GetPatchBaselineForPatchGroup
import Network.AWS.SSM.GetServiceSetting
import Network.AWS.SSM.LabelParameterVersion
import Network.AWS.SSM.ListAssociationVersions
import Network.AWS.SSM.ListAssociations
import Network.AWS.SSM.ListCommandInvocations
import Network.AWS.SSM.ListCommands
import Network.AWS.SSM.ListComplianceItems
import Network.AWS.SSM.ListComplianceSummaries
import Network.AWS.SSM.ListDocumentMetadataHistory
import Network.AWS.SSM.ListDocumentVersions
import Network.AWS.SSM.ListDocuments
import Network.AWS.SSM.ListInventoryEntries
import Network.AWS.SSM.ListOpsItemEvents
import Network.AWS.SSM.ListOpsItemRelatedItems
import Network.AWS.SSM.ListOpsMetadata
import Network.AWS.SSM.ListResourceComplianceSummaries
import Network.AWS.SSM.ListResourceDataSync
import Network.AWS.SSM.ListTagsForResource
import Network.AWS.SSM.ModifyDocumentPermission
import Network.AWS.SSM.PutComplianceItems
import Network.AWS.SSM.PutInventory
import Network.AWS.SSM.PutParameter
import Network.AWS.SSM.RegisterDefaultPatchBaseline
import Network.AWS.SSM.RegisterPatchBaselineForPatchGroup
import Network.AWS.SSM.RegisterTargetWithMaintenanceWindow
import Network.AWS.SSM.RegisterTaskWithMaintenanceWindow
import Network.AWS.SSM.RemoveTagsFromResource
import Network.AWS.SSM.ResetServiceSetting
import Network.AWS.SSM.ResumeSession
import Network.AWS.SSM.SendAutomationSignal
import Network.AWS.SSM.SendCommand
import Network.AWS.SSM.StartAssociationsOnce
import Network.AWS.SSM.StartAutomationExecution
import Network.AWS.SSM.StartChangeRequestExecution
import Network.AWS.SSM.StartSession
import Network.AWS.SSM.StopAutomationExecution
import Network.AWS.SSM.TerminateSession
import Network.AWS.SSM.Types.AccountSharingInfo
import Network.AWS.SSM.Types.Activation
import Network.AWS.SSM.Types.Association
import Network.AWS.SSM.Types.AssociationDescription
import Network.AWS.SSM.Types.AssociationExecution
import Network.AWS.SSM.Types.AssociationExecutionFilter
import Network.AWS.SSM.Types.AssociationExecutionTarget
import Network.AWS.SSM.Types.AssociationExecutionTargetsFilter
import Network.AWS.SSM.Types.AssociationFilter
import Network.AWS.SSM.Types.AssociationOverview
import Network.AWS.SSM.Types.AssociationStatus
import Network.AWS.SSM.Types.AssociationVersionInfo
import Network.AWS.SSM.Types.AttachmentContent
import Network.AWS.SSM.Types.AttachmentInformation
import Network.AWS.SSM.Types.AttachmentsSource
import Network.AWS.SSM.Types.AutomationExecution
import Network.AWS.SSM.Types.AutomationExecutionFilter
import Network.AWS.SSM.Types.AutomationExecutionMetadata
import Network.AWS.SSM.Types.BaselineOverride
import Network.AWS.SSM.Types.CloudWatchOutputConfig
import Network.AWS.SSM.Types.Command
import Network.AWS.SSM.Types.CommandFilter
import Network.AWS.SSM.Types.CommandInvocation
import Network.AWS.SSM.Types.CommandPlugin
import Network.AWS.SSM.Types.ComplianceExecutionSummary
import Network.AWS.SSM.Types.ComplianceItem
import Network.AWS.SSM.Types.ComplianceItemEntry
import Network.AWS.SSM.Types.ComplianceStringFilter
import Network.AWS.SSM.Types.ComplianceSummaryItem
import Network.AWS.SSM.Types.CompliantSummary
import Network.AWS.SSM.Types.CreateAssociationBatchRequestEntry
import Network.AWS.SSM.Types.DescribeActivationsFilter
import Network.AWS.SSM.Types.DocumentDefaultVersionDescription
import Network.AWS.SSM.Types.DocumentDescription
import Network.AWS.SSM.Types.DocumentFilter
import Network.AWS.SSM.Types.DocumentIdentifier
import Network.AWS.SSM.Types.DocumentKeyValuesFilter
import Network.AWS.SSM.Types.DocumentMetadataResponseInfo
import Network.AWS.SSM.Types.DocumentParameter
import Network.AWS.SSM.Types.DocumentRequires
import Network.AWS.SSM.Types.DocumentReviewCommentSource
import Network.AWS.SSM.Types.DocumentReviewerResponseSource
import Network.AWS.SSM.Types.DocumentReviews
import Network.AWS.SSM.Types.DocumentVersionInfo
import Network.AWS.SSM.Types.EffectivePatch
import Network.AWS.SSM.Types.FailedCreateAssociation
import Network.AWS.SSM.Types.FailureDetails
import Network.AWS.SSM.Types.InstanceAggregatedAssociationOverview
import Network.AWS.SSM.Types.InstanceAssociation
import Network.AWS.SSM.Types.InstanceAssociationOutputLocation
import Network.AWS.SSM.Types.InstanceAssociationOutputUrl
import Network.AWS.SSM.Types.InstanceAssociationStatusInfo
import Network.AWS.SSM.Types.InstanceInformation
import Network.AWS.SSM.Types.InstanceInformationFilter
import Network.AWS.SSM.Types.InstanceInformationStringFilter
import Network.AWS.SSM.Types.InstancePatchState
import Network.AWS.SSM.Types.InstancePatchStateFilter
import Network.AWS.SSM.Types.InventoryAggregator
import Network.AWS.SSM.Types.InventoryDeletionStatusItem
import Network.AWS.SSM.Types.InventoryDeletionSummary
import Network.AWS.SSM.Types.InventoryDeletionSummaryItem
import Network.AWS.SSM.Types.InventoryFilter
import Network.AWS.SSM.Types.InventoryGroup
import Network.AWS.SSM.Types.InventoryItem
import Network.AWS.SSM.Types.InventoryItemAttribute
import Network.AWS.SSM.Types.InventoryItemSchema
import Network.AWS.SSM.Types.InventoryResultEntity
import Network.AWS.SSM.Types.InventoryResultItem
import Network.AWS.SSM.Types.LoggingInfo
import Network.AWS.SSM.Types.MaintenanceWindowAutomationParameters
import Network.AWS.SSM.Types.MaintenanceWindowExecution
import Network.AWS.SSM.Types.MaintenanceWindowExecutionTaskIdentity
import Network.AWS.SSM.Types.MaintenanceWindowExecutionTaskInvocationIdentity
import Network.AWS.SSM.Types.MaintenanceWindowFilter
import Network.AWS.SSM.Types.MaintenanceWindowIdentity
import Network.AWS.SSM.Types.MaintenanceWindowIdentityForTarget
import Network.AWS.SSM.Types.MaintenanceWindowLambdaParameters
import Network.AWS.SSM.Types.MaintenanceWindowRunCommandParameters
import Network.AWS.SSM.Types.MaintenanceWindowStepFunctionsParameters
import Network.AWS.SSM.Types.MaintenanceWindowTarget
import Network.AWS.SSM.Types.MaintenanceWindowTask
import Network.AWS.SSM.Types.MaintenanceWindowTaskInvocationParameters
import Network.AWS.SSM.Types.MaintenanceWindowTaskParameterValueExpression
import Network.AWS.SSM.Types.MetadataValue
import Network.AWS.SSM.Types.NonCompliantSummary
import Network.AWS.SSM.Types.NotificationConfig
import Network.AWS.SSM.Types.OpsAggregator
import Network.AWS.SSM.Types.OpsEntity
import Network.AWS.SSM.Types.OpsEntityItem
import Network.AWS.SSM.Types.OpsFilter
import Network.AWS.SSM.Types.OpsItem
import Network.AWS.SSM.Types.OpsItemDataValue
import Network.AWS.SSM.Types.OpsItemEventFilter
import Network.AWS.SSM.Types.OpsItemEventSummary
import Network.AWS.SSM.Types.OpsItemFilter
import Network.AWS.SSM.Types.OpsItemIdentity
import Network.AWS.SSM.Types.OpsItemNotification
import Network.AWS.SSM.Types.OpsItemRelatedItemSummary
import Network.AWS.SSM.Types.OpsItemRelatedItemsFilter
import Network.AWS.SSM.Types.OpsItemSummary
import Network.AWS.SSM.Types.OpsMetadata
import Network.AWS.SSM.Types.OpsMetadataFilter
import Network.AWS.SSM.Types.OpsResultAttribute
import Network.AWS.SSM.Types.OutputSource
import Network.AWS.SSM.Types.Parameter
import Network.AWS.SSM.Types.ParameterHistory
import Network.AWS.SSM.Types.ParameterInlinePolicy
import Network.AWS.SSM.Types.ParameterMetadata
import Network.AWS.SSM.Types.ParameterStringFilter
import Network.AWS.SSM.Types.ParametersFilter
import Network.AWS.SSM.Types.Patch
import Network.AWS.SSM.Types.PatchBaselineIdentity
import Network.AWS.SSM.Types.PatchComplianceData
import Network.AWS.SSM.Types.PatchFilter
import Network.AWS.SSM.Types.PatchFilterGroup
import Network.AWS.SSM.Types.PatchGroupPatchBaselineMapping
import Network.AWS.SSM.Types.PatchOrchestratorFilter
import Network.AWS.SSM.Types.PatchRule
import Network.AWS.SSM.Types.PatchRuleGroup
import Network.AWS.SSM.Types.PatchSource
import Network.AWS.SSM.Types.PatchStatus
import Network.AWS.SSM.Types.ProgressCounters
import Network.AWS.SSM.Types.RelatedOpsItem
import Network.AWS.SSM.Types.ResolvedTargets
import Network.AWS.SSM.Types.ResourceComplianceSummaryItem
import Network.AWS.SSM.Types.ResourceDataSyncAwsOrganizationsSource
import Network.AWS.SSM.Types.ResourceDataSyncDestinationDataSharing
import Network.AWS.SSM.Types.ResourceDataSyncItem
import Network.AWS.SSM.Types.ResourceDataSyncOrganizationalUnit
import Network.AWS.SSM.Types.ResourceDataSyncS3Destination
import Network.AWS.SSM.Types.ResourceDataSyncSource
import Network.AWS.SSM.Types.ResourceDataSyncSourceWithState
import Network.AWS.SSM.Types.ResultAttribute
import Network.AWS.SSM.Types.ReviewInformation
import Network.AWS.SSM.Types.Runbook
import Network.AWS.SSM.Types.S3OutputLocation
import Network.AWS.SSM.Types.S3OutputUrl
import Network.AWS.SSM.Types.ScheduledWindowExecution
import Network.AWS.SSM.Types.ServiceSetting
import Network.AWS.SSM.Types.Session
import Network.AWS.SSM.Types.SessionFilter
import Network.AWS.SSM.Types.SessionManagerOutputUrl
import Network.AWS.SSM.Types.SeveritySummary
import Network.AWS.SSM.Types.StepExecution
import Network.AWS.SSM.Types.StepExecutionFilter
import Network.AWS.SSM.Types.Tag
import Network.AWS.SSM.Types.Target
import Network.AWS.SSM.Types.TargetLocation
import Network.AWS.SSM.UnlabelParameterVersion
import Network.AWS.SSM.UpdateAssociation
import Network.AWS.SSM.UpdateAssociationStatus
import Network.AWS.SSM.UpdateDocument
import Network.AWS.SSM.UpdateDocumentDefaultVersion
import Network.AWS.SSM.UpdateDocumentMetadata
import Network.AWS.SSM.UpdateMaintenanceWindow
import Network.AWS.SSM.UpdateMaintenanceWindowTarget
import Network.AWS.SSM.UpdateMaintenanceWindowTask
import Network.AWS.SSM.UpdateManagedInstanceRole
import Network.AWS.SSM.UpdateOpsItem
import Network.AWS.SSM.UpdateOpsMetadata
import Network.AWS.SSM.UpdatePatchBaseline
import Network.AWS.SSM.UpdateResourceDataSync
import Network.AWS.SSM.UpdateServiceSetting
