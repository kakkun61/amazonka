{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MechanicalTurk.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MechanicalTurk.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ServiceFault,
    _RequestError,

    -- * AssignmentStatus
    AssignmentStatus (..),

    -- * Comparator
    Comparator (..),

    -- * EventType
    EventType (..),

    -- * HITAccessActions
    HITAccessActions (..),

    -- * HITReviewStatus
    HITReviewStatus (..),

    -- * HITStatus
    HITStatus (..),

    -- * NotificationTransport
    NotificationTransport (..),

    -- * NotifyWorkersFailureCode
    NotifyWorkersFailureCode (..),

    -- * QualificationStatus
    QualificationStatus (..),

    -- * QualificationTypeStatus
    QualificationTypeStatus (..),

    -- * ReviewActionStatus
    ReviewActionStatus (..),

    -- * ReviewPolicyLevel
    ReviewPolicyLevel (..),

    -- * ReviewableHITStatus
    ReviewableHITStatus (..),

    -- * Assignment
    Assignment (..),
    newAssignment,
    assignment_acceptTime,
    assignment_answer,
    assignment_assignmentStatus,
    assignment_requesterFeedback,
    assignment_deadline,
    assignment_approvalTime,
    assignment_rejectionTime,
    assignment_autoApprovalTime,
    assignment_hITId,
    assignment_workerId,
    assignment_assignmentId,
    assignment_submitTime,

    -- * BonusPayment
    BonusPayment (..),
    newBonusPayment,
    bonusPayment_reason,
    bonusPayment_grantTime,
    bonusPayment_workerId,
    bonusPayment_assignmentId,
    bonusPayment_bonusAmount,

    -- * HIT
    HIT (..),
    newHIT,
    hit_creationTime,
    hit_hITGroupId,
    hit_numberOfAssignmentsPending,
    hit_hITTypeId,
    hit_expiration,
    hit_autoApprovalDelayInSeconds,
    hit_requesterAnnotation,
    hit_hITStatus,
    hit_maxAssignments,
    hit_numberOfAssignmentsCompleted,
    hit_reward,
    hit_keywords,
    hit_hITLayoutId,
    hit_qualificationRequirements,
    hit_title,
    hit_hITId,
    hit_hITReviewStatus,
    hit_numberOfAssignmentsAvailable,
    hit_description,
    hit_question,
    hit_assignmentDurationInSeconds,

    -- * HITLayoutParameter
    HITLayoutParameter (..),
    newHITLayoutParameter,
    hITLayoutParameter_name,
    hITLayoutParameter_value,

    -- * Locale
    Locale (..),
    newLocale,
    locale_subdivision,
    locale_country,

    -- * NotificationSpecification
    NotificationSpecification (..),
    newNotificationSpecification,
    notificationSpecification_destination,
    notificationSpecification_transport,
    notificationSpecification_version,
    notificationSpecification_eventTypes,

    -- * NotifyWorkersFailureStatus
    NotifyWorkersFailureStatus (..),
    newNotifyWorkersFailureStatus,
    notifyWorkersFailureStatus_notifyWorkersFailureMessage,
    notifyWorkersFailureStatus_notifyWorkersFailureCode,
    notifyWorkersFailureStatus_workerId,

    -- * ParameterMapEntry
    ParameterMapEntry (..),
    newParameterMapEntry,
    parameterMapEntry_values,
    parameterMapEntry_key,

    -- * PolicyParameter
    PolicyParameter (..),
    newPolicyParameter,
    policyParameter_values,
    policyParameter_mapEntries,
    policyParameter_key,

    -- * Qualification
    Qualification (..),
    newQualification,
    qualification_status,
    qualification_integerValue,
    qualification_localeValue,
    qualification_qualificationTypeId,
    qualification_grantTime,
    qualification_workerId,

    -- * QualificationRequest
    QualificationRequest (..),
    newQualificationRequest,
    qualificationRequest_qualificationRequestId,
    qualificationRequest_test,
    qualificationRequest_qualificationTypeId,
    qualificationRequest_answer,
    qualificationRequest_workerId,
    qualificationRequest_submitTime,

    -- * QualificationRequirement
    QualificationRequirement (..),
    newQualificationRequirement,
    qualificationRequirement_localeValues,
    qualificationRequirement_actionsGuarded,
    qualificationRequirement_requiredToPreview,
    qualificationRequirement_integerValues,
    qualificationRequirement_qualificationTypeId,
    qualificationRequirement_comparator,

    -- * QualificationType
    QualificationType (..),
    newQualificationType,
    qualificationType_creationTime,
    qualificationType_testDurationInSeconds,
    qualificationType_qualificationTypeStatus,
    qualificationType_answerKey,
    qualificationType_test,
    qualificationType_qualificationTypeId,
    qualificationType_name,
    qualificationType_keywords,
    qualificationType_autoGranted,
    qualificationType_autoGrantedValue,
    qualificationType_description,
    qualificationType_isRequestable,
    qualificationType_retryDelayInSeconds,

    -- * ReviewActionDetail
    ReviewActionDetail (..),
    newReviewActionDetail,
    reviewActionDetail_status,
    reviewActionDetail_targetId,
    reviewActionDetail_actionId,
    reviewActionDetail_targetType,
    reviewActionDetail_result,
    reviewActionDetail_actionName,
    reviewActionDetail_completeTime,
    reviewActionDetail_errorCode,

    -- * ReviewPolicy
    ReviewPolicy (..),
    newReviewPolicy,
    reviewPolicy_parameters,
    reviewPolicy_policyName,

    -- * ReviewReport
    ReviewReport (..),
    newReviewReport,
    reviewReport_reviewActions,
    reviewReport_reviewResults,

    -- * ReviewResultDetail
    ReviewResultDetail (..),
    newReviewResultDetail,
    reviewResultDetail_value,
    reviewResultDetail_actionId,
    reviewResultDetail_subjectType,
    reviewResultDetail_key,
    reviewResultDetail_questionId,
    reviewResultDetail_subjectId,

    -- * WorkerBlock
    WorkerBlock (..),
    newWorkerBlock,
    workerBlock_reason,
    workerBlock_workerId,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MechanicalTurk.Types.Assignment
import Network.AWS.MechanicalTurk.Types.AssignmentStatus
import Network.AWS.MechanicalTurk.Types.BonusPayment
import Network.AWS.MechanicalTurk.Types.Comparator
import Network.AWS.MechanicalTurk.Types.EventType
import Network.AWS.MechanicalTurk.Types.HIT
import Network.AWS.MechanicalTurk.Types.HITAccessActions
import Network.AWS.MechanicalTurk.Types.HITLayoutParameter
import Network.AWS.MechanicalTurk.Types.HITReviewStatus
import Network.AWS.MechanicalTurk.Types.HITStatus
import Network.AWS.MechanicalTurk.Types.Locale
import Network.AWS.MechanicalTurk.Types.NotificationSpecification
import Network.AWS.MechanicalTurk.Types.NotificationTransport
import Network.AWS.MechanicalTurk.Types.NotifyWorkersFailureCode
import Network.AWS.MechanicalTurk.Types.NotifyWorkersFailureStatus
import Network.AWS.MechanicalTurk.Types.ParameterMapEntry
import Network.AWS.MechanicalTurk.Types.PolicyParameter
import Network.AWS.MechanicalTurk.Types.Qualification
import Network.AWS.MechanicalTurk.Types.QualificationRequest
import Network.AWS.MechanicalTurk.Types.QualificationRequirement
import Network.AWS.MechanicalTurk.Types.QualificationStatus
import Network.AWS.MechanicalTurk.Types.QualificationType
import Network.AWS.MechanicalTurk.Types.QualificationTypeStatus
import Network.AWS.MechanicalTurk.Types.ReviewActionDetail
import Network.AWS.MechanicalTurk.Types.ReviewActionStatus
import Network.AWS.MechanicalTurk.Types.ReviewPolicy
import Network.AWS.MechanicalTurk.Types.ReviewPolicyLevel
import Network.AWS.MechanicalTurk.Types.ReviewReport
import Network.AWS.MechanicalTurk.Types.ReviewResultDetail
import Network.AWS.MechanicalTurk.Types.ReviewableHITStatus
import Network.AWS.MechanicalTurk.Types.WorkerBlock
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2017-01-17@ of the Amazon Mechanical Turk SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev =
        "MechanicalTurk",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "mturk-requester",
      Core._serviceSigningName = "mturk-requester",
      Core._serviceVersion = "2017-01-17",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "MechanicalTurk",
      Core._serviceRetry = retry
    }
  where
    retry =
      Core.Exponential
        { Core._retryBase = 5.0e-2,
          Core._retryGrowth = 2,
          Core._retryAttempts = 5,
          Core._retryCheck = check
        }
    check e
      | Lens.has
          ( Core.hasCode "ThrottledException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttled_exception"
      | Lens.has (Core.hasStatus 429) e =
        Prelude.Just "too_many_requests"
      | Lens.has
          ( Core.hasCode "ThrottlingException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttling_exception"
      | Lens.has
          ( Core.hasCode "Throttling"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttling"
      | Lens.has
          ( Core.hasCode
              "ProvisionedThroughputExceededException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throughput_exceeded"
      | Lens.has (Core.hasStatus 504) e =
        Prelude.Just "gateway_timeout"
      | Lens.has
          ( Core.hasCode "RequestThrottledException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "request_throttled_exception"
      | Lens.has (Core.hasStatus 502) e =
        Prelude.Just "bad_gateway"
      | Lens.has (Core.hasStatus 503) e =
        Prelude.Just "service_unavailable"
      | Lens.has (Core.hasStatus 500) e =
        Prelude.Just "general_server_error"
      | Lens.has (Core.hasStatus 509) e =
        Prelude.Just "limit_exceeded"
      | Prelude.otherwise = Prelude.Nothing

-- | Amazon Mechanical Turk is temporarily unable to process your request.
-- Try your call again.
_ServiceFault :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceFault =
  Core._MatchServiceError
    defaultService
    "ServiceFault"

-- | Your request is invalid.
_RequestError :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_RequestError =
  Core._MatchServiceError
    defaultService
    "RequestError"
