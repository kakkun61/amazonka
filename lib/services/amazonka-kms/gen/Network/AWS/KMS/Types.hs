{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KMS.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _InvalidMarkerException,
    _KMSInvalidStateException,
    _InvalidKeyUsageException,
    _MalformedPolicyDocumentException,
    _CustomKeyStoreNameInUseException,
    _UnsupportedOperationException,
    _DisabledException,
    _KeyUnavailableException,
    _IncorrectKeyMaterialException,
    _KMSInternalException,
    _TagException,
    _CustomKeyStoreHasCMKsException,
    _InvalidImportTokenException,
    _CloudHsmClusterNotRelatedException,
    _IncorrectTrustAnchorException,
    _CloudHsmClusterInvalidConfigurationException,
    _CloudHsmClusterNotActiveException,
    _CloudHsmClusterNotFoundException,
    _NotFoundException,
    _KMSInvalidSignatureException,
    _InvalidAliasNameException,
    _CustomKeyStoreNotFoundException,
    _CustomKeyStoreInvalidStateException,
    _InvalidGrantIdException,
    _InvalidGrantTokenException,
    _InvalidArnException,
    _DependencyTimeoutException,
    _ExpiredImportTokenException,
    _InvalidCiphertextException,
    _CloudHsmClusterInUseException,
    _IncorrectKeyException,
    _AlreadyExistsException,
    _LimitExceededException,

    -- * AlgorithmSpec
    AlgorithmSpec (..),

    -- * ConnectionErrorCodeType
    ConnectionErrorCodeType (..),

    -- * ConnectionStateType
    ConnectionStateType (..),

    -- * CustomerMasterKeySpec
    CustomerMasterKeySpec (..),

    -- * DataKeyPairSpec
    DataKeyPairSpec (..),

    -- * DataKeySpec
    DataKeySpec (..),

    -- * EncryptionAlgorithmSpec
    EncryptionAlgorithmSpec (..),

    -- * ExpirationModelType
    ExpirationModelType (..),

    -- * GrantOperation
    GrantOperation (..),

    -- * KeyManagerType
    KeyManagerType (..),

    -- * KeySpec
    KeySpec (..),

    -- * KeyState
    KeyState (..),

    -- * KeyUsageType
    KeyUsageType (..),

    -- * MessageType
    MessageType (..),

    -- * MultiRegionKeyType
    MultiRegionKeyType (..),

    -- * OriginType
    OriginType (..),

    -- * SigningAlgorithmSpec
    SigningAlgorithmSpec (..),

    -- * WrappingKeySpec
    WrappingKeySpec (..),

    -- * AliasListEntry
    AliasListEntry (..),
    newAliasListEntry,
    aliasListEntry_targetKeyId,
    aliasListEntry_aliasName,
    aliasListEntry_creationDate,
    aliasListEntry_lastUpdatedDate,
    aliasListEntry_aliasArn,

    -- * CustomKeyStoresListEntry
    CustomKeyStoresListEntry (..),
    newCustomKeyStoresListEntry,
    customKeyStoresListEntry_customKeyStoreName,
    customKeyStoresListEntry_trustAnchorCertificate,
    customKeyStoresListEntry_connectionErrorCode,
    customKeyStoresListEntry_creationDate,
    customKeyStoresListEntry_cloudHsmClusterId,
    customKeyStoresListEntry_customKeyStoreId,
    customKeyStoresListEntry_connectionState,

    -- * GrantConstraints
    GrantConstraints (..),
    newGrantConstraints,
    grantConstraints_encryptionContextEquals,
    grantConstraints_encryptionContextSubset,

    -- * GrantListEntry
    GrantListEntry (..),
    newGrantListEntry,
    grantListEntry_keyId,
    grantListEntry_retiringPrincipal,
    grantListEntry_issuingAccount,
    grantListEntry_grantId,
    grantListEntry_constraints,
    grantListEntry_granteePrincipal,
    grantListEntry_name,
    grantListEntry_creationDate,
    grantListEntry_operations,

    -- * KeyListEntry
    KeyListEntry (..),
    newKeyListEntry,
    keyListEntry_keyId,
    keyListEntry_keyArn,

    -- * KeyMetadata
    KeyMetadata (..),
    newKeyMetadata,
    keyMetadata_origin,
    keyMetadata_expirationModel,
    keyMetadata_keyManager,
    keyMetadata_keySpec,
    keyMetadata_customerMasterKeySpec,
    keyMetadata_enabled,
    keyMetadata_validTo,
    keyMetadata_arn,
    keyMetadata_keyState,
    keyMetadata_encryptionAlgorithms,
    keyMetadata_aWSAccountId,
    keyMetadata_signingAlgorithms,
    keyMetadata_pendingDeletionWindowInDays,
    keyMetadata_keyUsage,
    keyMetadata_creationDate,
    keyMetadata_deletionDate,
    keyMetadata_cloudHsmClusterId,
    keyMetadata_description,
    keyMetadata_customKeyStoreId,
    keyMetadata_multiRegion,
    keyMetadata_multiRegionConfiguration,
    keyMetadata_keyId,

    -- * ListGrantsResponse
    ListGrantsResponse (..),
    newListGrantsResponse,
    listGrantsResponse_truncated,
    listGrantsResponse_grants,
    listGrantsResponse_nextMarker,

    -- * MultiRegionConfiguration
    MultiRegionConfiguration (..),
    newMultiRegionConfiguration,
    multiRegionConfiguration_primaryKey,
    multiRegionConfiguration_replicaKeys,
    multiRegionConfiguration_multiRegionKeyType,

    -- * MultiRegionKey
    MultiRegionKey (..),
    newMultiRegionKey,
    multiRegionKey_arn,
    multiRegionKey_region,

    -- * Tag
    Tag (..),
    newTag,
    tag_tagKey,
    tag_tagValue,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.KMS.Types.AlgorithmSpec
import Network.AWS.KMS.Types.AliasListEntry
import Network.AWS.KMS.Types.ConnectionErrorCodeType
import Network.AWS.KMS.Types.ConnectionStateType
import Network.AWS.KMS.Types.CustomKeyStoresListEntry
import Network.AWS.KMS.Types.CustomerMasterKeySpec
import Network.AWS.KMS.Types.DataKeyPairSpec
import Network.AWS.KMS.Types.DataKeySpec
import Network.AWS.KMS.Types.EncryptionAlgorithmSpec
import Network.AWS.KMS.Types.ExpirationModelType
import Network.AWS.KMS.Types.GrantConstraints
import Network.AWS.KMS.Types.GrantListEntry
import Network.AWS.KMS.Types.GrantOperation
import Network.AWS.KMS.Types.KeyListEntry
import Network.AWS.KMS.Types.KeyManagerType
import Network.AWS.KMS.Types.KeyMetadata
import Network.AWS.KMS.Types.KeySpec
import Network.AWS.KMS.Types.KeyState
import Network.AWS.KMS.Types.KeyUsageType
import Network.AWS.KMS.Types.ListGrantsResponse
import Network.AWS.KMS.Types.MessageType
import Network.AWS.KMS.Types.MultiRegionConfiguration
import Network.AWS.KMS.Types.MultiRegionKey
import Network.AWS.KMS.Types.MultiRegionKeyType
import Network.AWS.KMS.Types.OriginType
import Network.AWS.KMS.Types.SigningAlgorithmSpec
import Network.AWS.KMS.Types.Tag
import Network.AWS.KMS.Types.WrappingKeySpec
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2014-11-01@ of the Amazon Key Management Service SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "KMS",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "kms",
      Core._serviceSigningName = "kms",
      Core._serviceVersion = "2014-11-01",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError = Core.parseJSONError "KMS",
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

-- | The request was rejected because the marker that specifies where
-- pagination should next begin is not valid.
_InvalidMarkerException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidMarkerException =
  Core._MatchServiceError
    defaultService
    "InvalidMarkerException"

-- | The request was rejected because the state of the specified resource is
-- not valid for this request.
--
-- For more information about how key state affects the use of a KMS key,
-- see
-- <https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html Key state: Effect on your KMS key>
-- in the //Key Management Service Developer Guide// .
_KMSInvalidStateException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_KMSInvalidStateException =
  Core._MatchServiceError
    defaultService
    "KMSInvalidStateException"

-- | The request was rejected for one of the following reasons:
--
-- -   The @KeyUsage@ value of the KMS key is incompatible with the API
--     operation.
--
-- -   The encryption algorithm or signing algorithm specified for the
--     operation is incompatible with the type of key material in the KMS
--     key @(KeySpec@).
--
-- For encrypting, decrypting, re-encrypting, and generating data keys, the
-- @KeyUsage@ must be @ENCRYPT_DECRYPT@. For signing and verifying, the
-- @KeyUsage@ must be @SIGN_VERIFY@. To find the @KeyUsage@ of a KMS key,
-- use the DescribeKey operation.
--
-- To find the encryption or signing algorithms supported for a particular
-- KMS key, use the DescribeKey operation.
_InvalidKeyUsageException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidKeyUsageException =
  Core._MatchServiceError
    defaultService
    "InvalidKeyUsageException"

-- | The request was rejected because the specified policy is not
-- syntactically or semantically correct.
_MalformedPolicyDocumentException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_MalformedPolicyDocumentException =
  Core._MatchServiceError
    defaultService
    "MalformedPolicyDocumentException"

-- | The request was rejected because the specified custom key store name is
-- already assigned to another custom key store in the account. Try again
-- with a custom key store name that is unique in the account.
_CustomKeyStoreNameInUseException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_CustomKeyStoreNameInUseException =
  Core._MatchServiceError
    defaultService
    "CustomKeyStoreNameInUseException"

-- | The request was rejected because a specified parameter is not supported
-- or a specified resource is not valid for this operation.
_UnsupportedOperationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_UnsupportedOperationException =
  Core._MatchServiceError
    defaultService
    "UnsupportedOperationException"

-- | The request was rejected because the specified KMS key is not enabled.
_DisabledException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_DisabledException =
  Core._MatchServiceError
    defaultService
    "DisabledException"

-- | The request was rejected because the specified KMS key was not
-- available. You can retry the request.
_KeyUnavailableException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_KeyUnavailableException =
  Core._MatchServiceError
    defaultService
    "KeyUnavailableException"

-- | The request was rejected because the key material in the request is,
-- expired, invalid, or is not the same key material that was previously
-- imported into this KMS key.
_IncorrectKeyMaterialException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_IncorrectKeyMaterialException =
  Core._MatchServiceError
    defaultService
    "IncorrectKeyMaterialException"

-- | The request was rejected because an internal exception occurred. The
-- request can be retried.
_KMSInternalException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_KMSInternalException =
  Core._MatchServiceError
    defaultService
    "KMSInternalException"

-- | The request was rejected because one or more tags are not valid.
_TagException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_TagException =
  Core._MatchServiceError
    defaultService
    "TagException"

-- | The request was rejected because the custom key store contains KMS keys.
-- After verifying that you do not need to use the KMS keys, use the
-- ScheduleKeyDeletion operation to delete the KMS keys. After they are
-- deleted, you can delete the custom key store.
_CustomKeyStoreHasCMKsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_CustomKeyStoreHasCMKsException =
  Core._MatchServiceError
    defaultService
    "CustomKeyStoreHasCMKsException"

-- | The request was rejected because the provided import token is invalid or
-- is associated with a different KMS key.
_InvalidImportTokenException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidImportTokenException =
  Core._MatchServiceError
    defaultService
    "InvalidImportTokenException"

-- | The request was rejected because the specified CloudHSM cluster has a
-- different cluster certificate than the original cluster. You cannot use
-- the operation to specify an unrelated cluster.
--
-- Specify a cluster that shares a backup history with the original
-- cluster. This includes clusters that were created from a backup of the
-- current cluster, and clusters that were created from the same backup
-- that produced the current cluster.
--
-- Clusters that share a backup history have the same cluster certificate.
-- To view the cluster certificate of a cluster, use the
-- <https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html DescribeClusters>
-- operation.
_CloudHsmClusterNotRelatedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_CloudHsmClusterNotRelatedException =
  Core._MatchServiceError
    defaultService
    "CloudHsmClusterNotRelatedException"

-- | The request was rejected because the trust anchor certificate in the
-- request is not the trust anchor certificate for the specified CloudHSM
-- cluster.
--
-- When you
-- <https://docs.aws.amazon.com/cloudhsm/latest/userguide/initialize-cluster.html#sign-csr initialize the cluster>,
-- you create the trust anchor certificate and save it in the
-- @customerCA.crt@ file.
_IncorrectTrustAnchorException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_IncorrectTrustAnchorException =
  Core._MatchServiceError
    defaultService
    "IncorrectTrustAnchorException"

-- | The request was rejected because the associated CloudHSM cluster did not
-- meet the configuration requirements for a custom key store.
--
-- -   The cluster must be configured with private subnets in at least two
--     different Availability Zones in the Region.
--
-- -   The
--     <https://docs.aws.amazon.com/cloudhsm/latest/userguide/configure-sg.html security group for the cluster>
--     (cloudhsm-cluster-/\<cluster-id>/-sg) must include inbound rules and
--     outbound rules that allow TCP traffic on ports 2223-2225. The
--     __Source__ in the inbound rules and the __Destination__ in the
--     outbound rules must match the security group ID. These rules are set
--     by default when you create the cluster. Do not delete or change
--     them. To get information about a particular security group, use the
--     <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSecurityGroups.html DescribeSecurityGroups>
--     operation.
--
-- -   The cluster must contain at least as many HSMs as the operation
--     requires. To add HSMs, use the CloudHSM
--     <https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_CreateHsm.html CreateHsm>
--     operation.
--
--     For the CreateCustomKeyStore, UpdateCustomKeyStore, and CreateKey
--     operations, the CloudHSM cluster must have at least two active HSMs,
--     each in a different Availability Zone. For the ConnectCustomKeyStore
--     operation, the CloudHSM must contain at least one active HSM.
--
-- For information about the requirements for an CloudHSM cluster that is
-- associated with a custom key store, see
-- <https://docs.aws.amazon.com/kms/latest/developerguide/create-keystore.html#before-keystore Assemble the Prerequisites>
-- in the /Key Management Service Developer Guide/. For information about
-- creating a private subnet for an CloudHSM cluster, see
-- <https://docs.aws.amazon.com/cloudhsm/latest/userguide/create-subnets.html Create a Private Subnet>
-- in the /CloudHSM User Guide/. For information about cluster security
-- groups, see
-- <https://docs.aws.amazon.com/cloudhsm/latest/userguide/configure-sg.html Configure a Default Security Group>
-- in the //CloudHSM User Guide// .
_CloudHsmClusterInvalidConfigurationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_CloudHsmClusterInvalidConfigurationException =
  Core._MatchServiceError
    defaultService
    "CloudHsmClusterInvalidConfigurationException"

-- | The request was rejected because the CloudHSM cluster that is associated
-- with the custom key store is not active. Initialize and activate the
-- cluster and try the command again. For detailed instructions, see
-- <https://docs.aws.amazon.com/cloudhsm/latest/userguide/getting-started.html Getting Started>
-- in the /CloudHSM User Guide/.
_CloudHsmClusterNotActiveException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_CloudHsmClusterNotActiveException =
  Core._MatchServiceError
    defaultService
    "CloudHsmClusterNotActiveException"

-- | The request was rejected because KMS cannot find the CloudHSM cluster
-- with the specified cluster ID. Retry the request with a different
-- cluster ID.
_CloudHsmClusterNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_CloudHsmClusterNotFoundException =
  Core._MatchServiceError
    defaultService
    "CloudHsmClusterNotFoundException"

-- | The request was rejected because the specified entity or resource could
-- not be found.
_NotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NotFoundException =
  Core._MatchServiceError
    defaultService
    "NotFoundException"

-- | The request was rejected because the signature verification failed.
-- Signature verification fails when it cannot confirm that signature was
-- produced by signing the specified message with the specified KMS key and
-- signing algorithm.
_KMSInvalidSignatureException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_KMSInvalidSignatureException =
  Core._MatchServiceError
    defaultService
    "KMSInvalidSignatureException"

-- | The request was rejected because the specified alias name is not valid.
_InvalidAliasNameException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidAliasNameException =
  Core._MatchServiceError
    defaultService
    "InvalidAliasNameException"

-- | The request was rejected because KMS cannot find a custom key store with
-- the specified key store name or ID.
_CustomKeyStoreNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_CustomKeyStoreNotFoundException =
  Core._MatchServiceError
    defaultService
    "CustomKeyStoreNotFoundException"

-- | The request was rejected because of the @ConnectionState@ of the custom
-- key store. To get the @ConnectionState@ of a custom key store, use the
-- DescribeCustomKeyStores operation.
--
-- This exception is thrown under the following conditions:
--
-- -   You requested the CreateKey or GenerateRandom operation in a custom
--     key store that is not connected. These operations are valid only
--     when the custom key store @ConnectionState@ is @CONNECTED@.
--
-- -   You requested the UpdateCustomKeyStore or DeleteCustomKeyStore
--     operation on a custom key store that is not disconnected. This
--     operation is valid only when the custom key store @ConnectionState@
--     is @DISCONNECTED@.
--
-- -   You requested the ConnectCustomKeyStore operation on a custom key
--     store with a @ConnectionState@ of @DISCONNECTING@ or @FAILED@. This
--     operation is valid for all other @ConnectionState@ values.
_CustomKeyStoreInvalidStateException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_CustomKeyStoreInvalidStateException =
  Core._MatchServiceError
    defaultService
    "CustomKeyStoreInvalidStateException"

-- | The request was rejected because the specified @GrantId@ is not valid.
_InvalidGrantIdException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidGrantIdException =
  Core._MatchServiceError
    defaultService
    "InvalidGrantIdException"

-- | The request was rejected because the specified grant token is not valid.
_InvalidGrantTokenException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidGrantTokenException =
  Core._MatchServiceError
    defaultService
    "InvalidGrantTokenException"

-- | The request was rejected because a specified ARN, or an ARN in a key
-- policy, is not valid.
_InvalidArnException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidArnException =
  Core._MatchServiceError
    defaultService
    "InvalidArnException"

-- | The system timed out while trying to fulfill the request. The request
-- can be retried.
_DependencyTimeoutException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_DependencyTimeoutException =
  Core._MatchServiceError
    defaultService
    "DependencyTimeoutException"

-- | The request was rejected because the specified import token is expired.
-- Use GetParametersForImport to get a new import token and public key, use
-- the new public key to encrypt the key material, and then try the request
-- again.
_ExpiredImportTokenException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ExpiredImportTokenException =
  Core._MatchServiceError
    defaultService
    "ExpiredImportTokenException"

-- | From the Decrypt or ReEncrypt operation, the request was rejected
-- because the specified ciphertext, or additional authenticated data
-- incorporated into the ciphertext, such as the encryption context, is
-- corrupted, missing, or otherwise invalid.
--
-- From the ImportKeyMaterial operation, the request was rejected because
-- KMS could not decrypt the encrypted (wrapped) key material.
_InvalidCiphertextException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidCiphertextException =
  Core._MatchServiceError
    defaultService
    "InvalidCiphertextException"

-- | The request was rejected because the specified CloudHSM cluster is
-- already associated with a custom key store or it shares a backup history
-- with a cluster that is associated with a custom key store. Each custom
-- key store must be associated with a different CloudHSM cluster.
--
-- Clusters that share a backup history have the same cluster certificate.
-- To view the cluster certificate of a cluster, use the
-- <https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html DescribeClusters>
-- operation.
_CloudHsmClusterInUseException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_CloudHsmClusterInUseException =
  Core._MatchServiceError
    defaultService
    "CloudHsmClusterInUseException"

-- | The request was rejected because the specified KMS key cannot decrypt
-- the data. The @KeyId@ in a Decrypt request and the @SourceKeyId@ in a
-- ReEncrypt request must identify the same KMS key that was used to
-- encrypt the ciphertext.
_IncorrectKeyException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_IncorrectKeyException =
  Core._MatchServiceError
    defaultService
    "IncorrectKeyException"

-- | The request was rejected because it attempted to create a resource that
-- already exists.
_AlreadyExistsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AlreadyExistsException =
  Core._MatchServiceError
    defaultService
    "AlreadyExistsException"

-- | The request was rejected because a quota was exceeded. For more
-- information, see
-- <https://docs.aws.amazon.com/kms/latest/developerguide/limits.html Quotas>
-- in the /Key Management Service Developer Guide/.
_LimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LimitExceededException =
  Core._MatchServiceError
    defaultService
    "LimitExceededException"
