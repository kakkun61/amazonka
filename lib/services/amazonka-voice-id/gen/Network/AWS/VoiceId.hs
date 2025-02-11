{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.AWS.VoiceId
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2021-09-27@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- Amazon Connect Voice ID provides real-time caller authentication and
-- fraud screening. This guide describes the APIs used for this service.
module Network.AWS.VoiceId
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** ValidationException
    _ValidationException,

    -- ** AccessDeniedException
    _AccessDeniedException,

    -- ** ConflictException
    _ConflictException,

    -- ** ServiceQuotaExceededException
    _ServiceQuotaExceededException,

    -- ** ThrottlingException
    _ThrottlingException,

    -- ** InternalServerException
    _InternalServerException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** DescribeFraudsterRegistrationJob
    DescribeFraudsterRegistrationJob (DescribeFraudsterRegistrationJob'),
    newDescribeFraudsterRegistrationJob,
    DescribeFraudsterRegistrationJobResponse (DescribeFraudsterRegistrationJobResponse'),
    newDescribeFraudsterRegistrationJobResponse,

    -- ** DeleteSpeaker
    DeleteSpeaker (DeleteSpeaker'),
    newDeleteSpeaker,
    DeleteSpeakerResponse (DeleteSpeakerResponse'),
    newDeleteSpeakerResponse,

    -- ** ListSpeakers
    ListSpeakers (ListSpeakers'),
    newListSpeakers,
    ListSpeakersResponse (ListSpeakersResponse'),
    newListSpeakersResponse,

    -- ** ListTagsForResource
    ListTagsForResource (ListTagsForResource'),
    newListTagsForResource,
    ListTagsForResourceResponse (ListTagsForResourceResponse'),
    newListTagsForResourceResponse,

    -- ** EvaluateSession
    EvaluateSession (EvaluateSession'),
    newEvaluateSession,
    EvaluateSessionResponse (EvaluateSessionResponse'),
    newEvaluateSessionResponse,

    -- ** DescribeSpeakerEnrollmentJob
    DescribeSpeakerEnrollmentJob (DescribeSpeakerEnrollmentJob'),
    newDescribeSpeakerEnrollmentJob,
    DescribeSpeakerEnrollmentJobResponse (DescribeSpeakerEnrollmentJobResponse'),
    newDescribeSpeakerEnrollmentJobResponse,

    -- ** DeleteFraudster
    DeleteFraudster (DeleteFraudster'),
    newDeleteFraudster,
    DeleteFraudsterResponse (DeleteFraudsterResponse'),
    newDeleteFraudsterResponse,

    -- ** ListFraudsterRegistrationJobs
    ListFraudsterRegistrationJobs (ListFraudsterRegistrationJobs'),
    newListFraudsterRegistrationJobs,
    ListFraudsterRegistrationJobsResponse (ListFraudsterRegistrationJobsResponse'),
    newListFraudsterRegistrationJobsResponse,

    -- ** DescribeFraudster
    DescribeFraudster (DescribeFraudster'),
    newDescribeFraudster,
    DescribeFraudsterResponse (DescribeFraudsterResponse'),
    newDescribeFraudsterResponse,

    -- ** ListSpeakerEnrollmentJobs
    ListSpeakerEnrollmentJobs (ListSpeakerEnrollmentJobs'),
    newListSpeakerEnrollmentJobs,
    ListSpeakerEnrollmentJobsResponse (ListSpeakerEnrollmentJobsResponse'),
    newListSpeakerEnrollmentJobsResponse,

    -- ** CreateDomain
    CreateDomain (CreateDomain'),
    newCreateDomain,
    CreateDomainResponse (CreateDomainResponse'),
    newCreateDomainResponse,

    -- ** StartFraudsterRegistrationJob
    StartFraudsterRegistrationJob (StartFraudsterRegistrationJob'),
    newStartFraudsterRegistrationJob,
    StartFraudsterRegistrationJobResponse (StartFraudsterRegistrationJobResponse'),
    newStartFraudsterRegistrationJobResponse,

    -- ** DescribeDomain
    DescribeDomain (DescribeDomain'),
    newDescribeDomain,
    DescribeDomainResponse (DescribeDomainResponse'),
    newDescribeDomainResponse,

    -- ** TagResource
    TagResource (TagResource'),
    newTagResource,
    TagResourceResponse (TagResourceResponse'),
    newTagResourceResponse,

    -- ** StartSpeakerEnrollmentJob
    StartSpeakerEnrollmentJob (StartSpeakerEnrollmentJob'),
    newStartSpeakerEnrollmentJob,
    StartSpeakerEnrollmentJobResponse (StartSpeakerEnrollmentJobResponse'),
    newStartSpeakerEnrollmentJobResponse,

    -- ** UntagResource
    UntagResource (UntagResource'),
    newUntagResource,
    UntagResourceResponse (UntagResourceResponse'),
    newUntagResourceResponse,

    -- ** OptOutSpeaker
    OptOutSpeaker (OptOutSpeaker'),
    newOptOutSpeaker,
    OptOutSpeakerResponse (OptOutSpeakerResponse'),
    newOptOutSpeakerResponse,

    -- ** DescribeSpeaker
    DescribeSpeaker (DescribeSpeaker'),
    newDescribeSpeaker,
    DescribeSpeakerResponse (DescribeSpeakerResponse'),
    newDescribeSpeakerResponse,

    -- ** DeleteDomain
    DeleteDomain (DeleteDomain'),
    newDeleteDomain,
    DeleteDomainResponse (DeleteDomainResponse'),
    newDeleteDomainResponse,

    -- ** UpdateDomain
    UpdateDomain (UpdateDomain'),
    newUpdateDomain,
    UpdateDomainResponse (UpdateDomainResponse'),
    newUpdateDomainResponse,

    -- ** ListDomains
    ListDomains (ListDomains'),
    newListDomains,
    ListDomainsResponse (ListDomainsResponse'),
    newListDomainsResponse,

    -- * Types

    -- ** AuthenticationDecision
    AuthenticationDecision (..),

    -- ** DomainStatus
    DomainStatus (..),

    -- ** DuplicateRegistrationAction
    DuplicateRegistrationAction (..),

    -- ** ExistingEnrollmentAction
    ExistingEnrollmentAction (..),

    -- ** FraudDetectionAction
    FraudDetectionAction (..),

    -- ** FraudDetectionDecision
    FraudDetectionDecision (..),

    -- ** FraudDetectionReason
    FraudDetectionReason (..),

    -- ** FraudsterRegistrationJobStatus
    FraudsterRegistrationJobStatus (..),

    -- ** SpeakerEnrollmentJobStatus
    SpeakerEnrollmentJobStatus (..),

    -- ** SpeakerStatus
    SpeakerStatus (..),

    -- ** StreamingStatus
    StreamingStatus (..),

    -- ** AuthenticationConfiguration
    AuthenticationConfiguration (AuthenticationConfiguration'),
    newAuthenticationConfiguration,

    -- ** AuthenticationResult
    AuthenticationResult (AuthenticationResult'),
    newAuthenticationResult,

    -- ** Domain
    Domain (Domain'),
    newDomain,

    -- ** DomainSummary
    DomainSummary (DomainSummary'),
    newDomainSummary,

    -- ** EnrollmentConfig
    EnrollmentConfig (EnrollmentConfig'),
    newEnrollmentConfig,

    -- ** EnrollmentJobFraudDetectionConfig
    EnrollmentJobFraudDetectionConfig (EnrollmentJobFraudDetectionConfig'),
    newEnrollmentJobFraudDetectionConfig,

    -- ** FailureDetails
    FailureDetails (FailureDetails'),
    newFailureDetails,

    -- ** FraudDetectionConfiguration
    FraudDetectionConfiguration (FraudDetectionConfiguration'),
    newFraudDetectionConfiguration,

    -- ** FraudDetectionResult
    FraudDetectionResult (FraudDetectionResult'),
    newFraudDetectionResult,

    -- ** FraudRiskDetails
    FraudRiskDetails (FraudRiskDetails'),
    newFraudRiskDetails,

    -- ** Fraudster
    Fraudster (Fraudster'),
    newFraudster,

    -- ** FraudsterRegistrationJob
    FraudsterRegistrationJob (FraudsterRegistrationJob'),
    newFraudsterRegistrationJob,

    -- ** FraudsterRegistrationJobSummary
    FraudsterRegistrationJobSummary (FraudsterRegistrationJobSummary'),
    newFraudsterRegistrationJobSummary,

    -- ** InputDataConfig
    InputDataConfig (InputDataConfig'),
    newInputDataConfig,

    -- ** JobProgress
    JobProgress (JobProgress'),
    newJobProgress,

    -- ** KnownFraudsterRisk
    KnownFraudsterRisk (KnownFraudsterRisk'),
    newKnownFraudsterRisk,

    -- ** OutputDataConfig
    OutputDataConfig (OutputDataConfig'),
    newOutputDataConfig,

    -- ** RegistrationConfig
    RegistrationConfig (RegistrationConfig'),
    newRegistrationConfig,

    -- ** ServerSideEncryptionConfiguration
    ServerSideEncryptionConfiguration (ServerSideEncryptionConfiguration'),
    newServerSideEncryptionConfiguration,

    -- ** Speaker
    Speaker (Speaker'),
    newSpeaker,

    -- ** SpeakerEnrollmentJob
    SpeakerEnrollmentJob (SpeakerEnrollmentJob'),
    newSpeakerEnrollmentJob,

    -- ** SpeakerEnrollmentJobSummary
    SpeakerEnrollmentJobSummary (SpeakerEnrollmentJobSummary'),
    newSpeakerEnrollmentJobSummary,

    -- ** SpeakerSummary
    SpeakerSummary (SpeakerSummary'),
    newSpeakerSummary,

    -- ** Tag
    Tag (Tag'),
    newTag,
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
import Network.AWS.VoiceId.Lens
import Network.AWS.VoiceId.ListDomains
import Network.AWS.VoiceId.ListFraudsterRegistrationJobs
import Network.AWS.VoiceId.ListSpeakerEnrollmentJobs
import Network.AWS.VoiceId.ListSpeakers
import Network.AWS.VoiceId.ListTagsForResource
import Network.AWS.VoiceId.OptOutSpeaker
import Network.AWS.VoiceId.StartFraudsterRegistrationJob
import Network.AWS.VoiceId.StartSpeakerEnrollmentJob
import Network.AWS.VoiceId.TagResource
import Network.AWS.VoiceId.Types
import Network.AWS.VoiceId.UntagResource
import Network.AWS.VoiceId.UpdateDomain
import Network.AWS.VoiceId.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'VoiceId'.

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
