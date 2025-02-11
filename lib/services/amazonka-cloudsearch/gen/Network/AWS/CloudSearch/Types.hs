{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudSearch.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudSearch.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ValidationException,
    _ResourceAlreadyExistsException,
    _BaseException,
    _DisabledOperationException,
    _InternalException,
    _InvalidTypeException,
    _ResourceNotFoundException,
    _LimitExceededException,

    -- * AlgorithmicStemming
    AlgorithmicStemming (..),

    -- * AnalysisSchemeLanguage
    AnalysisSchemeLanguage (..),

    -- * IndexFieldType
    IndexFieldType (..),

    -- * OptionState
    OptionState (..),

    -- * PartitionInstanceType
    PartitionInstanceType (..),

    -- * SuggesterFuzzyMatching
    SuggesterFuzzyMatching (..),

    -- * TLSSecurityPolicy
    TLSSecurityPolicy (..),

    -- * AccessPoliciesStatus
    AccessPoliciesStatus (..),
    newAccessPoliciesStatus,
    accessPoliciesStatus_options,
    accessPoliciesStatus_status,

    -- * AnalysisOptions
    AnalysisOptions (..),
    newAnalysisOptions,
    analysisOptions_algorithmicStemming,
    analysisOptions_stopwords,
    analysisOptions_japaneseTokenizationDictionary,
    analysisOptions_synonyms,
    analysisOptions_stemmingDictionary,

    -- * AnalysisScheme
    AnalysisScheme (..),
    newAnalysisScheme,
    analysisScheme_analysisOptions,
    analysisScheme_analysisSchemeName,
    analysisScheme_analysisSchemeLanguage,

    -- * AnalysisSchemeStatus
    AnalysisSchemeStatus (..),
    newAnalysisSchemeStatus,
    analysisSchemeStatus_options,
    analysisSchemeStatus_status,

    -- * AvailabilityOptionsStatus
    AvailabilityOptionsStatus (..),
    newAvailabilityOptionsStatus,
    availabilityOptionsStatus_options,
    availabilityOptionsStatus_status,

    -- * DateArrayOptions
    DateArrayOptions (..),
    newDateArrayOptions,
    dateArrayOptions_sourceFields,
    dateArrayOptions_returnEnabled,
    dateArrayOptions_facetEnabled,
    dateArrayOptions_searchEnabled,
    dateArrayOptions_defaultValue,

    -- * DateOptions
    DateOptions (..),
    newDateOptions,
    dateOptions_sourceField,
    dateOptions_returnEnabled,
    dateOptions_facetEnabled,
    dateOptions_searchEnabled,
    dateOptions_sortEnabled,
    dateOptions_defaultValue,

    -- * DocumentSuggesterOptions
    DocumentSuggesterOptions (..),
    newDocumentSuggesterOptions,
    documentSuggesterOptions_sortExpression,
    documentSuggesterOptions_fuzzyMatching,
    documentSuggesterOptions_sourceField,

    -- * DomainEndpointOptions
    DomainEndpointOptions (..),
    newDomainEndpointOptions,
    domainEndpointOptions_enforceHTTPS,
    domainEndpointOptions_tLSSecurityPolicy,

    -- * DomainEndpointOptionsStatus
    DomainEndpointOptionsStatus (..),
    newDomainEndpointOptionsStatus,
    domainEndpointOptionsStatus_options,
    domainEndpointOptionsStatus_status,

    -- * DomainStatus
    DomainStatus (..),
    newDomainStatus,
    domainStatus_searchInstanceCount,
    domainStatus_searchInstanceType,
    domainStatus_docService,
    domainStatus_arn,
    domainStatus_created,
    domainStatus_searchService,
    domainStatus_limits,
    domainStatus_searchPartitionCount,
    domainStatus_deleted,
    domainStatus_processing,
    domainStatus_domainId,
    domainStatus_domainName,
    domainStatus_requiresIndexDocuments,

    -- * DoubleArrayOptions
    DoubleArrayOptions (..),
    newDoubleArrayOptions,
    doubleArrayOptions_sourceFields,
    doubleArrayOptions_returnEnabled,
    doubleArrayOptions_facetEnabled,
    doubleArrayOptions_searchEnabled,
    doubleArrayOptions_defaultValue,

    -- * DoubleOptions
    DoubleOptions (..),
    newDoubleOptions,
    doubleOptions_sourceField,
    doubleOptions_returnEnabled,
    doubleOptions_facetEnabled,
    doubleOptions_searchEnabled,
    doubleOptions_sortEnabled,
    doubleOptions_defaultValue,

    -- * Expression
    Expression (..),
    newExpression,
    expression_expressionName,
    expression_expressionValue,

    -- * ExpressionStatus
    ExpressionStatus (..),
    newExpressionStatus,
    expressionStatus_options,
    expressionStatus_status,

    -- * IndexField
    IndexField (..),
    newIndexField,
    indexField_doubleArrayOptions,
    indexField_dateOptions,
    indexField_textArrayOptions,
    indexField_doubleOptions,
    indexField_textOptions,
    indexField_latLonOptions,
    indexField_literalArrayOptions,
    indexField_intArrayOptions,
    indexField_dateArrayOptions,
    indexField_intOptions,
    indexField_literalOptions,
    indexField_indexFieldName,
    indexField_indexFieldType,

    -- * IndexFieldStatus
    IndexFieldStatus (..),
    newIndexFieldStatus,
    indexFieldStatus_options,
    indexFieldStatus_status,

    -- * IntArrayOptions
    IntArrayOptions (..),
    newIntArrayOptions,
    intArrayOptions_sourceFields,
    intArrayOptions_returnEnabled,
    intArrayOptions_facetEnabled,
    intArrayOptions_searchEnabled,
    intArrayOptions_defaultValue,

    -- * IntOptions
    IntOptions (..),
    newIntOptions,
    intOptions_sourceField,
    intOptions_returnEnabled,
    intOptions_facetEnabled,
    intOptions_searchEnabled,
    intOptions_sortEnabled,
    intOptions_defaultValue,

    -- * LatLonOptions
    LatLonOptions (..),
    newLatLonOptions,
    latLonOptions_sourceField,
    latLonOptions_returnEnabled,
    latLonOptions_facetEnabled,
    latLonOptions_searchEnabled,
    latLonOptions_sortEnabled,
    latLonOptions_defaultValue,

    -- * Limits
    Limits (..),
    newLimits,
    limits_maximumReplicationCount,
    limits_maximumPartitionCount,

    -- * LiteralArrayOptions
    LiteralArrayOptions (..),
    newLiteralArrayOptions,
    literalArrayOptions_sourceFields,
    literalArrayOptions_returnEnabled,
    literalArrayOptions_facetEnabled,
    literalArrayOptions_searchEnabled,
    literalArrayOptions_defaultValue,

    -- * LiteralOptions
    LiteralOptions (..),
    newLiteralOptions,
    literalOptions_sourceField,
    literalOptions_returnEnabled,
    literalOptions_facetEnabled,
    literalOptions_searchEnabled,
    literalOptions_sortEnabled,
    literalOptions_defaultValue,

    -- * OptionStatus
    OptionStatus (..),
    newOptionStatus,
    optionStatus_pendingDeletion,
    optionStatus_updateVersion,
    optionStatus_creationDate,
    optionStatus_updateDate,
    optionStatus_state,

    -- * ScalingParameters
    ScalingParameters (..),
    newScalingParameters,
    scalingParameters_desiredInstanceType,
    scalingParameters_desiredReplicationCount,
    scalingParameters_desiredPartitionCount,

    -- * ScalingParametersStatus
    ScalingParametersStatus (..),
    newScalingParametersStatus,
    scalingParametersStatus_options,
    scalingParametersStatus_status,

    -- * ServiceEndpoint
    ServiceEndpoint (..),
    newServiceEndpoint,
    serviceEndpoint_endpoint,

    -- * Suggester
    Suggester (..),
    newSuggester,
    suggester_suggesterName,
    suggester_documentSuggesterOptions,

    -- * SuggesterStatus
    SuggesterStatus (..),
    newSuggesterStatus,
    suggesterStatus_options,
    suggesterStatus_status,

    -- * TextArrayOptions
    TextArrayOptions (..),
    newTextArrayOptions,
    textArrayOptions_sourceFields,
    textArrayOptions_returnEnabled,
    textArrayOptions_analysisScheme,
    textArrayOptions_highlightEnabled,
    textArrayOptions_defaultValue,

    -- * TextOptions
    TextOptions (..),
    newTextOptions,
    textOptions_sourceField,
    textOptions_returnEnabled,
    textOptions_analysisScheme,
    textOptions_highlightEnabled,
    textOptions_sortEnabled,
    textOptions_defaultValue,
  )
