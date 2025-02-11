{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDSData.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDSData.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _StatementTimeoutException,
    _ForbiddenException,
    _NotFoundException,
    _ServiceUnavailableError,
    _InternalServerErrorException,
    _BadRequestException,

    -- * DecimalReturnType
    DecimalReturnType (..),

    -- * TypeHint
    TypeHint (..),

    -- * ArrayValue
    ArrayValue (..),
    newArrayValue,
    arrayValue_longValues,
    arrayValue_doubleValues,
    arrayValue_stringValues,
    arrayValue_arrayValues,
    arrayValue_booleanValues,

    -- * ColumnMetadata
    ColumnMetadata (..),
    newColumnMetadata,
    columnMetadata_typeName,
    columnMetadata_isCaseSensitive,
    columnMetadata_isCurrency,
    columnMetadata_scale,
    columnMetadata_precision,
    columnMetadata_schemaName,
    columnMetadata_isAutoIncrement,
    columnMetadata_name,
    columnMetadata_arrayBaseColumnType,
    columnMetadata_type,
    columnMetadata_isSigned,
    columnMetadata_label,
    columnMetadata_nullable,
    columnMetadata_tableName,

    -- * Field
    Field (..),
    newField,
    field_doubleValue,
    field_stringValue,
    field_longValue,
    field_booleanValue,
    field_arrayValue,
    field_blobValue,
    field_isNull,

    -- * ResultSetOptions
    ResultSetOptions (..),
    newResultSetOptions,
    resultSetOptions_decimalReturnType,

    -- * SqlParameter
    SqlParameter (..),
    newSqlParameter,
    sqlParameter_value,
    sqlParameter_name,
    sqlParameter_typeHint,

    -- * UpdateResult
    UpdateResult (..),
    newUpdateResult,
    updateResult_generatedFields,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDSData.Types.ArrayValue
import Network.AWS.RDSData.Types.ColumnMetadata
import Network.AWS.RDSData.Types.DecimalReturnType
import Network.AWS.RDSData.Types.Field
import Network.AWS.RDSData.Types.ResultSetOptions
import Network.AWS.RDSData.Types.SqlParameter
import Network.AWS.RDSData.Types.TypeHint
import Network.AWS.RDSData.Types.UpdateResult
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2018-08-01@ of the Amazon RDS DataService SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "RDSData",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "rds-data",
      Core._serviceSigningName = "rds-data",
      Core._serviceVersion = "2018-08-01",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError = Core.parseJSONError "RDSData",
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

-- | The execution of the SQL statement timed out.
_StatementTimeoutException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_StatementTimeoutException =
  Core._MatchServiceError
    defaultService
    "StatementTimeoutException"
    Prelude.. Core.hasStatus 400

-- | There are insufficient privileges to make the call.
_ForbiddenException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ForbiddenException =
  Core._MatchServiceError
    defaultService
    "ForbiddenException"
    Prelude.. Core.hasStatus 403

-- | The @resourceArn@, @secretArn@, or @transactionId@ value can\'t be
-- found.
_NotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NotFoundException =
  Core._MatchServiceError
    defaultService
    "NotFoundException"
    Prelude.. Core.hasStatus 404

-- | The service specified by the @resourceArn@ parameter is not available.
_ServiceUnavailableError :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceUnavailableError =
  Core._MatchServiceError
    defaultService
    "ServiceUnavailableError"
    Prelude.. Core.hasStatus 503

-- | An internal error occurred.
_InternalServerErrorException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerErrorException =
  Core._MatchServiceError
    defaultService
    "InternalServerErrorException"
    Prelude.. Core.hasStatus 500

-- | There is an error in the call or in a SQL statement.
_BadRequestException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_BadRequestException =
  Core._MatchServiceError
    defaultService
    "BadRequestException"
    Prelude.. Core.hasStatus 400
