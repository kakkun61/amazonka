{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECR.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECR.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ImageTagAlreadyExistsException,
    _ValidationException,
    _LayersNotFoundException,
    _ReferencedImagesNotFoundException,
    _InvalidParameterException,
    _LayerAlreadyExistsException,
    _ServerException,
    _LayerInaccessibleException,
    _InvalidLayerException,
    _LayerPartTooSmallException,
    _LifecyclePolicyPreviewNotFoundException,
    _ImageDigestDoesNotMatchException,
    _ImageNotFoundException,
    _ImageAlreadyExistsException,
    _RepositoryNotFoundException,
    _TooManyTagsException,
    _RegistryPolicyNotFoundException,
    _LifecyclePolicyPreviewInProgressException,
    _UploadNotFoundException,
    _LifecyclePolicyNotFoundException,
    _KmsException,
    _InvalidLayerPartException,
    _InvalidTagParameterException,
    _RepositoryNotEmptyException,
    _UnsupportedImageTypeException,
    _RepositoryAlreadyExistsException,
    _ScanNotFoundException,
    _RepositoryPolicyNotFoundException,
    _EmptyUploadException,
    _LimitExceededException,

    -- * EncryptionType
    EncryptionType (..),

    -- * FindingSeverity
    FindingSeverity (..),

    -- * ImageActionType
    ImageActionType (..),

    -- * ImageFailureCode
    ImageFailureCode (..),

    -- * ImageTagMutability
    ImageTagMutability (..),

    -- * LayerAvailability
    LayerAvailability (..),

    -- * LayerFailureCode
    LayerFailureCode (..),

    -- * LifecyclePolicyPreviewStatus
    LifecyclePolicyPreviewStatus (..),

    -- * ReplicationStatus
    ReplicationStatus (..),

    -- * RepositoryFilterType
    RepositoryFilterType (..),

    -- * ScanStatus
    ScanStatus (..),

    -- * TagStatus
    TagStatus (..),

    -- * Attribute
    Attribute (..),
    newAttribute,
    attribute_value,
    attribute_key,

    -- * AuthorizationData
    AuthorizationData (..),
    newAuthorizationData,
    authorizationData_expiresAt,
    authorizationData_proxyEndpoint,
    authorizationData_authorizationToken,

    -- * DescribeImagesFilter
    DescribeImagesFilter (..),
    newDescribeImagesFilter,
    describeImagesFilter_tagStatus,

    -- * EncryptionConfiguration
    EncryptionConfiguration (..),
    newEncryptionConfiguration,
    encryptionConfiguration_kmsKey,
    encryptionConfiguration_encryptionType,

    -- * Image
    Image (..),
    newImage,
    image_registryId,
    image_imageManifestMediaType,
    image_imageId,
    image_repositoryName,
    image_imageManifest,

    -- * ImageDetail
    ImageDetail (..),
    newImageDetail,
    imageDetail_registryId,
    imageDetail_imageTags,
    imageDetail_imageScanStatus,
    imageDetail_imageManifestMediaType,
    imageDetail_imageSizeInBytes,
    imageDetail_imageDigest,
    imageDetail_imageScanFindingsSummary,
    imageDetail_artifactMediaType,
    imageDetail_imagePushedAt,
    imageDetail_repositoryName,

    -- * ImageFailure
    ImageFailure (..),
    newImageFailure,
    imageFailure_failureReason,
    imageFailure_failureCode,
    imageFailure_imageId,

    -- * ImageIdentifier
    ImageIdentifier (..),
    newImageIdentifier,
    imageIdentifier_imageDigest,
    imageIdentifier_imageTag,

    -- * ImageReplicationStatus
    ImageReplicationStatus (..),
    newImageReplicationStatus,
    imageReplicationStatus_status,
    imageReplicationStatus_failureCode,
    imageReplicationStatus_registryId,
    imageReplicationStatus_region,

    -- * ImageScanFinding
    ImageScanFinding (..),
    newImageScanFinding,
    imageScanFinding_severity,
    imageScanFinding_uri,
    imageScanFinding_name,
    imageScanFinding_attributes,
    imageScanFinding_description,

    -- * ImageScanFindings
    ImageScanFindings (..),
    newImageScanFindings,
    imageScanFindings_imageScanCompletedAt,
    imageScanFindings_findings,
    imageScanFindings_findingSeverityCounts,
    imageScanFindings_vulnerabilitySourceUpdatedAt,

    -- * ImageScanFindingsSummary
    ImageScanFindingsSummary (..),
    newImageScanFindingsSummary,
    imageScanFindingsSummary_imageScanCompletedAt,
    imageScanFindingsSummary_findingSeverityCounts,
    imageScanFindingsSummary_vulnerabilitySourceUpdatedAt,

    -- * ImageScanStatus
    ImageScanStatus (..),
    newImageScanStatus,
    imageScanStatus_status,
    imageScanStatus_description,

    -- * ImageScanningConfiguration
    ImageScanningConfiguration (..),
    newImageScanningConfiguration,
    imageScanningConfiguration_scanOnPush,

    -- * Layer
    Layer (..),
    newLayer,
    layer_mediaType,
    layer_layerDigest,
    layer_layerSize,
    layer_layerAvailability,

    -- * LayerFailure
    LayerFailure (..),
    newLayerFailure,
    layerFailure_failureReason,
    layerFailure_failureCode,
    layerFailure_layerDigest,

    -- * LifecyclePolicyPreviewFilter
    LifecyclePolicyPreviewFilter (..),
    newLifecyclePolicyPreviewFilter,
    lifecyclePolicyPreviewFilter_tagStatus,

    -- * LifecyclePolicyPreviewResult
    LifecyclePolicyPreviewResult (..),
    newLifecyclePolicyPreviewResult,
    lifecyclePolicyPreviewResult_imageTags,
    lifecyclePolicyPreviewResult_action,
    lifecyclePolicyPreviewResult_imageDigest,
    lifecyclePolicyPreviewResult_imagePushedAt,
    lifecyclePolicyPreviewResult_appliedRulePriority,

    -- * LifecyclePolicyPreviewSummary
    LifecyclePolicyPreviewSummary (..),
    newLifecyclePolicyPreviewSummary,
    lifecyclePolicyPreviewSummary_expiringImageTotalCount,

    -- * LifecyclePolicyRuleAction
    LifecyclePolicyRuleAction (..),
    newLifecyclePolicyRuleAction,
    lifecyclePolicyRuleAction_type,

    -- * ListImagesFilter
    ListImagesFilter (..),
    newListImagesFilter,
    listImagesFilter_tagStatus,

    -- * ReplicationConfiguration
    ReplicationConfiguration (..),
    newReplicationConfiguration,
    replicationConfiguration_rules,

    -- * ReplicationDestination
    ReplicationDestination (..),
    newReplicationDestination,
    replicationDestination_region,
    replicationDestination_registryId,

    -- * ReplicationRule
    ReplicationRule (..),
    newReplicationRule,
    replicationRule_repositoryFilters,
    replicationRule_destinations,

    -- * Repository
    Repository (..),
    newRepository,
    repository_repositoryArn,
    repository_createdAt,
    repository_registryId,
    repository_imageScanningConfiguration,
    repository_repositoryUri,
    repository_encryptionConfiguration,
    repository_repositoryName,
    repository_imageTagMutability,

    -- * RepositoryFilter
    RepositoryFilter (..),
    newRepositoryFilter,
    repositoryFilter_filter,
    repositoryFilter_filterType,

    -- * Tag
    Tag (..),
    newTag,
    tag_value,
    tag_key,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.ECR.Types.Attribute
import Network.AWS.ECR.Types.AuthorizationData
import Network.AWS.ECR.Types.DescribeImagesFilter
import Network.AWS.ECR.Types.EncryptionConfiguration
import Network.AWS.ECR.Types.EncryptionType
import Network.AWS.ECR.Types.FindingSeverity
import Network.AWS.ECR.Types.Image
import Network.AWS.ECR.Types.ImageActionType
import Network.AWS.ECR.Types.ImageDetail
import Network.AWS.ECR.Types.ImageFailure
import Network.AWS.ECR.Types.ImageFailureCode
import Network.AWS.ECR.Types.ImageIdentifier
import Network.AWS.ECR.Types.ImageReplicationStatus
import Network.AWS.ECR.Types.ImageScanFinding
import Network.AWS.ECR.Types.ImageScanFindings
import Network.AWS.ECR.Types.ImageScanFindingsSummary
import Network.AWS.ECR.Types.ImageScanStatus
import Network.AWS.ECR.Types.ImageScanningConfiguration
import Network.AWS.ECR.Types.ImageTagMutability
import Network.AWS.ECR.Types.Layer
import Network.AWS.ECR.Types.LayerAvailability
import Network.AWS.ECR.Types.LayerFailure
import Network.AWS.ECR.Types.LayerFailureCode
import Network.AWS.ECR.Types.LifecyclePolicyPreviewFilter
import Network.AWS.ECR.Types.LifecyclePolicyPreviewResult
import Network.AWS.ECR.Types.LifecyclePolicyPreviewStatus
import Network.AWS.ECR.Types.LifecyclePolicyPreviewSummary
import Network.AWS.ECR.Types.LifecyclePolicyRuleAction
import Network.AWS.ECR.Types.ListImagesFilter
import Network.AWS.ECR.Types.ReplicationConfiguration
import Network.AWS.ECR.Types.ReplicationDestination
import Network.AWS.ECR.Types.ReplicationRule
import Network.AWS.ECR.Types.ReplicationStatus
import Network.AWS.ECR.Types.Repository
import Network.AWS.ECR.Types.RepositoryFilter
import Network.AWS.ECR.Types.RepositoryFilterType
import Network.AWS.ECR.Types.ScanStatus
import Network.AWS.ECR.Types.Tag
import Network.AWS.ECR.Types.TagStatus
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2015-09-21@ of the Amazon EC2 Container Registry SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "ECR",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "api.ecr",
      Core._serviceSigningName = "ecr",
      Core._serviceVersion = "2015-09-21",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError = Core.parseJSONError "ECR",
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

-- | The specified image is tagged with a tag that already exists. The
-- repository is configured for tag immutability.
_ImageTagAlreadyExistsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ImageTagAlreadyExistsException =
  Core._MatchServiceError
    defaultService
    "ImageTagAlreadyExistsException"

-- | There was an exception validating this request.
_ValidationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ValidationException =
  Core._MatchServiceError
    defaultService
    "ValidationException"

-- | The specified layers could not be found, or the specified layer is not
-- valid for this repository.
_LayersNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LayersNotFoundException =
  Core._MatchServiceError
    defaultService
    "LayersNotFoundException"

-- | The manifest list is referencing an image that does not exist.
_ReferencedImagesNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ReferencedImagesNotFoundException =
  Core._MatchServiceError
    defaultService
    "ReferencedImagesNotFoundException"

-- | The specified parameter is invalid. Review the available parameters for
-- the API request.
_InvalidParameterException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidParameterException =
  Core._MatchServiceError
    defaultService
    "InvalidParameterException"

-- | The image layer already exists in the associated repository.
_LayerAlreadyExistsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LayerAlreadyExistsException =
  Core._MatchServiceError
    defaultService
    "LayerAlreadyExistsException"

-- | These errors are usually caused by a server-side issue.
_ServerException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServerException =
  Core._MatchServiceError
    defaultService
    "ServerException"

-- | The specified layer is not available because it is not associated with
-- an image. Unassociated image layers may be cleaned up at any time.
_LayerInaccessibleException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LayerInaccessibleException =
  Core._MatchServiceError
    defaultService
    "LayerInaccessibleException"

-- | The layer digest calculation performed by Amazon ECR upon receipt of the
-- image layer does not match the digest specified.
_InvalidLayerException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidLayerException =
  Core._MatchServiceError
    defaultService
    "InvalidLayerException"

-- | Layer parts must be at least 5 MiB in size.
_LayerPartTooSmallException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LayerPartTooSmallException =
  Core._MatchServiceError
    defaultService
    "LayerPartTooSmallException"

-- | There is no dry run for this repository.
_LifecyclePolicyPreviewNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LifecyclePolicyPreviewNotFoundException =
  Core._MatchServiceError
    defaultService
    "LifecyclePolicyPreviewNotFoundException"

-- | The specified image digest does not match the digest that Amazon ECR
-- calculated for the image.
_ImageDigestDoesNotMatchException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ImageDigestDoesNotMatchException =
  Core._MatchServiceError
    defaultService
    "ImageDigestDoesNotMatchException"

-- | The image requested does not exist in the specified repository.
_ImageNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ImageNotFoundException =
  Core._MatchServiceError
    defaultService
    "ImageNotFoundException"

-- | The specified image has already been pushed, and there were no changes
-- to the manifest or image tag after the last push.
_ImageAlreadyExistsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ImageAlreadyExistsException =
  Core._MatchServiceError
    defaultService
    "ImageAlreadyExistsException"

-- | The specified repository could not be found. Check the spelling of the
-- specified repository and ensure that you are performing operations on
-- the correct registry.
_RepositoryNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_RepositoryNotFoundException =
  Core._MatchServiceError
    defaultService
    "RepositoryNotFoundException"

-- | The list of tags on the repository is over the limit. The maximum number
-- of tags that can be applied to a repository is 50.
_TooManyTagsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_TooManyTagsException =
  Core._MatchServiceError
    defaultService
    "TooManyTagsException"

-- | The registry doesn\'t have an associated registry policy.
_RegistryPolicyNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_RegistryPolicyNotFoundException =
  Core._MatchServiceError
    defaultService
    "RegistryPolicyNotFoundException"

-- | The previous lifecycle policy preview request has not completed. Wait
-- and try again.
_LifecyclePolicyPreviewInProgressException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LifecyclePolicyPreviewInProgressException =
  Core._MatchServiceError
    defaultService
    "LifecyclePolicyPreviewInProgressException"

-- | The upload could not be found, or the specified upload ID is not valid
-- for this repository.
_UploadNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_UploadNotFoundException =
  Core._MatchServiceError
    defaultService
    "UploadNotFoundException"

-- | The lifecycle policy could not be found, and no policy is set to the
-- repository.
_LifecyclePolicyNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LifecyclePolicyNotFoundException =
  Core._MatchServiceError
    defaultService
    "LifecyclePolicyNotFoundException"

-- | The operation failed due to a KMS exception.
_KmsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_KmsException =
  Core._MatchServiceError
    defaultService
    "KmsException"

-- | The layer part size is not valid, or the first byte specified is not
-- consecutive to the last byte of a previous layer part upload.
_InvalidLayerPartException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidLayerPartException =
  Core._MatchServiceError
    defaultService
    "InvalidLayerPartException"

-- | An invalid parameter has been specified. Tag keys can have a maximum
-- character length of 128 characters, and tag values can have a maximum
-- length of 256 characters.
_InvalidTagParameterException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidTagParameterException =
  Core._MatchServiceError
    defaultService
    "InvalidTagParameterException"

-- | The specified repository contains images. To delete a repository that
-- contains images, you must force the deletion with the @force@ parameter.
_RepositoryNotEmptyException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_RepositoryNotEmptyException =
  Core._MatchServiceError
    defaultService
    "RepositoryNotEmptyException"

-- | The image is of a type that cannot be scanned.
_UnsupportedImageTypeException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_UnsupportedImageTypeException =
  Core._MatchServiceError
    defaultService
    "UnsupportedImageTypeException"

-- | The specified repository already exists in the specified registry.
_RepositoryAlreadyExistsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_RepositoryAlreadyExistsException =
  Core._MatchServiceError
    defaultService
    "RepositoryAlreadyExistsException"

-- | The specified image scan could not be found. Ensure that image scanning
-- is enabled on the repository and try again.
_ScanNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ScanNotFoundException =
  Core._MatchServiceError
    defaultService
    "ScanNotFoundException"

-- | The specified repository and registry combination does not have an
-- associated repository policy.
_RepositoryPolicyNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_RepositoryPolicyNotFoundException =
  Core._MatchServiceError
    defaultService
    "RepositoryPolicyNotFoundException"

-- | The specified layer upload does not contain any layer parts.
_EmptyUploadException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_EmptyUploadException =
  Core._MatchServiceError
    defaultService
    "EmptyUploadException"

-- | The operation did not succeed because it would have exceeded a service
-- limit for your account. For more information, see
-- <https://docs.aws.amazon.com/AmazonECR/latest/userguide/service-quotas.html Amazon ECR service quotas>
-- in the Amazon Elastic Container Registry User Guide.
_LimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LimitExceededException =
  Core._MatchServiceError
    defaultService
    "LimitExceededException"
