{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.AWS.Lambda
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2015-03-31@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- Lambda
--
-- __Overview__
--
-- This is the /Lambda API Reference/. The Lambda Developer Guide provides
-- additional information. For the service overview, see
-- <https://docs.aws.amazon.com/lambda/latest/dg/welcome.html What is Lambda>,
-- and for information about how the service works, see
-- <https://docs.aws.amazon.com/lambda/latest/dg/lambda-introduction.html Lambda: How it Works>
-- in the __Lambda Developer Guide__.
module Network.AWS.Lambda
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** KMSInvalidStateException
    _KMSInvalidStateException,

    -- ** EC2ThrottledException
    _EC2ThrottledException,

    -- ** EFSMountConnectivityException
    _EFSMountConnectivityException,

    -- ** InvalidRuntimeException
    _InvalidRuntimeException,

    -- ** EFSMountFailureException
    _EFSMountFailureException,

    -- ** PolicyLengthExceededException
    _PolicyLengthExceededException,

    -- ** PreconditionFailedException
    _PreconditionFailedException,

    -- ** EC2AccessDeniedException
    _EC2AccessDeniedException,

    -- ** InvalidSubnetIDException
    _InvalidSubnetIDException,

    -- ** CodeVerificationFailedException
    _CodeVerificationFailedException,

    -- ** UnsupportedMediaTypeException
    _UnsupportedMediaTypeException,

    -- ** InvalidRequestContentException
    _InvalidRequestContentException,

    -- ** KMSNotFoundException
    _KMSNotFoundException,

    -- ** ENILimitReachedException
    _ENILimitReachedException,

    -- ** InvalidParameterValueException
    _InvalidParameterValueException,

    -- ** RequestTooLargeException
    _RequestTooLargeException,

    -- ** InvalidCodeSignatureException
    _InvalidCodeSignatureException,

    -- ** TooManyRequestsException
    _TooManyRequestsException,

    -- ** InvalidSecurityGroupIDException
    _InvalidSecurityGroupIDException,

    -- ** KMSDisabledException
    _KMSDisabledException,

    -- ** SubnetIPAddressLimitReachedException
    _SubnetIPAddressLimitReachedException,

    -- ** ServiceException
    _ServiceException,

    -- ** CodeStorageExceededException
    _CodeStorageExceededException,

    -- ** CodeSigningConfigNotFoundException
    _CodeSigningConfigNotFoundException,

    -- ** InvalidZipFileException
    _InvalidZipFileException,

    -- ** ProvisionedConcurrencyConfigNotFoundException
    _ProvisionedConcurrencyConfigNotFoundException,

    -- ** ResourceConflictException
    _ResourceConflictException,

    -- ** ResourceNotReadyException
    _ResourceNotReadyException,

    -- ** EC2UnexpectedException
    _EC2UnexpectedException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** EFSIOException
    _EFSIOException,

    -- ** EFSMountTimeoutException
    _EFSMountTimeoutException,

    -- ** KMSAccessDeniedException
    _KMSAccessDeniedException,

    -- ** ResourceInUseException
    _ResourceInUseException,

    -- * Waiters
    -- $waiters

    -- ** FunctionExists
    newFunctionExists,

    -- ** FunctionActive
    newFunctionActive,

    -- ** FunctionUpdated
    newFunctionUpdated,

    -- * Operations
    -- $operations

    -- ** GetFunctionConfiguration
    GetFunctionConfiguration (GetFunctionConfiguration'),
    newGetFunctionConfiguration,
    FunctionConfiguration (FunctionConfiguration'),
    newFunctionConfiguration,

    -- ** DeleteEventSourceMapping
    DeleteEventSourceMapping (DeleteEventSourceMapping'),
    newDeleteEventSourceMapping,
    EventSourceMappingConfiguration (EventSourceMappingConfiguration'),
    newEventSourceMappingConfiguration,

    -- ** UpdateEventSourceMapping
    UpdateEventSourceMapping (UpdateEventSourceMapping'),
    newUpdateEventSourceMapping,
    EventSourceMappingConfiguration (EventSourceMappingConfiguration'),
    newEventSourceMappingConfiguration,

    -- ** GetLayerVersion
    GetLayerVersion (GetLayerVersion'),
    newGetLayerVersion,
    GetLayerVersionResponse (GetLayerVersionResponse'),
    newGetLayerVersionResponse,

    -- ** DeleteFunctionCodeSigningConfig
    DeleteFunctionCodeSigningConfig (DeleteFunctionCodeSigningConfig'),
    newDeleteFunctionCodeSigningConfig,
    DeleteFunctionCodeSigningConfigResponse (DeleteFunctionCodeSigningConfigResponse'),
    newDeleteFunctionCodeSigningConfigResponse,

    -- ** PutFunctionCodeSigningConfig
    PutFunctionCodeSigningConfig (PutFunctionCodeSigningConfig'),
    newPutFunctionCodeSigningConfig,
    PutFunctionCodeSigningConfigResponse (PutFunctionCodeSigningConfigResponse'),
    newPutFunctionCodeSigningConfigResponse,

    -- ** CreateAlias
    CreateAlias (CreateAlias'),
    newCreateAlias,
    AliasConfiguration (AliasConfiguration'),
    newAliasConfiguration,

    -- ** ListVersionsByFunction (Paginated)
    ListVersionsByFunction (ListVersionsByFunction'),
    newListVersionsByFunction,
    ListVersionsByFunctionResponse (ListVersionsByFunctionResponse'),
    newListVersionsByFunctionResponse,

    -- ** ListAliases (Paginated)
    ListAliases (ListAliases'),
    newListAliases,
    ListAliasesResponse (ListAliasesResponse'),
    newListAliasesResponse,

    -- ** DeleteCodeSigningConfig
    DeleteCodeSigningConfig (DeleteCodeSigningConfig'),
    newDeleteCodeSigningConfig,
    DeleteCodeSigningConfigResponse (DeleteCodeSigningConfigResponse'),
    newDeleteCodeSigningConfigResponse,

    -- ** UpdateCodeSigningConfig
    UpdateCodeSigningConfig (UpdateCodeSigningConfig'),
    newUpdateCodeSigningConfig,
    UpdateCodeSigningConfigResponse (UpdateCodeSigningConfigResponse'),
    newUpdateCodeSigningConfigResponse,

    -- ** RemovePermission
    RemovePermission (RemovePermission'),
    newRemovePermission,
    RemovePermissionResponse (RemovePermissionResponse'),
    newRemovePermissionResponse,

    -- ** DeleteFunctionEventInvokeConfig
    DeleteFunctionEventInvokeConfig (DeleteFunctionEventInvokeConfig'),
    newDeleteFunctionEventInvokeConfig,
    DeleteFunctionEventInvokeConfigResponse (DeleteFunctionEventInvokeConfigResponse'),
    newDeleteFunctionEventInvokeConfigResponse,

    -- ** UpdateFunctionEventInvokeConfig
    UpdateFunctionEventInvokeConfig (UpdateFunctionEventInvokeConfig'),
    newUpdateFunctionEventInvokeConfig,
    FunctionEventInvokeConfig (FunctionEventInvokeConfig'),
    newFunctionEventInvokeConfig,

    -- ** PutFunctionEventInvokeConfig
    PutFunctionEventInvokeConfig (PutFunctionEventInvokeConfig'),
    newPutFunctionEventInvokeConfig,
    FunctionEventInvokeConfig (FunctionEventInvokeConfig'),
    newFunctionEventInvokeConfig,

    -- ** Invoke
    Invoke (Invoke'),
    newInvoke,
    InvokeResponse (InvokeResponse'),
    newInvokeResponse,

    -- ** DeleteLayerVersion
    DeleteLayerVersion (DeleteLayerVersion'),
    newDeleteLayerVersion,
    DeleteLayerVersionResponse (DeleteLayerVersionResponse'),
    newDeleteLayerVersionResponse,

    -- ** GetAlias
    GetAlias (GetAlias'),
    newGetAlias,
    AliasConfiguration (AliasConfiguration'),
    newAliasConfiguration,

    -- ** PublishLayerVersion
    PublishLayerVersion (PublishLayerVersion'),
    newPublishLayerVersion,
    PublishLayerVersionResponse (PublishLayerVersionResponse'),
    newPublishLayerVersionResponse,

    -- ** GetEventSourceMapping
    GetEventSourceMapping (GetEventSourceMapping'),
    newGetEventSourceMapping,
    EventSourceMappingConfiguration (EventSourceMappingConfiguration'),
    newEventSourceMappingConfiguration,

    -- ** AddLayerVersionPermission
    AddLayerVersionPermission (AddLayerVersionPermission'),
    newAddLayerVersionPermission,
    AddLayerVersionPermissionResponse (AddLayerVersionPermissionResponse'),
    newAddLayerVersionPermissionResponse,

    -- ** ListProvisionedConcurrencyConfigs (Paginated)
    ListProvisionedConcurrencyConfigs (ListProvisionedConcurrencyConfigs'),
    newListProvisionedConcurrencyConfigs,
    ListProvisionedConcurrencyConfigsResponse (ListProvisionedConcurrencyConfigsResponse'),
    newListProvisionedConcurrencyConfigsResponse,

    -- ** PutFunctionConcurrency
    PutFunctionConcurrency (PutFunctionConcurrency'),
    newPutFunctionConcurrency,
    Concurrency (Concurrency'),
    newConcurrency,

    -- ** CreateFunction
    CreateFunction (CreateFunction'),
    newCreateFunction,
    FunctionConfiguration (FunctionConfiguration'),
    newFunctionConfiguration,

    -- ** DeleteFunctionConcurrency
    DeleteFunctionConcurrency (DeleteFunctionConcurrency'),
    newDeleteFunctionConcurrency,
    DeleteFunctionConcurrencyResponse (DeleteFunctionConcurrencyResponse'),
    newDeleteFunctionConcurrencyResponse,

    -- ** GetLayerVersionByArn
    GetLayerVersionByArn (GetLayerVersionByArn'),
    newGetLayerVersionByArn,
    GetLayerVersionResponse (GetLayerVersionResponse'),
    newGetLayerVersionResponse,

    -- ** GetFunctionConcurrency
    GetFunctionConcurrency (GetFunctionConcurrency'),
    newGetFunctionConcurrency,
    GetFunctionConcurrencyResponse (GetFunctionConcurrencyResponse'),
    newGetFunctionConcurrencyResponse,

    -- ** CreateEventSourceMapping
    CreateEventSourceMapping (CreateEventSourceMapping'),
    newCreateEventSourceMapping,
    EventSourceMappingConfiguration (EventSourceMappingConfiguration'),
    newEventSourceMappingConfiguration,

    -- ** GetProvisionedConcurrencyConfig
    GetProvisionedConcurrencyConfig (GetProvisionedConcurrencyConfig'),
    newGetProvisionedConcurrencyConfig,
    GetProvisionedConcurrencyConfigResponse (GetProvisionedConcurrencyConfigResponse'),
    newGetProvisionedConcurrencyConfigResponse,

    -- ** RemoveLayerVersionPermission
    RemoveLayerVersionPermission (RemoveLayerVersionPermission'),
    newRemoveLayerVersionPermission,
    RemoveLayerVersionPermissionResponse (RemoveLayerVersionPermissionResponse'),
    newRemoveLayerVersionPermissionResponse,

    -- ** ListFunctionsByCodeSigningConfig (Paginated)
    ListFunctionsByCodeSigningConfig (ListFunctionsByCodeSigningConfig'),
    newListFunctionsByCodeSigningConfig,
    ListFunctionsByCodeSigningConfigResponse (ListFunctionsByCodeSigningConfigResponse'),
    newListFunctionsByCodeSigningConfigResponse,

    -- ** GetFunction
    GetFunction (GetFunction'),
    newGetFunction,
    GetFunctionResponse (GetFunctionResponse'),
    newGetFunctionResponse,

    -- ** ListEventSourceMappings (Paginated)
    ListEventSourceMappings (ListEventSourceMappings'),
    newListEventSourceMappings,
    ListEventSourceMappingsResponse (ListEventSourceMappingsResponse'),
    newListEventSourceMappingsResponse,

    -- ** GetLayerVersionPolicy
    GetLayerVersionPolicy (GetLayerVersionPolicy'),
    newGetLayerVersionPolicy,
    GetLayerVersionPolicyResponse (GetLayerVersionPolicyResponse'),
    newGetLayerVersionPolicyResponse,

    -- ** DeleteAlias
    DeleteAlias (DeleteAlias'),
    newDeleteAlias,
    DeleteAliasResponse (DeleteAliasResponse'),
    newDeleteAliasResponse,

    -- ** UpdateAlias
    UpdateAlias (UpdateAlias'),
    newUpdateAlias,
    AliasConfiguration (AliasConfiguration'),
    newAliasConfiguration,

    -- ** GetAccountSettings
    GetAccountSettings (GetAccountSettings'),
    newGetAccountSettings,
    GetAccountSettingsResponse (GetAccountSettingsResponse'),
    newGetAccountSettingsResponse,

    -- ** GetFunctionEventInvokeConfig
    GetFunctionEventInvokeConfig (GetFunctionEventInvokeConfig'),
    newGetFunctionEventInvokeConfig,
    FunctionEventInvokeConfig (FunctionEventInvokeConfig'),
    newFunctionEventInvokeConfig,

    -- ** GetCodeSigningConfig
    GetCodeSigningConfig (GetCodeSigningConfig'),
    newGetCodeSigningConfig,
    GetCodeSigningConfigResponse (GetCodeSigningConfigResponse'),
    newGetCodeSigningConfigResponse,

    -- ** AddPermission
    AddPermission (AddPermission'),
    newAddPermission,
    AddPermissionResponse (AddPermissionResponse'),
    newAddPermissionResponse,

    -- ** ListLayers (Paginated)
    ListLayers (ListLayers'),
    newListLayers,
    ListLayersResponse (ListLayersResponse'),
    newListLayersResponse,

    -- ** ListFunctionEventInvokeConfigs (Paginated)
    ListFunctionEventInvokeConfigs (ListFunctionEventInvokeConfigs'),
    newListFunctionEventInvokeConfigs,
    ListFunctionEventInvokeConfigsResponse (ListFunctionEventInvokeConfigsResponse'),
    newListFunctionEventInvokeConfigsResponse,

    -- ** ListCodeSigningConfigs (Paginated)
    ListCodeSigningConfigs (ListCodeSigningConfigs'),
    newListCodeSigningConfigs,
    ListCodeSigningConfigsResponse (ListCodeSigningConfigsResponse'),
    newListCodeSigningConfigsResponse,

    -- ** GetFunctionCodeSigningConfig
    GetFunctionCodeSigningConfig (GetFunctionCodeSigningConfig'),
    newGetFunctionCodeSigningConfig,
    GetFunctionCodeSigningConfigResponse (GetFunctionCodeSigningConfigResponse'),
    newGetFunctionCodeSigningConfigResponse,

    -- ** CreateCodeSigningConfig
    CreateCodeSigningConfig (CreateCodeSigningConfig'),
    newCreateCodeSigningConfig,
    CreateCodeSigningConfigResponse (CreateCodeSigningConfigResponse'),
    newCreateCodeSigningConfigResponse,

    -- ** ListLayerVersions (Paginated)
    ListLayerVersions (ListLayerVersions'),
    newListLayerVersions,
    ListLayerVersionsResponse (ListLayerVersionsResponse'),
    newListLayerVersionsResponse,

    -- ** TagResource
    TagResource (TagResource'),
    newTagResource,
    TagResourceResponse (TagResourceResponse'),
    newTagResourceResponse,

    -- ** PublishVersion
    PublishVersion (PublishVersion'),
    newPublishVersion,
    FunctionConfiguration (FunctionConfiguration'),
    newFunctionConfiguration,

    -- ** ListTags
    ListTags (ListTags'),
    newListTags,
    ListTagsResponse (ListTagsResponse'),
    newListTagsResponse,

    -- ** DeleteFunction
    DeleteFunction (DeleteFunction'),
    newDeleteFunction,
    DeleteFunctionResponse (DeleteFunctionResponse'),
    newDeleteFunctionResponse,

    -- ** UntagResource
    UntagResource (UntagResource'),
    newUntagResource,
    UntagResourceResponse (UntagResourceResponse'),
    newUntagResourceResponse,

    -- ** UpdateFunctionConfiguration
    UpdateFunctionConfiguration (UpdateFunctionConfiguration'),
    newUpdateFunctionConfiguration,
    FunctionConfiguration (FunctionConfiguration'),
    newFunctionConfiguration,

    -- ** ListFunctions (Paginated)
    ListFunctions (ListFunctions'),
    newListFunctions,
    ListFunctionsResponse (ListFunctionsResponse'),
    newListFunctionsResponse,

    -- ** UpdateFunctionCode
    UpdateFunctionCode (UpdateFunctionCode'),
    newUpdateFunctionCode,
    FunctionConfiguration (FunctionConfiguration'),
    newFunctionConfiguration,

    -- ** DeleteProvisionedConcurrencyConfig
    DeleteProvisionedConcurrencyConfig (DeleteProvisionedConcurrencyConfig'),
    newDeleteProvisionedConcurrencyConfig,
    DeleteProvisionedConcurrencyConfigResponse (DeleteProvisionedConcurrencyConfigResponse'),
    newDeleteProvisionedConcurrencyConfigResponse,

    -- ** GetPolicy
    GetPolicy (GetPolicy'),
    newGetPolicy,
    GetPolicyResponse (GetPolicyResponse'),
    newGetPolicyResponse,

    -- ** PutProvisionedConcurrencyConfig
    PutProvisionedConcurrencyConfig (PutProvisionedConcurrencyConfig'),
    newPutProvisionedConcurrencyConfig,
    PutProvisionedConcurrencyConfigResponse (PutProvisionedConcurrencyConfigResponse'),
    newPutProvisionedConcurrencyConfigResponse,

    -- * Types

    -- ** Architecture
    Architecture (..),

    -- ** CodeSigningPolicy
    CodeSigningPolicy (..),

    -- ** EndPointType
    EndPointType (..),

    -- ** EventSourcePosition
    EventSourcePosition (..),

    -- ** FunctionResponseType
    FunctionResponseType (..),

    -- ** FunctionVersion
    FunctionVersion (..),

    -- ** InvocationType
    InvocationType (..),

    -- ** LastUpdateStatus
    LastUpdateStatus (..),

    -- ** LastUpdateStatusReasonCode
    LastUpdateStatusReasonCode (..),

    -- ** LogType
    LogType (..),

    -- ** PackageType
    PackageType (..),

    -- ** ProvisionedConcurrencyStatusEnum
    ProvisionedConcurrencyStatusEnum (..),

    -- ** Runtime
    Runtime (..),

    -- ** SourceAccessType
    SourceAccessType (..),

    -- ** State
    State (..),

    -- ** StateReasonCode
    StateReasonCode (..),

    -- ** TracingMode
    TracingMode (..),

    -- ** AccountLimit
    AccountLimit (AccountLimit'),
    newAccountLimit,

    -- ** AccountUsage
    AccountUsage (AccountUsage'),
    newAccountUsage,

    -- ** AliasConfiguration
    AliasConfiguration (AliasConfiguration'),
    newAliasConfiguration,

    -- ** AliasRoutingConfiguration
    AliasRoutingConfiguration (AliasRoutingConfiguration'),
    newAliasRoutingConfiguration,

    -- ** AllowedPublishers
    AllowedPublishers (AllowedPublishers'),
    newAllowedPublishers,

    -- ** CodeSigningConfig
    CodeSigningConfig (CodeSigningConfig'),
    newCodeSigningConfig,

    -- ** CodeSigningPolicies
    CodeSigningPolicies (CodeSigningPolicies'),
    newCodeSigningPolicies,

    -- ** Concurrency
    Concurrency (Concurrency'),
    newConcurrency,

    -- ** DeadLetterConfig
    DeadLetterConfig (DeadLetterConfig'),
    newDeadLetterConfig,

    -- ** DestinationConfig
    DestinationConfig (DestinationConfig'),
    newDestinationConfig,

    -- ** Environment
    Environment (Environment'),
    newEnvironment,

    -- ** EnvironmentError
    EnvironmentError (EnvironmentError'),
    newEnvironmentError,

    -- ** EnvironmentResponse
    EnvironmentResponse (EnvironmentResponse'),
    newEnvironmentResponse,

    -- ** EventSourceMappingConfiguration
    EventSourceMappingConfiguration (EventSourceMappingConfiguration'),
    newEventSourceMappingConfiguration,

    -- ** FileSystemConfig
    FileSystemConfig (FileSystemConfig'),
    newFileSystemConfig,

    -- ** FunctionCode
    FunctionCode (FunctionCode'),
    newFunctionCode,

    -- ** FunctionCodeLocation
    FunctionCodeLocation (FunctionCodeLocation'),
    newFunctionCodeLocation,

    -- ** FunctionConfiguration
    FunctionConfiguration (FunctionConfiguration'),
    newFunctionConfiguration,

    -- ** FunctionEventInvokeConfig
    FunctionEventInvokeConfig (FunctionEventInvokeConfig'),
    newFunctionEventInvokeConfig,

    -- ** GetLayerVersionResponse
    GetLayerVersionResponse (GetLayerVersionResponse'),
    newGetLayerVersionResponse,

    -- ** ImageConfig
    ImageConfig (ImageConfig'),
    newImageConfig,

    -- ** ImageConfigError
    ImageConfigError (ImageConfigError'),
    newImageConfigError,

    -- ** ImageConfigResponse
    ImageConfigResponse (ImageConfigResponse'),
    newImageConfigResponse,

    -- ** Layer
    Layer (Layer'),
    newLayer,

    -- ** LayerVersionContentInput
    LayerVersionContentInput (LayerVersionContentInput'),
    newLayerVersionContentInput,

    -- ** LayerVersionContentOutput
    LayerVersionContentOutput (LayerVersionContentOutput'),
    newLayerVersionContentOutput,

    -- ** LayerVersionsListItem
    LayerVersionsListItem (LayerVersionsListItem'),
    newLayerVersionsListItem,

    -- ** LayersListItem
    LayersListItem (LayersListItem'),
    newLayersListItem,

    -- ** OnFailure
    OnFailure (OnFailure'),
    newOnFailure,

    -- ** OnSuccess
    OnSuccess (OnSuccess'),
    newOnSuccess,

    -- ** ProvisionedConcurrencyConfigListItem
    ProvisionedConcurrencyConfigListItem (ProvisionedConcurrencyConfigListItem'),
    newProvisionedConcurrencyConfigListItem,

    -- ** SelfManagedEventSource
    SelfManagedEventSource (SelfManagedEventSource'),
    newSelfManagedEventSource,

    -- ** SourceAccessConfiguration
    SourceAccessConfiguration (SourceAccessConfiguration'),
    newSourceAccessConfiguration,

    -- ** TracingConfig
    TracingConfig (TracingConfig'),
    newTracingConfig,

    -- ** TracingConfigResponse
    TracingConfigResponse (TracingConfigResponse'),
    newTracingConfigResponse,

    -- ** VpcConfig
    VpcConfig (VpcConfig'),
    newVpcConfig,

    -- ** VpcConfigResponse
    VpcConfigResponse (VpcConfigResponse'),
    newVpcConfigResponse,
  )
where

import Network.AWS.Lambda.AddLayerVersionPermission
import Network.AWS.Lambda.AddPermission
import Network.AWS.Lambda.CreateAlias
import Network.AWS.Lambda.CreateCodeSigningConfig
import Network.AWS.Lambda.CreateEventSourceMapping
import Network.AWS.Lambda.CreateFunction
import Network.AWS.Lambda.DeleteAlias
import Network.AWS.Lambda.DeleteCodeSigningConfig
import Network.AWS.Lambda.DeleteEventSourceMapping
import Network.AWS.Lambda.DeleteFunction
import Network.AWS.Lambda.DeleteFunctionCodeSigningConfig
import Network.AWS.Lambda.DeleteFunctionConcurrency
import Network.AWS.Lambda.DeleteFunctionEventInvokeConfig
import Network.AWS.Lambda.DeleteLayerVersion
import Network.AWS.Lambda.DeleteProvisionedConcurrencyConfig
import Network.AWS.Lambda.GetAccountSettings
import Network.AWS.Lambda.GetAlias
import Network.AWS.Lambda.GetCodeSigningConfig
import Network.AWS.Lambda.GetEventSourceMapping
import Network.AWS.Lambda.GetFunction
import Network.AWS.Lambda.GetFunctionCodeSigningConfig
import Network.AWS.Lambda.GetFunctionConcurrency
import Network.AWS.Lambda.GetFunctionConfiguration
import Network.AWS.Lambda.GetFunctionEventInvokeConfig
import Network.AWS.Lambda.GetLayerVersion
import Network.AWS.Lambda.GetLayerVersionByArn
import Network.AWS.Lambda.GetLayerVersionPolicy
import Network.AWS.Lambda.GetPolicy
import Network.AWS.Lambda.GetProvisionedConcurrencyConfig
import Network.AWS.Lambda.Invoke
import Network.AWS.Lambda.Lens
import Network.AWS.Lambda.ListAliases
import Network.AWS.Lambda.ListCodeSigningConfigs
import Network.AWS.Lambda.ListEventSourceMappings
import Network.AWS.Lambda.ListFunctionEventInvokeConfigs
import Network.AWS.Lambda.ListFunctions
import Network.AWS.Lambda.ListFunctionsByCodeSigningConfig
import Network.AWS.Lambda.ListLayerVersions
import Network.AWS.Lambda.ListLayers
import Network.AWS.Lambda.ListProvisionedConcurrencyConfigs
import Network.AWS.Lambda.ListTags
import Network.AWS.Lambda.ListVersionsByFunction
import Network.AWS.Lambda.PublishLayerVersion
import Network.AWS.Lambda.PublishVersion
import Network.AWS.Lambda.PutFunctionCodeSigningConfig
import Network.AWS.Lambda.PutFunctionConcurrency
import Network.AWS.Lambda.PutFunctionEventInvokeConfig
import Network.AWS.Lambda.PutProvisionedConcurrencyConfig
import Network.AWS.Lambda.RemoveLayerVersionPermission
import Network.AWS.Lambda.RemovePermission
import Network.AWS.Lambda.TagResource
import Network.AWS.Lambda.Types
import Network.AWS.Lambda.UntagResource
import Network.AWS.Lambda.UpdateAlias
import Network.AWS.Lambda.UpdateCodeSigningConfig
import Network.AWS.Lambda.UpdateEventSourceMapping
import Network.AWS.Lambda.UpdateFunctionCode
import Network.AWS.Lambda.UpdateFunctionConfiguration
import Network.AWS.Lambda.UpdateFunctionEventInvokeConfig
import Network.AWS.Lambda.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'Lambda'.

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