where

import Network.AWS.CloudSearch.Types.AccessPoliciesStatus
import Network.AWS.CloudSearch.Types.AlgorithmicStemming
import Network.AWS.CloudSearch.Types.AnalysisOptions
import Network.AWS.CloudSearch.Types.AnalysisScheme
import Network.AWS.CloudSearch.Types.AnalysisSchemeLanguage
import Network.AWS.CloudSearch.Types.AnalysisSchemeStatus
import Network.AWS.CloudSearch.Types.AvailabilityOptionsStatus
import Network.AWS.CloudSearch.Types.DateArrayOptions
import Network.AWS.CloudSearch.Types.DateOptions
import Network.AWS.CloudSearch.Types.DocumentSuggesterOptions
import Network.AWS.CloudSearch.Types.DomainEndpointOptions
import Network.AWS.CloudSearch.Types.DomainEndpointOptionsStatus
import Network.AWS.CloudSearch.Types.DomainStatus
import Network.AWS.CloudSearch.Types.DoubleArrayOptions
import Network.AWS.CloudSearch.Types.DoubleOptions
import Network.AWS.CloudSearch.Types.Expression
import Network.AWS.CloudSearch.Types.ExpressionStatus
import Network.AWS.CloudSearch.Types.IndexField
import Network.AWS.CloudSearch.Types.IndexFieldStatus
import Network.AWS.CloudSearch.Types.IndexFieldType
import Network.AWS.CloudSearch.Types.IntArrayOptions
import Network.AWS.CloudSearch.Types.IntOptions
import Network.AWS.CloudSearch.Types.LatLonOptions
import Network.AWS.CloudSearch.Types.Limits
import Network.AWS.CloudSearch.Types.LiteralArrayOptions
import Network.AWS.CloudSearch.Types.LiteralOptions
import Network.AWS.CloudSearch.Types.OptionState
import Network.AWS.CloudSearch.Types.OptionStatus
import Network.AWS.CloudSearch.Types.PartitionInstanceType
import Network.AWS.CloudSearch.Types.ScalingParameters
import Network.AWS.CloudSearch.Types.ScalingParametersStatus
import Network.AWS.CloudSearch.Types.ServiceEndpoint
import Network.AWS.CloudSearch.Types.Suggester
import Network.AWS.CloudSearch.Types.SuggesterFuzzyMatching
import Network.AWS.CloudSearch.Types.SuggesterStatus
import Network.AWS.CloudSearch.Types.TLSSecurityPolicy
import Network.AWS.CloudSearch.Types.TextArrayOptions
import Network.AWS.CloudSearch.Types.TextOptions
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2013-01-01@ of the Amazon CloudSearch SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "CloudSearch",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "cloudsearch",
      Core._serviceSigningName = "cloudsearch",
      Core._serviceVersion = "2013-01-01",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseXMLError "CloudSearch",
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
      | Lens.has
          ( Core.hasCode "BandwidthLimitExceeded"
              Prelude.. Core.hasStatus 509
          )
          e =
        Prelude.Just "request_limit_exceeded"
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

