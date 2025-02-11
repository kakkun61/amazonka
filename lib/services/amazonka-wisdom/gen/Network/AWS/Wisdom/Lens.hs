{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Wisdom.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Wisdom.Lens
  ( -- * Operations

    -- ** ListAssistantAssociations
    listAssistantAssociations_nextToken,
    listAssistantAssociations_maxResults,
    listAssistantAssociations_assistantId,
    listAssistantAssociationsResponse_nextToken,
    listAssistantAssociationsResponse_httpStatus,
    listAssistantAssociationsResponse_assistantAssociationSummaries,

    -- ** GetRecommendations
    getRecommendations_waitTimeSeconds,
    getRecommendations_maxResults,
    getRecommendations_assistantId,
    getRecommendations_sessionId,
    getRecommendationsResponse_httpStatus,
    getRecommendationsResponse_recommendations,

    -- ** SearchContent
    searchContent_nextToken,
    searchContent_maxResults,
    searchContent_knowledgeBaseId,
    searchContent_searchExpression,
    searchContentResponse_nextToken,
    searchContentResponse_httpStatus,
    searchContentResponse_contentSummaries,

    -- ** RemoveKnowledgeBaseTemplateUri
    removeKnowledgeBaseTemplateUri_knowledgeBaseId,
    removeKnowledgeBaseTemplateUriResponse_httpStatus,

    -- ** GetAssistant
    getAssistant_assistantId,
    getAssistantResponse_assistant,
    getAssistantResponse_httpStatus,

    -- ** ListTagsForResource
    listTagsForResource_resourceArn,
    listTagsForResourceResponse_tags,
    listTagsForResourceResponse_httpStatus,

    -- ** ListAssistants
    listAssistants_nextToken,
    listAssistants_maxResults,
    listAssistantsResponse_nextToken,
    listAssistantsResponse_httpStatus,
    listAssistantsResponse_assistantSummaries,

    -- ** UpdateKnowledgeBaseTemplateUri
    updateKnowledgeBaseTemplateUri_knowledgeBaseId,
    updateKnowledgeBaseTemplateUri_templateUri,
    updateKnowledgeBaseTemplateUriResponse_knowledgeBase,
    updateKnowledgeBaseTemplateUriResponse_httpStatus,

    -- ** ListContents
    listContents_nextToken,
    listContents_maxResults,
    listContents_knowledgeBaseId,
    listContentsResponse_nextToken,
    listContentsResponse_httpStatus,
    listContentsResponse_contentSummaries,

    -- ** DeleteContent
    deleteContent_contentId,
    deleteContent_knowledgeBaseId,
    deleteContentResponse_httpStatus,

    -- ** UpdateContent
    updateContent_overrideLinkOutUri,
    updateContent_removeOverrideLinkOutUri,
    updateContent_metadata,
    updateContent_title,
    updateContent_revisionId,
    updateContent_uploadId,
    updateContent_contentId,
    updateContent_knowledgeBaseId,
    updateContentResponse_content,
    updateContentResponse_httpStatus,

    -- ** CreateAssistant
    createAssistant_clientToken,
    createAssistant_description,
    createAssistant_serverSideEncryptionConfiguration,
    createAssistant_tags,
    createAssistant_name,
    createAssistant_type,
    createAssistantResponse_assistant,
    createAssistantResponse_httpStatus,

    -- ** GetContentSummary
    getContentSummary_contentId,
    getContentSummary_knowledgeBaseId,
    getContentSummaryResponse_contentSummary,
    getContentSummaryResponse_httpStatus,

    -- ** NotifyRecommendationsReceived
    notifyRecommendationsReceived_assistantId,
    notifyRecommendationsReceived_recommendationIds,
    notifyRecommendationsReceived_sessionId,
    notifyRecommendationsReceivedResponse_recommendationIds,
    notifyRecommendationsReceivedResponse_errors,
    notifyRecommendationsReceivedResponse_httpStatus,

    -- ** DeleteAssistantAssociation
    deleteAssistantAssociation_assistantAssociationId,
    deleteAssistantAssociation_assistantId,
    deleteAssistantAssociationResponse_httpStatus,

    -- ** GetContent
    getContent_contentId,
    getContent_knowledgeBaseId,
    getContentResponse_content,
    getContentResponse_httpStatus,

    -- ** StartContentUpload
    startContentUpload_contentType,
    startContentUpload_knowledgeBaseId,
    startContentUploadResponse_httpStatus,
    startContentUploadResponse_headersToInclude,
    startContentUploadResponse_uploadId,
    startContentUploadResponse_url,
    startContentUploadResponse_urlExpiry,

    -- ** CreateSession
    createSession_clientToken,
    createSession_description,
    createSession_tags,
    createSession_assistantId,
    createSession_name,
    createSessionResponse_session,
    createSessionResponse_httpStatus,

    -- ** CreateContent
    createContent_overrideLinkOutUri,
    createContent_clientToken,
    createContent_metadata,
    createContent_title,
    createContent_tags,
    createContent_knowledgeBaseId,
    createContent_name,
    createContent_uploadId,
    createContentResponse_content,
    createContentResponse_httpStatus,

    -- ** DeleteAssistant
    deleteAssistant_assistantId,
    deleteAssistantResponse_httpStatus,

    -- ** GetSession
    getSession_assistantId,
    getSession_sessionId,
    getSessionResponse_session,
    getSessionResponse_httpStatus,

    -- ** TagResource
    tagResource_resourceArn,
    tagResource_tags,
    tagResourceResponse_httpStatus,

    -- ** CreateKnowledgeBase
    createKnowledgeBase_clientToken,
    createKnowledgeBase_renderingConfiguration,
    createKnowledgeBase_sourceConfiguration,
    createKnowledgeBase_description,
    createKnowledgeBase_serverSideEncryptionConfiguration,
    createKnowledgeBase_tags,
    createKnowledgeBase_knowledgeBaseType,
    createKnowledgeBase_name,
    createKnowledgeBaseResponse_knowledgeBase,
    createKnowledgeBaseResponse_httpStatus,

    -- ** GetAssistantAssociation
    getAssistantAssociation_assistantAssociationId,
    getAssistantAssociation_assistantId,
    getAssistantAssociationResponse_assistantAssociation,
    getAssistantAssociationResponse_httpStatus,

    -- ** UntagResource
    untagResource_resourceArn,
    untagResource_tagKeys,
    untagResourceResponse_httpStatus,

    -- ** SearchSessions
    searchSessions_nextToken,
    searchSessions_maxResults,
    searchSessions_assistantId,
    searchSessions_searchExpression,
    searchSessionsResponse_nextToken,
    searchSessionsResponse_httpStatus,
    searchSessionsResponse_sessionSummaries,

    -- ** ListKnowledgeBases
    listKnowledgeBases_nextToken,
    listKnowledgeBases_maxResults,
    listKnowledgeBasesResponse_nextToken,
    listKnowledgeBasesResponse_httpStatus,
    listKnowledgeBasesResponse_knowledgeBaseSummaries,

    -- ** QueryAssistant
    queryAssistant_nextToken,
    queryAssistant_maxResults,
    queryAssistant_assistantId,
    queryAssistant_queryText,
    queryAssistantResponse_nextToken,
    queryAssistantResponse_httpStatus,
    queryAssistantResponse_results,

    -- ** DeleteKnowledgeBase
    deleteKnowledgeBase_knowledgeBaseId,
    deleteKnowledgeBaseResponse_httpStatus,

    -- ** CreateAssistantAssociation
    createAssistantAssociation_clientToken,
    createAssistantAssociation_tags,
    createAssistantAssociation_assistantId,
    createAssistantAssociation_association,
    createAssistantAssociation_associationType,
    createAssistantAssociationResponse_assistantAssociation,
    createAssistantAssociationResponse_httpStatus,

    -- ** GetKnowledgeBase
    getKnowledgeBase_knowledgeBaseId,
    getKnowledgeBaseResponse_knowledgeBase,
    getKnowledgeBaseResponse_httpStatus,

    -- * Types

    -- ** AppIntegrationsConfiguration
    appIntegrationsConfiguration_appIntegrationArn,
    appIntegrationsConfiguration_objectFields,

    -- ** AssistantAssociationData
    assistantAssociationData_tags,
    assistantAssociationData_assistantArn,
    assistantAssociationData_assistantAssociationArn,
    assistantAssociationData_assistantAssociationId,
    assistantAssociationData_assistantId,
    assistantAssociationData_associationData,
    assistantAssociationData_associationType,

    -- ** AssistantAssociationInputData
    assistantAssociationInputData_knowledgeBaseId,

    -- ** AssistantAssociationOutputData
    assistantAssociationOutputData_knowledgeBaseAssociation,

    -- ** AssistantAssociationSummary
    assistantAssociationSummary_tags,
    assistantAssociationSummary_assistantArn,
    assistantAssociationSummary_assistantAssociationArn,
    assistantAssociationSummary_assistantAssociationId,
    assistantAssociationSummary_assistantId,
    assistantAssociationSummary_associationData,
    assistantAssociationSummary_associationType,

    -- ** AssistantData
    assistantData_description,
    assistantData_serverSideEncryptionConfiguration,
    assistantData_tags,
    assistantData_assistantArn,
    assistantData_assistantId,
    assistantData_name,
    assistantData_status,
    assistantData_type,

    -- ** AssistantSummary
    assistantSummary_description,
    assistantSummary_serverSideEncryptionConfiguration,
    assistantSummary_tags,
    assistantSummary_assistantArn,
    assistantSummary_assistantId,
    assistantSummary_name,
    assistantSummary_status,
    assistantSummary_type,

    -- ** ContentData
    contentData_linkOutUri,
    contentData_tags,
    contentData_contentArn,
    contentData_contentId,
    contentData_contentType,
    contentData_knowledgeBaseArn,
    contentData_knowledgeBaseId,
    contentData_metadata,
    contentData_name,
    contentData_revisionId,
    contentData_status,
    contentData_title,
    contentData_url,
    contentData_urlExpiry,

    -- ** ContentReference
    contentReference_contentArn,
    contentReference_contentId,
    contentReference_knowledgeBaseArn,
    contentReference_knowledgeBaseId,

    -- ** ContentSummary
    contentSummary_tags,
    contentSummary_contentArn,
    contentSummary_contentId,
    contentSummary_contentType,
    contentSummary_knowledgeBaseArn,
    contentSummary_knowledgeBaseId,
    contentSummary_metadata,
    contentSummary_name,
    contentSummary_revisionId,
    contentSummary_status,
    contentSummary_title,

    -- ** Document
    document_excerpt,
    document_title,
    document_contentReference,

    -- ** DocumentText
    documentText_text,
    documentText_highlights,

    -- ** Filter
    filter_field,
    filter_operator,
    filter_value,

    -- ** Highlight
    highlight_endOffsetExclusive,
    highlight_beginOffsetInclusive,

    -- ** KnowledgeBaseAssociationData
    knowledgeBaseAssociationData_knowledgeBaseArn,
    knowledgeBaseAssociationData_knowledgeBaseId,

    -- ** KnowledgeBaseData
    knowledgeBaseData_renderingConfiguration,
    knowledgeBaseData_sourceConfiguration,
    knowledgeBaseData_lastContentModificationTime,
    knowledgeBaseData_description,
    knowledgeBaseData_serverSideEncryptionConfiguration,
    knowledgeBaseData_tags,
    knowledgeBaseData_knowledgeBaseArn,
    knowledgeBaseData_knowledgeBaseId,
    knowledgeBaseData_knowledgeBaseType,
    knowledgeBaseData_name,
    knowledgeBaseData_status,

    -- ** KnowledgeBaseSummary
    knowledgeBaseSummary_renderingConfiguration,
    knowledgeBaseSummary_sourceConfiguration,
    knowledgeBaseSummary_description,
    knowledgeBaseSummary_serverSideEncryptionConfiguration,
    knowledgeBaseSummary_tags,
    knowledgeBaseSummary_knowledgeBaseArn,
    knowledgeBaseSummary_knowledgeBaseId,
    knowledgeBaseSummary_knowledgeBaseType,
    knowledgeBaseSummary_name,
    knowledgeBaseSummary_status,

    -- ** NotifyRecommendationsReceivedError
    notifyRecommendationsReceivedError_recommendationId,
    notifyRecommendationsReceivedError_message,

    -- ** RecommendationData
    recommendationData_relevanceLevel,
    recommendationData_relevanceScore,
    recommendationData_document,
    recommendationData_recommendationId,

    -- ** RenderingConfiguration
    renderingConfiguration_templateUri,

    -- ** ResultData
    resultData_relevanceScore,
    resultData_document,
    resultData_resultId,

    -- ** SearchExpression
    searchExpression_filters,

    -- ** ServerSideEncryptionConfiguration
    serverSideEncryptionConfiguration_kmsKeyId,

    -- ** SessionData
    sessionData_description,
    sessionData_tags,
    sessionData_name,
    sessionData_sessionArn,
    sessionData_sessionId,

    -- ** SessionSummary
    sessionSummary_assistantArn,
    sessionSummary_assistantId,
    sessionSummary_sessionArn,
    sessionSummary_sessionId,

    -- ** SourceConfiguration
    sourceConfiguration_appIntegrations,
  )
where

import Network.AWS.Wisdom.CreateAssistant
import Network.AWS.Wisdom.CreateAssistantAssociation
import Network.AWS.Wisdom.CreateContent
import Network.AWS.Wisdom.CreateKnowledgeBase
import Network.AWS.Wisdom.CreateSession
import Network.AWS.Wisdom.DeleteAssistant
import Network.AWS.Wisdom.DeleteAssistantAssociation
import Network.AWS.Wisdom.DeleteContent
import Network.AWS.Wisdom.DeleteKnowledgeBase
import Network.AWS.Wisdom.GetAssistant
import Network.AWS.Wisdom.GetAssistantAssociation
import Network.AWS.Wisdom.GetContent
import Network.AWS.Wisdom.GetContentSummary
import Network.AWS.Wisdom.GetKnowledgeBase
import Network.AWS.Wisdom.GetRecommendations
import Network.AWS.Wisdom.GetSession
import Network.AWS.Wisdom.ListAssistantAssociations
import Network.AWS.Wisdom.ListAssistants
import Network.AWS.Wisdom.ListContents
import Network.AWS.Wisdom.ListKnowledgeBases
import Network.AWS.Wisdom.ListTagsForResource
import Network.AWS.Wisdom.NotifyRecommendationsReceived
import Network.AWS.Wisdom.QueryAssistant
import Network.AWS.Wisdom.RemoveKnowledgeBaseTemplateUri
import Network.AWS.Wisdom.SearchContent
import Network.AWS.Wisdom.SearchSessions
import Network.AWS.Wisdom.StartContentUpload
import Network.AWS.Wisdom.TagResource
import Network.AWS.Wisdom.Types.AppIntegrationsConfiguration
import Network.AWS.Wisdom.Types.AssistantAssociationData
import Network.AWS.Wisdom.Types.AssistantAssociationInputData
import Network.AWS.Wisdom.Types.AssistantAssociationOutputData
import Network.AWS.Wisdom.Types.AssistantAssociationSummary
import Network.AWS.Wisdom.Types.AssistantData
import Network.AWS.Wisdom.Types.AssistantSummary
import Network.AWS.Wisdom.Types.ContentData
import Network.AWS.Wisdom.Types.ContentReference
import Network.AWS.Wisdom.Types.ContentSummary
import Network.AWS.Wisdom.Types.Document
import Network.AWS.Wisdom.Types.DocumentText
import Network.AWS.Wisdom.Types.Filter
import Network.AWS.Wisdom.Types.Highlight
import Network.AWS.Wisdom.Types.KnowledgeBaseAssociationData
import Network.AWS.Wisdom.Types.KnowledgeBaseData
import Network.AWS.Wisdom.Types.KnowledgeBaseSummary
import Network.AWS.Wisdom.Types.NotifyRecommendationsReceivedError
import Network.AWS.Wisdom.Types.RecommendationData
import Network.AWS.Wisdom.Types.RenderingConfiguration
import Network.AWS.Wisdom.Types.ResultData
import Network.AWS.Wisdom.Types.SearchExpression
import Network.AWS.Wisdom.Types.ServerSideEncryptionConfiguration
import Network.AWS.Wisdom.Types.SessionData
import Network.AWS.Wisdom.Types.SessionSummary
import Network.AWS.Wisdom.Types.SourceConfiguration
import Network.AWS.Wisdom.UntagResource
import Network.AWS.Wisdom.UpdateContent
import Network.AWS.Wisdom.UpdateKnowledgeBaseTemplateUri
