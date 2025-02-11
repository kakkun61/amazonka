{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.AWS.CloudWatchEvents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2015-10-07@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- Amazon EventBridge helps you to respond to state changes in your Amazon
-- Web Services resources. When your resources change state, they
-- automatically send events to an event stream. You can create rules that
-- match selected events in the stream and route them to targets to take
-- action. You can also use rules to take action on a predetermined
-- schedule. For example, you can configure rules to:
--
-- -   Automatically invoke an Lambda function to update DNS entries when
--     an event notifies you that Amazon EC2 instance enters the running
--     state.
--
-- -   Direct specific API records from CloudTrail to an Amazon Kinesis
--     data stream for detailed analysis of potential security or
--     availability risks.
--
-- -   Periodically invoke a built-in target to create a snapshot of an
--     Amazon EBS volume.
--
-- For more information about the features of Amazon EventBridge, see the
-- <https://docs.aws.amazon.com/eventbridge/latest/userguide Amazon EventBridge User Guide>.
module Network.AWS.CloudWatchEvents
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** ManagedRuleException
    _ManagedRuleException,

    -- ** IllegalStatusException
    _IllegalStatusException,

    -- ** PolicyLengthExceededException
    _PolicyLengthExceededException,

    -- ** ResourceAlreadyExistsException
    _ResourceAlreadyExistsException,

    -- ** OperationDisabledException
    _OperationDisabledException,

    -- ** ConcurrentModificationException
    _ConcurrentModificationException,

    -- ** InvalidEventPatternException
    _InvalidEventPatternException,

    -- ** InternalException
    _InternalException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** InvalidStateException
    _InvalidStateException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** DeauthorizeConnection
    DeauthorizeConnection (DeauthorizeConnection'),
    newDeauthorizeConnection,
    DeauthorizeConnectionResponse (DeauthorizeConnectionResponse'),
    newDeauthorizeConnectionResponse,

    -- ** RemoveTargets
    RemoveTargets (RemoveTargets'),
    newRemoveTargets,
    RemoveTargetsResponse (RemoveTargetsResponse'),
    newRemoveTargetsResponse,

    -- ** DeleteRule
    DeleteRule (DeleteRule'),
    newDeleteRule,
    DeleteRuleResponse (DeleteRuleResponse'),
    newDeleteRuleResponse,

    -- ** ListPartnerEventSourceAccounts
    ListPartnerEventSourceAccounts (ListPartnerEventSourceAccounts'),
    newListPartnerEventSourceAccounts,
    ListPartnerEventSourceAccountsResponse (ListPartnerEventSourceAccountsResponse'),
    newListPartnerEventSourceAccountsResponse,

    -- ** ListConnections
    ListConnections (ListConnections'),
    newListConnections,
    ListConnectionsResponse (ListConnectionsResponse'),
    newListConnectionsResponse,

    -- ** DeleteConnection
    DeleteConnection (DeleteConnection'),
    newDeleteConnection,
    DeleteConnectionResponse (DeleteConnectionResponse'),
    newDeleteConnectionResponse,

    -- ** UpdateConnection
    UpdateConnection (UpdateConnection'),
    newUpdateConnection,
    UpdateConnectionResponse (UpdateConnectionResponse'),
    newUpdateConnectionResponse,

    -- ** ListRules (Paginated)
    ListRules (ListRules'),
    newListRules,
    ListRulesResponse (ListRulesResponse'),
    newListRulesResponse,

    -- ** PutRule
    PutRule (PutRule'),
    newPutRule,
    PutRuleResponse (PutRuleResponse'),
    newPutRuleResponse,

    -- ** DisableRule
    DisableRule (DisableRule'),
    newDisableRule,
    DisableRuleResponse (DisableRuleResponse'),
    newDisableRuleResponse,

    -- ** PutPermission
    PutPermission (PutPermission'),
    newPutPermission,
    PutPermissionResponse (PutPermissionResponse'),
    newPutPermissionResponse,

    -- ** ListTagsForResource
    ListTagsForResource (ListTagsForResource'),
    newListTagsForResource,
    ListTagsForResourceResponse (ListTagsForResourceResponse'),
    newListTagsForResourceResponse,

    -- ** ListReplays
    ListReplays (ListReplays'),
    newListReplays,
    ListReplaysResponse (ListReplaysResponse'),
    newListReplaysResponse,

    -- ** CreateConnection
    CreateConnection (CreateConnection'),
    newCreateConnection,
    CreateConnectionResponse (CreateConnectionResponse'),
    newCreateConnectionResponse,

    -- ** CancelReplay
    CancelReplay (CancelReplay'),
    newCancelReplay,
    CancelReplayResponse (CancelReplayResponse'),
    newCancelReplayResponse,

    -- ** ListTargetsByRule (Paginated)
    ListTargetsByRule (ListTargetsByRule'),
    newListTargetsByRule,
    ListTargetsByRuleResponse (ListTargetsByRuleResponse'),
    newListTargetsByRuleResponse,

    -- ** RemovePermission
    RemovePermission (RemovePermission'),
    newRemovePermission,
    RemovePermissionResponse (RemovePermissionResponse'),
    newRemovePermissionResponse,

    -- ** ListApiDestinations
    ListApiDestinations (ListApiDestinations'),
    newListApiDestinations,
    ListApiDestinationsResponse (ListApiDestinationsResponse'),
    newListApiDestinationsResponse,

    -- ** UpdateApiDestination
    UpdateApiDestination (UpdateApiDestination'),
    newUpdateApiDestination,
    UpdateApiDestinationResponse (UpdateApiDestinationResponse'),
    newUpdateApiDestinationResponse,

    -- ** DeleteApiDestination
    DeleteApiDestination (DeleteApiDestination'),
    newDeleteApiDestination,
    DeleteApiDestinationResponse (DeleteApiDestinationResponse'),
    newDeleteApiDestinationResponse,

    -- ** ActivateEventSource
    ActivateEventSource (ActivateEventSource'),
    newActivateEventSource,
    ActivateEventSourceResponse (ActivateEventSourceResponse'),
    newActivateEventSourceResponse,

    -- ** CreateApiDestination
    CreateApiDestination (CreateApiDestination'),
    newCreateApiDestination,
    CreateApiDestinationResponse (CreateApiDestinationResponse'),
    newCreateApiDestinationResponse,

    -- ** PutPartnerEvents
    PutPartnerEvents (PutPartnerEvents'),
    newPutPartnerEvents,
    PutPartnerEventsResponse (PutPartnerEventsResponse'),
    newPutPartnerEventsResponse,

    -- ** DescribeConnection
    DescribeConnection (DescribeConnection'),
    newDescribeConnection,
    DescribeConnectionResponse (DescribeConnectionResponse'),
    newDescribeConnectionResponse,

    -- ** DescribeRule
    DescribeRule (DescribeRule'),
    newDescribeRule,
    DescribeRuleResponse (DescribeRuleResponse'),
    newDescribeRuleResponse,

    -- ** ListArchives
    ListArchives (ListArchives'),
    newListArchives,
    ListArchivesResponse (ListArchivesResponse'),
    newListArchivesResponse,

    -- ** StartReplay
    StartReplay (StartReplay'),
    newStartReplay,
    StartReplayResponse (StartReplayResponse'),
    newStartReplayResponse,

    -- ** DeletePartnerEventSource
    DeletePartnerEventSource (DeletePartnerEventSource'),
    newDeletePartnerEventSource,
    DeletePartnerEventSourceResponse (DeletePartnerEventSourceResponse'),
    newDeletePartnerEventSourceResponse,

    -- ** DescribeReplay
    DescribeReplay (DescribeReplay'),
    newDescribeReplay,
    DescribeReplayResponse (DescribeReplayResponse'),
    newDescribeReplayResponse,

    -- ** DescribeApiDestination
    DescribeApiDestination (DescribeApiDestination'),
    newDescribeApiDestination,
    DescribeApiDestinationResponse (DescribeApiDestinationResponse'),
    newDescribeApiDestinationResponse,

    -- ** ListEventBuses
    ListEventBuses (ListEventBuses'),
    newListEventBuses,
    ListEventBusesResponse (ListEventBusesResponse'),
    newListEventBusesResponse,

    -- ** CreateEventBus
    CreateEventBus (CreateEventBus'),
    newCreateEventBus,
    CreateEventBusResponse (CreateEventBusResponse'),
    newCreateEventBusResponse,

    -- ** DescribeEventSource
    DescribeEventSource (DescribeEventSource'),
    newDescribeEventSource,
    DescribeEventSourceResponse (DescribeEventSourceResponse'),
    newDescribeEventSourceResponse,

    -- ** DescribeArchive
    DescribeArchive (DescribeArchive'),
    newDescribeArchive,
    DescribeArchiveResponse (DescribeArchiveResponse'),
    newDescribeArchiveResponse,

    -- ** EnableRule
    EnableRule (EnableRule'),
    newEnableRule,
    EnableRuleResponse (EnableRuleResponse'),
    newEnableRuleResponse,

    -- ** ListRuleNamesByTarget (Paginated)
    ListRuleNamesByTarget (ListRuleNamesByTarget'),
    newListRuleNamesByTarget,
    ListRuleNamesByTargetResponse (ListRuleNamesByTargetResponse'),
    newListRuleNamesByTargetResponse,

    -- ** TestEventPattern
    TestEventPattern (TestEventPattern'),
    newTestEventPattern,
    TestEventPatternResponse (TestEventPatternResponse'),
    newTestEventPatternResponse,

    -- ** DescribePartnerEventSource
    DescribePartnerEventSource (DescribePartnerEventSource'),
    newDescribePartnerEventSource,
    DescribePartnerEventSourceResponse (DescribePartnerEventSourceResponse'),
    newDescribePartnerEventSourceResponse,

    -- ** DescribeEventBus
    DescribeEventBus (DescribeEventBus'),
    newDescribeEventBus,
    DescribeEventBusResponse (DescribeEventBusResponse'),
    newDescribeEventBusResponse,

    -- ** ListEventSources
    ListEventSources (ListEventSources'),
    newListEventSources,
    ListEventSourcesResponse (ListEventSourcesResponse'),
    newListEventSourcesResponse,

    -- ** TagResource
    TagResource (TagResource'),
    newTagResource,
    TagResourceResponse (TagResourceResponse'),
    newTagResourceResponse,

    -- ** CreatePartnerEventSource
    CreatePartnerEventSource (CreatePartnerEventSource'),
    newCreatePartnerEventSource,
    CreatePartnerEventSourceResponse (CreatePartnerEventSourceResponse'),
    newCreatePartnerEventSourceResponse,

    -- ** PutTargets
    PutTargets (PutTargets'),
    newPutTargets,
    PutTargetsResponse (PutTargetsResponse'),
    newPutTargetsResponse,

    -- ** UpdateArchive
    UpdateArchive (UpdateArchive'),
    newUpdateArchive,
    UpdateArchiveResponse (UpdateArchiveResponse'),
    newUpdateArchiveResponse,

    -- ** DeleteArchive
    DeleteArchive (DeleteArchive'),
    newDeleteArchive,
    DeleteArchiveResponse (DeleteArchiveResponse'),
    newDeleteArchiveResponse,

    -- ** UntagResource
    UntagResource (UntagResource'),
    newUntagResource,
    UntagResourceResponse (UntagResourceResponse'),
    newUntagResourceResponse,

    -- ** PutEvents
    PutEvents (PutEvents'),
    newPutEvents,
    PutEventsResponse (PutEventsResponse'),
    newPutEventsResponse,

    -- ** ListPartnerEventSources
    ListPartnerEventSources (ListPartnerEventSources'),
    newListPartnerEventSources,
    ListPartnerEventSourcesResponse (ListPartnerEventSourcesResponse'),
    newListPartnerEventSourcesResponse,

    -- ** CreateArchive
    CreateArchive (CreateArchive'),
    newCreateArchive,
    CreateArchiveResponse (CreateArchiveResponse'),
    newCreateArchiveResponse,

    -- ** DeactivateEventSource
    DeactivateEventSource (DeactivateEventSource'),
    newDeactivateEventSource,
    DeactivateEventSourceResponse (DeactivateEventSourceResponse'),
    newDeactivateEventSourceResponse,

    -- ** DeleteEventBus
    DeleteEventBus (DeleteEventBus'),
    newDeleteEventBus,
    DeleteEventBusResponse (DeleteEventBusResponse'),
    newDeleteEventBusResponse,

    -- * Types

    -- ** ApiDestinationHttpMethod
    ApiDestinationHttpMethod (..),

    -- ** ApiDestinationState
    ApiDestinationState (..),

    -- ** ArchiveState
    ArchiveState (..),

    -- ** AssignPublicIp
    AssignPublicIp (..),

    -- ** ConnectionAuthorizationType
    ConnectionAuthorizationType (..),

    -- ** ConnectionOAuthHttpMethod
    ConnectionOAuthHttpMethod (..),

    -- ** ConnectionState
    ConnectionState (..),

    -- ** EventSourceState
    EventSourceState (..),

    -- ** LaunchType
    LaunchType (..),

    -- ** PlacementConstraintType
    PlacementConstraintType (..),

    -- ** PlacementStrategyType
    PlacementStrategyType (..),

    -- ** PropagateTags
    PropagateTags (..),

    -- ** ReplayState
    ReplayState (..),

    -- ** RuleState
    RuleState (..),

    -- ** ApiDestination
    ApiDestination (ApiDestination'),
    newApiDestination,

    -- ** Archive
    Archive (Archive'),
    newArchive,

    -- ** AwsVpcConfiguration
    AwsVpcConfiguration (AwsVpcConfiguration'),
    newAwsVpcConfiguration,

    -- ** BatchArrayProperties
    BatchArrayProperties (BatchArrayProperties'),
    newBatchArrayProperties,

    -- ** BatchParameters
    BatchParameters (BatchParameters'),
    newBatchParameters,

    -- ** BatchRetryStrategy
    BatchRetryStrategy (BatchRetryStrategy'),
    newBatchRetryStrategy,

    -- ** CapacityProviderStrategyItem
    CapacityProviderStrategyItem (CapacityProviderStrategyItem'),
    newCapacityProviderStrategyItem,

    -- ** Condition
    Condition (Condition'),
    newCondition,

    -- ** Connection
    Connection (Connection'),
    newConnection,

    -- ** ConnectionApiKeyAuthResponseParameters
    ConnectionApiKeyAuthResponseParameters (ConnectionApiKeyAuthResponseParameters'),
    newConnectionApiKeyAuthResponseParameters,

    -- ** ConnectionAuthResponseParameters
    ConnectionAuthResponseParameters (ConnectionAuthResponseParameters'),
    newConnectionAuthResponseParameters,

    -- ** ConnectionBasicAuthResponseParameters
    ConnectionBasicAuthResponseParameters (ConnectionBasicAuthResponseParameters'),
    newConnectionBasicAuthResponseParameters,

    -- ** ConnectionBodyParameter
    ConnectionBodyParameter (ConnectionBodyParameter'),
    newConnectionBodyParameter,

    -- ** ConnectionHeaderParameter
    ConnectionHeaderParameter (ConnectionHeaderParameter'),
    newConnectionHeaderParameter,

    -- ** ConnectionHttpParameters
    ConnectionHttpParameters (ConnectionHttpParameters'),
    newConnectionHttpParameters,

    -- ** ConnectionOAuthClientResponseParameters
    ConnectionOAuthClientResponseParameters (ConnectionOAuthClientResponseParameters'),
    newConnectionOAuthClientResponseParameters,

    -- ** ConnectionOAuthResponseParameters
    ConnectionOAuthResponseParameters (ConnectionOAuthResponseParameters'),
    newConnectionOAuthResponseParameters,

    -- ** ConnectionQueryStringParameter
    ConnectionQueryStringParameter (ConnectionQueryStringParameter'),
    newConnectionQueryStringParameter,

    -- ** CreateConnectionApiKeyAuthRequestParameters
    CreateConnectionApiKeyAuthRequestParameters (CreateConnectionApiKeyAuthRequestParameters'),
    newCreateConnectionApiKeyAuthRequestParameters,

    -- ** CreateConnectionAuthRequestParameters
    CreateConnectionAuthRequestParameters (CreateConnectionAuthRequestParameters'),
    newCreateConnectionAuthRequestParameters,

    -- ** CreateConnectionBasicAuthRequestParameters
    CreateConnectionBasicAuthRequestParameters (CreateConnectionBasicAuthRequestParameters'),
    newCreateConnectionBasicAuthRequestParameters,

    -- ** CreateConnectionOAuthClientRequestParameters
    CreateConnectionOAuthClientRequestParameters (CreateConnectionOAuthClientRequestParameters'),
    newCreateConnectionOAuthClientRequestParameters,

    -- ** CreateConnectionOAuthRequestParameters
    CreateConnectionOAuthRequestParameters (CreateConnectionOAuthRequestParameters'),
    newCreateConnectionOAuthRequestParameters,

    -- ** DeadLetterConfig
    DeadLetterConfig (DeadLetterConfig'),
    newDeadLetterConfig,

    -- ** EcsParameters
    EcsParameters (EcsParameters'),
    newEcsParameters,

    -- ** EventBus
    EventBus (EventBus'),
    newEventBus,

    -- ** EventSource
    EventSource (EventSource'),
    newEventSource,

    -- ** HttpParameters
    HttpParameters (HttpParameters'),
    newHttpParameters,

    -- ** InputTransformer
    InputTransformer (InputTransformer'),
    newInputTransformer,

    -- ** KinesisParameters
    KinesisParameters (KinesisParameters'),
    newKinesisParameters,

    -- ** NetworkConfiguration
    NetworkConfiguration (NetworkConfiguration'),
    newNetworkConfiguration,

    -- ** PartnerEventSource
    PartnerEventSource (PartnerEventSource'),
    newPartnerEventSource,

    -- ** PartnerEventSourceAccount
    PartnerEventSourceAccount (PartnerEventSourceAccount'),
    newPartnerEventSourceAccount,

    -- ** PlacementConstraint
    PlacementConstraint (PlacementConstraint'),
    newPlacementConstraint,

    -- ** PlacementStrategy
    PlacementStrategy (PlacementStrategy'),
    newPlacementStrategy,

    -- ** PutEventsRequestEntry
    PutEventsRequestEntry (PutEventsRequestEntry'),
    newPutEventsRequestEntry,

    -- ** PutEventsResultEntry
    PutEventsResultEntry (PutEventsResultEntry'),
    newPutEventsResultEntry,

    -- ** PutPartnerEventsRequestEntry
    PutPartnerEventsRequestEntry (PutPartnerEventsRequestEntry'),
    newPutPartnerEventsRequestEntry,

    -- ** PutPartnerEventsResultEntry
    PutPartnerEventsResultEntry (PutPartnerEventsResultEntry'),
    newPutPartnerEventsResultEntry,

    -- ** PutTargetsResultEntry
    PutTargetsResultEntry (PutTargetsResultEntry'),
    newPutTargetsResultEntry,

    -- ** RedshiftDataParameters
    RedshiftDataParameters (RedshiftDataParameters'),
    newRedshiftDataParameters,

    -- ** RemoveTargetsResultEntry
    RemoveTargetsResultEntry (RemoveTargetsResultEntry'),
    newRemoveTargetsResultEntry,

    -- ** Replay
    Replay (Replay'),
    newReplay,

    -- ** ReplayDestination
    ReplayDestination (ReplayDestination'),
    newReplayDestination,

    -- ** RetryPolicy
    RetryPolicy (RetryPolicy'),
    newRetryPolicy,

    -- ** Rule
    Rule (Rule'),
    newRule,

    -- ** RunCommandParameters
    RunCommandParameters (RunCommandParameters'),
    newRunCommandParameters,

    -- ** RunCommandTarget
    RunCommandTarget (RunCommandTarget'),
    newRunCommandTarget,

    -- ** SageMakerPipelineParameter
    SageMakerPipelineParameter (SageMakerPipelineParameter'),
    newSageMakerPipelineParameter,

    -- ** SageMakerPipelineParameters
    SageMakerPipelineParameters (SageMakerPipelineParameters'),
    newSageMakerPipelineParameters,

    -- ** SqsParameters
    SqsParameters (SqsParameters'),
    newSqsParameters,

    -- ** Tag
    Tag (Tag'),
    newTag,

    -- ** Target
    Target (Target'),
    newTarget,

    -- ** UpdateConnectionApiKeyAuthRequestParameters
    UpdateConnectionApiKeyAuthRequestParameters (UpdateConnectionApiKeyAuthRequestParameters'),
    newUpdateConnectionApiKeyAuthRequestParameters,

    -- ** UpdateConnectionAuthRequestParameters
    UpdateConnectionAuthRequestParameters (UpdateConnectionAuthRequestParameters'),
    newUpdateConnectionAuthRequestParameters,

    -- ** UpdateConnectionBasicAuthRequestParameters
    UpdateConnectionBasicAuthRequestParameters (UpdateConnectionBasicAuthRequestParameters'),
    newUpdateConnectionBasicAuthRequestParameters,

    -- ** UpdateConnectionOAuthClientRequestParameters
    UpdateConnectionOAuthClientRequestParameters (UpdateConnectionOAuthClientRequestParameters'),
    newUpdateConnectionOAuthClientRequestParameters,

    -- ** UpdateConnectionOAuthRequestParameters
    UpdateConnectionOAuthRequestParameters (UpdateConnectionOAuthRequestParameters'),
    newUpdateConnectionOAuthRequestParameters,
  )
where

import Network.AWS.CloudWatchEvents.ActivateEventSource
import Network.AWS.CloudWatchEvents.CancelReplay
import Network.AWS.CloudWatchEvents.CreateApiDestination
import Network.AWS.CloudWatchEvents.CreateArchive
import Network.AWS.CloudWatchEvents.CreateConnection
import Network.AWS.CloudWatchEvents.CreateEventBus
import Network.AWS.CloudWatchEvents.CreatePartnerEventSource
import Network.AWS.CloudWatchEvents.DeactivateEventSource
import Network.AWS.CloudWatchEvents.DeauthorizeConnection
import Network.AWS.CloudWatchEvents.DeleteApiDestination
import Network.AWS.CloudWatchEvents.DeleteArchive
import Network.AWS.CloudWatchEvents.DeleteConnection
import Network.AWS.CloudWatchEvents.DeleteEventBus
import Network.AWS.CloudWatchEvents.DeletePartnerEventSource
import Network.AWS.CloudWatchEvents.DeleteRule
import Network.AWS.CloudWatchEvents.DescribeApiDestination
import Network.AWS.CloudWatchEvents.DescribeArchive
import Network.AWS.CloudWatchEvents.DescribeConnection
import Network.AWS.CloudWatchEvents.DescribeEventBus
import Network.AWS.CloudWatchEvents.DescribeEventSource
import Network.AWS.CloudWatchEvents.DescribePartnerEventSource
import Network.AWS.CloudWatchEvents.DescribeReplay
import Network.AWS.CloudWatchEvents.DescribeRule
import Network.AWS.CloudWatchEvents.DisableRule
import Network.AWS.CloudWatchEvents.EnableRule
import Network.AWS.CloudWatchEvents.Lens
import Network.AWS.CloudWatchEvents.ListApiDestinations
import Network.AWS.CloudWatchEvents.ListArchives
import Network.AWS.CloudWatchEvents.ListConnections
import Network.AWS.CloudWatchEvents.ListEventBuses
import Network.AWS.CloudWatchEvents.ListEventSources
import Network.AWS.CloudWatchEvents.ListPartnerEventSourceAccounts
import Network.AWS.CloudWatchEvents.ListPartnerEventSources
import Network.AWS.CloudWatchEvents.ListReplays
import Network.AWS.CloudWatchEvents.ListRuleNamesByTarget
import Network.AWS.CloudWatchEvents.ListRules
import Network.AWS.CloudWatchEvents.ListTagsForResource
import Network.AWS.CloudWatchEvents.ListTargetsByRule
import Network.AWS.CloudWatchEvents.PutEvents
import Network.AWS.CloudWatchEvents.PutPartnerEvents
import Network.AWS.CloudWatchEvents.PutPermission
import Network.AWS.CloudWatchEvents.PutRule
import Network.AWS.CloudWatchEvents.PutTargets
import Network.AWS.CloudWatchEvents.RemovePermission
import Network.AWS.CloudWatchEvents.RemoveTargets
import Network.AWS.CloudWatchEvents.StartReplay
import Network.AWS.CloudWatchEvents.TagResource
import Network.AWS.CloudWatchEvents.TestEventPattern
import Network.AWS.CloudWatchEvents.Types
import Network.AWS.CloudWatchEvents.UntagResource
import Network.AWS.CloudWatchEvents.UpdateApiDestination
import Network.AWS.CloudWatchEvents.UpdateArchive
import Network.AWS.CloudWatchEvents.UpdateConnection
import Network.AWS.CloudWatchEvents.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'CloudWatchEvents'.

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
