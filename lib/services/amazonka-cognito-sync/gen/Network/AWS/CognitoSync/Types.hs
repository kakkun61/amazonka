{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoSync.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoSync.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _InvalidParameterException,
    _NotAuthorizedException,
    _InternalErrorException,
    _InvalidConfigurationException,
    _DuplicateRequestException,
    _LambdaThrottledException,
    _AlreadyStreamedException,
    _InvalidLambdaFunctionOutputException,
    _TooManyRequestsException,
    _ConcurrentModificationException,
    _ResourceConflictException,
    _ResourceNotFoundException,
    _LimitExceededException,

    -- * BulkPublishStatus
    BulkPublishStatus (..),

    -- * Operation
    Operation (..),

    -- * Platform
    Platform (..),

    -- * StreamingStatus
    StreamingStatus (..),

    -- * CognitoStreams
    CognitoStreams (..),
    newCognitoStreams,
    cognitoStreams_streamingStatus,
    cognitoStreams_streamName,
    cognitoStreams_roleArn,

    -- * Dataset
    Dataset (..),
    newDataset,
    dataset_lastModifiedDate,
    dataset_numRecords,
    dataset_dataStorage,
    dataset_datasetName,
    dataset_creationDate,
    dataset_lastModifiedBy,
    dataset_identityId,

    -- * IdentityPoolUsage
    IdentityPoolUsage (..),
    newIdentityPoolUsage,
    identityPoolUsage_lastModifiedDate,
    identityPoolUsage_identityPoolId,
    identityPoolUsage_dataStorage,
    identityPoolUsage_syncSessionsCount,

    -- * IdentityUsage
    IdentityUsage (..),
    newIdentityUsage,
    identityUsage_lastModifiedDate,
    identityUsage_identityPoolId,
    identityUsage_datasetCount,
    identityUsage_dataStorage,
    identityUsage_identityId,

    -- * PushSync
    PushSync (..),
    newPushSync,
    pushSync_applicationArns,
    pushSync_roleArn,

    -- * Record
    Record (..),
    newRecord,
    record_syncCount,
    record_deviceLastModifiedDate,
    record_lastModifiedDate,
    record_value,
    record_key,
    record_lastModifiedBy,

    -- * RecordPatch
    RecordPatch (..),
    newRecordPatch,
    recordPatch_deviceLastModifiedDate,
    recordPatch_value,
    recordPatch_op,
    recordPatch_key,
    recordPatch_syncCount,
  )
where

import Network.AWS.CognitoSync.Types.BulkPublishStatus
import Network.AWS.CognitoSync.Types.CognitoStreams
import Network.AWS.CognitoSync.Types.Dataset
import Network.AWS.CognitoSync.Types.IdentityPoolUsage
import Network.AWS.CognitoSync.Types.IdentityUsage
import Network.AWS.CognitoSync.Types.Operation
import Network.AWS.CognitoSync.Types.Platform
import Network.AWS.CognitoSync.Types.PushSync
import Network.AWS.CognitoSync.Types.Record
import Network.AWS.CognitoSync.Types.RecordPatch
import Network.AWS.CognitoSync.Types.StreamingStatus
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2014-06-30@ of the Amazon Cognito Sync SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "CognitoSync",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "cognito-sync",
      Core._serviceSigningName = "cognito-sync",
      Core._serviceVersion = "2014-06-30",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "CognitoSync",
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

-- | Thrown when a request parameter does not comply with the associated
-- constraints.
_InvalidParameterException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidParameterException =
  Core._MatchServiceError
    defaultService
    "InvalidParameterException"
    Prelude.. Core.hasStatus 400

-- | Thrown when a user is not authorized to access the requested resource.
_NotAuthorizedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NotAuthorizedException =
  Core._MatchServiceError
    defaultService
    "NotAuthorizedException"
    Prelude.. Core.hasStatus 403

-- | Indicates an internal service error.
_InternalErrorException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalErrorException =
  Core._MatchServiceError
    defaultService
    "InternalErrorException"
    Prelude.. Core.hasStatus 500

-- | Prism for InvalidConfigurationException' errors.
_InvalidConfigurationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidConfigurationException =
  Core._MatchServiceError
    defaultService
    "InvalidConfigurationException"
    Prelude.. Core.hasStatus 400

-- | An exception thrown when there is an IN_PROGRESS bulk publish operation
-- for the given identity pool.
_DuplicateRequestException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_DuplicateRequestException =
  Core._MatchServiceError
    defaultService
    "DuplicateRequestException"
    Prelude.. Core.hasStatus 400

-- | AWS Lambda throttled your account, please contact AWS Support
_LambdaThrottledException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LambdaThrottledException =
  Core._MatchServiceError
    defaultService
    "LambdaThrottledException"
    Prelude.. Core.hasStatus 429

-- | An exception thrown when a bulk publish operation is requested less than
-- 24 hours after a previous bulk publish operation completed successfully.
_AlreadyStreamedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AlreadyStreamedException =
  Core._MatchServiceError
    defaultService
    "AlreadyStreamedException"
    Prelude.. Core.hasStatus 400

-- | The AWS Lambda function returned invalid output or an exception.
_InvalidLambdaFunctionOutputException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidLambdaFunctionOutputException =
  Core._MatchServiceError
    defaultService
    "InvalidLambdaFunctionOutputException"
    Prelude.. Core.hasStatus 400

-- | Thrown if the request is throttled.
_TooManyRequestsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_TooManyRequestsException =
  Core._MatchServiceError
    defaultService
    "TooManyRequestsException"
    Prelude.. Core.hasStatus 429

-- | Thrown if there are parallel requests to modify a resource.
_ConcurrentModificationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConcurrentModificationException =
  Core._MatchServiceError
    defaultService
    "ConcurrentModificationException"
    Prelude.. Core.hasStatus 400

-- | Thrown if an update can\'t be applied because the resource was changed
-- by another call and this would result in a conflict.
_ResourceConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceConflictException =
  Core._MatchServiceError
    defaultService
    "ResourceConflictException"
    Prelude.. Core.hasStatus 409

-- | Thrown if the resource doesn\'t exist.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Core.hasStatus 404

-- | Thrown when the limit on the number of objects or operations has been
-- exceeded.
_LimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LimitExceededException =
  Core._MatchServiceError
    defaultService
    "LimitExceededException"
    Prelude.. Core.hasStatus 400
