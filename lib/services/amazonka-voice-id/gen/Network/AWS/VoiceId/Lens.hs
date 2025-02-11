{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.VoiceId.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.VoiceId.Lens
  ( -- * Operations

    -- ** DescribeFraudsterRegistrationJob
    describeFraudsterRegistrationJob_domainId,
    describeFraudsterRegistrationJob_jobId,
    describeFraudsterRegistrationJobResponse_job,
    describeFraudsterRegistrationJobResponse_httpStatus,

    -- ** DeleteSpeaker
    deleteSpeaker_domainId,
    deleteSpeaker_speakerId,

    -- ** ListSpeakers
    listSpeakers_nextToken,
    listSpeakers_maxResults,
    listSpeakers_domainId,
    listSpeakersResponse_speakerSummaries,
    listSpeakersResponse_nextToken,
    listSpeakersResponse_httpStatus,

    -- ** ListTagsForResource
    listTagsForResource_resourceArn,
    listTagsForResourceResponse_tags,
    listTagsForResourceResponse_httpStatus,

    -- ** EvaluateSession
    evaluateSession_domainId,
    evaluateSession_sessionNameOrId,
    evaluateSessionResponse_fraudDetectionResult,
    evaluateSessionResponse_streamingStatus,
    evaluateSessionResponse_authenticationResult,
    evaluateSessionResponse_domainId,
    evaluateSessionResponse_sessionId,
    evaluateSessionResponse_sessionName,
    evaluateSessionResponse_httpStatus,

    -- ** DescribeSpeakerEnrollmentJob
    describeSpeakerEnrollmentJob_domainId,
    describeSpeakerEnrollmentJob_jobId,
    describeSpeakerEnrollmentJobResponse_job,
    describeSpeakerEnrollmentJobResponse_httpStatus,

    -- ** DeleteFraudster
    deleteFraudster_domainId,
    deleteFraudster_fraudsterId,

    -- ** ListFraudsterRegistrationJobs
    listFraudsterRegistrationJobs_nextToken,
    listFraudsterRegistrationJobs_jobStatus,
    listFraudsterRegistrationJobs_maxResults,
    listFraudsterRegistrationJobs_domainId,
    listFraudsterRegistrationJobsResponse_nextToken,
    listFraudsterRegistrationJobsResponse_jobSummaries,
    listFraudsterRegistrationJobsResponse_httpStatus,

    -- ** DescribeFraudster
    describeFraudster_domainId,
    describeFraudster_fraudsterId,
    describeFraudsterResponse_fraudster,
    describeFraudsterResponse_httpStatus,

    -- ** ListSpeakerEnrollmentJobs
    listSpeakerEnrollmentJobs_nextToken,
    listSpeakerEnrollmentJobs_jobStatus,
    listSpeakerEnrollmentJobs_maxResults,
    listSpeakerEnrollmentJobs_domainId,
    listSpeakerEnrollmentJobsResponse_nextToken,
    listSpeakerEnrollmentJobsResponse_jobSummaries,
    listSpeakerEnrollmentJobsResponse_httpStatus,

    -- ** CreateDomain
    createDomain_clientToken,
    createDomain_description,
    createDomain_tags,
    createDomain_name,
    createDomain_serverSideEncryptionConfiguration,
    createDomainResponse_domain,
    createDomainResponse_httpStatus,

    -- ** StartFraudsterRegistrationJob
    startFraudsterRegistrationJob_clientToken,
    startFraudsterRegistrationJob_jobName,
    startFraudsterRegistrationJob_registrationConfig,
    startFraudsterRegistrationJob_dataAccessRoleArn,
    startFraudsterRegistrationJob_domainId,
    startFraudsterRegistrationJob_inputDataConfig,
    startFraudsterRegistrationJob_outputDataConfig,
    startFraudsterRegistrationJobResponse_job,
    startFraudsterRegistrationJobResponse_httpStatus,

    -- ** DescribeDomain
    describeDomain_domainId,
    describeDomainResponse_domain,
    describeDomainResponse_httpStatus,

    -- ** TagResource
    tagResource_resourceArn,
    tagResource_tags,
    tagResourceResponse_httpStatus,

    -- ** StartSpeakerEnrollmentJob
    startSpeakerEnrollmentJob_clientToken,
    startSpeakerEnrollmentJob_jobName,
    startSpeakerEnrollmentJob_enrollmentConfig,
    startSpeakerEnrollmentJob_dataAccessRoleArn,
    startSpeakerEnrollmentJob_domainId,
    startSpeakerEnrollmentJob_inputDataConfig,
    startSpeakerEnrollmentJob_outputDataConfig,
    startSpeakerEnrollmentJobResponse_job,
    startSpeakerEnrollmentJobResponse_httpStatus,

    -- ** UntagResource
    untagResource_resourceArn,
    untagResource_tagKeys,
    untagResourceResponse_httpStatus,

    -- ** OptOutSpeaker
    optOutSpeaker_domainId,
    optOutSpeaker_speakerId,
    optOutSpeakerResponse_speaker,
    optOutSpeakerResponse_httpStatus,

    -- ** DescribeSpeaker
    describeSpeaker_domainId,
    describeSpeaker_speakerId,
    describeSpeakerResponse_speaker,
    describeSpeakerResponse_httpStatus,

    -- ** DeleteDomain
    deleteDomain_domainId,

    -- ** UpdateDomain
    updateDomain_description,
    updateDomain_domainId,
    updateDomain_name,
    updateDomain_serverSideEncryptionConfiguration,
    updateDomainResponse_domain,
    updateDomainResponse_httpStatus,

    -- ** ListDomains
    listDomains_nextToken,
    listDomains_maxResults,
    listDomainsResponse_nextToken,
    listDomainsResponse_domainSummaries,
    listDomainsResponse_httpStatus,

    -- * Types

    -- ** AuthenticationConfiguration
    authenticationConfiguration_acceptanceThreshold,

    -- ** AuthenticationResult
    authenticationResult_customerSpeakerId,
    authenticationResult_score,
    authenticationResult_authenticationResultId,
    authenticationResult_decision,
    authenticationResult_configuration,
    authenticationResult_audioAggregationStartedAt,
    authenticationResult_generatedSpeakerId,
    authenticationResult_audioAggregationEndedAt,

    -- ** Domain
    domain_domainStatus,
    domain_arn,
    domain_createdAt,
    domain_name,
    domain_domainId,
    domain_updatedAt,
    domain_description,
    domain_serverSideEncryptionConfiguration,

    -- ** DomainSummary
    domainSummary_domainStatus,
    domainSummary_arn,
    domainSummary_createdAt,
    domainSummary_name,
    domainSummary_domainId,
    domainSummary_updatedAt,
    domainSummary_description,
    domainSummary_serverSideEncryptionConfiguration,

    -- ** EnrollmentConfig
    enrollmentConfig_fraudDetectionConfig,
    enrollmentConfig_existingEnrollmentAction,

    -- ** EnrollmentJobFraudDetectionConfig
    enrollmentJobFraudDetectionConfig_riskThreshold,
    enrollmentJobFraudDetectionConfig_fraudDetectionAction,

    -- ** FailureDetails
    failureDetails_message,
    failureDetails_statusCode,

    -- ** FraudDetectionConfiguration
    fraudDetectionConfiguration_riskThreshold,

    -- ** FraudDetectionResult
    fraudDetectionResult_reasons,
    fraudDetectionResult_riskDetails,
    fraudDetectionResult_fraudDetectionResultId,
    fraudDetectionResult_decision,
    fraudDetectionResult_configuration,
    fraudDetectionResult_audioAggregationStartedAt,
    fraudDetectionResult_audioAggregationEndedAt,

    -- ** FraudRiskDetails
    fraudRiskDetails_knownFraudsterRisk,

    -- ** Fraudster
    fraudster_createdAt,
    fraudster_generatedFraudsterId,
    fraudster_domainId,

    -- ** FraudsterRegistrationJob
    fraudsterRegistrationJob_failureDetails,
    fraudsterRegistrationJob_jobId,
    fraudsterRegistrationJob_createdAt,
    fraudsterRegistrationJob_jobName,
    fraudsterRegistrationJob_endedAt,
    fraudsterRegistrationJob_inputDataConfig,
    fraudsterRegistrationJob_jobProgress,
    fraudsterRegistrationJob_outputDataConfig,
    fraudsterRegistrationJob_dataAccessRoleArn,
    fraudsterRegistrationJob_domainId,
    fraudsterRegistrationJob_jobStatus,
    fraudsterRegistrationJob_registrationConfig,

    -- ** FraudsterRegistrationJobSummary
    fraudsterRegistrationJobSummary_failureDetails,
    fraudsterRegistrationJobSummary_jobId,
    fraudsterRegistrationJobSummary_createdAt,
    fraudsterRegistrationJobSummary_jobName,
    fraudsterRegistrationJobSummary_endedAt,
    fraudsterRegistrationJobSummary_jobProgress,
    fraudsterRegistrationJobSummary_domainId,
    fraudsterRegistrationJobSummary_jobStatus,

    -- ** InputDataConfig
    inputDataConfig_s3Uri,

    -- ** JobProgress
    jobProgress_percentComplete,

    -- ** KnownFraudsterRisk
    knownFraudsterRisk_generatedFraudsterId,
    knownFraudsterRisk_riskScore,

    -- ** OutputDataConfig
    outputDataConfig_kmsKeyId,
    outputDataConfig_s3Uri,

    -- ** RegistrationConfig
    registrationConfig_duplicateRegistrationAction,
    registrationConfig_fraudsterSimilarityThreshold,

    -- ** ServerSideEncryptionConfiguration
    serverSideEncryptionConfiguration_kmsKeyId,

    -- ** Speaker
    speaker_status,
    speaker_customerSpeakerId,
    speaker_createdAt,
    speaker_domainId,
    speaker_updatedAt,
    speaker_generatedSpeakerId,

    -- ** SpeakerEnrollmentJob
    speakerEnrollmentJob_failureDetails,
    speakerEnrollmentJob_jobId,
    speakerEnrollmentJob_createdAt,
    speakerEnrollmentJob_jobName,
    speakerEnrollmentJob_endedAt,
    speakerEnrollmentJob_enrollmentConfig,
    speakerEnrollmentJob_inputDataConfig,
    speakerEnrollmentJob_jobProgress,
    speakerEnrollmentJob_outputDataConfig,
    speakerEnrollmentJob_dataAccessRoleArn,
    speakerEnrollmentJob_domainId,
    speakerEnrollmentJob_jobStatus,

    -- ** SpeakerEnrollmentJobSummary
    speakerEnrollmentJobSummary_failureDetails,
    speakerEnrollmentJobSummary_jobId,
    speakerEnrollmentJobSummary_createdAt,
    speakerEnrollmentJobSummary_jobName,
    speakerEnrollmentJobSummary_endedAt,
    speakerEnrollmentJobSummary_jobProgress,
    speakerEnrollmentJobSummary_domainId,
    speakerEnrollmentJobSummary_jobStatus,

    -- ** SpeakerSummary
    speakerSummary_status,
    speakerSummary_customerSpeakerId,
    speakerSummary_createdAt,
    speakerSummary_domainId,
    speakerSummary_updatedAt,
    speakerSummary_generatedSpeakerId,

    -- ** Tag
    tag_key,
    tag_value,
  )
where

import Network.AWS.VoiceId.CreateDomain
import Network.AWS.VoiceId.DeleteDomain
import Network.AWS.VoiceId.DeleteFraudster
import Network.AWS.VoiceId.DeleteSpeaker
import Network.AWS.VoiceId.DescribeDomain
import Network.AWS.VoiceId.DescribeFraudster
import Network.AWS.VoiceId.DescribeFraudsterRegistrationJob
import Network.AWS.VoiceId.DescribeSpeaker
import Network.AWS.VoiceId.DescribeSpeakerEnrollmentJob
import Network.AWS.VoiceId.EvaluateSession
import Network.AWS.VoiceId.ListDomains
import Network.AWS.VoiceId.ListFraudsterRegistrationJobs
import Network.AWS.VoiceId.ListSpeakerEnrollmentJobs
import Network.AWS.VoiceId.ListSpeakers
import Network.AWS.VoiceId.ListTagsForResource
import Network.AWS.VoiceId.OptOutSpeaker
import Network.AWS.VoiceId.StartFraudsterRegistrationJob
import Network.AWS.VoiceId.StartSpeakerEnrollmentJob
import Network.AWS.VoiceId.TagResource
import Network.AWS.VoiceId.Types.AuthenticationConfiguration
import Network.AWS.VoiceId.Types.AuthenticationResult
import Network.AWS.VoiceId.Types.Domain
import Network.AWS.VoiceId.Types.DomainSummary
import Network.AWS.VoiceId.Types.EnrollmentConfig
import Network.AWS.VoiceId.Types.EnrollmentJobFraudDetectionConfig
import Network.AWS.VoiceId.Types.FailureDetails
import Network.AWS.VoiceId.Types.FraudDetectionConfiguration
import Network.AWS.VoiceId.Types.FraudDetectionResult
import Network.AWS.VoiceId.Types.FraudRiskDetails
import Network.AWS.VoiceId.Types.Fraudster
import Network.AWS.VoiceId.Types.FraudsterRegistrationJob
import Network.AWS.VoiceId.Types.FraudsterRegistrationJobSummary
import Network.AWS.VoiceId.Types.InputDataConfig
import Network.AWS.VoiceId.Types.JobProgress
import Network.AWS.VoiceId.Types.KnownFraudsterRisk
import Network.AWS.VoiceId.Types.OutputDataConfig
import Network.AWS.VoiceId.Types.RegistrationConfig
import Network.AWS.VoiceId.Types.ServerSideEncryptionConfiguration
import Network.AWS.VoiceId.Types.Speaker
import Network.AWS.VoiceId.Types.SpeakerEnrollmentJob
import Network.AWS.VoiceId.Types.SpeakerEnrollmentJobSummary
import Network.AWS.VoiceId.Types.SpeakerSummary
import Network.AWS.VoiceId.Types.Tag
import Network.AWS.VoiceId.UntagResource
import Network.AWS.VoiceId.UpdateDomain
