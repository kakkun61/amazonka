{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Transfer.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transfer.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _AccessDeniedException,
    _InvalidRequestException,
    _ConflictException,
    _ThrottlingException,
    _InvalidNextTokenException,
    _InternalServiceError,
    _ResourceExistsException,
    _ServiceUnavailableException,
    _ResourceNotFoundException,

    -- * CustomStepStatus
    CustomStepStatus (..),

    -- * Domain
    Domain (..),

    -- * EndpointType
    EndpointType (..),

    -- * ExecutionErrorType
    ExecutionErrorType (..),

    -- * ExecutionStatus
    ExecutionStatus (..),

    -- * HomeDirectoryType
    HomeDirectoryType (..),

    -- * IdentityProviderType
    IdentityProviderType (..),

    -- * OverwriteExisting
    OverwriteExisting (..),

    -- * Protocol
    Protocol (..),

    -- * State
    State (..),

    -- * WorkflowStepType
    WorkflowStepType (..),

    -- * CopyStepDetails
    CopyStepDetails (..),
    newCopyStepDetails,
    copyStepDetails_destinationFileLocation,
    copyStepDetails_overwriteExisting,
    copyStepDetails_name,

    -- * CustomStepDetails
    CustomStepDetails (..),
    newCustomStepDetails,
    customStepDetails_name,
    customStepDetails_timeoutSeconds,
    customStepDetails_target,

    -- * DeleteStepDetails
    DeleteStepDetails (..),
    newDeleteStepDetails,
    deleteStepDetails_name,

    -- * DescribedAccess
    DescribedAccess (..),
    newDescribedAccess,
    describedAccess_homeDirectoryType,
    describedAccess_posixProfile,
    describedAccess_homeDirectoryMappings,
    describedAccess_role,
    describedAccess_policy,
    describedAccess_externalId,
    describedAccess_homeDirectory,

    -- * DescribedExecution
    DescribedExecution (..),
    newDescribedExecution,
    describedExecution_status,
    describedExecution_executionId,
    describedExecution_results,
    describedExecution_initialFileLocation,
    describedExecution_posixProfile,
    describedExecution_serviceMetadata,
    describedExecution_loggingConfiguration,
    describedExecution_executionRole,

    -- * DescribedSecurityPolicy
    DescribedSecurityPolicy (..),
    newDescribedSecurityPolicy,
    describedSecurityPolicy_fips,
    describedSecurityPolicy_sshMacs,
    describedSecurityPolicy_sshKexs,
    describedSecurityPolicy_tlsCiphers,
    describedSecurityPolicy_sshCiphers,
    describedSecurityPolicy_securityPolicyName,

    -- * DescribedServer
    DescribedServer (..),
    newDescribedServer,
    describedServer_protocolDetails,
    describedServer_loggingRole,
    describedServer_state,
    describedServer_identityProviderType,
    describedServer_protocols,
    describedServer_serverId,
    describedServer_domain,
    describedServer_endpointType,
    describedServer_securityPolicyName,
    describedServer_hostKeyFingerprint,
    describedServer_userCount,
    describedServer_certificate,
    describedServer_identityProviderDetails,
    describedServer_workflowDetails,
    describedServer_tags,
    describedServer_endpointDetails,
    describedServer_arn,

    -- * DescribedUser
    DescribedUser (..),
    newDescribedUser,
    describedUser_sshPublicKeys,
    describedUser_homeDirectoryType,
    describedUser_userName,
    describedUser_posixProfile,
    describedUser_homeDirectoryMappings,
    describedUser_role,
    describedUser_policy,
    describedUser_homeDirectory,
    describedUser_tags,
    describedUser_arn,

    -- * DescribedWorkflow
    DescribedWorkflow (..),
    newDescribedWorkflow,
    describedWorkflow_onExceptionSteps,
    describedWorkflow_steps,
    describedWorkflow_workflowId,
    describedWorkflow_description,
    describedWorkflow_tags,
    describedWorkflow_arn,

    -- * EfsFileLocation
    EfsFileLocation (..),
    newEfsFileLocation,
    efsFileLocation_path,
    efsFileLocation_fileSystemId,

    -- * EndpointDetails
    EndpointDetails (..),
    newEndpointDetails,
    endpointDetails_securityGroupIds,
    endpointDetails_subnetIds,
    endpointDetails_vpcId,
    endpointDetails_addressAllocationIds,
    endpointDetails_vpcEndpointId,

    -- * ExecutionError
    ExecutionError (..),
    newExecutionError,
    executionError_type,
    executionError_message,

    -- * ExecutionResults
    ExecutionResults (..),
    newExecutionResults,
    executionResults_onExceptionSteps,
    executionResults_steps,

    -- * ExecutionStepResult
    ExecutionStepResult (..),
    newExecutionStepResult,
    executionStepResult_stepType,
    executionStepResult_error,
    executionStepResult_outputs,

    -- * FileLocation
    FileLocation (..),
    newFileLocation,
    fileLocation_efsFileLocation,
    fileLocation_s3FileLocation,

    -- * HomeDirectoryMapEntry
    HomeDirectoryMapEntry (..),
    newHomeDirectoryMapEntry,
    homeDirectoryMapEntry_entry,
    homeDirectoryMapEntry_target,

    -- * IdentityProviderDetails
    IdentityProviderDetails (..),
    newIdentityProviderDetails,
    identityProviderDetails_invocationRole,
    identityProviderDetails_directoryId,
    identityProviderDetails_url,

    -- * InputFileLocation
    InputFileLocation (..),
    newInputFileLocation,
    inputFileLocation_efsFileLocation,
    inputFileLocation_s3FileLocation,

    -- * ListedAccess
    ListedAccess (..),
    newListedAccess,
    listedAccess_homeDirectoryType,
    listedAccess_role,
    listedAccess_externalId,
    listedAccess_homeDirectory,

    -- * ListedExecution
    ListedExecution (..),
    newListedExecution,
    listedExecution_status,
    listedExecution_executionId,
    listedExecution_initialFileLocation,
    listedExecution_serviceMetadata,

    -- * ListedServer
    ListedServer (..),
    newListedServer,
    listedServer_loggingRole,
    listedServer_state,
    listedServer_identityProviderType,
    listedServer_serverId,
    listedServer_domain,
    listedServer_endpointType,
    listedServer_userCount,
    listedServer_arn,

    -- * ListedUser
    ListedUser (..),
    newListedUser,
    listedUser_homeDirectoryType,
    listedUser_userName,
    listedUser_role,
    listedUser_sshPublicKeyCount,
    listedUser_homeDirectory,
    listedUser_arn,

    -- * ListedWorkflow
    ListedWorkflow (..),
    newListedWorkflow,
    listedWorkflow_arn,
    listedWorkflow_workflowId,
    listedWorkflow_description,

    -- * LoggingConfiguration
    LoggingConfiguration (..),
    newLoggingConfiguration,
    loggingConfiguration_loggingRole,
    loggingConfiguration_logGroupName,

    -- * PosixProfile
    PosixProfile (..),
    newPosixProfile,
    posixProfile_secondaryGids,
    posixProfile_uid,
    posixProfile_gid,

    -- * ProtocolDetails
    ProtocolDetails (..),
    newProtocolDetails,
    protocolDetails_passiveIp,

    -- * S3FileLocation
    S3FileLocation (..),
    newS3FileLocation,
    s3FileLocation_versionId,
    s3FileLocation_etag,
    s3FileLocation_bucket,
    s3FileLocation_key,

    -- * S3InputFileLocation
    S3InputFileLocation (..),
    newS3InputFileLocation,
    s3InputFileLocation_bucket,
    s3InputFileLocation_key,

    -- * S3Tag
    S3Tag (..),
    newS3Tag,
    s3Tag_key,
    s3Tag_value,

    -- * ServiceMetadata
    ServiceMetadata (..),
    newServiceMetadata,
    serviceMetadata_userDetails,

    -- * SshPublicKey
    SshPublicKey (..),
    newSshPublicKey,
    sshPublicKey_dateImported,
    sshPublicKey_sshPublicKeyBody,
    sshPublicKey_sshPublicKeyId,

    -- * Tag
    Tag (..),
    newTag,
    tag_key,
    tag_value,

    -- * TagStepDetails
    TagStepDetails (..),
    newTagStepDetails,
    tagStepDetails_name,
    tagStepDetails_tags,

    -- * UserDetails
    UserDetails (..),
    newUserDetails,
    userDetails_sessionId,
    userDetails_userName,
    userDetails_serverId,

    -- * WorkflowDetail
    WorkflowDetail (..),
    newWorkflowDetail,
    workflowDetail_workflowId,
    workflowDetail_executionRole,

    -- * WorkflowDetails
    WorkflowDetails (..),
    newWorkflowDetails,
    workflowDetails_onUpload,

    -- * WorkflowStep
    WorkflowStep (..),
    newWorkflowStep,
    workflowStep_tagStepDetails,
    workflowStep_deleteStepDetails,
    workflowStep_copyStepDetails,
    workflowStep_type,
    workflowStep_customStepDetails,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign
import Network.AWS.Transfer.Types.CopyStepDetails
import Network.AWS.Transfer.Types.CustomStepDetails
import Network.AWS.Transfer.Types.CustomStepStatus
import Network.AWS.Transfer.Types.DeleteStepDetails
import Network.AWS.Transfer.Types.DescribedAccess
import Network.AWS.Transfer.Types.DescribedExecution
import Network.AWS.Transfer.Types.DescribedSecurityPolicy
import Network.AWS.Transfer.Types.DescribedServer
import Network.AWS.Transfer.Types.DescribedUser
import Network.AWS.Transfer.Types.DescribedWorkflow
import Network.AWS.Transfer.Types.Domain
import Network.AWS.Transfer.Types.EfsFileLocation
import Network.AWS.Transfer.Types.EndpointDetails
import Network.AWS.Transfer.Types.EndpointType
import Network.AWS.Transfer.Types.ExecutionError
import Network.AWS.Transfer.Types.ExecutionErrorType
import Network.AWS.Transfer.Types.ExecutionResults
import Network.AWS.Transfer.Types.ExecutionStatus
import Network.AWS.Transfer.Types.ExecutionStepResult
import Network.AWS.Transfer.Types.FileLocation
import Network.AWS.Transfer.Types.HomeDirectoryMapEntry
import Network.AWS.Transfer.Types.HomeDirectoryType
import Network.AWS.Transfer.Types.IdentityProviderDetails
import Network.AWS.Transfer.Types.IdentityProviderType
import Network.AWS.Transfer.Types.InputFileLocation
import Network.AWS.Transfer.Types.ListedAccess
import Network.AWS.Transfer.Types.ListedExecution
import Network.AWS.Transfer.Types.ListedServer
import Network.AWS.Transfer.Types.ListedUser
import Network.AWS.Transfer.Types.ListedWorkflow
import Network.AWS.Transfer.Types.LoggingConfiguration
import Network.AWS.Transfer.Types.OverwriteExisting
import Network.AWS.Transfer.Types.PosixProfile
import Network.AWS.Transfer.Types.Protocol
import Network.AWS.Transfer.Types.ProtocolDetails
import Network.AWS.Transfer.Types.S3FileLocation
import Network.AWS.Transfer.Types.S3InputFileLocation
import Network.AWS.Transfer.Types.S3Tag
import Network.AWS.Transfer.Types.ServiceMetadata
import Network.AWS.Transfer.Types.SshPublicKey
import Network.AWS.Transfer.Types.State
import Network.AWS.Transfer.Types.Tag
import Network.AWS.Transfer.Types.TagStepDetails
import Network.AWS.Transfer.Types.UserDetails
import Network.AWS.Transfer.Types.WorkflowDetail
import Network.AWS.Transfer.Types.WorkflowDetails
import Network.AWS.Transfer.Types.WorkflowStep
import Network.AWS.Transfer.Types.WorkflowStepType

-- | API version @2018-11-05@ of the Amazon Transfer Family SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "Transfer",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "transfer",
      Core._serviceSigningName = "transfer",
      Core._serviceVersion = "2018-11-05",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError = Core.parseJSONError "Transfer",
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

-- | You do not have sufficient access to perform this action.
_AccessDeniedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AccessDeniedException =
  Core._MatchServiceError
    defaultService
    "AccessDeniedException"

-- | This exception is thrown when the client submits a malformed request.
_InvalidRequestException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidRequestException =
  Core._MatchServiceError
    defaultService
    "InvalidRequestException"

-- | This exception is thrown when the @UpdateServer@ is called for a file
-- transfer protocol-enabled server that has VPC as the endpoint type and
-- the server\'s @VpcEndpointID@ is not in the available state.
_ConflictException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConflictException =
  Core._MatchServiceError
    defaultService
    "ConflictException"

-- | The request was denied due to request throttling.
--
-- HTTP Status Code: 400
_ThrottlingException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ThrottlingException =
  Core._MatchServiceError
    defaultService
    "ThrottlingException"

-- | The @NextToken@ parameter that was passed is invalid.
_InvalidNextTokenException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InvalidNextTokenException =
  Core._MatchServiceError
    defaultService
    "InvalidNextTokenException"

-- | This exception is thrown when an error occurs in the Amazon Web
-- ServicesTransfer Family service.
_InternalServiceError :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_InternalServiceError =
  Core._MatchServiceError
    defaultService
    "InternalServiceError"

-- | The requested resource does not exist.
_ResourceExistsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceExistsException =
  Core._MatchServiceError
    defaultService
    "ResourceExistsException"

-- | The request has failed because the Amazon Web ServicesTransfer Family
-- service is not available.
_ServiceUnavailableException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ServiceUnavailableException =
  Core._MatchServiceError
    defaultService
    "ServiceUnavailableException"

-- | This exception is thrown when a resource is not found by the Amazon Web
-- ServicesTransfer Family service.
_ResourceNotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"
