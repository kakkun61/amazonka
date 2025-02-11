{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ConnectParticipant.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ConnectParticipant.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ValidationException,
    _AccessDeniedException,
    _ConflictException,
    _ServiceQuotaExceededException,
    _ThrottlingException,
    _InternalServerException,

    -- * ArtifactStatus
    ArtifactStatus (..),

    -- * ChatItemType
    ChatItemType (..),

    -- * ConnectionType
    ConnectionType (..),

    -- * ParticipantRole
    ParticipantRole (..),

    -- * ScanDirection
    ScanDirection (..),

    -- * SortKey
    SortKey (..),

    -- * AttachmentItem
    AttachmentItem (..),
    newAttachmentItem,
    attachmentItem_status,
    attachmentItem_attachmentName,
    attachmentItem_attachmentId,
    attachmentItem_contentType,

    -- * ConnectionCredentials
    ConnectionCredentials (..),
    newConnectionCredentials,
    connectionCredentials_expiry,
    connectionCredentials_connectionToken,

    -- * Item
    Item (..),
    newItem,
    item_participantId,
    item_absoluteTime,
    item_attachments,
    item_participantRole,
    item_content,
    item_id,
    item_displayName,
    item_type,
    item_contentType,

    -- * StartPosition
    StartPosition (..),
    newStartPosition,
    startPosition_absoluteTime,
    startPosition_id,
    startPosition_mostRecent,

    -- * UploadMetadata
    UploadMetadata (..),
    newUploadMetadata,
    uploadMetadata_urlExpiry,
    uploadMetadata_headersToInclude,
    uploadMetadata_url,

    -- * Websocket
    Websocket (..),
    newWebsocket,
    websocket_url,
    websocket_connectionExpiry,
  )
where

import Network.AWS.ConnectParticipant.Types.ArtifactStatus
import Network.AWS.ConnectParticipant.Types.AttachmentItem
import Network.AWS.ConnectParticipant.Types.ChatItemType
import Network.AWS.ConnectParticipant.Types.ConnectionCredentials
import Network.AWS.ConnectParticipant.Types.ConnectionType
import Network.AWS.ConnectParticipant.Types.Item
import Network.AWS.ConnectParticipant.Types.ParticipantRole
import Network.AWS.ConnectParticipant.Types.ScanDirection
import Network.AWS.ConnectParticipant.Types.SortKey
import Network.AWS.ConnectParticipant.Types.StartPosition
import Network.AWS.ConnectParticipant.Types.UploadMetadata
import Network.AWS.ConnectParticipant.Types.Websocket
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2018-09-07@ of the Amazon Connect Participant Service SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev =
        "ConnectParticipant",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "participant.connect",
      Core._serviceSigningName = "execute-api",
      Core._serviceVersion = "2018-09-07",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "ConnectParticipant",
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

-- | The input fails to satisfy the constraints specified by Amazon Connect.
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

-- | An attachment with that identifier is already being uploaded.
_ConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConflictException =
  Core._MatchServiceError
    defaultService
    "ConflictException"
    Prelude.. Core.hasStatus 409

-- | The number of attachments per contact exceeds the quota.
_ServiceQuotaExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceQuotaExceededException =
  Core._MatchServiceError
    defaultService
    "ServiceQuotaExceededException"
    Prelude.. Core.hasStatus 402

-- | The request was denied due to request throttling.
_ThrottlingException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ThrottlingException =
  Core._MatchServiceError
    defaultService
    "ThrottlingException"
    Prelude.. Core.hasStatus 429

-- | This exception occurs when there is an internal failure in the Amazon
-- Connect service.
_InternalServerException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerException =
  Core._MatchServiceError
    defaultService
    "InternalServerException"
    Prelude.. Core.hasStatus 500
