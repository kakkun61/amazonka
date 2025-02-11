{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.AWS.Transfer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2018-11-05@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- Amazon Web Services Transfer Family is a fully managed service that
-- enables the transfer of files over the File Transfer Protocol (FTP),
-- File Transfer Protocol over SSL (FTPS), or Secure Shell (SSH) File
-- Transfer Protocol (SFTP) directly into and out of Amazon Simple Storage
-- Service (Amazon S3). Amazon Web Services helps you seamlessly migrate
-- your file transfer workflows to Amazon Web Services Transfer Family by
-- integrating with existing authentication systems, and providing DNS
-- routing with Amazon Route 53 so nothing changes for your customers and
-- partners, or their applications. With your data in Amazon S3, you can
-- use it with Amazon Web Services services for processing, analytics,
-- machine learning, and archiving. Getting started with Amazon Web
-- Services Transfer Family is easy since there is no infrastructure to buy
-- and set up.
module Network.AWS.Transfer
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** AccessDeniedException
    _AccessDeniedException,

    -- ** InvalidRequestException
    _InvalidRequestException,

    -- ** ConflictException
    _ConflictException,

    -- ** ThrottlingException
    _ThrottlingException,

    -- ** InvalidNextTokenException
    _InvalidNextTokenException,

    -- ** InternalServiceError
    _InternalServiceError,

    -- ** ResourceExistsException
    _ResourceExistsException,

    -- ** ServiceUnavailableException
    _ServiceUnavailableException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** UpdateServer
    UpdateServer (UpdateServer'),
    newUpdateServer,
    UpdateServerResponse (UpdateServerResponse'),
    newUpdateServerResponse,

    -- ** DeleteServer
    DeleteServer (DeleteServer'),
    newDeleteServer,
    DeleteServerResponse (DeleteServerResponse'),
    newDeleteServerResponse,

    -- ** CreateWorkflow
    CreateWorkflow (CreateWorkflow'),
    newCreateWorkflow,
    CreateWorkflowResponse (CreateWorkflowResponse'),
    newCreateWorkflowResponse,

    -- ** DeleteSshPublicKey
    DeleteSshPublicKey (DeleteSshPublicKey'),
    newDeleteSshPublicKey,
    DeleteSshPublicKeyResponse (DeleteSshPublicKeyResponse'),
    newDeleteSshPublicKeyResponse,

    -- ** ListSecurityPolicies
    ListSecurityPolicies (ListSecurityPolicies'),
    newListSecurityPolicies,
    ListSecurityPoliciesResponse (ListSecurityPoliciesResponse'),
    newListSecurityPoliciesResponse,

    -- ** DeleteWorkflow
    DeleteWorkflow (DeleteWorkflow'),
    newDeleteWorkflow,
    DeleteWorkflowResponse (DeleteWorkflowResponse'),
    newDeleteWorkflowResponse,

    -- ** ListTagsForResource
    ListTagsForResource (ListTagsForResource'),
    newListTagsForResource,
    ListTagsForResourceResponse (ListTagsForResourceResponse'),
    newListTagsForResourceResponse,

    -- ** SendWorkflowStepState
    SendWorkflowStepState (SendWorkflowStepState'),
    newSendWorkflowStepState,
    SendWorkflowStepStateResponse (SendWorkflowStepStateResponse'),
    newSendWorkflowStepStateResponse,

    -- ** StopServer
    StopServer (StopServer'),
    newStopServer,
    StopServerResponse (StopServerResponse'),
    newStopServerResponse,

    -- ** ListUsers
    ListUsers (ListUsers'),
    newListUsers,
    ListUsersResponse (ListUsersResponse'),
    newListUsersResponse,

    -- ** DescribeServer
    DescribeServer (DescribeServer'),
    newDescribeServer,
    DescribeServerResponse (DescribeServerResponse'),
    newDescribeServerResponse,

    -- ** DescribeSecurityPolicy
    DescribeSecurityPolicy (DescribeSecurityPolicy'),
    newDescribeSecurityPolicy,
    DescribeSecurityPolicyResponse (DescribeSecurityPolicyResponse'),
    newDescribeSecurityPolicyResponse,

    -- ** ImportSshPublicKey
    ImportSshPublicKey (ImportSshPublicKey'),
    newImportSshPublicKey,
    ImportSshPublicKeyResponse (ImportSshPublicKeyResponse'),
    newImportSshPublicKeyResponse,

    -- ** ListExecutions
    ListExecutions (ListExecutions'),
    newListExecutions,
    ListExecutionsResponse (ListExecutionsResponse'),
    newListExecutionsResponse,

    -- ** CreateServer
    CreateServer (CreateServer'),
    newCreateServer,
    CreateServerResponse (CreateServerResponse'),
    newCreateServerResponse,

    -- ** TestIdentityProvider
    TestIdentityProvider (TestIdentityProvider'),
    newTestIdentityProvider,
    TestIdentityProviderResponse (TestIdentityProviderResponse'),
    newTestIdentityProviderResponse,

    -- ** ListServers (Paginated)
    ListServers (ListServers'),
    newListServers,
    ListServersResponse (ListServersResponse'),
    newListServersResponse,

    -- ** DescribeUser
    DescribeUser (DescribeUser'),
    newDescribeUser,
    DescribeUserResponse (DescribeUserResponse'),
    newDescribeUserResponse,

    -- ** DescribeExecution
    DescribeExecution (DescribeExecution'),
    newDescribeExecution,
    DescribeExecutionResponse (DescribeExecutionResponse'),
    newDescribeExecutionResponse,

    -- ** ListWorkflows
    ListWorkflows (ListWorkflows'),
    newListWorkflows,
    ListWorkflowsResponse (ListWorkflowsResponse'),
    newListWorkflowsResponse,

    -- ** CreateUser
    CreateUser (CreateUser'),
    newCreateUser,
    CreateUserResponse (CreateUserResponse'),
    newCreateUserResponse,

    -- ** StartServer
    StartServer (StartServer'),
    newStartServer,
    StartServerResponse (StartServerResponse'),
    newStartServerResponse,

    -- ** UpdateAccess
    UpdateAccess (UpdateAccess'),
    newUpdateAccess,
    UpdateAccessResponse (UpdateAccessResponse'),
    newUpdateAccessResponse,

    -- ** DeleteAccess
    DeleteAccess (DeleteAccess'),
    newDeleteAccess,
    DeleteAccessResponse (DeleteAccessResponse'),
    newDeleteAccessResponse,

    -- ** CreateAccess
    CreateAccess (CreateAccess'),
    newCreateAccess,
    CreateAccessResponse (CreateAccessResponse'),
    newCreateAccessResponse,

    -- ** ListAccesses
    ListAccesses (ListAccesses'),
    newListAccesses,
    ListAccessesResponse (ListAccessesResponse'),
    newListAccessesResponse,

    -- ** UpdateUser
    UpdateUser (UpdateUser'),
    newUpdateUser,
    UpdateUserResponse (UpdateUserResponse'),
    newUpdateUserResponse,

    -- ** DeleteUser
    DeleteUser (DeleteUser'),
    newDeleteUser,
    DeleteUserResponse (DeleteUserResponse'),
    newDeleteUserResponse,

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

    -- ** DescribeWorkflow
    DescribeWorkflow (DescribeWorkflow'),
    newDescribeWorkflow,
    DescribeWorkflowResponse (DescribeWorkflowResponse'),
    newDescribeWorkflowResponse,

    -- ** DescribeAccess
    DescribeAccess (DescribeAccess'),
    newDescribeAccess,
    DescribeAccessResponse (DescribeAccessResponse'),
    newDescribeAccessResponse,

    -- * Types

    -- ** CustomStepStatus
    CustomStepStatus (..),

    -- ** Domain
    Domain (..),

    -- ** EndpointType
    EndpointType (..),

    -- ** ExecutionErrorType
    ExecutionErrorType (..),

    -- ** ExecutionStatus
    ExecutionStatus (..),

    -- ** HomeDirectoryType
    HomeDirectoryType (..),

    -- ** IdentityProviderType
    IdentityProviderType (..),

    -- ** OverwriteExisting
    OverwriteExisting (..),

    -- ** Protocol
    Protocol (..),

    -- ** State
    State (..),

    -- ** WorkflowStepType
    WorkflowStepType (..),

    -- ** CopyStepDetails
    CopyStepDetails (CopyStepDetails'),
    newCopyStepDetails,

    -- ** CustomStepDetails
    CustomStepDetails (CustomStepDetails'),
    newCustomStepDetails,

    -- ** DeleteStepDetails
    DeleteStepDetails (DeleteStepDetails'),
    newDeleteStepDetails,

    -- ** DescribedAccess
    DescribedAccess (DescribedAccess'),
    newDescribedAccess,

    -- ** DescribedExecution
    DescribedExecution (DescribedExecution'),
    newDescribedExecution,

    -- ** DescribedSecurityPolicy
    DescribedSecurityPolicy (DescribedSecurityPolicy'),
    newDescribedSecurityPolicy,

    -- ** DescribedServer
    DescribedServer (DescribedServer'),
    newDescribedServer,

    -- ** DescribedUser
    DescribedUser (DescribedUser'),
    newDescribedUser,

    -- ** DescribedWorkflow
    DescribedWorkflow (DescribedWorkflow'),
    newDescribedWorkflow,

    -- ** EfsFileLocation
    EfsFileLocation (EfsFileLocation'),
    newEfsFileLocation,

    -- ** EndpointDetails
    EndpointDetails (EndpointDetails'),
    newEndpointDetails,

    -- ** ExecutionError
    ExecutionError (ExecutionError'),
    newExecutionError,

    -- ** ExecutionResults
    ExecutionResults (ExecutionResults'),
    newExecutionResults,

    -- ** ExecutionStepResult
    ExecutionStepResult (ExecutionStepResult'),
    newExecutionStepResult,

    -- ** FileLocation
    FileLocation (FileLocation'),
    newFileLocation,

    -- ** HomeDirectoryMapEntry
    HomeDirectoryMapEntry (HomeDirectoryMapEntry'),
    newHomeDirectoryMapEntry,

    -- ** IdentityProviderDetails
    IdentityProviderDetails (IdentityProviderDetails'),
    newIdentityProviderDetails,

    -- ** InputFileLocation
    InputFileLocation (InputFileLocation'),
    newInputFileLocation,

    -- ** ListedAccess
    ListedAccess (ListedAccess'),
    newListedAccess,

    -- ** ListedExecution
    ListedExecution (ListedExecution'),
    newListedExecution,

    -- ** ListedServer
    ListedServer (ListedServer'),
    newListedServer,

    -- ** ListedUser
    ListedUser (ListedUser'),
    newListedUser,

    -- ** ListedWorkflow
    ListedWorkflow (ListedWorkflow'),
    newListedWorkflow,

    -- ** LoggingConfiguration
    LoggingConfiguration (LoggingConfiguration'),
    newLoggingConfiguration,

    -- ** PosixProfile
    PosixProfile (PosixProfile'),
    newPosixProfile,

    -- ** ProtocolDetails
    ProtocolDetails (ProtocolDetails'),
    newProtocolDetails,

    -- ** S3FileLocation
    S3FileLocation (S3FileLocation'),
    newS3FileLocation,

    -- ** S3InputFileLocation
    S3InputFileLocation (S3InputFileLocation'),
    newS3InputFileLocation,

    -- ** S3Tag
    S3Tag (S3Tag'),
    newS3Tag,

    -- ** ServiceMetadata
    ServiceMetadata (ServiceMetadata'),
    newServiceMetadata,

    -- ** SshPublicKey
    SshPublicKey (SshPublicKey'),
    newSshPublicKey,

    -- ** Tag
    Tag (Tag'),
    newTag,

    -- ** TagStepDetails
    TagStepDetails (TagStepDetails'),
    newTagStepDetails,

    -- ** UserDetails
    UserDetails (UserDetails'),
    newUserDetails,

    -- ** WorkflowDetail
    WorkflowDetail (WorkflowDetail'),
    newWorkflowDetail,

    -- ** WorkflowDetails
    WorkflowDetails (WorkflowDetails'),
    newWorkflowDetails,

    -- ** WorkflowStep
    WorkflowStep (WorkflowStep'),
    newWorkflowStep,
  )
where

import Network.AWS.Transfer.CreateAccess
import Network.AWS.Transfer.CreateServer
import Network.AWS.Transfer.CreateUser
import Network.AWS.Transfer.CreateWorkflow
import Network.AWS.Transfer.DeleteAccess
import Network.AWS.Transfer.DeleteServer
import Network.AWS.Transfer.DeleteSshPublicKey
import Network.AWS.Transfer.DeleteUser
import Network.AWS.Transfer.DeleteWorkflow
import Network.AWS.Transfer.DescribeAccess
import Network.AWS.Transfer.DescribeExecution
import Network.AWS.Transfer.DescribeSecurityPolicy
import Network.AWS.Transfer.DescribeServer
import Network.AWS.Transfer.DescribeUser
import Network.AWS.Transfer.DescribeWorkflow
import Network.AWS.Transfer.ImportSshPublicKey
import Network.AWS.Transfer.Lens
import Network.AWS.Transfer.ListAccesses
import Network.AWS.Transfer.ListExecutions
import Network.AWS.Transfer.ListSecurityPolicies
import Network.AWS.Transfer.ListServers
import Network.AWS.Transfer.ListTagsForResource
import Network.AWS.Transfer.ListUsers
import Network.AWS.Transfer.ListWorkflows
import Network.AWS.Transfer.SendWorkflowStepState
import Network.AWS.Transfer.StartServer
import Network.AWS.Transfer.StopServer
import Network.AWS.Transfer.TagResource
import Network.AWS.Transfer.TestIdentityProvider
import Network.AWS.Transfer.Types
import Network.AWS.Transfer.UntagResource
import Network.AWS.Transfer.UpdateAccess
import Network.AWS.Transfer.UpdateServer
import Network.AWS.Transfer.UpdateUser
import Network.AWS.Transfer.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'Transfer'.

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
