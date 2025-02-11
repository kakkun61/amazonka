{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Lens
  ( -- * Operations

    -- ** GetGcmChannel
    getGcmChannel_applicationId,
    getGcmChannelResponse_httpStatus,
    getGcmChannelResponse_gCMChannelResponse,

    -- ** GetSegmentImportJobs
    getSegmentImportJobs_token,
    getSegmentImportJobs_pageSize,
    getSegmentImportJobs_segmentId,
    getSegmentImportJobs_applicationId,
    getSegmentImportJobsResponse_httpStatus,
    getSegmentImportJobsResponse_importJobsResponse,

    -- ** SendMessages
    sendMessages_applicationId,
    sendMessages_messageRequest,
    sendMessagesResponse_httpStatus,
    sendMessagesResponse_messageResponse,

    -- ** GetImportJob
    getImportJob_applicationId,
    getImportJob_jobId,
    getImportJobResponse_httpStatus,
    getImportJobResponse_importJobResponse,

    -- ** DeleteSmsTemplate
    deleteSmsTemplate_version,
    deleteSmsTemplate_templateName,
    deleteSmsTemplateResponse_httpStatus,
    deleteSmsTemplateResponse_messageBody,

    -- ** UpdateSmsTemplate
    updateSmsTemplate_version,
    updateSmsTemplate_createNewVersion,
    updateSmsTemplate_templateName,
    updateSmsTemplate_sMSTemplateRequest,
    updateSmsTemplateResponse_httpStatus,
    updateSmsTemplateResponse_messageBody,

    -- ** GetApnsVoipSandboxChannel
    getApnsVoipSandboxChannel_applicationId,
    getApnsVoipSandboxChannelResponse_httpStatus,
    getApnsVoipSandboxChannelResponse_aPNSVoipSandboxChannelResponse,

    -- ** GetSegmentVersions
    getSegmentVersions_token,
    getSegmentVersions_pageSize,
    getSegmentVersions_segmentId,
    getSegmentVersions_applicationId,
    getSegmentVersionsResponse_httpStatus,
    getSegmentVersionsResponse_segmentsResponse,

    -- ** DeleteCampaign
    deleteCampaign_campaignId,
    deleteCampaign_applicationId,
    deleteCampaignResponse_httpStatus,
    deleteCampaignResponse_campaignResponse,

    -- ** UpdateCampaign
    updateCampaign_campaignId,
    updateCampaign_applicationId,
    updateCampaign_writeCampaignRequest,
    updateCampaignResponse_httpStatus,
    updateCampaignResponse_campaignResponse,

    -- ** GetSegmentVersion
    getSegmentVersion_segmentId,
    getSegmentVersion_version,
    getSegmentVersion_applicationId,
    getSegmentVersionResponse_httpStatus,
    getSegmentVersionResponse_segmentResponse,

    -- ** DeletePushTemplate
    deletePushTemplate_version,
    deletePushTemplate_templateName,
    deletePushTemplateResponse_httpStatus,
    deletePushTemplateResponse_messageBody,

    -- ** UpdatePushTemplate
    updatePushTemplate_version,
    updatePushTemplate_createNewVersion,
    updatePushTemplate_templateName,
    updatePushTemplate_pushNotificationTemplateRequest,
    updatePushTemplateResponse_httpStatus,
    updatePushTemplateResponse_messageBody,

    -- ** CreateExportJob
    createExportJob_applicationId,
    createExportJob_exportJobRequest,
    createExportJobResponse_httpStatus,
    createExportJobResponse_exportJobResponse,

    -- ** CreateSegment
    createSegment_applicationId,
    createSegment_writeSegmentRequest,
    createSegmentResponse_httpStatus,
    createSegmentResponse_segmentResponse,

    -- ** CreateRecommenderConfiguration
    createRecommenderConfiguration'_createRecommenderConfiguration,
    createRecommenderConfigurationResponse_httpStatus,
    createRecommenderConfigurationResponse_recommenderConfigurationResponse,

    -- ** CreateInAppTemplate
    createInAppTemplate_templateName,
    createInAppTemplate_inAppTemplateRequest,
    createInAppTemplateResponse_httpStatus,
    createInAppTemplateResponse_templateCreateMessageBody,

    -- ** CreateVoiceTemplate
    createVoiceTemplate_templateName,
    createVoiceTemplate_voiceTemplateRequest,
    createVoiceTemplateResponse_httpStatus,
    createVoiceTemplateResponse_createTemplateMessageBody,

    -- ** UpdateAdmChannel
    updateAdmChannel_applicationId,
    updateAdmChannel_aDMChannelRequest,
    updateAdmChannelResponse_httpStatus,
    updateAdmChannelResponse_aDMChannelResponse,

    -- ** DeleteAdmChannel
    deleteAdmChannel_applicationId,
    deleteAdmChannelResponse_httpStatus,
    deleteAdmChannelResponse_aDMChannelResponse,

    -- ** DeleteRecommenderConfiguration
    deleteRecommenderConfiguration_recommenderId,
    deleteRecommenderConfigurationResponse_httpStatus,
    deleteRecommenderConfigurationResponse_recommenderConfigurationResponse,

    -- ** UpdateRecommenderConfiguration
    updateRecommenderConfiguration'_recommenderId,
    updateRecommenderConfiguration'_updateRecommenderConfiguration,
    updateRecommenderConfigurationResponse_httpStatus,
    updateRecommenderConfigurationResponse_recommenderConfigurationResponse,

    -- ** CreatePushTemplate
    createPushTemplate_templateName,
    createPushTemplate_pushNotificationTemplateRequest,
    createPushTemplateResponse_httpStatus,
    createPushTemplateResponse_createTemplateMessageBody,

    -- ** DeleteEndpoint
    deleteEndpoint_applicationId,
    deleteEndpoint_endpointId,
    deleteEndpointResponse_httpStatus,
    deleteEndpointResponse_endpointResponse,

    -- ** UpdateEndpoint
    updateEndpoint_applicationId,
    updateEndpoint_endpointId,
    updateEndpoint_endpointRequest,
    updateEndpointResponse_httpStatus,
    updateEndpointResponse_messageBody,

    -- ** ListTagsForResource
    listTagsForResource_resourceArn,
    listTagsForResourceResponse_httpStatus,
    listTagsForResourceResponse_tagsModel,

    -- ** CreateCampaign
    createCampaign_applicationId,
    createCampaign_writeCampaignRequest,
    createCampaignResponse_httpStatus,
    createCampaignResponse_campaignResponse,

    -- ** GetEmailTemplate
    getEmailTemplate_version,
    getEmailTemplate_templateName,
    getEmailTemplateResponse_httpStatus,
    getEmailTemplateResponse_emailTemplateResponse,

    -- ** GetExportJob
    getExportJob_applicationId,
    getExportJob_jobId,
    getExportJobResponse_httpStatus,
    getExportJobResponse_exportJobResponse,

    -- ** GetEndpoint
    getEndpoint_applicationId,
    getEndpoint_endpointId,
    getEndpointResponse_httpStatus,
    getEndpointResponse_endpointResponse,

    -- ** GetSegment
    getSegment_segmentId,
    getSegment_applicationId,
    getSegmentResponse_httpStatus,
    getSegmentResponse_segmentResponse,

    -- ** GetRecommenderConfiguration
    getRecommenderConfiguration_recommenderId,
    getRecommenderConfigurationResponse_httpStatus,
    getRecommenderConfigurationResponse_recommenderConfigurationResponse,

    -- ** UpdateEndpointsBatch
    updateEndpointsBatch_applicationId,
    updateEndpointsBatch_endpointBatchRequest,
    updateEndpointsBatchResponse_httpStatus,
    updateEndpointsBatchResponse_messageBody,

    -- ** GetAdmChannel
    getAdmChannel_applicationId,
    getAdmChannelResponse_httpStatus,
    getAdmChannelResponse_aDMChannelResponse,

    -- ** GetCampaign
    getCampaign_campaignId,
    getCampaign_applicationId,
    getCampaignResponse_httpStatus,
    getCampaignResponse_campaignResponse,

    -- ** GetVoiceTemplate
    getVoiceTemplate_version,
    getVoiceTemplate_templateName,
    getVoiceTemplateResponse_httpStatus,
    getVoiceTemplateResponse_voiceTemplateResponse,

    -- ** GetInAppTemplate
    getInAppTemplate_version,
    getInAppTemplate_templateName,
    getInAppTemplateResponse_httpStatus,
    getInAppTemplateResponse_inAppTemplateResponse,

    -- ** GetPushTemplate
    getPushTemplate_version,
    getPushTemplate_templateName,
    getPushTemplateResponse_httpStatus,
    getPushTemplateResponse_pushNotificationTemplateResponse,

    -- ** DeleteUserEndpoints
    deleteUserEndpoints_applicationId,
    deleteUserEndpoints_userId,
    deleteUserEndpointsResponse_httpStatus,
    deleteUserEndpointsResponse_endpointsResponse,

    -- ** CreateEmailTemplate
    createEmailTemplate_templateName,
    createEmailTemplate_emailTemplateRequest,
    createEmailTemplateResponse_httpStatus,
    createEmailTemplateResponse_createTemplateMessageBody,

    -- ** GetInAppMessages
    getInAppMessages_applicationId,
    getInAppMessages_endpointId,
    getInAppMessagesResponse_httpStatus,
    getInAppMessagesResponse_inAppMessagesResponse,

    -- ** DeleteApp
    deleteApp_applicationId,
    deleteAppResponse_httpStatus,
    deleteAppResponse_applicationResponse,

    -- ** UpdateApnsVoipSandboxChannel
    updateApnsVoipSandboxChannel_applicationId,
    updateApnsVoipSandboxChannel_aPNSVoipSandboxChannelRequest,
    updateApnsVoipSandboxChannelResponse_httpStatus,
    updateApnsVoipSandboxChannelResponse_aPNSVoipSandboxChannelResponse,

    -- ** DeleteApnsVoipSandboxChannel
    deleteApnsVoipSandboxChannel_applicationId,
    deleteApnsVoipSandboxChannelResponse_httpStatus,
    deleteApnsVoipSandboxChannelResponse_aPNSVoipSandboxChannelResponse,

    -- ** UpdateGcmChannel
    updateGcmChannel_applicationId,
    updateGcmChannel_gCMChannelRequest,
    updateGcmChannelResponse_httpStatus,
    updateGcmChannelResponse_gCMChannelResponse,

    -- ** DeleteGcmChannel
    deleteGcmChannel_applicationId,
    deleteGcmChannelResponse_httpStatus,
    deleteGcmChannelResponse_gCMChannelResponse,

    -- ** GetCampaignActivities
    getCampaignActivities_token,
    getCampaignActivities_pageSize,
    getCampaignActivities_applicationId,
    getCampaignActivities_campaignId,
    getCampaignActivitiesResponse_httpStatus,
    getCampaignActivitiesResponse_activitiesResponse,

    -- ** GetJourneyExecutionMetrics
    getJourneyExecutionMetrics_nextToken,
    getJourneyExecutionMetrics_pageSize,
    getJourneyExecutionMetrics_applicationId,
    getJourneyExecutionMetrics_journeyId,
    getJourneyExecutionMetricsResponse_httpStatus,
    getJourneyExecutionMetricsResponse_journeyExecutionMetricsResponse,

    -- ** UpdateJourneyState
    updateJourneyState_journeyId,
    updateJourneyState_applicationId,
    updateJourneyState_journeyStateRequest,
    updateJourneyStateResponse_httpStatus,
    updateJourneyStateResponse_journeyResponse,

    -- ** GetEventStream
    getEventStream_applicationId,
    getEventStreamResponse_httpStatus,
    getEventStreamResponse_eventStream,

    -- ** GetChannels
    getChannels_applicationId,
    getChannelsResponse_httpStatus,
    getChannelsResponse_channelsResponse,

    -- ** GetJourney
    getJourney_journeyId,
    getJourney_applicationId,
    getJourneyResponse_httpStatus,
    getJourneyResponse_journeyResponse,

    -- ** DeleteEmailChannel
    deleteEmailChannel_applicationId,
    deleteEmailChannelResponse_httpStatus,
    deleteEmailChannelResponse_emailChannelResponse,

    -- ** UpdateEmailChannel
    updateEmailChannel_applicationId,
    updateEmailChannel_emailChannelRequest,
    updateEmailChannelResponse_httpStatus,
    updateEmailChannelResponse_emailChannelResponse,

    -- ** GetBaiduChannel
    getBaiduChannel_applicationId,
    getBaiduChannelResponse_httpStatus,
    getBaiduChannelResponse_baiduChannelResponse,

    -- ** DeleteApnsChannel
    deleteApnsChannel_applicationId,
    deleteApnsChannelResponse_httpStatus,
    deleteApnsChannelResponse_aPNSChannelResponse,

    -- ** UpdateApnsChannel
    updateApnsChannel_applicationId,
    updateApnsChannel_aPNSChannelRequest,
    updateApnsChannelResponse_httpStatus,
    updateApnsChannelResponse_aPNSChannelResponse,

    -- ** RemoveAttributes
    removeAttributes_attributeType,
    removeAttributes_applicationId,
    removeAttributes_updateAttributesRequest,
    removeAttributesResponse_httpStatus,
    removeAttributesResponse_attributesResource,

    -- ** ListTemplates
    listTemplates_templateType,
    listTemplates_prefix,
    listTemplates_nextToken,
    listTemplates_pageSize,
    listTemplatesResponse_httpStatus,
    listTemplatesResponse_templatesResponse,

    -- ** PutEventStream
    putEventStream_applicationId,
    putEventStream_writeEventStream,
    putEventStreamResponse_httpStatus,
    putEventStreamResponse_eventStream,

    -- ** DeleteEventStream
    deleteEventStream_applicationId,
    deleteEventStreamResponse_httpStatus,
    deleteEventStreamResponse_eventStream,

    -- ** GetCampaignVersions
    getCampaignVersions_token,
    getCampaignVersions_pageSize,
    getCampaignVersions_applicationId,
    getCampaignVersions_campaignId,
    getCampaignVersionsResponse_httpStatus,
    getCampaignVersionsResponse_campaignsResponse,

    -- ** DeleteJourney
    deleteJourney_journeyId,
    deleteJourney_applicationId,
    deleteJourneyResponse_httpStatus,
    deleteJourneyResponse_journeyResponse,

    -- ** UpdateJourney
    updateJourney_journeyId,
    updateJourney_applicationId,
    updateJourney_writeJourneyRequest,
    updateJourneyResponse_httpStatus,
    updateJourneyResponse_journeyResponse,

    -- ** GetCampaignDateRangeKpi
    getCampaignDateRangeKpi_startTime,
    getCampaignDateRangeKpi_nextToken,
    getCampaignDateRangeKpi_endTime,
    getCampaignDateRangeKpi_pageSize,
    getCampaignDateRangeKpi_applicationId,
    getCampaignDateRangeKpi_kpiName,
    getCampaignDateRangeKpi_campaignId,
    getCampaignDateRangeKpiResponse_httpStatus,
    getCampaignDateRangeKpiResponse_campaignDateRangeKpiResponse,

    -- ** GetApnsChannel
    getApnsChannel_applicationId,
    getApnsChannelResponse_httpStatus,
    getApnsChannelResponse_aPNSChannelResponse,

    -- ** UpdateVoiceChannel
    updateVoiceChannel_applicationId,
    updateVoiceChannel_voiceChannelRequest,
    updateVoiceChannelResponse_httpStatus,
    updateVoiceChannelResponse_voiceChannelResponse,

    -- ** DeleteVoiceChannel
    deleteVoiceChannel_applicationId,
    deleteVoiceChannelResponse_httpStatus,
    deleteVoiceChannelResponse_voiceChannelResponse,

    -- ** GetApps
    getApps_token,
    getApps_pageSize,
    getAppsResponse_httpStatus,
    getAppsResponse_applicationsResponse,

    -- ** GetApnsSandboxChannel
    getApnsSandboxChannel_applicationId,
    getApnsSandboxChannelResponse_httpStatus,
    getApnsSandboxChannelResponse_aPNSSandboxChannelResponse,

    -- ** CreateJourney
    createJourney_applicationId,
    createJourney_writeJourneyRequest,
    createJourneyResponse_httpStatus,
    createJourneyResponse_journeyResponse,

    -- ** GetUserEndpoints
    getUserEndpoints_applicationId,
    getUserEndpoints_userId,
    getUserEndpointsResponse_httpStatus,
    getUserEndpointsResponse_endpointsResponse,

    -- ** DeleteVoiceTemplate
    deleteVoiceTemplate_version,
    deleteVoiceTemplate_templateName,
    deleteVoiceTemplateResponse_httpStatus,
    deleteVoiceTemplateResponse_messageBody,

    -- ** UpdateVoiceTemplate
    updateVoiceTemplate_version,
    updateVoiceTemplate_createNewVersion,
    updateVoiceTemplate_templateName,
    updateVoiceTemplate_voiceTemplateRequest,
    updateVoiceTemplateResponse_httpStatus,
    updateVoiceTemplateResponse_messageBody,

    -- ** DeleteInAppTemplate
    deleteInAppTemplate_version,
    deleteInAppTemplate_templateName,
    deleteInAppTemplateResponse_httpStatus,
    deleteInAppTemplateResponse_messageBody,

    -- ** UpdateInAppTemplate
    updateInAppTemplate_version,
    updateInAppTemplate_createNewVersion,
    updateInAppTemplate_templateName,
    updateInAppTemplate_inAppTemplateRequest,
    updateInAppTemplateResponse_httpStatus,
    updateInAppTemplateResponse_messageBody,

    -- ** GetImportJobs
    getImportJobs_token,
    getImportJobs_pageSize,
    getImportJobs_applicationId,
    getImportJobsResponse_httpStatus,
    getImportJobsResponse_importJobsResponse,

    -- ** GetJourneyDateRangeKpi
    getJourneyDateRangeKpi_startTime,
    getJourneyDateRangeKpi_nextToken,
    getJourneyDateRangeKpi_endTime,
    getJourneyDateRangeKpi_pageSize,
    getJourneyDateRangeKpi_journeyId,
    getJourneyDateRangeKpi_applicationId,
    getJourneyDateRangeKpi_kpiName,
    getJourneyDateRangeKpiResponse_httpStatus,
    getJourneyDateRangeKpiResponse_journeyDateRangeKpiResponse,

    -- ** UpdateTemplateActiveVersion
    updateTemplateActiveVersion_templateName,
    updateTemplateActiveVersion_templateType,
    updateTemplateActiveVersion_templateActiveVersionRequest,
    updateTemplateActiveVersionResponse_httpStatus,
    updateTemplateActiveVersionResponse_messageBody,

    -- ** DeleteSmsChannel
    deleteSmsChannel_applicationId,
    deleteSmsChannelResponse_httpStatus,
    deleteSmsChannelResponse_sMSChannelResponse,

    -- ** UpdateSmsChannel
    updateSmsChannel_applicationId,
    updateSmsChannel_sMSChannelRequest,
    updateSmsChannelResponse_httpStatus,
    updateSmsChannelResponse_sMSChannelResponse,

    -- ** GetApp
    getApp_applicationId,
    getAppResponse_httpStatus,
    getAppResponse_applicationResponse,

    -- ** GetCampaignVersion
    getCampaignVersion_version,
    getCampaignVersion_applicationId,
    getCampaignVersion_campaignId,
    getCampaignVersionResponse_httpStatus,
    getCampaignVersionResponse_campaignResponse,

    -- ** DeleteSegment
    deleteSegment_segmentId,
    deleteSegment_applicationId,
    deleteSegmentResponse_httpStatus,
    deleteSegmentResponse_segmentResponse,

    -- ** UpdateSegment
    updateSegment_segmentId,
    updateSegment_applicationId,
    updateSegment_writeSegmentRequest,
    updateSegmentResponse_httpStatus,
    updateSegmentResponse_segmentResponse,

    -- ** GetApplicationDateRangeKpi
    getApplicationDateRangeKpi_startTime,
    getApplicationDateRangeKpi_nextToken,
    getApplicationDateRangeKpi_endTime,
    getApplicationDateRangeKpi_pageSize,
    getApplicationDateRangeKpi_applicationId,
    getApplicationDateRangeKpi_kpiName,
    getApplicationDateRangeKpiResponse_httpStatus,
    getApplicationDateRangeKpiResponse_applicationDateRangeKpiResponse,

    -- ** CreateApp
    createApp_createApplicationRequest,
    createAppResponse_httpStatus,
    createAppResponse_applicationResponse,

    -- ** GetSegmentExportJobs
    getSegmentExportJobs_token,
    getSegmentExportJobs_pageSize,
    getSegmentExportJobs_segmentId,
    getSegmentExportJobs_applicationId,
    getSegmentExportJobsResponse_httpStatus,
    getSegmentExportJobsResponse_exportJobsResponse,

    -- ** DeleteEmailTemplate
    deleteEmailTemplate_version,
    deleteEmailTemplate_templateName,
    deleteEmailTemplateResponse_httpStatus,
    deleteEmailTemplateResponse_messageBody,

    -- ** UpdateEmailTemplate
    updateEmailTemplate_version,
    updateEmailTemplate_createNewVersion,
    updateEmailTemplate_templateName,
    updateEmailTemplate_emailTemplateRequest,
    updateEmailTemplateResponse_httpStatus,
    updateEmailTemplateResponse_messageBody,

    -- ** GetSmsChannel
    getSmsChannel_applicationId,
    getSmsChannelResponse_httpStatus,
    getSmsChannelResponse_sMSChannelResponse,

    -- ** TagResource
    tagResource_resourceArn,
    tagResource_tagsModel,

    -- ** DeleteApnsSandboxChannel
    deleteApnsSandboxChannel_applicationId,
    deleteApnsSandboxChannelResponse_httpStatus,
    deleteApnsSandboxChannelResponse_aPNSSandboxChannelResponse,

    -- ** UpdateApnsSandboxChannel
    updateApnsSandboxChannel_applicationId,
    updateApnsSandboxChannel_aPNSSandboxChannelRequest,
    updateApnsSandboxChannelResponse_httpStatus,
    updateApnsSandboxChannelResponse_aPNSSandboxChannelResponse,

    -- ** GetCampaigns
    getCampaigns_token,
    getCampaigns_pageSize,
    getCampaigns_applicationId,
    getCampaignsResponse_httpStatus,
    getCampaignsResponse_campaignsResponse,

    -- ** GetVoiceChannel
    getVoiceChannel_applicationId,
    getVoiceChannelResponse_httpStatus,
    getVoiceChannelResponse_voiceChannelResponse,

    -- ** UntagResource
    untagResource_tagKeys,
    untagResource_resourceArn,

    -- ** ListTemplateVersions
    listTemplateVersions_nextToken,
    listTemplateVersions_pageSize,
    listTemplateVersions_templateName,
    listTemplateVersions_templateType,
    listTemplateVersionsResponse_httpStatus,
    listTemplateVersionsResponse_templateVersionsResponse,

    -- ** GetSmsTemplate
    getSmsTemplate_version,
    getSmsTemplate_templateName,
    getSmsTemplateResponse_httpStatus,
    getSmsTemplateResponse_sMSTemplateResponse,

    -- ** PutEvents
    putEvents_applicationId,
    putEvents_eventsRequest,
    putEventsResponse_httpStatus,
    putEventsResponse_eventsResponse,

    -- ** UpdateApplicationSettings
    updateApplicationSettings_applicationId,
    updateApplicationSettings_writeApplicationSettingsRequest,
    updateApplicationSettingsResponse_httpStatus,
    updateApplicationSettingsResponse_applicationSettingsResource,

    -- ** GetJourneyExecutionActivityMetrics
    getJourneyExecutionActivityMetrics_nextToken,
    getJourneyExecutionActivityMetrics_pageSize,
    getJourneyExecutionActivityMetrics_journeyActivityId,
    getJourneyExecutionActivityMetrics_applicationId,
    getJourneyExecutionActivityMetrics_journeyId,
    getJourneyExecutionActivityMetricsResponse_httpStatus,
    getJourneyExecutionActivityMetricsResponse_journeyExecutionActivityMetricsResponse,

    -- ** GetSegments
    getSegments_token,
    getSegments_pageSize,
    getSegments_applicationId,
    getSegmentsResponse_httpStatus,
    getSegmentsResponse_segmentsResponse,

    -- ** GetExportJobs
    getExportJobs_token,
    getExportJobs_pageSize,
    getExportJobs_applicationId,
    getExportJobsResponse_httpStatus,
    getExportJobsResponse_exportJobsResponse,

    -- ** CreateImportJob
    createImportJob_applicationId,
    createImportJob_importJobRequest,
    createImportJobResponse_httpStatus,
    createImportJobResponse_importJobResponse,

    -- ** GetRecommenderConfigurations
    getRecommenderConfigurations_token,
    getRecommenderConfigurations_pageSize,
    getRecommenderConfigurationsResponse_httpStatus,
    getRecommenderConfigurationsResponse_listRecommenderConfigurationsResponse,

    -- ** DeleteApnsVoipChannel
    deleteApnsVoipChannel_applicationId,
    deleteApnsVoipChannelResponse_httpStatus,
    deleteApnsVoipChannelResponse_aPNSVoipChannelResponse,

    -- ** UpdateApnsVoipChannel
    updateApnsVoipChannel_applicationId,
    updateApnsVoipChannel_aPNSVoipChannelRequest,
    updateApnsVoipChannelResponse_httpStatus,
    updateApnsVoipChannelResponse_aPNSVoipChannelResponse,

    -- ** SendUsersMessages
    sendUsersMessages_applicationId,
    sendUsersMessages_sendUsersMessageRequest,
    sendUsersMessagesResponse_httpStatus,
    sendUsersMessagesResponse_sendUsersMessageResponse,

    -- ** GetApplicationSettings
    getApplicationSettings_applicationId,
    getApplicationSettingsResponse_httpStatus,
    getApplicationSettingsResponse_applicationSettingsResource,

    -- ** DeleteBaiduChannel
    deleteBaiduChannel_applicationId,
    deleteBaiduChannelResponse_httpStatus,
    deleteBaiduChannelResponse_baiduChannelResponse,

    -- ** UpdateBaiduChannel
    updateBaiduChannel_applicationId,
    updateBaiduChannel_baiduChannelRequest,
    updateBaiduChannelResponse_httpStatus,
    updateBaiduChannelResponse_baiduChannelResponse,

    -- ** CreateSmsTemplate
    createSmsTemplate_templateName,
    createSmsTemplate_sMSTemplateRequest,
    createSmsTemplateResponse_httpStatus,
    createSmsTemplateResponse_createTemplateMessageBody,

    -- ** PhoneNumberValidate
    phoneNumberValidate_numberValidateRequest,
    phoneNumberValidateResponse_httpStatus,
    phoneNumberValidateResponse_numberValidateResponse,

    -- ** ListJourneys
    listJourneys_token,
    listJourneys_pageSize,
    listJourneys_applicationId,
    listJourneysResponse_httpStatus,
    listJourneysResponse_journeysResponse,

    -- ** GetApnsVoipChannel
    getApnsVoipChannel_applicationId,
    getApnsVoipChannelResponse_httpStatus,
    getApnsVoipChannelResponse_aPNSVoipChannelResponse,

    -- ** GetEmailChannel
    getEmailChannel_applicationId,
    getEmailChannelResponse_httpStatus,
    getEmailChannelResponse_emailChannelResponse,

    -- * Types

    -- ** ADMChannelRequest
    aDMChannelRequest_enabled,
    aDMChannelRequest_clientSecret,
    aDMChannelRequest_clientId,

    -- ** ADMChannelResponse
    aDMChannelResponse_lastModifiedDate,
    aDMChannelResponse_enabled,
    aDMChannelResponse_isArchived,
    aDMChannelResponse_applicationId,
    aDMChannelResponse_version,
    aDMChannelResponse_id,
    aDMChannelResponse_creationDate,
    aDMChannelResponse_lastModifiedBy,
    aDMChannelResponse_hasCredential,
    aDMChannelResponse_platform,

    -- ** ADMMessage
    aDMMessage_substitutions,
    aDMMessage_expiresAfter,
    aDMMessage_md5,
    aDMMessage_silentPush,
    aDMMessage_imageIconUrl,
    aDMMessage_rawContent,
    aDMMessage_data,
    aDMMessage_smallImageIconUrl,
    aDMMessage_body,
    aDMMessage_url,
    aDMMessage_sound,
    aDMMessage_action,
    aDMMessage_imageUrl,
    aDMMessage_consolidationKey,
    aDMMessage_title,
    aDMMessage_iconReference,

    -- ** APNSChannelRequest
    aPNSChannelRequest_tokenKey,
    aPNSChannelRequest_privateKey,
    aPNSChannelRequest_enabled,
    aPNSChannelRequest_teamId,
    aPNSChannelRequest_bundleId,
    aPNSChannelRequest_defaultAuthenticationMethod,
    aPNSChannelRequest_certificate,
    aPNSChannelRequest_tokenKeyId,

    -- ** APNSChannelResponse
    aPNSChannelResponse_lastModifiedDate,
    aPNSChannelResponse_enabled,
    aPNSChannelResponse_hasTokenKey,
    aPNSChannelResponse_defaultAuthenticationMethod,
    aPNSChannelResponse_isArchived,
    aPNSChannelResponse_applicationId,
    aPNSChannelResponse_version,
    aPNSChannelResponse_id,
    aPNSChannelResponse_creationDate,
    aPNSChannelResponse_lastModifiedBy,
    aPNSChannelResponse_hasCredential,
    aPNSChannelResponse_platform,

    -- ** APNSMessage
    aPNSMessage_substitutions,
    aPNSMessage_silentPush,
    aPNSMessage_aPNSPushType,
    aPNSMessage_priority,
    aPNSMessage_rawContent,
    aPNSMessage_data,
    aPNSMessage_body,
    aPNSMessage_category,
    aPNSMessage_timeToLive,
    aPNSMessage_url,
    aPNSMessage_sound,
    aPNSMessage_action,
    aPNSMessage_mediaUrl,
    aPNSMessage_preferredAuthenticationMethod,
    aPNSMessage_badge,
    aPNSMessage_title,
    aPNSMessage_threadId,
    aPNSMessage_collapseId,

    -- ** APNSPushNotificationTemplate
    aPNSPushNotificationTemplate_rawContent,
    aPNSPushNotificationTemplate_body,
    aPNSPushNotificationTemplate_url,
    aPNSPushNotificationTemplate_sound,
    aPNSPushNotificationTemplate_action,
    aPNSPushNotificationTemplate_mediaUrl,
    aPNSPushNotificationTemplate_title,

    -- ** APNSSandboxChannelRequest
    aPNSSandboxChannelRequest_tokenKey,
    aPNSSandboxChannelRequest_privateKey,
    aPNSSandboxChannelRequest_enabled,
    aPNSSandboxChannelRequest_teamId,
    aPNSSandboxChannelRequest_bundleId,
    aPNSSandboxChannelRequest_defaultAuthenticationMethod,
    aPNSSandboxChannelRequest_certificate,
    aPNSSandboxChannelRequest_tokenKeyId,

    -- ** APNSSandboxChannelResponse
    aPNSSandboxChannelResponse_lastModifiedDate,
    aPNSSandboxChannelResponse_enabled,
    aPNSSandboxChannelResponse_hasTokenKey,
    aPNSSandboxChannelResponse_defaultAuthenticationMethod,
    aPNSSandboxChannelResponse_isArchived,
    aPNSSandboxChannelResponse_applicationId,
    aPNSSandboxChannelResponse_version,
    aPNSSandboxChannelResponse_id,
    aPNSSandboxChannelResponse_creationDate,
    aPNSSandboxChannelResponse_lastModifiedBy,
    aPNSSandboxChannelResponse_hasCredential,
    aPNSSandboxChannelResponse_platform,

    -- ** APNSVoipChannelRequest
    aPNSVoipChannelRequest_tokenKey,
    aPNSVoipChannelRequest_privateKey,
    aPNSVoipChannelRequest_enabled,
    aPNSVoipChannelRequest_teamId,
    aPNSVoipChannelRequest_bundleId,
    aPNSVoipChannelRequest_defaultAuthenticationMethod,
    aPNSVoipChannelRequest_certificate,
    aPNSVoipChannelRequest_tokenKeyId,

    -- ** APNSVoipChannelResponse
    aPNSVoipChannelResponse_lastModifiedDate,
    aPNSVoipChannelResponse_enabled,
    aPNSVoipChannelResponse_hasTokenKey,
    aPNSVoipChannelResponse_defaultAuthenticationMethod,
    aPNSVoipChannelResponse_isArchived,
    aPNSVoipChannelResponse_applicationId,
    aPNSVoipChannelResponse_version,
    aPNSVoipChannelResponse_id,
    aPNSVoipChannelResponse_creationDate,
    aPNSVoipChannelResponse_lastModifiedBy,
    aPNSVoipChannelResponse_hasCredential,
    aPNSVoipChannelResponse_platform,

    -- ** APNSVoipSandboxChannelRequest
    aPNSVoipSandboxChannelRequest_tokenKey,
    aPNSVoipSandboxChannelRequest_privateKey,
    aPNSVoipSandboxChannelRequest_enabled,
    aPNSVoipSandboxChannelRequest_teamId,
    aPNSVoipSandboxChannelRequest_bundleId,
    aPNSVoipSandboxChannelRequest_defaultAuthenticationMethod,
    aPNSVoipSandboxChannelRequest_certificate,
    aPNSVoipSandboxChannelRequest_tokenKeyId,

    -- ** APNSVoipSandboxChannelResponse
    aPNSVoipSandboxChannelResponse_lastModifiedDate,
    aPNSVoipSandboxChannelResponse_enabled,
    aPNSVoipSandboxChannelResponse_hasTokenKey,
    aPNSVoipSandboxChannelResponse_defaultAuthenticationMethod,
    aPNSVoipSandboxChannelResponse_isArchived,
    aPNSVoipSandboxChannelResponse_applicationId,
    aPNSVoipSandboxChannelResponse_version,
    aPNSVoipSandboxChannelResponse_id,
    aPNSVoipSandboxChannelResponse_creationDate,
    aPNSVoipSandboxChannelResponse_lastModifiedBy,
    aPNSVoipSandboxChannelResponse_hasCredential,
    aPNSVoipSandboxChannelResponse_platform,

    -- ** ActivitiesResponse
    activitiesResponse_nextToken,
    activitiesResponse_item,

    -- ** Activity
    activity_conditionalSplit,
    activity_email,
    activity_multiCondition,
    activity_contactCenter,
    activity_custom,
    activity_wait,
    activity_randomSplit,
    activity_holdout,
    activity_sms,
    activity_push,
    activity_description,

    -- ** ActivityResponse
    activityResponse_state,
    activityResponse_start,
    activityResponse_timezonesCompletedCount,
    activityResponse_timezonesTotalCount,
    activityResponse_result,
    activityResponse_treatmentId,
    activityResponse_successfulEndpointCount,
    activityResponse_end,
    activityResponse_totalEndpointCount,
    activityResponse_scheduledStart,
    activityResponse_campaignId,
    activityResponse_id,
    activityResponse_applicationId,

    -- ** AddressConfiguration
    addressConfiguration_substitutions,
    addressConfiguration_titleOverride,
    addressConfiguration_context,
    addressConfiguration_rawContent,
    addressConfiguration_bodyOverride,
    addressConfiguration_channelType,

    -- ** AndroidPushNotificationTemplate
    androidPushNotificationTemplate_imageIconUrl,
    androidPushNotificationTemplate_rawContent,
    androidPushNotificationTemplate_smallImageIconUrl,
    androidPushNotificationTemplate_body,
    androidPushNotificationTemplate_url,
    androidPushNotificationTemplate_sound,
    androidPushNotificationTemplate_action,
    androidPushNotificationTemplate_imageUrl,
    androidPushNotificationTemplate_title,

    -- ** ApplicationDateRangeKpiResponse
    applicationDateRangeKpiResponse_nextToken,
    applicationDateRangeKpiResponse_kpiResult,
    applicationDateRangeKpiResponse_kpiName,
    applicationDateRangeKpiResponse_endTime,
    applicationDateRangeKpiResponse_startTime,
    applicationDateRangeKpiResponse_applicationId,

    -- ** ApplicationResponse
    applicationResponse_tags,
    applicationResponse_id,
    applicationResponse_arn,
    applicationResponse_name,

    -- ** ApplicationSettingsResource
    applicationSettingsResource_lastModifiedDate,
    applicationSettingsResource_limits,
    applicationSettingsResource_quietTime,
    applicationSettingsResource_campaignHook,
    applicationSettingsResource_applicationId,

    -- ** ApplicationsResponse
    applicationsResponse_nextToken,
    applicationsResponse_item,

    -- ** AttributeDimension
    attributeDimension_attributeType,
    attributeDimension_values,

    -- ** AttributesResource
    attributesResource_attributes,
    attributesResource_attributeType,
    attributesResource_applicationId,

    -- ** BaiduChannelRequest
    baiduChannelRequest_enabled,
    baiduChannelRequest_secretKey,
    baiduChannelRequest_apiKey,

    -- ** BaiduChannelResponse
    baiduChannelResponse_lastModifiedDate,
    baiduChannelResponse_enabled,
    baiduChannelResponse_isArchived,
    baiduChannelResponse_applicationId,
    baiduChannelResponse_version,
    baiduChannelResponse_id,
    baiduChannelResponse_creationDate,
    baiduChannelResponse_lastModifiedBy,
    baiduChannelResponse_hasCredential,
    baiduChannelResponse_credential,
    baiduChannelResponse_platform,

    -- ** BaiduMessage
    baiduMessage_substitutions,
    baiduMessage_silentPush,
    baiduMessage_imageIconUrl,
    baiduMessage_rawContent,
    baiduMessage_data,
    baiduMessage_smallImageIconUrl,
    baiduMessage_body,
    baiduMessage_timeToLive,
    baiduMessage_url,
    baiduMessage_sound,
    baiduMessage_action,
    baiduMessage_imageUrl,
    baiduMessage_title,
    baiduMessage_iconReference,

    -- ** BaseKpiResult
    baseKpiResult_rows,

    -- ** CampaignCustomMessage
    campaignCustomMessage_data,

    -- ** CampaignDateRangeKpiResponse
    campaignDateRangeKpiResponse_nextToken,
    campaignDateRangeKpiResponse_kpiResult,
    campaignDateRangeKpiResponse_kpiName,
    campaignDateRangeKpiResponse_endTime,
    campaignDateRangeKpiResponse_campaignId,
    campaignDateRangeKpiResponse_startTime,
    campaignDateRangeKpiResponse_applicationId,

    -- ** CampaignEmailMessage
    campaignEmailMessage_body,
    campaignEmailMessage_fromAddress,
    campaignEmailMessage_htmlBody,
    campaignEmailMessage_title,

    -- ** CampaignEventFilter
    campaignEventFilter_filterType,
    campaignEventFilter_dimensions,

    -- ** CampaignHook
    campaignHook_lambdaFunctionName,
    campaignHook_mode,
    campaignHook_webUrl,

    -- ** CampaignInAppMessage
    campaignInAppMessage_layout,
    campaignInAppMessage_body,
    campaignInAppMessage_content,
    campaignInAppMessage_customConfig,

    -- ** CampaignLimits
    campaignLimits_messagesPerSecond,
    campaignLimits_daily,
    campaignLimits_total,
    campaignLimits_session,
    campaignLimits_maximumDuration,

    -- ** CampaignResponse
    campaignResponse_customDeliveryConfiguration,
    campaignResponse_state,
    campaignResponse_priority,
    campaignResponse_schedule,
    campaignResponse_templateConfiguration,
    campaignResponse_hook,
    campaignResponse_treatmentName,
    campaignResponse_limits,
    campaignResponse_isPaused,
    campaignResponse_defaultState,
    campaignResponse_name,
    campaignResponse_version,
    campaignResponse_holdoutPercent,
    campaignResponse_treatmentDescription,
    campaignResponse_messageConfiguration,
    campaignResponse_description,
    campaignResponse_additionalTreatments,
    campaignResponse_tags,
    campaignResponse_lastModifiedDate,
    campaignResponse_creationDate,
    campaignResponse_segmentId,
    campaignResponse_segmentVersion,
    campaignResponse_id,
    campaignResponse_arn,
    campaignResponse_applicationId,

    -- ** CampaignSmsMessage
    campaignSmsMessage_originationNumber,
    campaignSmsMessage_templateId,
    campaignSmsMessage_body,
    campaignSmsMessage_messageType,
    campaignSmsMessage_senderId,
    campaignSmsMessage_entityId,

    -- ** CampaignState
    campaignState_campaignStatus,

    -- ** CampaignsResponse
    campaignsResponse_nextToken,
    campaignsResponse_item,

    -- ** ChannelResponse
    channelResponse_lastModifiedDate,
    channelResponse_enabled,
    channelResponse_isArchived,
    channelResponse_applicationId,
    channelResponse_version,
    channelResponse_id,
    channelResponse_creationDate,
    channelResponse_lastModifiedBy,
    channelResponse_hasCredential,

    -- ** ChannelsResponse
    channelsResponse_channels,

    -- ** Condition
    condition_operator,
    condition_conditions,

    -- ** ConditionalSplitActivity
    conditionalSplitActivity_evaluationWaitTime,
    conditionalSplitActivity_trueActivity,
    conditionalSplitActivity_falseActivity,
    conditionalSplitActivity_condition,

    -- ** ContactCenterActivity
    contactCenterActivity_nextActivity,

    -- ** CreateApplicationRequest
    createApplicationRequest_tags,
    createApplicationRequest_name,

    -- ** CreateRecommenderConfiguration
    createRecommenderConfiguration_recommendationTransformerUri,
    createRecommenderConfiguration_recommendationsDisplayName,
    createRecommenderConfiguration_recommendationProviderIdType,
    createRecommenderConfiguration_attributes,
    createRecommenderConfiguration_name,
    createRecommenderConfiguration_description,
    createRecommenderConfiguration_recommendationsPerMessage,
    createRecommenderConfiguration_recommendationProviderUri,
    createRecommenderConfiguration_recommendationProviderRoleArn,

    -- ** CreateTemplateMessageBody
    createTemplateMessageBody_requestID,
    createTemplateMessageBody_arn,
    createTemplateMessageBody_message,

    -- ** CustomDeliveryConfiguration
    customDeliveryConfiguration_endpointTypes,
    customDeliveryConfiguration_deliveryUri,

    -- ** CustomMessageActivity
    customMessageActivity_templateName,
    customMessageActivity_templateVersion,
    customMessageActivity_endpointTypes,
    customMessageActivity_nextActivity,
    customMessageActivity_deliveryUri,
    customMessageActivity_messageConfig,

    -- ** DefaultButtonConfiguration
    defaultButtonConfiguration_link,
    defaultButtonConfiguration_backgroundColor,
    defaultButtonConfiguration_borderRadius,
    defaultButtonConfiguration_textColor,
    defaultButtonConfiguration_buttonAction,
    defaultButtonConfiguration_text,

    -- ** DefaultMessage
    defaultMessage_substitutions,
    defaultMessage_body,

    -- ** DefaultPushNotificationMessage
    defaultPushNotificationMessage_substitutions,
    defaultPushNotificationMessage_silentPush,
    defaultPushNotificationMessage_data,
    defaultPushNotificationMessage_body,
    defaultPushNotificationMessage_url,
    defaultPushNotificationMessage_action,
    defaultPushNotificationMessage_title,

    -- ** DefaultPushNotificationTemplate
    defaultPushNotificationTemplate_body,
    defaultPushNotificationTemplate_url,
    defaultPushNotificationTemplate_sound,
    defaultPushNotificationTemplate_action,
    defaultPushNotificationTemplate_title,

    -- ** DirectMessageConfiguration
    directMessageConfiguration_aPNSMessage,
    directMessageConfiguration_gCMMessage,
    directMessageConfiguration_defaultMessage,
    directMessageConfiguration_aDMMessage,
    directMessageConfiguration_sMSMessage,
    directMessageConfiguration_emailMessage,
    directMessageConfiguration_voiceMessage,
    directMessageConfiguration_baiduMessage,
    directMessageConfiguration_defaultPushNotificationMessage,

    -- ** EmailChannelRequest
    emailChannelRequest_enabled,
    emailChannelRequest_configurationSet,
    emailChannelRequest_roleArn,
    emailChannelRequest_fromAddress,
    emailChannelRequest_identity,

    -- ** EmailChannelResponse
    emailChannelResponse_messagesPerSecond,
    emailChannelResponse_lastModifiedDate,
    emailChannelResponse_enabled,
    emailChannelResponse_fromAddress,
    emailChannelResponse_isArchived,
    emailChannelResponse_applicationId,
    emailChannelResponse_version,
    emailChannelResponse_configurationSet,
    emailChannelResponse_id,
    emailChannelResponse_creationDate,
    emailChannelResponse_lastModifiedBy,
    emailChannelResponse_identity,
    emailChannelResponse_hasCredential,
    emailChannelResponse_roleArn,
    emailChannelResponse_platform,

    -- ** EmailMessage
    emailMessage_substitutions,
    emailMessage_body,
    emailMessage_fromAddress,
    emailMessage_rawEmail,
    emailMessage_feedbackForwardingAddress,
    emailMessage_simpleEmail,
    emailMessage_replyToAddresses,

    -- ** EmailMessageActivity
    emailMessageActivity_templateName,
    emailMessageActivity_templateVersion,
    emailMessageActivity_nextActivity,
    emailMessageActivity_messageConfig,

    -- ** EmailTemplateRequest
    emailTemplateRequest_subject,
    emailTemplateRequest_textPart,
    emailTemplateRequest_templateDescription,
    emailTemplateRequest_defaultSubstitutions,
    emailTemplateRequest_htmlPart,
    emailTemplateRequest_recommenderId,
    emailTemplateRequest_tags,

    -- ** EmailTemplateResponse
    emailTemplateResponse_subject,
    emailTemplateResponse_textPart,
    emailTemplateResponse_arn,
    emailTemplateResponse_templateDescription,
    emailTemplateResponse_defaultSubstitutions,
    emailTemplateResponse_version,
    emailTemplateResponse_htmlPart,
    emailTemplateResponse_recommenderId,
    emailTemplateResponse_tags,
    emailTemplateResponse_lastModifiedDate,
    emailTemplateResponse_creationDate,
    emailTemplateResponse_templateName,
    emailTemplateResponse_templateType,

    -- ** EndpointBatchItem
    endpointBatchItem_requestId,
    endpointBatchItem_metrics,
    endpointBatchItem_location,
    endpointBatchItem_demographic,
    endpointBatchItem_address,
    endpointBatchItem_effectiveDate,
    endpointBatchItem_user,
    endpointBatchItem_attributes,
    endpointBatchItem_endpointStatus,
    endpointBatchItem_optOut,
    endpointBatchItem_id,
    endpointBatchItem_channelType,

    -- ** EndpointBatchRequest
    endpointBatchRequest_item,

    -- ** EndpointDemographic
    endpointDemographic_platform,
    endpointDemographic_platformVersion,
    endpointDemographic_locale,
    endpointDemographic_appVersion,
    endpointDemographic_model,
    endpointDemographic_make,
    endpointDemographic_modelVersion,
    endpointDemographic_timezone,

    -- ** EndpointItemResponse
    endpointItemResponse_message,
    endpointItemResponse_statusCode,

    -- ** EndpointLocation
    endpointLocation_postalCode,
    endpointLocation_latitude,
    endpointLocation_country,
    endpointLocation_city,
    endpointLocation_region,
    endpointLocation_longitude,

    -- ** EndpointMessageResult
    endpointMessageResult_address,
    endpointMessageResult_statusMessage,
    endpointMessageResult_updatedToken,
    endpointMessageResult_messageId,
    endpointMessageResult_deliveryStatus,
    endpointMessageResult_statusCode,

    -- ** EndpointRequest
    endpointRequest_requestId,
    endpointRequest_metrics,
    endpointRequest_location,
    endpointRequest_demographic,
    endpointRequest_address,
    endpointRequest_effectiveDate,
    endpointRequest_user,
    endpointRequest_attributes,
    endpointRequest_endpointStatus,
    endpointRequest_optOut,
    endpointRequest_channelType,

    -- ** EndpointResponse
    endpointResponse_requestId,
    endpointResponse_metrics,
    endpointResponse_location,
    endpointResponse_demographic,
    endpointResponse_cohortId,
    endpointResponse_address,
    endpointResponse_effectiveDate,
    endpointResponse_user,
    endpointResponse_applicationId,
    endpointResponse_attributes,
    endpointResponse_endpointStatus,
    endpointResponse_optOut,
    endpointResponse_id,
    endpointResponse_creationDate,
    endpointResponse_channelType,

    -- ** EndpointSendConfiguration
    endpointSendConfiguration_substitutions,
    endpointSendConfiguration_titleOverride,
    endpointSendConfiguration_context,
    endpointSendConfiguration_rawContent,
    endpointSendConfiguration_bodyOverride,

    -- ** EndpointUser
    endpointUser_userAttributes,
    endpointUser_userId,

    -- ** EndpointsResponse
    endpointsResponse_item,

    -- ** Event
    event_clientSdkVersion,
    event_metrics,
    event_appVersionCode,
    event_appTitle,
    event_appPackageName,
    event_attributes,
    event_sdkName,
    event_session,
    event_eventType,
    event_timestamp,

    -- ** EventCondition
    eventCondition_dimensions,
    eventCondition_messageActivity,

    -- ** EventDimensions
    eventDimensions_metrics,
    eventDimensions_eventType,
    eventDimensions_attributes,

    -- ** EventFilter
    eventFilter_filterType,
    eventFilter_dimensions,

    -- ** EventItemResponse
    eventItemResponse_message,
    eventItemResponse_statusCode,

    -- ** EventStartCondition
    eventStartCondition_eventFilter,
    eventStartCondition_segmentId,

    -- ** EventStream
    eventStream_lastUpdatedBy,
    eventStream_lastModifiedDate,
    eventStream_externalId,
    eventStream_applicationId,
    eventStream_roleArn,
    eventStream_destinationStreamArn,

    -- ** EventsBatch
    eventsBatch_endpoint,
    eventsBatch_events,

    -- ** EventsRequest
    eventsRequest_batchItem,

    -- ** EventsResponse
    eventsResponse_results,

    -- ** ExportJobRequest
    exportJobRequest_segmentId,
    exportJobRequest_segmentVersion,
    exportJobRequest_s3UrlPrefix,
    exportJobRequest_roleArn,

    -- ** ExportJobResource
    exportJobResource_segmentId,
    exportJobResource_segmentVersion,
    exportJobResource_s3UrlPrefix,
    exportJobResource_roleArn,

    -- ** ExportJobResponse
    exportJobResponse_completedPieces,
    exportJobResponse_failedPieces,
    exportJobResponse_totalProcessed,
    exportJobResponse_failures,
    exportJobResponse_totalPieces,
    exportJobResponse_completionDate,
    exportJobResponse_totalFailures,
    exportJobResponse_jobStatus,
    exportJobResponse_creationDate,
    exportJobResponse_type,
    exportJobResponse_definition,
    exportJobResponse_id,
    exportJobResponse_applicationId,

    -- ** ExportJobsResponse
    exportJobsResponse_nextToken,
    exportJobsResponse_item,

    -- ** GCMChannelRequest
    gCMChannelRequest_enabled,
    gCMChannelRequest_apiKey,

    -- ** GCMChannelResponse
    gCMChannelResponse_lastModifiedDate,
    gCMChannelResponse_enabled,
    gCMChannelResponse_isArchived,
    gCMChannelResponse_applicationId,
    gCMChannelResponse_version,
    gCMChannelResponse_id,
    gCMChannelResponse_creationDate,
    gCMChannelResponse_lastModifiedBy,
    gCMChannelResponse_hasCredential,
    gCMChannelResponse_credential,
    gCMChannelResponse_platform,

    -- ** GCMMessage
    gCMMessage_substitutions,
    gCMMessage_silentPush,
    gCMMessage_imageIconUrl,
    gCMMessage_priority,
    gCMMessage_rawContent,
    gCMMessage_data,
    gCMMessage_restrictedPackageName,
    gCMMessage_smallImageIconUrl,
    gCMMessage_body,
    gCMMessage_timeToLive,
    gCMMessage_url,
    gCMMessage_sound,
    gCMMessage_action,
    gCMMessage_collapseKey,
    gCMMessage_imageUrl,
    gCMMessage_title,
    gCMMessage_iconReference,

    -- ** GPSCoordinates
    gPSCoordinates_latitude,
    gPSCoordinates_longitude,

    -- ** GPSPointDimension
    gPSPointDimension_rangeInKilometers,
    gPSPointDimension_coordinates,

    -- ** HoldoutActivity
    holdoutActivity_nextActivity,
    holdoutActivity_percentage,

    -- ** ImportJobRequest
    importJobRequest_segmentName,
    importJobRequest_defineSegment,
    importJobRequest_registerEndpoints,
    importJobRequest_externalId,
    importJobRequest_segmentId,
    importJobRequest_format,
    importJobRequest_s3Url,
    importJobRequest_roleArn,

    -- ** ImportJobResource
    importJobResource_segmentName,
    importJobResource_defineSegment,
    importJobResource_registerEndpoints,
    importJobResource_externalId,
    importJobResource_segmentId,
    importJobResource_format,
    importJobResource_s3Url,
    importJobResource_roleArn,

    -- ** ImportJobResponse
    importJobResponse_completedPieces,
    importJobResponse_failedPieces,
    importJobResponse_totalProcessed,
    importJobResponse_failures,
    importJobResponse_totalPieces,
    importJobResponse_completionDate,
    importJobResponse_totalFailures,
    importJobResponse_jobStatus,
    importJobResponse_creationDate,
    importJobResponse_type,
    importJobResponse_definition,
    importJobResponse_id,
    importJobResponse_applicationId,

    -- ** ImportJobsResponse
    importJobsResponse_nextToken,
    importJobsResponse_item,

    -- ** InAppCampaignSchedule
    inAppCampaignSchedule_endDate,
    inAppCampaignSchedule_quietTime,
    inAppCampaignSchedule_eventFilter,

    -- ** InAppMessage
    inAppMessage_layout,
    inAppMessage_content,
    inAppMessage_customConfig,

    -- ** InAppMessageBodyConfig
    inAppMessageBodyConfig_alignment,
    inAppMessageBodyConfig_textColor,
    inAppMessageBodyConfig_body,

    -- ** InAppMessageButton
    inAppMessageButton_ios,
    inAppMessageButton_defaultConfig,
    inAppMessageButton_web,
    inAppMessageButton_android,

    -- ** InAppMessageCampaign
    inAppMessageCampaign_sessionCap,
    inAppMessageCampaign_priority,
    inAppMessageCampaign_schedule,
    inAppMessageCampaign_campaignId,
    inAppMessageCampaign_treatmentId,
    inAppMessageCampaign_inAppMessage,
    inAppMessageCampaign_totalCap,
    inAppMessageCampaign_dailyCap,

    -- ** InAppMessageContent
    inAppMessageContent_primaryBtn,
    inAppMessageContent_bodyConfig,
    inAppMessageContent_backgroundColor,
    inAppMessageContent_imageUrl,
    inAppMessageContent_secondaryBtn,
    inAppMessageContent_headerConfig,

    -- ** InAppMessageHeaderConfig
    inAppMessageHeaderConfig_alignment,
    inAppMessageHeaderConfig_header,
    inAppMessageHeaderConfig_textColor,

    -- ** InAppMessagesResponse
    inAppMessagesResponse_inAppMessageCampaigns,

    -- ** InAppTemplateRequest
    inAppTemplateRequest_layout,
    inAppTemplateRequest_templateDescription,
    inAppTemplateRequest_content,
    inAppTemplateRequest_customConfig,
    inAppTemplateRequest_tags,

    -- ** InAppTemplateResponse
    inAppTemplateResponse_layout,
    inAppTemplateResponse_arn,
    inAppTemplateResponse_templateDescription,
    inAppTemplateResponse_content,
    inAppTemplateResponse_customConfig,
    inAppTemplateResponse_version,
    inAppTemplateResponse_tags,
    inAppTemplateResponse_lastModifiedDate,
    inAppTemplateResponse_creationDate,
    inAppTemplateResponse_templateName,
    inAppTemplateResponse_templateType,

    -- ** ItemResponse
    itemResponse_endpointItemResponse,
    itemResponse_eventsItemResponse,

    -- ** JourneyChannelSettings
    journeyChannelSettings_connectCampaignArn,
    journeyChannelSettings_connectCampaignExecutionRoleArn,

    -- ** JourneyCustomMessage
    journeyCustomMessage_data,

    -- ** JourneyDateRangeKpiResponse
    journeyDateRangeKpiResponse_nextToken,
    journeyDateRangeKpiResponse_kpiResult,
    journeyDateRangeKpiResponse_kpiName,
    journeyDateRangeKpiResponse_journeyId,
    journeyDateRangeKpiResponse_endTime,
    journeyDateRangeKpiResponse_startTime,
    journeyDateRangeKpiResponse_applicationId,

    -- ** JourneyEmailMessage
    journeyEmailMessage_fromAddress,

    -- ** JourneyExecutionActivityMetricsResponse
    journeyExecutionActivityMetricsResponse_metrics,
    journeyExecutionActivityMetricsResponse_journeyId,
    journeyExecutionActivityMetricsResponse_lastEvaluatedTime,
    journeyExecutionActivityMetricsResponse_journeyActivityId,
    journeyExecutionActivityMetricsResponse_activityType,
    journeyExecutionActivityMetricsResponse_applicationId,

    -- ** JourneyExecutionMetricsResponse
    journeyExecutionMetricsResponse_metrics,
    journeyExecutionMetricsResponse_journeyId,
    journeyExecutionMetricsResponse_lastEvaluatedTime,
    journeyExecutionMetricsResponse_applicationId,

    -- ** JourneyLimits
    journeyLimits_messagesPerSecond,
    journeyLimits_endpointReentryCap,
    journeyLimits_endpointReentryInterval,
    journeyLimits_dailyCap,

    -- ** JourneyPushMessage
    journeyPushMessage_timeToLive,

    -- ** JourneyResponse
    journeyResponse_state,
    journeyResponse_lastModifiedDate,
    journeyResponse_schedule,
    journeyResponse_localTime,
    journeyResponse_activities,
    journeyResponse_refreshOnSegmentUpdate,
    journeyResponse_limits,
    journeyResponse_waitForQuietTime,
    journeyResponse_quietTime,
    journeyResponse_startActivity,
    journeyResponse_creationDate,
    journeyResponse_startCondition,
    journeyResponse_journeyChannelSettings,
    journeyResponse_refreshFrequency,
    journeyResponse_tags,
    journeyResponse_name,
    journeyResponse_id,
    journeyResponse_applicationId,

    -- ** JourneySMSMessage
    journeySMSMessage_originationNumber,
    journeySMSMessage_templateId,
    journeySMSMessage_messageType,
    journeySMSMessage_senderId,
    journeySMSMessage_entityId,

    -- ** JourneySchedule
    journeySchedule_startTime,
    journeySchedule_endTime,
    journeySchedule_timezone,

    -- ** JourneyStateRequest
    journeyStateRequest_state,

    -- ** JourneysResponse
    journeysResponse_nextToken,
    journeysResponse_item,

    -- ** ListRecommenderConfigurationsResponse
    listRecommenderConfigurationsResponse_nextToken,
    listRecommenderConfigurationsResponse_item,

    -- ** Message
    message_silentPush,
    message_imageIconUrl,
    message_rawContent,
    message_body,
    message_timeToLive,
    message_imageSmallIconUrl,
    message_jsonBody,
    message_url,
    message_action,
    message_imageUrl,
    message_mediaUrl,
    message_title,

    -- ** MessageBody
    messageBody_requestID,
    messageBody_message,

    -- ** MessageConfiguration
    messageConfiguration_aPNSMessage,
    messageConfiguration_gCMMessage,
    messageConfiguration_defaultMessage,
    messageConfiguration_customMessage,
    messageConfiguration_aDMMessage,
    messageConfiguration_sMSMessage,
    messageConfiguration_emailMessage,
    messageConfiguration_inAppMessage,
    messageConfiguration_baiduMessage,

    -- ** MessageRequest
    messageRequest_traceId,
    messageRequest_context,
    messageRequest_addresses,
    messageRequest_templateConfiguration,
    messageRequest_endpoints,
    messageRequest_messageConfiguration,

    -- ** MessageResponse
    messageResponse_requestId,
    messageResponse_result,
    messageResponse_endpointResult,
    messageResponse_applicationId,

    -- ** MessageResult
    messageResult_statusMessage,
    messageResult_updatedToken,
    messageResult_messageId,
    messageResult_deliveryStatus,
    messageResult_statusCode,

    -- ** MetricDimension
    metricDimension_comparisonOperator,
    metricDimension_value,

    -- ** MultiConditionalBranch
    multiConditionalBranch_nextActivity,
    multiConditionalBranch_condition,

    -- ** MultiConditionalSplitActivity
    multiConditionalSplitActivity_branches,
    multiConditionalSplitActivity_evaluationWaitTime,
    multiConditionalSplitActivity_defaultActivity,

    -- ** NumberValidateRequest
    numberValidateRequest_isoCountryCode,
    numberValidateRequest_phoneNumber,

    -- ** NumberValidateResponse
    numberValidateResponse_carrier,
    numberValidateResponse_county,
    numberValidateResponse_country,
    numberValidateResponse_countryCodeNumeric,
    numberValidateResponse_zipCode,
    numberValidateResponse_originalPhoneNumber,
    numberValidateResponse_phoneTypeCode,
    numberValidateResponse_phoneType,
    numberValidateResponse_city,
    numberValidateResponse_countryCodeIso2,
    numberValidateResponse_timezone,
    numberValidateResponse_originalCountryCodeIso2,
    numberValidateResponse_cleansedPhoneNumberNational,
    numberValidateResponse_cleansedPhoneNumberE164,

    -- ** OverrideButtonConfiguration
    overrideButtonConfiguration_link,
    overrideButtonConfiguration_buttonAction,

    -- ** PublicEndpoint
    publicEndpoint_requestId,
    publicEndpoint_metrics,
    publicEndpoint_location,
    publicEndpoint_demographic,
    publicEndpoint_address,
    publicEndpoint_effectiveDate,
    publicEndpoint_user,
    publicEndpoint_attributes,
    publicEndpoint_endpointStatus,
    publicEndpoint_optOut,
    publicEndpoint_channelType,

    -- ** PushMessageActivity
    pushMessageActivity_templateName,
    pushMessageActivity_templateVersion,
    pushMessageActivity_nextActivity,
    pushMessageActivity_messageConfig,

    -- ** PushNotificationTemplateRequest
    pushNotificationTemplateRequest_default,
    pushNotificationTemplateRequest_templateDescription,
    pushNotificationTemplateRequest_gcm,
    pushNotificationTemplateRequest_apns,
    pushNotificationTemplateRequest_defaultSubstitutions,
    pushNotificationTemplateRequest_adm,
    pushNotificationTemplateRequest_baidu,
    pushNotificationTemplateRequest_recommenderId,
    pushNotificationTemplateRequest_tags,

    -- ** PushNotificationTemplateResponse
    pushNotificationTemplateResponse_arn,
    pushNotificationTemplateResponse_default,
    pushNotificationTemplateResponse_templateDescription,
    pushNotificationTemplateResponse_gcm,
    pushNotificationTemplateResponse_apns,
    pushNotificationTemplateResponse_defaultSubstitutions,
    pushNotificationTemplateResponse_version,
    pushNotificationTemplateResponse_adm,
    pushNotificationTemplateResponse_baidu,
    pushNotificationTemplateResponse_recommenderId,
    pushNotificationTemplateResponse_tags,
    pushNotificationTemplateResponse_lastModifiedDate,
    pushNotificationTemplateResponse_creationDate,
    pushNotificationTemplateResponse_templateType,
    pushNotificationTemplateResponse_templateName,

    -- ** QuietTime
    quietTime_start,
    quietTime_end,

    -- ** RandomSplitActivity
    randomSplitActivity_branches,

    -- ** RandomSplitEntry
    randomSplitEntry_nextActivity,
    randomSplitEntry_percentage,

    -- ** RawEmail
    rawEmail_data,

    -- ** RecencyDimension
    recencyDimension_duration,
    recencyDimension_recencyType,

    -- ** RecommenderConfigurationResponse
    recommenderConfigurationResponse_recommendationTransformerUri,
    recommenderConfigurationResponse_recommendationsDisplayName,
    recommenderConfigurationResponse_recommendationProviderIdType,
    recommenderConfigurationResponse_attributes,
    recommenderConfigurationResponse_name,
    recommenderConfigurationResponse_description,
    recommenderConfigurationResponse_recommendationsPerMessage,
    recommenderConfigurationResponse_recommendationProviderUri,
    recommenderConfigurationResponse_lastModifiedDate,
    recommenderConfigurationResponse_creationDate,
    recommenderConfigurationResponse_recommendationProviderRoleArn,
    recommenderConfigurationResponse_id,

    -- ** ResultRow
    resultRow_groupedBys,
    resultRow_values,

    -- ** ResultRowValue
    resultRowValue_type,
    resultRowValue_value,
    resultRowValue_key,

    -- ** SMSChannelRequest
    sMSChannelRequest_shortCode,
    sMSChannelRequest_enabled,
    sMSChannelRequest_senderId,

    -- ** SMSChannelResponse
    sMSChannelResponse_shortCode,
    sMSChannelResponse_lastModifiedDate,
    sMSChannelResponse_enabled,
    sMSChannelResponse_senderId,
    sMSChannelResponse_transactionalMessagesPerSecond,
    sMSChannelResponse_promotionalMessagesPerSecond,
    sMSChannelResponse_isArchived,
    sMSChannelResponse_applicationId,
    sMSChannelResponse_version,
    sMSChannelResponse_id,
    sMSChannelResponse_creationDate,
    sMSChannelResponse_lastModifiedBy,
    sMSChannelResponse_hasCredential,
    sMSChannelResponse_platform,

    -- ** SMSMessage
    sMSMessage_substitutions,
    sMSMessage_originationNumber,
    sMSMessage_templateId,
    sMSMessage_body,
    sMSMessage_messageType,
    sMSMessage_senderId,
    sMSMessage_mediaUrl,
    sMSMessage_entityId,
    sMSMessage_keyword,

    -- ** SMSMessageActivity
    sMSMessageActivity_templateName,
    sMSMessageActivity_templateVersion,
    sMSMessageActivity_nextActivity,
    sMSMessageActivity_messageConfig,

    -- ** SMSTemplateRequest
    sMSTemplateRequest_body,
    sMSTemplateRequest_templateDescription,
    sMSTemplateRequest_defaultSubstitutions,
    sMSTemplateRequest_recommenderId,
    sMSTemplateRequest_tags,

    -- ** SMSTemplateResponse
    sMSTemplateResponse_arn,
    sMSTemplateResponse_body,
    sMSTemplateResponse_templateDescription,
    sMSTemplateResponse_defaultSubstitutions,
    sMSTemplateResponse_version,
    sMSTemplateResponse_recommenderId,
    sMSTemplateResponse_tags,
    sMSTemplateResponse_lastModifiedDate,
    sMSTemplateResponse_creationDate,
    sMSTemplateResponse_templateName,
    sMSTemplateResponse_templateType,

    -- ** Schedule
    schedule_frequency,
    schedule_quietTime,
    schedule_eventFilter,
    schedule_isLocalTime,
    schedule_endTime,
    schedule_timezone,
    schedule_startTime,

    -- ** SegmentBehaviors
    segmentBehaviors_recency,

    -- ** SegmentCondition
    segmentCondition_segmentId,

    -- ** SegmentDemographics
    segmentDemographics_platform,
    segmentDemographics_appVersion,
    segmentDemographics_channel,
    segmentDemographics_model,
    segmentDemographics_make,
    segmentDemographics_deviceType,

    -- ** SegmentDimensions
    segmentDimensions_metrics,
    segmentDimensions_location,
    segmentDimensions_demographic,
    segmentDimensions_userAttributes,
    segmentDimensions_behavior,
    segmentDimensions_attributes,

    -- ** SegmentGroup
    segmentGroup_sourceSegments,
    segmentGroup_sourceType,
    segmentGroup_type,
    segmentGroup_dimensions,

    -- ** SegmentGroupList
    segmentGroupList_include,
    segmentGroupList_groups,

    -- ** SegmentImportResource
    segmentImportResource_channelCounts,
    segmentImportResource_format,
    segmentImportResource_s3Url,
    segmentImportResource_size,
    segmentImportResource_externalId,
    segmentImportResource_roleArn,

    -- ** SegmentLocation
    segmentLocation_country,
    segmentLocation_gPSPoint,

    -- ** SegmentReference
    segmentReference_version,
    segmentReference_id,

    -- ** SegmentResponse
    segmentResponse_lastModifiedDate,
    segmentResponse_segmentGroups,
    segmentResponse_name,
    segmentResponse_version,
    segmentResponse_importDefinition,
    segmentResponse_dimensions,
    segmentResponse_tags,
    segmentResponse_segmentType,
    segmentResponse_creationDate,
    segmentResponse_id,
    segmentResponse_arn,
    segmentResponse_applicationId,

    -- ** SegmentsResponse
    segmentsResponse_nextToken,
    segmentsResponse_item,

    -- ** SendUsersMessageRequest
    sendUsersMessageRequest_traceId,
    sendUsersMessageRequest_context,
    sendUsersMessageRequest_templateConfiguration,
    sendUsersMessageRequest_messageConfiguration,
    sendUsersMessageRequest_users,

    -- ** SendUsersMessageResponse
    sendUsersMessageResponse_requestId,
    sendUsersMessageResponse_result,
    sendUsersMessageResponse_applicationId,

    -- ** Session
    session_stopTimestamp,
    session_duration,
    session_startTimestamp,
    session_id,

    -- ** SetDimension
    setDimension_dimensionType,
    setDimension_values,

    -- ** SimpleCondition
    simpleCondition_segmentDimensions,
    simpleCondition_eventCondition,
    simpleCondition_segmentCondition,

    -- ** SimpleEmail
    simpleEmail_subject,
    simpleEmail_textPart,
    simpleEmail_htmlPart,

    -- ** SimpleEmailPart
    simpleEmailPart_data,
    simpleEmailPart_charset,

    -- ** StartCondition
    startCondition_segmentStartCondition,
    startCondition_eventStartCondition,
    startCondition_description,

    -- ** TagsModel
    tagsModel_tags,

    -- ** Template
    template_name,
    template_version,

    -- ** TemplateActiveVersionRequest
    templateActiveVersionRequest_version,

    -- ** TemplateConfiguration
    templateConfiguration_sMSTemplate,
    templateConfiguration_voiceTemplate,
    templateConfiguration_pushTemplate,
    templateConfiguration_emailTemplate,

    -- ** TemplateCreateMessageBody
    templateCreateMessageBody_requestID,
    templateCreateMessageBody_arn,
    templateCreateMessageBody_message,

    -- ** TemplateResponse
    templateResponse_arn,
    templateResponse_templateDescription,
    templateResponse_defaultSubstitutions,
    templateResponse_version,
    templateResponse_tags,
    templateResponse_lastModifiedDate,
    templateResponse_creationDate,
    templateResponse_templateName,
    templateResponse_templateType,

    -- ** TemplateVersionResponse
    templateVersionResponse_templateDescription,
    templateVersionResponse_defaultSubstitutions,
    templateVersionResponse_version,
    templateVersionResponse_lastModifiedDate,
    templateVersionResponse_creationDate,
    templateVersionResponse_templateName,
    templateVersionResponse_templateType,

    -- ** TemplateVersionsResponse
    templateVersionsResponse_requestID,
    templateVersionsResponse_nextToken,
    templateVersionsResponse_message,
    templateVersionsResponse_item,

    -- ** TemplatesResponse
    templatesResponse_nextToken,
    templatesResponse_item,

    -- ** TreatmentResource
    treatmentResource_customDeliveryConfiguration,
    treatmentResource_state,
    treatmentResource_schedule,
    treatmentResource_templateConfiguration,
    treatmentResource_treatmentName,
    treatmentResource_treatmentDescription,
    treatmentResource_messageConfiguration,
    treatmentResource_id,
    treatmentResource_sizePercent,

    -- ** UpdateAttributesRequest
    updateAttributesRequest_blacklist,

    -- ** UpdateRecommenderConfiguration
    updateRecommenderConfiguration_recommendationTransformerUri,
    updateRecommenderConfiguration_recommendationsDisplayName,
    updateRecommenderConfiguration_recommendationProviderIdType,
    updateRecommenderConfiguration_attributes,
    updateRecommenderConfiguration_name,
    updateRecommenderConfiguration_description,
    updateRecommenderConfiguration_recommendationsPerMessage,
    updateRecommenderConfiguration_recommendationProviderUri,
    updateRecommenderConfiguration_recommendationProviderRoleArn,

    -- ** VoiceChannelRequest
    voiceChannelRequest_enabled,

    -- ** VoiceChannelResponse
    voiceChannelResponse_lastModifiedDate,
    voiceChannelResponse_enabled,
    voiceChannelResponse_isArchived,
    voiceChannelResponse_applicationId,
    voiceChannelResponse_version,
    voiceChannelResponse_id,
    voiceChannelResponse_creationDate,
    voiceChannelResponse_lastModifiedBy,
    voiceChannelResponse_hasCredential,
    voiceChannelResponse_platform,

    -- ** VoiceMessage
    voiceMessage_substitutions,
    voiceMessage_languageCode,
    voiceMessage_originationNumber,
    voiceMessage_body,
    voiceMessage_voiceId,

    -- ** VoiceTemplateRequest
    voiceTemplateRequest_languageCode,
    voiceTemplateRequest_body,
    voiceTemplateRequest_templateDescription,
    voiceTemplateRequest_defaultSubstitutions,
    voiceTemplateRequest_voiceId,
    voiceTemplateRequest_tags,

    -- ** VoiceTemplateResponse
    voiceTemplateResponse_languageCode,
    voiceTemplateResponse_arn,
    voiceTemplateResponse_body,
    voiceTemplateResponse_templateDescription,
    voiceTemplateResponse_defaultSubstitutions,
    voiceTemplateResponse_version,
    voiceTemplateResponse_voiceId,
    voiceTemplateResponse_tags,
    voiceTemplateResponse_lastModifiedDate,
    voiceTemplateResponse_creationDate,
    voiceTemplateResponse_templateName,
    voiceTemplateResponse_templateType,

    -- ** WaitActivity
    waitActivity_nextActivity,
    waitActivity_waitTime,

    -- ** WaitTime
    waitTime_waitFor,
    waitTime_waitUntil,

    -- ** WriteApplicationSettingsRequest
    writeApplicationSettingsRequest_eventTaggingEnabled,
    writeApplicationSettingsRequest_cloudWatchMetricsEnabled,
    writeApplicationSettingsRequest_limits,
    writeApplicationSettingsRequest_quietTime,
    writeApplicationSettingsRequest_campaignHook,

    -- ** WriteCampaignRequest
    writeCampaignRequest_customDeliveryConfiguration,
    writeCampaignRequest_priority,
    writeCampaignRequest_schedule,
    writeCampaignRequest_templateConfiguration,
    writeCampaignRequest_hook,
    writeCampaignRequest_treatmentName,
    writeCampaignRequest_limits,
    writeCampaignRequest_isPaused,
    writeCampaignRequest_name,
    writeCampaignRequest_holdoutPercent,
    writeCampaignRequest_treatmentDescription,
    writeCampaignRequest_messageConfiguration,
    writeCampaignRequest_description,
    writeCampaignRequest_segmentId,
    writeCampaignRequest_additionalTreatments,
    writeCampaignRequest_tags,
    writeCampaignRequest_segmentVersion,

    -- ** WriteEventStream
    writeEventStream_roleArn,
    writeEventStream_destinationStreamArn,

    -- ** WriteJourneyRequest
    writeJourneyRequest_state,
    writeJourneyRequest_lastModifiedDate,
    writeJourneyRequest_schedule,
    writeJourneyRequest_localTime,
    writeJourneyRequest_activities,
    writeJourneyRequest_refreshOnSegmentUpdate,
    writeJourneyRequest_limits,
    writeJourneyRequest_waitForQuietTime,
    writeJourneyRequest_quietTime,
    writeJourneyRequest_startActivity,
    writeJourneyRequest_creationDate,
    writeJourneyRequest_startCondition,
    writeJourneyRequest_refreshFrequency,
    writeJourneyRequest_name,

    -- ** WriteSegmentRequest
    writeSegmentRequest_segmentGroups,
    writeSegmentRequest_name,
    writeSegmentRequest_dimensions,
    writeSegmentRequest_tags,

    -- ** WriteTreatmentResource
    writeTreatmentResource_customDeliveryConfiguration,
    writeTreatmentResource_schedule,
    writeTreatmentResource_templateConfiguration,
    writeTreatmentResource_treatmentName,
    writeTreatmentResource_treatmentDescription,
    writeTreatmentResource_messageConfiguration,
    writeTreatmentResource_sizePercent,
  )
where

import Network.AWS.Pinpoint.CreateApp
import Network.AWS.Pinpoint.CreateCampaign
import Network.AWS.Pinpoint.CreateEmailTemplate
import Network.AWS.Pinpoint.CreateExportJob
import Network.AWS.Pinpoint.CreateImportJob
import Network.AWS.Pinpoint.CreateInAppTemplate
import Network.AWS.Pinpoint.CreateJourney
import Network.AWS.Pinpoint.CreatePushTemplate
import Network.AWS.Pinpoint.CreateRecommenderConfiguration
import Network.AWS.Pinpoint.CreateSegment
import Network.AWS.Pinpoint.CreateSmsTemplate
import Network.AWS.Pinpoint.CreateVoiceTemplate
import Network.AWS.Pinpoint.DeleteAdmChannel
import Network.AWS.Pinpoint.DeleteApnsChannel
import Network.AWS.Pinpoint.DeleteApnsSandboxChannel
import Network.AWS.Pinpoint.DeleteApnsVoipChannel
import Network.AWS.Pinpoint.DeleteApnsVoipSandboxChannel
import Network.AWS.Pinpoint.DeleteApp
import Network.AWS.Pinpoint.DeleteBaiduChannel
import Network.AWS.Pinpoint.DeleteCampaign
import Network.AWS.Pinpoint.DeleteEmailChannel
import Network.AWS.Pinpoint.DeleteEmailTemplate
import Network.AWS.Pinpoint.DeleteEndpoint
import Network.AWS.Pinpoint.DeleteEventStream
import Network.AWS.Pinpoint.DeleteGcmChannel
import Network.AWS.Pinpoint.DeleteInAppTemplate
import Network.AWS.Pinpoint.DeleteJourney
import Network.AWS.Pinpoint.DeletePushTemplate
import Network.AWS.Pinpoint.DeleteRecommenderConfiguration
import Network.AWS.Pinpoint.DeleteSegment
import Network.AWS.Pinpoint.DeleteSmsChannel
import Network.AWS.Pinpoint.DeleteSmsTemplate
import Network.AWS.Pinpoint.DeleteUserEndpoints
import Network.AWS.Pinpoint.DeleteVoiceChannel
import Network.AWS.Pinpoint.DeleteVoiceTemplate
import Network.AWS.Pinpoint.GetAdmChannel
import Network.AWS.Pinpoint.GetApnsChannel
import Network.AWS.Pinpoint.GetApnsSandboxChannel
import Network.AWS.Pinpoint.GetApnsVoipChannel
import Network.AWS.Pinpoint.GetApnsVoipSandboxChannel
import Network.AWS.Pinpoint.GetApp
import Network.AWS.Pinpoint.GetApplicationDateRangeKpi
import Network.AWS.Pinpoint.GetApplicationSettings
import Network.AWS.Pinpoint.GetApps
import Network.AWS.Pinpoint.GetBaiduChannel
import Network.AWS.Pinpoint.GetCampaign
import Network.AWS.Pinpoint.GetCampaignActivities
import Network.AWS.Pinpoint.GetCampaignDateRangeKpi
import Network.AWS.Pinpoint.GetCampaignVersion
import Network.AWS.Pinpoint.GetCampaignVersions
import Network.AWS.Pinpoint.GetCampaigns
import Network.AWS.Pinpoint.GetChannels
import Network.AWS.Pinpoint.GetEmailChannel
import Network.AWS.Pinpoint.GetEmailTemplate
import Network.AWS.Pinpoint.GetEndpoint
import Network.AWS.Pinpoint.GetEventStream
import Network.AWS.Pinpoint.GetExportJob
import Network.AWS.Pinpoint.GetExportJobs
import Network.AWS.Pinpoint.GetGcmChannel
import Network.AWS.Pinpoint.GetImportJob
import Network.AWS.Pinpoint.GetImportJobs
import Network.AWS.Pinpoint.GetInAppMessages
import Network.AWS.Pinpoint.GetInAppTemplate
import Network.AWS.Pinpoint.GetJourney
import Network.AWS.Pinpoint.GetJourneyDateRangeKpi
import Network.AWS.Pinpoint.GetJourneyExecutionActivityMetrics
import Network.AWS.Pinpoint.GetJourneyExecutionMetrics
import Network.AWS.Pinpoint.GetPushTemplate
import Network.AWS.Pinpoint.GetRecommenderConfiguration
import Network.AWS.Pinpoint.GetRecommenderConfigurations
import Network.AWS.Pinpoint.GetSegment
import Network.AWS.Pinpoint.GetSegmentExportJobs
import Network.AWS.Pinpoint.GetSegmentImportJobs
import Network.AWS.Pinpoint.GetSegmentVersion
import Network.AWS.Pinpoint.GetSegmentVersions
import Network.AWS.Pinpoint.GetSegments
import Network.AWS.Pinpoint.GetSmsChannel
import Network.AWS.Pinpoint.GetSmsTemplate
import Network.AWS.Pinpoint.GetUserEndpoints
import Network.AWS.Pinpoint.GetVoiceChannel
import Network.AWS.Pinpoint.GetVoiceTemplate
import Network.AWS.Pinpoint.ListJourneys
import Network.AWS.Pinpoint.ListTagsForResource
import Network.AWS.Pinpoint.ListTemplateVersions
import Network.AWS.Pinpoint.ListTemplates
import Network.AWS.Pinpoint.PhoneNumberValidate
import Network.AWS.Pinpoint.PutEventStream
import Network.AWS.Pinpoint.PutEvents
import Network.AWS.Pinpoint.RemoveAttributes
import Network.AWS.Pinpoint.SendMessages
import Network.AWS.Pinpoint.SendUsersMessages
import Network.AWS.Pinpoint.TagResource
import Network.AWS.Pinpoint.Types.ADMChannelRequest
import Network.AWS.Pinpoint.Types.ADMChannelResponse
import Network.AWS.Pinpoint.Types.ADMMessage
import Network.AWS.Pinpoint.Types.APNSChannelRequest
import Network.AWS.Pinpoint.Types.APNSChannelResponse
import Network.AWS.Pinpoint.Types.APNSMessage
import Network.AWS.Pinpoint.Types.APNSPushNotificationTemplate
import Network.AWS.Pinpoint.Types.APNSSandboxChannelRequest
import Network.AWS.Pinpoint.Types.APNSSandboxChannelResponse
import Network.AWS.Pinpoint.Types.APNSVoipChannelRequest
import Network.AWS.Pinpoint.Types.APNSVoipChannelResponse
import Network.AWS.Pinpoint.Types.APNSVoipSandboxChannelRequest
import Network.AWS.Pinpoint.Types.APNSVoipSandboxChannelResponse
import Network.AWS.Pinpoint.Types.ActivitiesResponse
import Network.AWS.Pinpoint.Types.Activity
import Network.AWS.Pinpoint.Types.ActivityResponse
import Network.AWS.Pinpoint.Types.AddressConfiguration
import Network.AWS.Pinpoint.Types.AndroidPushNotificationTemplate
import Network.AWS.Pinpoint.Types.ApplicationDateRangeKpiResponse
import Network.AWS.Pinpoint.Types.ApplicationResponse
import Network.AWS.Pinpoint.Types.ApplicationSettingsResource
import Network.AWS.Pinpoint.Types.ApplicationsResponse
import Network.AWS.Pinpoint.Types.AttributeDimension
import Network.AWS.Pinpoint.Types.AttributesResource
import Network.AWS.Pinpoint.Types.BaiduChannelRequest
import Network.AWS.Pinpoint.Types.BaiduChannelResponse
import Network.AWS.Pinpoint.Types.BaiduMessage
import Network.AWS.Pinpoint.Types.BaseKpiResult
import Network.AWS.Pinpoint.Types.CampaignCustomMessage
import Network.AWS.Pinpoint.Types.CampaignDateRangeKpiResponse
import Network.AWS.Pinpoint.Types.CampaignEmailMessage
import Network.AWS.Pinpoint.Types.CampaignEventFilter
import Network.AWS.Pinpoint.Types.CampaignHook
import Network.AWS.Pinpoint.Types.CampaignInAppMessage
import Network.AWS.Pinpoint.Types.CampaignLimits
import Network.AWS.Pinpoint.Types.CampaignResponse
import Network.AWS.Pinpoint.Types.CampaignSmsMessage
import Network.AWS.Pinpoint.Types.CampaignState
import Network.AWS.Pinpoint.Types.CampaignsResponse
import Network.AWS.Pinpoint.Types.ChannelResponse
import Network.AWS.Pinpoint.Types.ChannelsResponse
import Network.AWS.Pinpoint.Types.Condition
import Network.AWS.Pinpoint.Types.ConditionalSplitActivity
import Network.AWS.Pinpoint.Types.ContactCenterActivity
import Network.AWS.Pinpoint.Types.CreateApplicationRequest
import Network.AWS.Pinpoint.Types.CreateRecommenderConfiguration
import Network.AWS.Pinpoint.Types.CreateTemplateMessageBody
import Network.AWS.Pinpoint.Types.CustomDeliveryConfiguration
import Network.AWS.Pinpoint.Types.CustomMessageActivity
import Network.AWS.Pinpoint.Types.DefaultButtonConfiguration
import Network.AWS.Pinpoint.Types.DefaultMessage
import Network.AWS.Pinpoint.Types.DefaultPushNotificationMessage
import Network.AWS.Pinpoint.Types.DefaultPushNotificationTemplate
import Network.AWS.Pinpoint.Types.DirectMessageConfiguration
import Network.AWS.Pinpoint.Types.EmailChannelRequest
import Network.AWS.Pinpoint.Types.EmailChannelResponse
import Network.AWS.Pinpoint.Types.EmailMessage
import Network.AWS.Pinpoint.Types.EmailMessageActivity
import Network.AWS.Pinpoint.Types.EmailTemplateRequest
import Network.AWS.Pinpoint.Types.EmailTemplateResponse
import Network.AWS.Pinpoint.Types.EndpointBatchItem
import Network.AWS.Pinpoint.Types.EndpointBatchRequest
import Network.AWS.Pinpoint.Types.EndpointDemographic
import Network.AWS.Pinpoint.Types.EndpointItemResponse
import Network.AWS.Pinpoint.Types.EndpointLocation
import Network.AWS.Pinpoint.Types.EndpointMessageResult
import Network.AWS.Pinpoint.Types.EndpointRequest
import Network.AWS.Pinpoint.Types.EndpointResponse
import Network.AWS.Pinpoint.Types.EndpointSendConfiguration
import Network.AWS.Pinpoint.Types.EndpointUser
import Network.AWS.Pinpoint.Types.EndpointsResponse
import Network.AWS.Pinpoint.Types.Event
import Network.AWS.Pinpoint.Types.EventCondition
import Network.AWS.Pinpoint.Types.EventDimensions
import Network.AWS.Pinpoint.Types.EventFilter
import Network.AWS.Pinpoint.Types.EventItemResponse
import Network.AWS.Pinpoint.Types.EventStartCondition
import Network.AWS.Pinpoint.Types.EventStream
import Network.AWS.Pinpoint.Types.EventsBatch
import Network.AWS.Pinpoint.Types.EventsRequest
import Network.AWS.Pinpoint.Types.EventsResponse
import Network.AWS.Pinpoint.Types.ExportJobRequest
import Network.AWS.Pinpoint.Types.ExportJobResource
import Network.AWS.Pinpoint.Types.ExportJobResponse
import Network.AWS.Pinpoint.Types.ExportJobsResponse
import Network.AWS.Pinpoint.Types.GCMChannelRequest
import Network.AWS.Pinpoint.Types.GCMChannelResponse
import Network.AWS.Pinpoint.Types.GCMMessage
import Network.AWS.Pinpoint.Types.GPSCoordinates
import Network.AWS.Pinpoint.Types.GPSPointDimension
import Network.AWS.Pinpoint.Types.HoldoutActivity
import Network.AWS.Pinpoint.Types.ImportJobRequest
import Network.AWS.Pinpoint.Types.ImportJobResource
import Network.AWS.Pinpoint.Types.ImportJobResponse
import Network.AWS.Pinpoint.Types.ImportJobsResponse
import Network.AWS.Pinpoint.Types.InAppCampaignSchedule
import Network.AWS.Pinpoint.Types.InAppMessage
import Network.AWS.Pinpoint.Types.InAppMessageBodyConfig
import Network.AWS.Pinpoint.Types.InAppMessageButton
import Network.AWS.Pinpoint.Types.InAppMessageCampaign
import Network.AWS.Pinpoint.Types.InAppMessageContent
import Network.AWS.Pinpoint.Types.InAppMessageHeaderConfig
import Network.AWS.Pinpoint.Types.InAppMessagesResponse
import Network.AWS.Pinpoint.Types.InAppTemplateRequest
import Network.AWS.Pinpoint.Types.InAppTemplateResponse
import Network.AWS.Pinpoint.Types.ItemResponse
import Network.AWS.Pinpoint.Types.JourneyChannelSettings
import Network.AWS.Pinpoint.Types.JourneyCustomMessage
import Network.AWS.Pinpoint.Types.JourneyDateRangeKpiResponse
import Network.AWS.Pinpoint.Types.JourneyEmailMessage
import Network.AWS.Pinpoint.Types.JourneyExecutionActivityMetricsResponse
import Network.AWS.Pinpoint.Types.JourneyExecutionMetricsResponse
import Network.AWS.Pinpoint.Types.JourneyLimits
import Network.AWS.Pinpoint.Types.JourneyPushMessage
import Network.AWS.Pinpoint.Types.JourneyResponse
import Network.AWS.Pinpoint.Types.JourneySMSMessage
import Network.AWS.Pinpoint.Types.JourneySchedule
import Network.AWS.Pinpoint.Types.JourneyStateRequest
import Network.AWS.Pinpoint.Types.JourneysResponse
import Network.AWS.Pinpoint.Types.ListRecommenderConfigurationsResponse
import Network.AWS.Pinpoint.Types.Message
import Network.AWS.Pinpoint.Types.MessageBody
import Network.AWS.Pinpoint.Types.MessageConfiguration
import Network.AWS.Pinpoint.Types.MessageRequest
import Network.AWS.Pinpoint.Types.MessageResponse
import Network.AWS.Pinpoint.Types.MessageResult
import Network.AWS.Pinpoint.Types.MetricDimension
import Network.AWS.Pinpoint.Types.MultiConditionalBranch
import Network.AWS.Pinpoint.Types.MultiConditionalSplitActivity
import Network.AWS.Pinpoint.Types.NumberValidateRequest
import Network.AWS.Pinpoint.Types.NumberValidateResponse
import Network.AWS.Pinpoint.Types.OverrideButtonConfiguration
import Network.AWS.Pinpoint.Types.PublicEndpoint
import Network.AWS.Pinpoint.Types.PushMessageActivity
import Network.AWS.Pinpoint.Types.PushNotificationTemplateRequest
import Network.AWS.Pinpoint.Types.PushNotificationTemplateResponse
import Network.AWS.Pinpoint.Types.QuietTime
import Network.AWS.Pinpoint.Types.RandomSplitActivity
import Network.AWS.Pinpoint.Types.RandomSplitEntry
import Network.AWS.Pinpoint.Types.RawEmail
import Network.AWS.Pinpoint.Types.RecencyDimension
import Network.AWS.Pinpoint.Types.RecommenderConfigurationResponse
import Network.AWS.Pinpoint.Types.ResultRow
import Network.AWS.Pinpoint.Types.ResultRowValue
import Network.AWS.Pinpoint.Types.SMSChannelRequest
import Network.AWS.Pinpoint.Types.SMSChannelResponse
import Network.AWS.Pinpoint.Types.SMSMessage
import Network.AWS.Pinpoint.Types.SMSMessageActivity
import Network.AWS.Pinpoint.Types.SMSTemplateRequest
import Network.AWS.Pinpoint.Types.SMSTemplateResponse
import Network.AWS.Pinpoint.Types.Schedule
import Network.AWS.Pinpoint.Types.SegmentBehaviors
import Network.AWS.Pinpoint.Types.SegmentCondition
import Network.AWS.Pinpoint.Types.SegmentDemographics
import Network.AWS.Pinpoint.Types.SegmentDimensions
import Network.AWS.Pinpoint.Types.SegmentGroup
import Network.AWS.Pinpoint.Types.SegmentGroupList
import Network.AWS.Pinpoint.Types.SegmentImportResource
import Network.AWS.Pinpoint.Types.SegmentLocation
import Network.AWS.Pinpoint.Types.SegmentReference
import Network.AWS.Pinpoint.Types.SegmentResponse
import Network.AWS.Pinpoint.Types.SegmentsResponse
import Network.AWS.Pinpoint.Types.SendUsersMessageRequest
import Network.AWS.Pinpoint.Types.SendUsersMessageResponse
import Network.AWS.Pinpoint.Types.Session
import Network.AWS.Pinpoint.Types.SetDimension
import Network.AWS.Pinpoint.Types.SimpleCondition
import Network.AWS.Pinpoint.Types.SimpleEmail
import Network.AWS.Pinpoint.Types.SimpleEmailPart
import Network.AWS.Pinpoint.Types.StartCondition
import Network.AWS.Pinpoint.Types.TagsModel
import Network.AWS.Pinpoint.Types.Template
import Network.AWS.Pinpoint.Types.TemplateActiveVersionRequest
import Network.AWS.Pinpoint.Types.TemplateConfiguration
import Network.AWS.Pinpoint.Types.TemplateCreateMessageBody
import Network.AWS.Pinpoint.Types.TemplateResponse
import Network.AWS.Pinpoint.Types.TemplateVersionResponse
import Network.AWS.Pinpoint.Types.TemplateVersionsResponse
import Network.AWS.Pinpoint.Types.TemplatesResponse
import Network.AWS.Pinpoint.Types.TreatmentResource
import Network.AWS.Pinpoint.Types.UpdateAttributesRequest
import Network.AWS.Pinpoint.Types.UpdateRecommenderConfiguration
import Network.AWS.Pinpoint.Types.VoiceChannelRequest
import Network.AWS.Pinpoint.Types.VoiceChannelResponse
import Network.AWS.Pinpoint.Types.VoiceMessage
import Network.AWS.Pinpoint.Types.VoiceTemplateRequest
import Network.AWS.Pinpoint.Types.VoiceTemplateResponse
import Network.AWS.Pinpoint.Types.WaitActivity
import Network.AWS.Pinpoint.Types.WaitTime
import Network.AWS.Pinpoint.Types.WriteApplicationSettingsRequest
import Network.AWS.Pinpoint.Types.WriteCampaignRequest
import Network.AWS.Pinpoint.Types.WriteEventStream
import Network.AWS.Pinpoint.Types.WriteJourneyRequest
import Network.AWS.Pinpoint.Types.WriteSegmentRequest
import Network.AWS.Pinpoint.Types.WriteTreatmentResource
import Network.AWS.Pinpoint.UntagResource
import Network.AWS.Pinpoint.UpdateAdmChannel
import Network.AWS.Pinpoint.UpdateApnsChannel
import Network.AWS.Pinpoint.UpdateApnsSandboxChannel
import Network.AWS.Pinpoint.UpdateApnsVoipChannel
import Network.AWS.Pinpoint.UpdateApnsVoipSandboxChannel
import Network.AWS.Pinpoint.UpdateApplicationSettings
import Network.AWS.Pinpoint.UpdateBaiduChannel
import Network.AWS.Pinpoint.UpdateCampaign
import Network.AWS.Pinpoint.UpdateEmailChannel
import Network.AWS.Pinpoint.UpdateEmailTemplate
import Network.AWS.Pinpoint.UpdateEndpoint
import Network.AWS.Pinpoint.UpdateEndpointsBatch
import Network.AWS.Pinpoint.UpdateGcmChannel
import Network.AWS.Pinpoint.UpdateInAppTemplate
import Network.AWS.Pinpoint.UpdateJourney
import Network.AWS.Pinpoint.UpdateJourneyState
import Network.AWS.Pinpoint.UpdatePushTemplate
import Network.AWS.Pinpoint.UpdateRecommenderConfiguration
import Network.AWS.Pinpoint.UpdateSegment
import Network.AWS.Pinpoint.UpdateSmsChannel
import Network.AWS.Pinpoint.UpdateSmsTemplate
import Network.AWS.Pinpoint.UpdateTemplateActiveVersion
import Network.AWS.Pinpoint.UpdateVoiceChannel
import Network.AWS.Pinpoint.UpdateVoiceTemplate
