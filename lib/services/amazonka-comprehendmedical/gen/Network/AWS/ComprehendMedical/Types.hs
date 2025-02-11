{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ComprehendMedical.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ComprehendMedical.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ValidationException,
    _InvalidRequestException,
    _TooManyRequestsException,
    _InvalidEncodingException,
    _InternalServerException,
    _ServiceUnavailableException,
    _ResourceNotFoundException,
    _TextSizeLimitExceededException,

    -- * AttributeName
    AttributeName (..),

    -- * EntitySubType
    EntitySubType (..),

    -- * EntityType
    EntityType (..),

    -- * ICD10CMAttributeType
    ICD10CMAttributeType (..),

    -- * ICD10CMEntityCategory
    ICD10CMEntityCategory (..),

    -- * ICD10CMEntityType
    ICD10CMEntityType (..),

    -- * ICD10CMRelationshipType
    ICD10CMRelationshipType (..),

    -- * ICD10CMTraitName
    ICD10CMTraitName (..),

    -- * JobStatus
    JobStatus (..),

    -- * LanguageCode
    LanguageCode (..),

    -- * RelationshipType
    RelationshipType (..),

    -- * RxNormAttributeType
    RxNormAttributeType (..),

    -- * RxNormEntityCategory
    RxNormEntityCategory (..),

    -- * RxNormEntityType
    RxNormEntityType (..),

    -- * RxNormTraitName
    RxNormTraitName (..),

    -- * Attribute
    Attribute (..),
    newAttribute,
    attribute_relationshipScore,
    attribute_beginOffset,
    attribute_text,
    attribute_category,
    attribute_score,
    attribute_traits,
    attribute_relationshipType,
    attribute_endOffset,
    attribute_id,
    attribute_type,

    -- * ComprehendMedicalAsyncJobFilter
    ComprehendMedicalAsyncJobFilter (..),
    newComprehendMedicalAsyncJobFilter,
    comprehendMedicalAsyncJobFilter_submitTimeAfter,
    comprehendMedicalAsyncJobFilter_submitTimeBefore,
    comprehendMedicalAsyncJobFilter_jobName,
    comprehendMedicalAsyncJobFilter_jobStatus,

    -- * ComprehendMedicalAsyncJobProperties
    ComprehendMedicalAsyncJobProperties (..),
    newComprehendMedicalAsyncJobProperties,
    comprehendMedicalAsyncJobProperties_languageCode,
    comprehendMedicalAsyncJobProperties_kmsKey,
    comprehendMedicalAsyncJobProperties_jobId,
    comprehendMedicalAsyncJobProperties_jobName,
    comprehendMedicalAsyncJobProperties_manifestFilePath,
    comprehendMedicalAsyncJobProperties_inputDataConfig,
    comprehendMedicalAsyncJobProperties_endTime,
    comprehendMedicalAsyncJobProperties_outputDataConfig,
    comprehendMedicalAsyncJobProperties_modelVersion,
    comprehendMedicalAsyncJobProperties_dataAccessRoleArn,
    comprehendMedicalAsyncJobProperties_jobStatus,
    comprehendMedicalAsyncJobProperties_message,
    comprehendMedicalAsyncJobProperties_expirationTime,
    comprehendMedicalAsyncJobProperties_submitTime,

    -- * Entity
    Entity (..),
    newEntity,
    entity_beginOffset,
    entity_text,
    entity_category,
    entity_score,
    entity_traits,
    entity_attributes,
    entity_endOffset,
    entity_id,
    entity_type,

    -- * ICD10CMAttribute
    ICD10CMAttribute (..),
    newICD10CMAttribute,
    iCD10CMAttribute_relationshipScore,
    iCD10CMAttribute_beginOffset,
    iCD10CMAttribute_text,
    iCD10CMAttribute_category,
    iCD10CMAttribute_score,
    iCD10CMAttribute_traits,
    iCD10CMAttribute_relationshipType,
    iCD10CMAttribute_endOffset,
    iCD10CMAttribute_id,
    iCD10CMAttribute_type,

    -- * ICD10CMConcept
    ICD10CMConcept (..),
    newICD10CMConcept,
    iCD10CMConcept_score,
    iCD10CMConcept_code,
    iCD10CMConcept_description,

    -- * ICD10CMEntity
    ICD10CMEntity (..),
    newICD10CMEntity,
    iCD10CMEntity_iCD10CMConcepts,
    iCD10CMEntity_beginOffset,
    iCD10CMEntity_text,
    iCD10CMEntity_category,
    iCD10CMEntity_score,
    iCD10CMEntity_traits,
    iCD10CMEntity_attributes,
    iCD10CMEntity_endOffset,
    iCD10CMEntity_id,
    iCD10CMEntity_type,

    -- * ICD10CMTrait
    ICD10CMTrait (..),
    newICD10CMTrait,
    iCD10CMTrait_score,
    iCD10CMTrait_name,

    -- * InputDataConfig
    InputDataConfig (..),
    newInputDataConfig,
    inputDataConfig_s3Key,
    inputDataConfig_s3Bucket,

    -- * OutputDataConfig
    OutputDataConfig (..),
    newOutputDataConfig,
    outputDataConfig_s3Key,
    outputDataConfig_s3Bucket,

    -- * RxNormAttribute
    RxNormAttribute (..),
    newRxNormAttribute,
    rxNormAttribute_relationshipScore,
    rxNormAttribute_beginOffset,
    rxNormAttribute_text,
    rxNormAttribute_score,
    rxNormAttribute_traits,
    rxNormAttribute_endOffset,
    rxNormAttribute_id,
    rxNormAttribute_type,

    -- * RxNormConcept
    RxNormConcept (..),
    newRxNormConcept,
    rxNormConcept_score,
    rxNormConcept_code,
    rxNormConcept_description,

    -- * RxNormEntity
    RxNormEntity (..),
    newRxNormEntity,
    rxNormEntity_rxNormConcepts,
    rxNormEntity_beginOffset,
    rxNormEntity_text,
    rxNormEntity_category,
    rxNormEntity_score,
    rxNormEntity_traits,
    rxNormEntity_attributes,
    rxNormEntity_endOffset,
    rxNormEntity_id,
    rxNormEntity_type,

    -- * RxNormTrait
    RxNormTrait (..),
    newRxNormTrait,
    rxNormTrait_score,
    rxNormTrait_name,

    -- * Trait
    Trait (..),
    newTrait,
    trait_score,
    trait_name,

    -- * UnmappedAttribute
    UnmappedAttribute (..),
    newUnmappedAttribute,
    unmappedAttribute_attribute,
    unmappedAttribute_type,
  )
