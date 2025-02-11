{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.AWS.AppFlow
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2020-08-23@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- Welcome to the Amazon AppFlow API reference. This guide is for
-- developers who need detailed information about the Amazon AppFlow API
-- operations, data types, and errors.
--
-- Amazon AppFlow is a fully managed integration service that enables you
-- to securely transfer data between software as a service (SaaS)
-- applications like Salesforce, Marketo, Slack, and ServiceNow, and Amazon
-- Web Services like Amazon S3 and Amazon Redshift.
--
-- Use the following links to get started on the Amazon AppFlow API:
--
-- -   <https://docs.aws.amazon.com/appflow/1.0/APIReference/API_Operations.html Actions>:
--     An alphabetical list of all Amazon AppFlow API operations.
--
-- -   <https://docs.aws.amazon.com/appflow/1.0/APIReference/API_Types.html Data types>:
--     An alphabetical list of all Amazon AppFlow data types.
--
-- -   <https://docs.aws.amazon.com/appflow/1.0/APIReference/CommonParameters.html Common parameters>:
--     Parameters that all Query operations can use.
--
-- -   <https://docs.aws.amazon.com/appflow/1.0/APIReference/CommonErrors.html Common errors>:
--     Client and server errors that all operations can return.
--
-- If you\'re new to Amazon AppFlow, we recommend that you review the
-- <https://docs.aws.amazon.com/appflow/latest/userguide/what-is-appflow.html Amazon AppFlow User Guide>.
--
-- Amazon AppFlow API users can use vendor-specific mechanisms for OAuth,
-- and include applicable OAuth attributes (such as @auth-code@ and
-- @redirecturi@) with the connector-specific @ConnectorProfileProperties@
-- when creating a new connector profile using Amazon AppFlow API
-- operations. For example, Salesforce users can refer to the
-- <https://help.salesforce.com/articleView?id=remoteaccess_authenticate.htm Authorize Apps with OAuth>
-- documentation.
module Network.AWS.AppFlow
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** ValidationException
    _ValidationException,

    -- ** UnsupportedOperationException
    _UnsupportedOperationException,

    -- ** ConflictException
    _ConflictException,

    -- ** ConnectorAuthenticationException
    _ConnectorAuthenticationException,

    -- ** ServiceQuotaExceededException
    _ServiceQuotaExceededException,

    -- ** InternalServerException
    _InternalServerException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** ConnectorServerException
    _ConnectorServerException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** ListConnectorEntities
    ListConnectorEntities (ListConnectorEntities'),
    newListConnectorEntities,
    ListConnectorEntitiesResponse (ListConnectorEntitiesResponse'),
    newListConnectorEntitiesResponse,

    -- ** CreateConnectorProfile
    CreateConnectorProfile (CreateConnectorProfile'),
    newCreateConnectorProfile,
    CreateConnectorProfileResponse (CreateConnectorProfileResponse'),
    newCreateConnectorProfileResponse,

    -- ** StartFlow
    StartFlow (StartFlow'),
    newStartFlow,
    StartFlowResponse (StartFlowResponse'),
    newStartFlowResponse,

    -- ** ListTagsForResource
    ListTagsForResource (ListTagsForResource'),
    newListTagsForResource,
    ListTagsForResourceResponse (ListTagsForResourceResponse'),
    newListTagsForResourceResponse,

    -- ** CreateFlow
    CreateFlow (CreateFlow'),
    newCreateFlow,
    CreateFlowResponse (CreateFlowResponse'),
    newCreateFlowResponse,

    -- ** DeleteConnectorProfile
    DeleteConnectorProfile (DeleteConnectorProfile'),
    newDeleteConnectorProfile,
    DeleteConnectorProfileResponse (DeleteConnectorProfileResponse'),
    newDeleteConnectorProfileResponse,

    -- ** UpdateConnectorProfile
    UpdateConnectorProfile (UpdateConnectorProfile'),
    newUpdateConnectorProfile,
    UpdateConnectorProfileResponse (UpdateConnectorProfileResponse'),
    newUpdateConnectorProfileResponse,

    -- ** DescribeFlow
    DescribeFlow (DescribeFlow'),
    newDescribeFlow,
    DescribeFlowResponse (DescribeFlowResponse'),
    newDescribeFlowResponse,

    -- ** StopFlow
    StopFlow (StopFlow'),
    newStopFlow,
    StopFlowResponse (StopFlowResponse'),
    newStopFlowResponse,

    -- ** DescribeConnectors
    DescribeConnectors (DescribeConnectors'),
    newDescribeConnectors,
    DescribeConnectorsResponse (DescribeConnectorsResponse'),
    newDescribeConnectorsResponse,

    -- ** DescribeConnectorEntity
    DescribeConnectorEntity (DescribeConnectorEntity'),
    newDescribeConnectorEntity,
    DescribeConnectorEntityResponse (DescribeConnectorEntityResponse'),
    newDescribeConnectorEntityResponse,

    -- ** TagResource
    TagResource (TagResource'),
    newTagResource,
    TagResourceResponse (TagResourceResponse'),
    newTagResourceResponse,

    -- ** ListFlows
    ListFlows (ListFlows'),
    newListFlows,
    ListFlowsResponse (ListFlowsResponse'),
    newListFlowsResponse,

    -- ** DescribeFlowExecutionRecords
    DescribeFlowExecutionRecords (DescribeFlowExecutionRecords'),
    newDescribeFlowExecutionRecords,
    DescribeFlowExecutionRecordsResponse (DescribeFlowExecutionRecordsResponse'),
    newDescribeFlowExecutionRecordsResponse,

    -- ** UntagResource
    UntagResource (UntagResource'),
    newUntagResource,
    UntagResourceResponse (UntagResourceResponse'),
    newUntagResourceResponse,

    -- ** UpdateFlow
    UpdateFlow (UpdateFlow'),
    newUpdateFlow,
    UpdateFlowResponse (UpdateFlowResponse'),
    newUpdateFlowResponse,

    -- ** DeleteFlow
    DeleteFlow (DeleteFlow'),
    newDeleteFlow,
    DeleteFlowResponse (DeleteFlowResponse'),
    newDeleteFlowResponse,

    -- ** DescribeConnectorProfiles
    DescribeConnectorProfiles (DescribeConnectorProfiles'),
    newDescribeConnectorProfiles,
    DescribeConnectorProfilesResponse (DescribeConnectorProfilesResponse'),
    newDescribeConnectorProfilesResponse,

    -- * Types

    -- ** AggregationType
    AggregationType (..),

    -- ** AmplitudeConnectorOperator
    AmplitudeConnectorOperator (..),

    -- ** ConnectionMode
    ConnectionMode (..),

    -- ** ConnectorType
    ConnectorType (..),

    -- ** DataPullMode
    DataPullMode (..),

    -- ** DatadogConnectorOperator
    DatadogConnectorOperator (..),

    -- ** DynatraceConnectorOperator
    DynatraceConnectorOperator (..),

    -- ** ExecutionStatus
    ExecutionStatus (..),

    -- ** FileType
    FileType (..),

    -- ** FlowStatus
    FlowStatus (..),

    -- ** GoogleAnalyticsConnectorOperator
    GoogleAnalyticsConnectorOperator (..),

    -- ** InforNexusConnectorOperator
    InforNexusConnectorOperator (..),

    -- ** MarketoConnectorOperator
    MarketoConnectorOperator (..),

    -- ** Operator
    Operator (..),

    -- ** OperatorPropertiesKeys
    OperatorPropertiesKeys (..),

    -- ** PrefixFormat
    PrefixFormat (..),

    -- ** PrefixType
    PrefixType (..),

    -- ** PrivateConnectionProvisioningFailureCause
    PrivateConnectionProvisioningFailureCause (..),

    -- ** PrivateConnectionProvisioningStatus
    PrivateConnectionProvisioningStatus (..),

    -- ** S3ConnectorOperator
    S3ConnectorOperator (..),

    -- ** S3InputFileType
    S3InputFileType (..),

    -- ** SAPODataConnectorOperator
    SAPODataConnectorOperator (..),

    -- ** SalesforceConnectorOperator
    SalesforceConnectorOperator (..),

    -- ** ScheduleFrequencyType
    ScheduleFrequencyType (..),

    -- ** ServiceNowConnectorOperator
    ServiceNowConnectorOperator (..),

    -- ** SingularConnectorOperator
    SingularConnectorOperator (..),

    -- ** SlackConnectorOperator
    SlackConnectorOperator (..),

    -- ** TaskType
    TaskType (..),

    -- ** TrendmicroConnectorOperator
    TrendmicroConnectorOperator (..),

    -- ** TriggerType
    TriggerType (..),

    -- ** VeevaConnectorOperator
    VeevaConnectorOperator (..),

    -- ** WriteOperationType
    WriteOperationType (..),

    -- ** ZendeskConnectorOperator
    ZendeskConnectorOperator (..),

    -- ** AggregationConfig
    AggregationConfig (AggregationConfig'),
    newAggregationConfig,

    -- ** AmplitudeConnectorProfileCredentials
    AmplitudeConnectorProfileCredentials (AmplitudeConnectorProfileCredentials'),
    newAmplitudeConnectorProfileCredentials,

    -- ** AmplitudeConnectorProfileProperties
    AmplitudeConnectorProfileProperties (AmplitudeConnectorProfileProperties'),
    newAmplitudeConnectorProfileProperties,

    -- ** AmplitudeMetadata
    AmplitudeMetadata (AmplitudeMetadata'),
    newAmplitudeMetadata,

    -- ** AmplitudeSourceProperties
    AmplitudeSourceProperties (AmplitudeSourceProperties'),
    newAmplitudeSourceProperties,

    -- ** BasicAuthCredentials
    BasicAuthCredentials (BasicAuthCredentials'),
    newBasicAuthCredentials,

    -- ** ConnectorConfiguration
    ConnectorConfiguration (ConnectorConfiguration'),
    newConnectorConfiguration,

    -- ** ConnectorEntity
    ConnectorEntity (ConnectorEntity'),
    newConnectorEntity,

    -- ** ConnectorEntityField
    ConnectorEntityField (ConnectorEntityField'),
    newConnectorEntityField,

    -- ** ConnectorMetadata
    ConnectorMetadata (ConnectorMetadata'),
    newConnectorMetadata,

    -- ** ConnectorOAuthRequest
    ConnectorOAuthRequest (ConnectorOAuthRequest'),
    newConnectorOAuthRequest,

    -- ** ConnectorOperator
    ConnectorOperator (ConnectorOperator'),
    newConnectorOperator,

    -- ** ConnectorProfile
    ConnectorProfile (ConnectorProfile'),
    newConnectorProfile,

    -- ** ConnectorProfileConfig
    ConnectorProfileConfig (ConnectorProfileConfig'),
    newConnectorProfileConfig,

    -- ** ConnectorProfileCredentials
    ConnectorProfileCredentials (ConnectorProfileCredentials'),
    newConnectorProfileCredentials,

    -- ** ConnectorProfileProperties
    ConnectorProfileProperties (ConnectorProfileProperties'),
    newConnectorProfileProperties,

    -- ** CustomerProfilesDestinationProperties
    CustomerProfilesDestinationProperties (CustomerProfilesDestinationProperties'),
    newCustomerProfilesDestinationProperties,

    -- ** CustomerProfilesMetadata
    CustomerProfilesMetadata (CustomerProfilesMetadata'),
    newCustomerProfilesMetadata,

    -- ** DatadogConnectorProfileCredentials
    DatadogConnectorProfileCredentials (DatadogConnectorProfileCredentials'),
    newDatadogConnectorProfileCredentials,

    -- ** DatadogConnectorProfileProperties
    DatadogConnectorProfileProperties (DatadogConnectorProfileProperties'),
    newDatadogConnectorProfileProperties,

    -- ** DatadogMetadata
    DatadogMetadata (DatadogMetadata'),
    newDatadogMetadata,

    -- ** DatadogSourceProperties
    DatadogSourceProperties (DatadogSourceProperties'),
    newDatadogSourceProperties,

    -- ** DestinationConnectorProperties
    DestinationConnectorProperties (DestinationConnectorProperties'),
    newDestinationConnectorProperties,

    -- ** DestinationFieldProperties
    DestinationFieldProperties (DestinationFieldProperties'),
    newDestinationFieldProperties,

    -- ** DestinationFlowConfig
    DestinationFlowConfig (DestinationFlowConfig'),
    newDestinationFlowConfig,

    -- ** DynatraceConnectorProfileCredentials
    DynatraceConnectorProfileCredentials (DynatraceConnectorProfileCredentials'),
    newDynatraceConnectorProfileCredentials,

    -- ** DynatraceConnectorProfileProperties
    DynatraceConnectorProfileProperties (DynatraceConnectorProfileProperties'),
    newDynatraceConnectorProfileProperties,

    -- ** DynatraceMetadata
    DynatraceMetadata (DynatraceMetadata'),
    newDynatraceMetadata,

    -- ** DynatraceSourceProperties
    DynatraceSourceProperties (DynatraceSourceProperties'),
    newDynatraceSourceProperties,

    -- ** ErrorHandlingConfig
    ErrorHandlingConfig (ErrorHandlingConfig'),
    newErrorHandlingConfig,

    -- ** ErrorInfo
    ErrorInfo (ErrorInfo'),
    newErrorInfo,

    -- ** EventBridgeDestinationProperties
    EventBridgeDestinationProperties (EventBridgeDestinationProperties'),
    newEventBridgeDestinationProperties,

    -- ** EventBridgeMetadata
    EventBridgeMetadata (EventBridgeMetadata'),
    newEventBridgeMetadata,

    -- ** ExecutionDetails
    ExecutionDetails (ExecutionDetails'),
    newExecutionDetails,

    -- ** ExecutionRecord
    ExecutionRecord (ExecutionRecord'),
    newExecutionRecord,

    -- ** ExecutionResult
    ExecutionResult (ExecutionResult'),
    newExecutionResult,

    -- ** FieldTypeDetails
    FieldTypeDetails (FieldTypeDetails'),
    newFieldTypeDetails,

    -- ** FlowDefinition
    FlowDefinition (FlowDefinition'),
    newFlowDefinition,

    -- ** GoogleAnalyticsConnectorProfileCredentials
    GoogleAnalyticsConnectorProfileCredentials (GoogleAnalyticsConnectorProfileCredentials'),
    newGoogleAnalyticsConnectorProfileCredentials,

    -- ** GoogleAnalyticsConnectorProfileProperties
    GoogleAnalyticsConnectorProfileProperties (GoogleAnalyticsConnectorProfileProperties'),
    newGoogleAnalyticsConnectorProfileProperties,

    -- ** GoogleAnalyticsMetadata
    GoogleAnalyticsMetadata (GoogleAnalyticsMetadata'),
    newGoogleAnalyticsMetadata,

    -- ** GoogleAnalyticsSourceProperties
    GoogleAnalyticsSourceProperties (GoogleAnalyticsSourceProperties'),
    newGoogleAnalyticsSourceProperties,

    -- ** HoneycodeConnectorProfileCredentials
    HoneycodeConnectorProfileCredentials (HoneycodeConnectorProfileCredentials'),
    newHoneycodeConnectorProfileCredentials,

    -- ** HoneycodeConnectorProfileProperties
    HoneycodeConnectorProfileProperties (HoneycodeConnectorProfileProperties'),
    newHoneycodeConnectorProfileProperties,

    -- ** HoneycodeDestinationProperties
    HoneycodeDestinationProperties (HoneycodeDestinationProperties'),
    newHoneycodeDestinationProperties,

    -- ** HoneycodeMetadata
    HoneycodeMetadata (HoneycodeMetadata'),
    newHoneycodeMetadata,

    -- ** IncrementalPullConfig
    IncrementalPullConfig (IncrementalPullConfig'),
    newIncrementalPullConfig,

    -- ** InforNexusConnectorProfileCredentials
    InforNexusConnectorProfileCredentials (InforNexusConnectorProfileCredentials'),
    newInforNexusConnectorProfileCredentials,

    -- ** InforNexusConnectorProfileProperties
    InforNexusConnectorProfileProperties (InforNexusConnectorProfileProperties'),
    newInforNexusConnectorProfileProperties,

    -- ** InforNexusMetadata
    InforNexusMetadata (InforNexusMetadata'),
    newInforNexusMetadata,

    -- ** InforNexusSourceProperties
    InforNexusSourceProperties (InforNexusSourceProperties'),
    newInforNexusSourceProperties,

    -- ** LookoutMetricsDestinationProperties
    LookoutMetricsDestinationProperties (LookoutMetricsDestinationProperties'),
    newLookoutMetricsDestinationProperties,

    -- ** MarketoConnectorProfileCredentials
    MarketoConnectorProfileCredentials (MarketoConnectorProfileCredentials'),
    newMarketoConnectorProfileCredentials,

    -- ** MarketoConnectorProfileProperties
    MarketoConnectorProfileProperties (MarketoConnectorProfileProperties'),
    newMarketoConnectorProfileProperties,

    -- ** MarketoMetadata
    MarketoMetadata (MarketoMetadata'),
    newMarketoMetadata,

    -- ** MarketoSourceProperties
    MarketoSourceProperties (MarketoSourceProperties'),
    newMarketoSourceProperties,

    -- ** OAuthCredentials
    OAuthCredentials (OAuthCredentials'),
    newOAuthCredentials,

    -- ** OAuthProperties
    OAuthProperties (OAuthProperties'),
    newOAuthProperties,

    -- ** PrefixConfig
    PrefixConfig (PrefixConfig'),
    newPrefixConfig,

    -- ** PrivateConnectionProvisioningState
    PrivateConnectionProvisioningState (PrivateConnectionProvisioningState'),
    newPrivateConnectionProvisioningState,

    -- ** RedshiftConnectorProfileCredentials
    RedshiftConnectorProfileCredentials (RedshiftConnectorProfileCredentials'),
    newRedshiftConnectorProfileCredentials,

    -- ** RedshiftConnectorProfileProperties
    RedshiftConnectorProfileProperties (RedshiftConnectorProfileProperties'),
    newRedshiftConnectorProfileProperties,

    -- ** RedshiftDestinationProperties
    RedshiftDestinationProperties (RedshiftDestinationProperties'),
    newRedshiftDestinationProperties,

    -- ** RedshiftMetadata
    RedshiftMetadata (RedshiftMetadata'),
    newRedshiftMetadata,

    -- ** S3DestinationProperties
    S3DestinationProperties (S3DestinationProperties'),
    newS3DestinationProperties,

    -- ** S3InputFormatConfig
    S3InputFormatConfig (S3InputFormatConfig'),
    newS3InputFormatConfig,

    -- ** S3Metadata
    S3Metadata (S3Metadata'),
    newS3Metadata,

    -- ** S3OutputFormatConfig
    S3OutputFormatConfig (S3OutputFormatConfig'),
    newS3OutputFormatConfig,

    -- ** S3SourceProperties
    S3SourceProperties (S3SourceProperties'),
    newS3SourceProperties,

    -- ** SAPODataConnectorProfileCredentials
    SAPODataConnectorProfileCredentials (SAPODataConnectorProfileCredentials'),
    newSAPODataConnectorProfileCredentials,

    -- ** SAPODataConnectorProfileProperties
    SAPODataConnectorProfileProperties (SAPODataConnectorProfileProperties'),
    newSAPODataConnectorProfileProperties,

    -- ** SAPODataMetadata
    SAPODataMetadata (SAPODataMetadata'),
    newSAPODataMetadata,

    -- ** SAPODataSourceProperties
    SAPODataSourceProperties (SAPODataSourceProperties'),
    newSAPODataSourceProperties,

    -- ** SalesforceConnectorProfileCredentials
    SalesforceConnectorProfileCredentials (SalesforceConnectorProfileCredentials'),
    newSalesforceConnectorProfileCredentials,

    -- ** SalesforceConnectorProfileProperties
    SalesforceConnectorProfileProperties (SalesforceConnectorProfileProperties'),
    newSalesforceConnectorProfileProperties,

    -- ** SalesforceDestinationProperties
    SalesforceDestinationProperties (SalesforceDestinationProperties'),
    newSalesforceDestinationProperties,

    -- ** SalesforceMetadata
    SalesforceMetadata (SalesforceMetadata'),
    newSalesforceMetadata,

    -- ** SalesforceSourceProperties
    SalesforceSourceProperties (SalesforceSourceProperties'),
    newSalesforceSourceProperties,

    -- ** ScheduledTriggerProperties
    ScheduledTriggerProperties (ScheduledTriggerProperties'),
    newScheduledTriggerProperties,

    -- ** ServiceNowConnectorProfileCredentials
    ServiceNowConnectorProfileCredentials (ServiceNowConnectorProfileCredentials'),
    newServiceNowConnectorProfileCredentials,

    -- ** ServiceNowConnectorProfileProperties
    ServiceNowConnectorProfileProperties (ServiceNowConnectorProfileProperties'),
    newServiceNowConnectorProfileProperties,

    -- ** ServiceNowMetadata
    ServiceNowMetadata (ServiceNowMetadata'),
    newServiceNowMetadata,

    -- ** ServiceNowSourceProperties
    ServiceNowSourceProperties (ServiceNowSourceProperties'),
    newServiceNowSourceProperties,

    -- ** SingularConnectorProfileCredentials
    SingularConnectorProfileCredentials (SingularConnectorProfileCredentials'),
    newSingularConnectorProfileCredentials,

    -- ** SingularConnectorProfileProperties
    SingularConnectorProfileProperties (SingularConnectorProfileProperties'),
    newSingularConnectorProfileProperties,

    -- ** SingularMetadata
    SingularMetadata (SingularMetadata'),
    newSingularMetadata,

    -- ** SingularSourceProperties
    SingularSourceProperties (SingularSourceProperties'),
    newSingularSourceProperties,

    -- ** SlackConnectorProfileCredentials
    SlackConnectorProfileCredentials (SlackConnectorProfileCredentials'),
    newSlackConnectorProfileCredentials,

    -- ** SlackConnectorProfileProperties
    SlackConnectorProfileProperties (SlackConnectorProfileProperties'),
    newSlackConnectorProfileProperties,

    -- ** SlackMetadata
    SlackMetadata (SlackMetadata'),
    newSlackMetadata,

    -- ** SlackSourceProperties
    SlackSourceProperties (SlackSourceProperties'),
    newSlackSourceProperties,

    -- ** SnowflakeConnectorProfileCredentials
    SnowflakeConnectorProfileCredentials (SnowflakeConnectorProfileCredentials'),
    newSnowflakeConnectorProfileCredentials,

    -- ** SnowflakeConnectorProfileProperties
    SnowflakeConnectorProfileProperties (SnowflakeConnectorProfileProperties'),
    newSnowflakeConnectorProfileProperties,

    -- ** SnowflakeDestinationProperties
    SnowflakeDestinationProperties (SnowflakeDestinationProperties'),
    newSnowflakeDestinationProperties,

    -- ** SnowflakeMetadata
    SnowflakeMetadata (SnowflakeMetadata'),
    newSnowflakeMetadata,

    -- ** SourceConnectorProperties
    SourceConnectorProperties (SourceConnectorProperties'),
    newSourceConnectorProperties,

    -- ** SourceFieldProperties
    SourceFieldProperties (SourceFieldProperties'),
    newSourceFieldProperties,

    -- ** SourceFlowConfig
    SourceFlowConfig (SourceFlowConfig'),
    newSourceFlowConfig,

    -- ** SupportedFieldTypeDetails
    SupportedFieldTypeDetails (SupportedFieldTypeDetails'),
    newSupportedFieldTypeDetails,

    -- ** Task
    Task (Task'),
    newTask,

    -- ** TrendmicroConnectorProfileCredentials
    TrendmicroConnectorProfileCredentials (TrendmicroConnectorProfileCredentials'),
    newTrendmicroConnectorProfileCredentials,

    -- ** TrendmicroConnectorProfileProperties
    TrendmicroConnectorProfileProperties (TrendmicroConnectorProfileProperties'),
    newTrendmicroConnectorProfileProperties,

    -- ** TrendmicroMetadata
    TrendmicroMetadata (TrendmicroMetadata'),
    newTrendmicroMetadata,

    -- ** TrendmicroSourceProperties
    TrendmicroSourceProperties (TrendmicroSourceProperties'),
    newTrendmicroSourceProperties,

    -- ** TriggerConfig
    TriggerConfig (TriggerConfig'),
    newTriggerConfig,

    -- ** TriggerProperties
    TriggerProperties (TriggerProperties'),
    newTriggerProperties,

    -- ** UpsolverDestinationProperties
    UpsolverDestinationProperties (UpsolverDestinationProperties'),
    newUpsolverDestinationProperties,

    -- ** UpsolverMetadata
    UpsolverMetadata (UpsolverMetadata'),
    newUpsolverMetadata,

    -- ** UpsolverS3OutputFormatConfig
    UpsolverS3OutputFormatConfig (UpsolverS3OutputFormatConfig'),
    newUpsolverS3OutputFormatConfig,

    -- ** VeevaConnectorProfileCredentials
    VeevaConnectorProfileCredentials (VeevaConnectorProfileCredentials'),
    newVeevaConnectorProfileCredentials,

    -- ** VeevaConnectorProfileProperties
    VeevaConnectorProfileProperties (VeevaConnectorProfileProperties'),
    newVeevaConnectorProfileProperties,

    -- ** VeevaMetadata
    VeevaMetadata (VeevaMetadata'),
    newVeevaMetadata,

    -- ** VeevaSourceProperties
    VeevaSourceProperties (VeevaSourceProperties'),
    newVeevaSourceProperties,

    -- ** ZendeskConnectorProfileCredentials
    ZendeskConnectorProfileCredentials (ZendeskConnectorProfileCredentials'),
    newZendeskConnectorProfileCredentials,

    -- ** ZendeskConnectorProfileProperties
    ZendeskConnectorProfileProperties (ZendeskConnectorProfileProperties'),
    newZendeskConnectorProfileProperties,

    -- ** ZendeskDestinationProperties
    ZendeskDestinationProperties (ZendeskDestinationProperties'),
    newZendeskDestinationProperties,

    -- ** ZendeskMetadata
    ZendeskMetadata (ZendeskMetadata'),
    newZendeskMetadata,

    -- ** ZendeskSourceProperties
    ZendeskSourceProperties (ZendeskSourceProperties'),
    newZendeskSourceProperties,
  )
where

import Network.AWS.AppFlow.CreateConnectorProfile
import Network.AWS.AppFlow.CreateFlow
import Network.AWS.AppFlow.DeleteConnectorProfile
import Network.AWS.AppFlow.DeleteFlow
import Network.AWS.AppFlow.DescribeConnectorEntity
import Network.AWS.AppFlow.DescribeConnectorProfiles
import Network.AWS.AppFlow.DescribeConnectors
import Network.AWS.AppFlow.DescribeFlow
import Network.AWS.AppFlow.DescribeFlowExecutionRecords
import Network.AWS.AppFlow.Lens
import Network.AWS.AppFlow.ListConnectorEntities
import Network.AWS.AppFlow.ListFlows
import Network.AWS.AppFlow.ListTagsForResource
import Network.AWS.AppFlow.StartFlow
import Network.AWS.AppFlow.StopFlow
import Network.AWS.AppFlow.TagResource
import Network.AWS.AppFlow.Types
import Network.AWS.AppFlow.UntagResource
import Network.AWS.AppFlow.UpdateConnectorProfile
import Network.AWS.AppFlow.UpdateFlow
import Network.AWS.AppFlow.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'AppFlow'.

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
