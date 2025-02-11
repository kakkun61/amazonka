{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.FinSpaceData.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FinSpaceData.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ValidationException,
    _AccessDeniedException,
    _ThrottlingException,
    _InternalServerException,
    _ResourceNotFoundException,

    -- * ChangeType
    ChangeType (..),

    -- * ChangesetStatus
    ChangesetStatus (..),

    -- * ErrorCategory
    ErrorCategory (..),

    -- * FormatType
    FormatType (..),

    -- * LocationType
    LocationType (..),

    -- * SourceType
    SourceType (..),

    -- * ChangesetInfo
    ChangesetInfo (..),
    newChangesetInfo,
    changesetInfo_status,
    changesetInfo_sourceType,
    changesetInfo_sourceParams,
    changesetInfo_changesetLabels,
    changesetInfo_updatedByChangesetId,
    changesetInfo_datasetId,
    changesetInfo_formatParams,
    changesetInfo_createTimestamp,
    changesetInfo_id,
    changesetInfo_formatType,
    changesetInfo_updatesChangesetId,
    changesetInfo_changeType,
    changesetInfo_errorInfo,
    changesetInfo_changesetArn,

    -- * Credentials
    Credentials (..),
    newCredentials,
    credentials_secretAccessKey,
    credentials_sessionToken,
    credentials_accessKeyId,

    -- * ErrorInfo
    ErrorInfo (..),
    newErrorInfo,
    errorInfo_errorCategory,
    errorInfo_errorMessage,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.FinSpaceData.Types.ChangeType
import Network.AWS.FinSpaceData.Types.ChangesetInfo
import Network.AWS.FinSpaceData.Types.ChangesetStatus
import Network.AWS.FinSpaceData.Types.Credentials
import Network.AWS.FinSpaceData.Types.ErrorCategory
import Network.AWS.FinSpaceData.Types.ErrorInfo
import Network.AWS.FinSpaceData.Types.FormatType
import Network.AWS.FinSpaceData.Types.LocationType
import Network.AWS.FinSpaceData.Types.SourceType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2020-07-13@ of the Amazon FinSpace Public API SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "FinSpaceData",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "finspace-api",
      Core._serviceSigningName = "finspace-api",
      Core._serviceVersion = "2020-07-13",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "FinSpaceData",
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

-- | The input fails to satisfy the constraints specified by an AWS service.
_ValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ValidationException =
  Core._MatchServiceError
    defaultService
    "ValidationException"
    Prelude.. Core.hasStatus 400

-- | You do not have sufficient access to perform this action.
_AccessDeniedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AccessDeniedException =
  Core._MatchServiceError
    defaultService
    "AccessDeniedException"
    Prelude.. Core.hasStatus 403

-- | The request was denied due to request throttling.
_ThrottlingException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ThrottlingException =
  Core._MatchServiceError
    defaultService
    "ThrottlingException"
    Prelude.. Core.hasStatus 429

-- | The request processing has failed because of an unknown error, exception
-- or failure.
_InternalServerException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerException =
  Core._MatchServiceError
    defaultService
    "InternalServerException"
    Prelude.. Core.hasStatus 500

-- | One or more resources can\'t be found.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Core.hasStatus 404
