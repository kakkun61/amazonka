{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTSecureTunneling.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTSecureTunneling.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ResourceNotFoundException,
    _LimitExceededException,

    -- * ConnectionStatus
    ConnectionStatus (..),

    -- * TunnelStatus
    TunnelStatus (..),

    -- * ConnectionState
    ConnectionState (..),
    newConnectionState,
    connectionState_status,
    connectionState_lastUpdatedAt,

    -- * DestinationConfig
    DestinationConfig (..),
    newDestinationConfig,
    destinationConfig_thingName,
    destinationConfig_services,

    -- * Tag
    Tag (..),
    newTag,
    tag_key,
    tag_value,

    -- * TimeoutConfig
    TimeoutConfig (..),
    newTimeoutConfig,
    timeoutConfig_maxLifetimeTimeoutMinutes,

    -- * Tunnel
    Tunnel (..),
    newTunnel,
    tunnel_status,
    tunnel_lastUpdatedAt,
    tunnel_createdAt,
    tunnel_tunnelArn,
    tunnel_sourceConnectionState,
    tunnel_destinationConnectionState,
    tunnel_tunnelId,
    tunnel_destinationConfig,
    tunnel_description,
    tunnel_timeoutConfig,
    tunnel_tags,

    -- * TunnelSummary
    TunnelSummary (..),
    newTunnelSummary,
    tunnelSummary_status,
    tunnelSummary_lastUpdatedAt,
    tunnelSummary_createdAt,
    tunnelSummary_tunnelArn,
    tunnelSummary_tunnelId,
    tunnelSummary_description,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTSecureTunneling.Types.ConnectionState
import Network.AWS.IoTSecureTunneling.Types.ConnectionStatus
import Network.AWS.IoTSecureTunneling.Types.DestinationConfig
import Network.AWS.IoTSecureTunneling.Types.Tag
import Network.AWS.IoTSecureTunneling.Types.TimeoutConfig
import Network.AWS.IoTSecureTunneling.Types.Tunnel
import Network.AWS.IoTSecureTunneling.Types.TunnelStatus
import Network.AWS.IoTSecureTunneling.Types.TunnelSummary
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2018-10-05@ of the Amazon IoT Secure Tunneling SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev =
        "IoTSecureTunneling",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "api.tunneling.iot",
      Core._serviceSigningName = "IoTSecuredTunneling",
      Core._serviceVersion = "2018-10-05",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "IoTSecureTunneling",
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

-- | Thrown when an operation is attempted on a resource that does not exist.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"

-- | Thrown when a tunnel limit is exceeded.
_LimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LimitExceededException =
  Core._MatchServiceError
    defaultService
    "LimitExceededException"
