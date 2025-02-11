{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.AWS.Signer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2017-08-25@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- AWS Signer is a fully managed code signing service to help you ensure
-- the trust and integrity of your code.
--
-- AWS Signer supports the following applications:
--
-- With /code signing for AWS Lambda/, you can sign AWS Lambda deployment
-- packages. Integrated support is provided for Amazon S3, Amazon
-- CloudWatch, and AWS CloudTrail. In order to sign code, you create a
-- signing profile and then use Signer to sign Lambda zip files in S3.
--
-- With /code signing for IoT/, you can sign code for any IoT device that
-- is supported by AWS. IoT code signing is available for
-- <http://docs.aws.amazon.com/freertos/latest/userguide/ Amazon FreeRTOS>
-- and
-- <http://docs.aws.amazon.com/iot/latest/developerguide/ AWS IoT Device Management>,
-- and is integrated with
-- <http://docs.aws.amazon.com/acm/latest/userguide/ AWS Certificate Manager (ACM)>.
-- In order to sign code, you import a third-party code signing certificate
-- using ACM, and use that to sign updates in Amazon FreeRTOS and AWS IoT
-- Device Management.
--
-- For more information about AWS Signer, see the
-- <http://docs.aws.amazon.com/signer/latest/developerguide/Welcome.html AWS Signer Developer Guide>.
module Network.AWS.Signer
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** ValidationException
    _ValidationException,

    -- ** AccessDeniedException
    _AccessDeniedException,

    -- ** ConflictException
    _ConflictException,

    -- ** ServiceLimitExceededException
    _ServiceLimitExceededException,

    -- ** NotFoundException
    _NotFoundException,

    -- ** ThrottlingException
    _ThrottlingException,

    -- ** TooManyRequestsException
    _TooManyRequestsException,

    -- ** InternalServiceErrorException
    _InternalServiceErrorException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** BadRequestException
    _BadRequestException,

    -- * Waiters
    -- $waiters

    -- ** SuccessfulSigningJob
    newSuccessfulSigningJob,

    -- * Operations
    -- $operations

    -- ** StartSigningJob
    StartSigningJob (StartSigningJob'),
    newStartSigningJob,
    StartSigningJobResponse (StartSigningJobResponse'),
    newStartSigningJobResponse,

    -- ** ListTagsForResource
    ListTagsForResource (ListTagsForResource'),
    newListTagsForResource,
    ListTagsForResourceResponse (ListTagsForResourceResponse'),
    newListTagsForResourceResponse,

    -- ** RevokeSigningProfile
    RevokeSigningProfile (RevokeSigningProfile'),
    newRevokeSigningProfile,
    RevokeSigningProfileResponse (RevokeSigningProfileResponse'),
    newRevokeSigningProfileResponse,

    -- ** CancelSigningProfile
    CancelSigningProfile (CancelSigningProfile'),
    newCancelSigningProfile,
    CancelSigningProfileResponse (CancelSigningProfileResponse'),
    newCancelSigningProfileResponse,

    -- ** PutSigningProfile
    PutSigningProfile (PutSigningProfile'),
    newPutSigningProfile,
    PutSigningProfileResponse (PutSigningProfileResponse'),
    newPutSigningProfileResponse,

    -- ** AddProfilePermission
    AddProfilePermission (AddProfilePermission'),
    newAddProfilePermission,
    AddProfilePermissionResponse (AddProfilePermissionResponse'),
    newAddProfilePermissionResponse,

    -- ** ListSigningProfiles (Paginated)
    ListSigningProfiles (ListSigningProfiles'),
    newListSigningProfiles,
    ListSigningProfilesResponse (ListSigningProfilesResponse'),
    newListSigningProfilesResponse,

    -- ** ListProfilePermissions
    ListProfilePermissions (ListProfilePermissions'),
    newListProfilePermissions,
    ListProfilePermissionsResponse (ListProfilePermissionsResponse'),
    newListProfilePermissionsResponse,

    -- ** RevokeSignature
    RevokeSignature (RevokeSignature'),
    newRevokeSignature,
    RevokeSignatureResponse (RevokeSignatureResponse'),
    newRevokeSignatureResponse,

    -- ** GetSigningPlatform
    GetSigningPlatform (GetSigningPlatform'),
    newGetSigningPlatform,
    GetSigningPlatformResponse (GetSigningPlatformResponse'),
    newGetSigningPlatformResponse,

    -- ** ListSigningPlatforms (Paginated)
    ListSigningPlatforms (ListSigningPlatforms'),
    newListSigningPlatforms,
    ListSigningPlatformsResponse (ListSigningPlatformsResponse'),
    newListSigningPlatformsResponse,

    -- ** ListSigningJobs (Paginated)
    ListSigningJobs (ListSigningJobs'),
    newListSigningJobs,
    ListSigningJobsResponse (ListSigningJobsResponse'),
    newListSigningJobsResponse,

    -- ** TagResource
    TagResource (TagResource'),
    newTagResource,
    TagResourceResponse (TagResourceResponse'),
    newTagResourceResponse,

    -- ** UntagResource
    UntagResource (UntagResource'),
    newUntagResource,
    UntagResourceResponse (UntagResourceResponse'),
    newUntagResourceResponse,

    -- ** RemoveProfilePermission
    RemoveProfilePermission (RemoveProfilePermission'),
    newRemoveProfilePermission,
    RemoveProfilePermissionResponse (RemoveProfilePermissionResponse'),
    newRemoveProfilePermissionResponse,

    -- ** GetSigningProfile
    GetSigningProfile (GetSigningProfile'),
    newGetSigningProfile,
    GetSigningProfileResponse (GetSigningProfileResponse'),
    newGetSigningProfileResponse,

    -- ** DescribeSigningJob
    DescribeSigningJob (DescribeSigningJob'),
    newDescribeSigningJob,
    DescribeSigningJobResponse (DescribeSigningJobResponse'),
    newDescribeSigningJobResponse,

    -- * Types

    -- ** Category
    Category (..),

    -- ** EncryptionAlgorithm
    EncryptionAlgorithm (..),

    -- ** HashAlgorithm
    HashAlgorithm (..),

    -- ** ImageFormat
    ImageFormat (..),

    -- ** SigningProfileStatus
    SigningProfileStatus (..),

    -- ** SigningStatus
    SigningStatus (..),

    -- ** ValidityType
    ValidityType (..),

    -- ** Destination
    Destination (Destination'),
    newDestination,

    -- ** EncryptionAlgorithmOptions
    EncryptionAlgorithmOptions (EncryptionAlgorithmOptions'),
    newEncryptionAlgorithmOptions,

    -- ** HashAlgorithmOptions
    HashAlgorithmOptions (HashAlgorithmOptions'),
    newHashAlgorithmOptions,

    -- ** Permission
    Permission (Permission'),
    newPermission,

    -- ** S3Destination
    S3Destination (S3Destination'),
    newS3Destination,

    -- ** S3SignedObject
    S3SignedObject (S3SignedObject'),
    newS3SignedObject,

    -- ** S3Source
    S3Source (S3Source'),
    newS3Source,

    -- ** SignatureValidityPeriod
    SignatureValidityPeriod (SignatureValidityPeriod'),
    newSignatureValidityPeriod,

    -- ** SignedObject
    SignedObject (SignedObject'),
    newSignedObject,

    -- ** SigningConfiguration
    SigningConfiguration (SigningConfiguration'),
    newSigningConfiguration,

    -- ** SigningConfigurationOverrides
    SigningConfigurationOverrides (SigningConfigurationOverrides'),
    newSigningConfigurationOverrides,

    -- ** SigningImageFormat
    SigningImageFormat (SigningImageFormat'),
    newSigningImageFormat,

    -- ** SigningJob
    SigningJob (SigningJob'),
    newSigningJob,

    -- ** SigningJobRevocationRecord
    SigningJobRevocationRecord (SigningJobRevocationRecord'),
    newSigningJobRevocationRecord,

    -- ** SigningMaterial
    SigningMaterial (SigningMaterial'),
    newSigningMaterial,

    -- ** SigningPlatform
    SigningPlatform (SigningPlatform'),
    newSigningPlatform,

    -- ** SigningPlatformOverrides
    SigningPlatformOverrides (SigningPlatformOverrides'),
    newSigningPlatformOverrides,

    -- ** SigningProfile
    SigningProfile (SigningProfile'),
    newSigningProfile,

    -- ** SigningProfileRevocationRecord
    SigningProfileRevocationRecord (SigningProfileRevocationRecord'),
    newSigningProfileRevocationRecord,

    -- ** Source
    Source (Source'),
    newSource,
  )
where

import Network.AWS.Signer.AddProfilePermission
import Network.AWS.Signer.CancelSigningProfile
import Network.AWS.Signer.DescribeSigningJob
import Network.AWS.Signer.GetSigningPlatform
import Network.AWS.Signer.GetSigningProfile
import Network.AWS.Signer.Lens
import Network.AWS.Signer.ListProfilePermissions
import Network.AWS.Signer.ListSigningJobs
import Network.AWS.Signer.ListSigningPlatforms
import Network.AWS.Signer.ListSigningProfiles
import Network.AWS.Signer.ListTagsForResource
import Network.AWS.Signer.PutSigningProfile
import Network.AWS.Signer.RemoveProfilePermission
import Network.AWS.Signer.RevokeSignature
import Network.AWS.Signer.RevokeSigningProfile
import Network.AWS.Signer.StartSigningJob
import Network.AWS.Signer.TagResource
import Network.AWS.Signer.Types
import Network.AWS.Signer.UntagResource
import Network.AWS.Signer.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'Signer'.

-- $operations
-- Some AWS operations return results that are incomplete and require subsequent
-- requests in order to obtain the entire result set. The process of sending
-- subsequent requests to continue where a previous request left off is called
-- pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
-- 1000 objects at a time, and you must send subsequent requests with the
-- appropriate Marker in order to retrieve the next page of results.
--
-- Operations that have an 'AWSPager' instance can transparently perform subsequent
-- requests, correctly setting Markers and other request facets to iterate through
-- the entire result set of a truncated API operation. Operations which support
-- this have an additional note in the documentation.
--
-- Many operations have the ability to filter results on the server side. See the
-- individual operation parameters for details.

-- $waiters
-- Waiters poll by repeatedly sending a request until some remote success condition
-- configured by the 'Wait' specification is fulfilled. The 'Wait' specification
-- determines how many attempts should be made, in addition to delay and retry strategies.