where

import Network.AWS.ComprehendMedical.Types.Attribute
import Network.AWS.ComprehendMedical.Types.AttributeName
import Network.AWS.ComprehendMedical.Types.ComprehendMedicalAsyncJobFilter
import Network.AWS.ComprehendMedical.Types.ComprehendMedicalAsyncJobProperties
import Network.AWS.ComprehendMedical.Types.Entity
import Network.AWS.ComprehendMedical.Types.EntitySubType
import Network.AWS.ComprehendMedical.Types.EntityType
import Network.AWS.ComprehendMedical.Types.ICD10CMAttribute
import Network.AWS.ComprehendMedical.Types.ICD10CMAttributeType
import Network.AWS.ComprehendMedical.Types.ICD10CMConcept
import Network.AWS.ComprehendMedical.Types.ICD10CMEntity
import Network.AWS.ComprehendMedical.Types.ICD10CMEntityCategory
import Network.AWS.ComprehendMedical.Types.ICD10CMEntityType
import Network.AWS.ComprehendMedical.Types.ICD10CMRelationshipType
import Network.AWS.ComprehendMedical.Types.ICD10CMTrait
import Network.AWS.ComprehendMedical.Types.ICD10CMTraitName
import Network.AWS.ComprehendMedical.Types.InputDataConfig
import Network.AWS.ComprehendMedical.Types.JobStatus
import Network.AWS.ComprehendMedical.Types.LanguageCode
import Network.AWS.ComprehendMedical.Types.OutputDataConfig
import Network.AWS.ComprehendMedical.Types.RelationshipType
import Network.AWS.ComprehendMedical.Types.RxNormAttribute
import Network.AWS.ComprehendMedical.Types.RxNormAttributeType
import Network.AWS.ComprehendMedical.Types.RxNormConcept
import Network.AWS.ComprehendMedical.Types.RxNormEntity
import Network.AWS.ComprehendMedical.Types.RxNormEntityCategory
import Network.AWS.ComprehendMedical.Types.RxNormEntityType
import Network.AWS.ComprehendMedical.Types.RxNormTrait
import Network.AWS.ComprehendMedical.Types.RxNormTraitName
import Network.AWS.ComprehendMedical.Types.Trait
import Network.AWS.ComprehendMedical.Types.UnmappedAttribute
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2018-10-30@ of the Amazon Comprehend Medical SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev =
        "ComprehendMedical",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "comprehendmedical",
      Core._serviceSigningName = "comprehendmedical",
      Core._serviceVersion = "2018-10-30",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "ComprehendMedical",
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

-- | The filter that you specified for the operation is invalid. Check the
-- filter values that you entered and try your request again.
_ValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ValidationException =
  Core._MatchServiceError
    defaultService
    "ValidationException"

-- | The request that you made is invalid. Check your request to determine
-- why it\'s invalid and then retry the request.
_InvalidRequestException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidRequestException =
  Core._MatchServiceError
    defaultService
    "InvalidRequestException"

-- | You have made too many requests within a short period of time. Wait for
-- a short time and then try your request again. Contact customer support
-- for more information about a service limit increase.
_TooManyRequestsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_TooManyRequestsException =
  Core._MatchServiceError
    defaultService
    "TooManyRequestsException"

-- | The input text was not in valid UTF-8 character encoding. Check your
-- text then retry your request.
_InvalidEncodingException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidEncodingException =
  Core._MatchServiceError
    defaultService
    "InvalidEncodingException"

-- | An internal server error occurred. Retry your request.
_InternalServerException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServerException =
  Core._MatchServiceError
    defaultService
    "InternalServerException"

-- | The Amazon Comprehend Medical service is temporarily unavailable. Please
-- wait and then retry your request.
_ServiceUnavailableException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceUnavailableException =
  Core._MatchServiceError
    defaultService
    "ServiceUnavailableException"

-- | The resource identified by the specified Amazon Resource Name (ARN) was
-- not found. Check the ARN and try your request again.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"

-- | The size of the text you submitted exceeds the size limit. Reduce the
-- size of the text or use a smaller document and then retry your request.
_TextSizeLimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_TextSizeLimitExceededException =
  Core._MatchServiceError
    defaultService
    "TextSizeLimitExceededException"
