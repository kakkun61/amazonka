{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Braket.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Braket.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ValidationException,
    _AccessDeniedException,
    _DeviceOfflineException,
    _DeviceRetiredException,
    _ConflictException,
    _ServiceQuotaExceededException,
    _ThrottlingException,
    _InternalServiceException,
    _ResourceNotFoundException,

    -- * CancellationStatus
    CancellationStatus (..),

    -- * DeviceStatus
    DeviceStatus (..),

    -- * DeviceType
    DeviceType (..),

    -- * QuantumTaskStatus
    QuantumTaskStatus (..),

    -- * SearchQuantumTasksFilterOperator
    SearchQuantumTasksFilterOperator (..),

    -- * DeviceSummary
    DeviceSummary (..),
    newDeviceSummary,
    deviceSummary_deviceArn,
    deviceSummary_deviceName,
    deviceSummary_deviceStatus,
    deviceSummary_deviceType,
    deviceSummary_providerName,

    -- * QuantumTaskSummary
    QuantumTaskSummary (..),
    newQuantumTaskSummary,
    quantumTaskSummary_endedAt,
    quantumTaskSummary_tags,
    quantumTaskSummary_createdAt,
    quantumTaskSummary_deviceArn,
    quantumTaskSummary_outputS3Bucket,
    quantumTaskSummary_outputS3Directory,
    quantumTaskSummary_quantumTaskArn,
    quantumTaskSummary_shots,
    quantumTaskSummary_status,

    -- * SearchDevicesFilter
    SearchDevicesFilter (..),
    newSearchDevicesFilter,
    searchDevicesFilter_name,
    searchDevicesFilter_values,

    -- * SearchQuantumTasksFilter
    SearchQuantumTasksFilter (..),
    newSearchQuantumTasksFilter,
    searchQuantumTasksFilter_name,
    searchQuantumTasksFilter_operator,
    searchQuantumTasksFilter_values,
  )
where

import Network.AWS.Braket.Types.CancellationStatus
import Network.AWS.Braket.Types.DeviceStatus
import Network.AWS.Braket.Types.DeviceSummary
import Network.AWS.Braket.Types.DeviceType
import Network.AWS.Braket.Types.QuantumTaskStatus
import Network.AWS.Braket.Types.QuantumTaskSummary
import Network.AWS.Braket.Types.SearchDevicesFilter
import Network.AWS.Braket.Types.SearchQuantumTasksFilter
import Network.AWS.Braket.Types.SearchQuantumTasksFilterOperator
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2019-09-01@ of the Amazon Braket SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "Braket",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "braket",
      Core._serviceSigningName = "braket",
      Core._serviceVersion = "2019-09-01",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError = Core.parseJSONError "Braket",
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

-- | The specified device is currently offline.
_DeviceOfflineException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_DeviceOfflineException =
  Core._MatchServiceError
    defaultService
    "DeviceOfflineException"
    Prelude.. Core.hasStatus 424

-- | The specified device has been retired.
_DeviceRetiredException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_DeviceRetiredException =
  Core._MatchServiceError
    defaultService
    "DeviceRetiredException"
    Prelude.. Core.hasStatus 410

-- | An error occurred due to a conflict.
_ConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConflictException =
  Core._MatchServiceError
    defaultService
    "ConflictException"
    Prelude.. Core.hasStatus 409

-- | The request failed because a service quota is exceeded.
_ServiceQuotaExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceQuotaExceededException =
  Core._MatchServiceError
    defaultService
    "ServiceQuotaExceededException"
    Prelude.. Core.hasStatus 402

-- | The throttling rate limit is met.
_ThrottlingException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ThrottlingException =
  Core._MatchServiceError
    defaultService
    "ThrottlingException"
    Prelude.. Core.hasStatus 429

-- | The request processing has failed because of an unknown error,
-- exception, or failure.
_InternalServiceException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServiceException =
  Core._MatchServiceError
    defaultService
    "InternalServiceException"
    Prelude.. Core.hasStatus 500

-- | The specified resource was not found.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Core.hasStatus 404