-- | The request was rejected because it has invalid parameters.
_ValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ValidationException =
  Core._MatchServiceError
    defaultService
    "ValidationException"

-- | The request was rejected because it attempted to create a resource that
-- already exists.
_ResourceAlreadyExistsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceAlreadyExistsException =
  Core._MatchServiceError
    defaultService
    "ResourceAlreadyExists"
    Prelude.. Core.hasStatus 409

-- | An error occurred while processing the request.
_BaseException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_BaseException =
  Core._MatchServiceError
    defaultService
    "BaseException"

-- | The request was rejected because it attempted an operation which is not
-- enabled.
_DisabledOperationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_DisabledOperationException =
  Core._MatchServiceError
    defaultService
    "DisabledAction"
    Prelude.. Core.hasStatus 409

-- | An internal error occurred while processing the request. If this problem
-- persists, report an issue from the
-- <http://status.aws.amazon.com/ Service Health Dashboard>.
_InternalException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalException =
  Core._MatchServiceError
    defaultService
    "InternalException"
    Prelude.. Core.hasStatus 500

-- | The request was rejected because it specified an invalid type
-- definition.
_InvalidTypeException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidTypeException =
  Core._MatchServiceError
    defaultService
    "InvalidType"
    Prelude.. Core.hasStatus 409

-- | The request was rejected because it attempted to reference a resource
-- that does not exist.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFound"
    Prelude.. Core.hasStatus 409

-- | The request was rejected because a resource limit has already been met.
_LimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LimitExceededException =
  Core._MatchServiceError
    defaultService
    "LimitExceeded"
    Prelude.. Core.hasStatus 409
