{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.AWS.KafkaConnect
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2021-09-14@ of the AWS service descriptions, licensed under Apache 2.0.
module Network.AWS.KafkaConnect
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** ConflictException
    _ConflictException,

    -- ** ForbiddenException
    _ForbiddenException,

    -- ** NotFoundException
    _NotFoundException,

    -- ** TooManyRequestsException
    _TooManyRequestsException,

    -- ** InternalServerErrorException
    _InternalServerErrorException,

    -- ** ServiceUnavailableException
    _ServiceUnavailableException,

    -- ** UnauthorizedException
    _UnauthorizedException,

    -- ** BadRequestException
    _BadRequestException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** ListWorkerConfigurations (Paginated)
    ListWorkerConfigurations (ListWorkerConfigurations'),
    newListWorkerConfigurations,
    ListWorkerConfigurationsResponse (ListWorkerConfigurationsResponse'),
    newListWorkerConfigurationsResponse,

    -- ** DescribeCustomPlugin
    DescribeCustomPlugin (DescribeCustomPlugin'),
    newDescribeCustomPlugin,
    DescribeCustomPluginResponse (DescribeCustomPluginResponse'),
    newDescribeCustomPluginResponse,

    -- ** DeleteConnector
    DeleteConnector (DeleteConnector'),
    newDeleteConnector,
    DeleteConnectorResponse (DeleteConnectorResponse'),
    newDeleteConnectorResponse,

    -- ** UpdateConnector
    UpdateConnector (UpdateConnector'),
    newUpdateConnector,
    UpdateConnectorResponse (UpdateConnectorResponse'),
    newUpdateConnectorResponse,

    -- ** CreateWorkerConfiguration
    CreateWorkerConfiguration (CreateWorkerConfiguration'),
    newCreateWorkerConfiguration,
    CreateWorkerConfigurationResponse (CreateWorkerConfigurationResponse'),
    newCreateWorkerConfigurationResponse,

    -- ** ListConnectors (Paginated)
    ListConnectors (ListConnectors'),
    newListConnectors,
    ListConnectorsResponse (ListConnectorsResponse'),
    newListConnectorsResponse,

    -- ** ListCustomPlugins (Paginated)
    ListCustomPlugins (ListCustomPlugins'),
    newListCustomPlugins,
    ListCustomPluginsResponse (ListCustomPluginsResponse'),
    newListCustomPluginsResponse,

    -- ** CreateConnector
    CreateConnector (CreateConnector'),
    newCreateConnector,
    CreateConnectorResponse (CreateConnectorResponse'),
    newCreateConnectorResponse,

    -- ** DescribeWorkerConfiguration
    DescribeWorkerConfiguration (DescribeWorkerConfiguration'),
    newDescribeWorkerConfiguration,
    DescribeWorkerConfigurationResponse (DescribeWorkerConfigurationResponse'),
    newDescribeWorkerConfigurationResponse,

    -- ** DescribeConnector
    DescribeConnector (DescribeConnector'),
    newDescribeConnector,
    DescribeConnectorResponse (DescribeConnectorResponse'),
    newDescribeConnectorResponse,

    -- ** CreateCustomPlugin
    CreateCustomPlugin (CreateCustomPlugin'),
    newCreateCustomPlugin,
    CreateCustomPluginResponse (CreateCustomPluginResponse'),
    newCreateCustomPluginResponse,

    -- * Types

    -- ** ConnectorState
    ConnectorState (..),

    -- ** CustomPluginContentType
    CustomPluginContentType (..),

    -- ** CustomPluginState
    CustomPluginState (..),

    -- ** KafkaClusterClientAuthenticationType
    KafkaClusterClientAuthenticationType (..),

    -- ** KafkaClusterEncryptionInTransitType
    KafkaClusterEncryptionInTransitType (..),

    -- ** ApacheKafkaCluster
    ApacheKafkaCluster (ApacheKafkaCluster'),
    newApacheKafkaCluster,

    -- ** ApacheKafkaClusterDescription
    ApacheKafkaClusterDescription (ApacheKafkaClusterDescription'),
    newApacheKafkaClusterDescription,

    -- ** AutoScaling
    AutoScaling (AutoScaling'),
    newAutoScaling,

    -- ** AutoScalingDescription
    AutoScalingDescription (AutoScalingDescription'),
    newAutoScalingDescription,

    -- ** AutoScalingUpdate
    AutoScalingUpdate (AutoScalingUpdate'),
    newAutoScalingUpdate,

    -- ** Capacity
    Capacity (Capacity'),
    newCapacity,

    -- ** CapacityDescription
    CapacityDescription (CapacityDescription'),
    newCapacityDescription,

    -- ** CapacityUpdate
    CapacityUpdate (CapacityUpdate'),
    newCapacityUpdate,

    -- ** CloudWatchLogsLogDelivery
    CloudWatchLogsLogDelivery (CloudWatchLogsLogDelivery'),
    newCloudWatchLogsLogDelivery,

    -- ** CloudWatchLogsLogDeliveryDescription
    CloudWatchLogsLogDeliveryDescription (CloudWatchLogsLogDeliveryDescription'),
    newCloudWatchLogsLogDeliveryDescription,

    -- ** ConnectorSummary
    ConnectorSummary (ConnectorSummary'),
    newConnectorSummary,

    -- ** CustomPlugin
    CustomPlugin (CustomPlugin'),
    newCustomPlugin,

    -- ** CustomPluginDescription
    CustomPluginDescription (CustomPluginDescription'),
    newCustomPluginDescription,

    -- ** CustomPluginFileDescription
    CustomPluginFileDescription (CustomPluginFileDescription'),
    newCustomPluginFileDescription,

    -- ** CustomPluginLocation
    CustomPluginLocation (CustomPluginLocation'),
    newCustomPluginLocation,

    -- ** CustomPluginLocationDescription
    CustomPluginLocationDescription (CustomPluginLocationDescription'),
    newCustomPluginLocationDescription,

    -- ** CustomPluginRevisionSummary
    CustomPluginRevisionSummary (CustomPluginRevisionSummary'),
    newCustomPluginRevisionSummary,

    -- ** CustomPluginSummary
    CustomPluginSummary (CustomPluginSummary'),
    newCustomPluginSummary,

    -- ** FirehoseLogDelivery
    FirehoseLogDelivery (FirehoseLogDelivery'),
    newFirehoseLogDelivery,

    -- ** FirehoseLogDeliveryDescription
    FirehoseLogDeliveryDescription (FirehoseLogDeliveryDescription'),
    newFirehoseLogDeliveryDescription,

    -- ** KafkaCluster
    KafkaCluster (KafkaCluster'),
    newKafkaCluster,

    -- ** KafkaClusterClientAuthentication
    KafkaClusterClientAuthentication (KafkaClusterClientAuthentication'),
    newKafkaClusterClientAuthentication,

    -- ** KafkaClusterClientAuthenticationDescription
    KafkaClusterClientAuthenticationDescription (KafkaClusterClientAuthenticationDescription'),
    newKafkaClusterClientAuthenticationDescription,

    -- ** KafkaClusterDescription
    KafkaClusterDescription (KafkaClusterDescription'),
    newKafkaClusterDescription,

    -- ** KafkaClusterEncryptionInTransit
    KafkaClusterEncryptionInTransit (KafkaClusterEncryptionInTransit'),
    newKafkaClusterEncryptionInTransit,

    -- ** KafkaClusterEncryptionInTransitDescription
    KafkaClusterEncryptionInTransitDescription (KafkaClusterEncryptionInTransitDescription'),
    newKafkaClusterEncryptionInTransitDescription,

    -- ** LogDelivery
    LogDelivery (LogDelivery'),
    newLogDelivery,

    -- ** LogDeliveryDescription
    LogDeliveryDescription (LogDeliveryDescription'),
    newLogDeliveryDescription,

    -- ** Plugin
    Plugin (Plugin'),
    newPlugin,

    -- ** PluginDescription
    PluginDescription (PluginDescription'),
    newPluginDescription,

    -- ** ProvisionedCapacity
    ProvisionedCapacity (ProvisionedCapacity'),
    newProvisionedCapacity,

    -- ** ProvisionedCapacityDescription
    ProvisionedCapacityDescription (ProvisionedCapacityDescription'),
    newProvisionedCapacityDescription,

    -- ** ProvisionedCapacityUpdate
    ProvisionedCapacityUpdate (ProvisionedCapacityUpdate'),
    newProvisionedCapacityUpdate,

    -- ** S3Location
    S3Location (S3Location'),
    newS3Location,

    -- ** S3LocationDescription
    S3LocationDescription (S3LocationDescription'),
    newS3LocationDescription,

    -- ** S3LogDelivery
    S3LogDelivery (S3LogDelivery'),
    newS3LogDelivery,

    -- ** S3LogDeliveryDescription
    S3LogDeliveryDescription (S3LogDeliveryDescription'),
    newS3LogDeliveryDescription,

    -- ** ScaleInPolicy
    ScaleInPolicy (ScaleInPolicy'),
    newScaleInPolicy,

    -- ** ScaleInPolicyDescription
    ScaleInPolicyDescription (ScaleInPolicyDescription'),
    newScaleInPolicyDescription,

    -- ** ScaleInPolicyUpdate
    ScaleInPolicyUpdate (ScaleInPolicyUpdate'),
    newScaleInPolicyUpdate,

    -- ** ScaleOutPolicy
    ScaleOutPolicy (ScaleOutPolicy'),
    newScaleOutPolicy,

    -- ** ScaleOutPolicyDescription
    ScaleOutPolicyDescription (ScaleOutPolicyDescription'),
    newScaleOutPolicyDescription,

    -- ** ScaleOutPolicyUpdate
    ScaleOutPolicyUpdate (ScaleOutPolicyUpdate'),
    newScaleOutPolicyUpdate,

    -- ** Vpc
    Vpc (Vpc'),
    newVpc,

    -- ** VpcDescription
    VpcDescription (VpcDescription'),
    newVpcDescription,

    -- ** WorkerConfiguration
    WorkerConfiguration (WorkerConfiguration'),
    newWorkerConfiguration,

    -- ** WorkerConfigurationDescription
    WorkerConfigurationDescription (WorkerConfigurationDescription'),
    newWorkerConfigurationDescription,

    -- ** WorkerConfigurationRevisionDescription
    WorkerConfigurationRevisionDescription (WorkerConfigurationRevisionDescription'),
    newWorkerConfigurationRevisionDescription,

    -- ** WorkerConfigurationRevisionSummary
    WorkerConfigurationRevisionSummary (WorkerConfigurationRevisionSummary'),
    newWorkerConfigurationRevisionSummary,

    -- ** WorkerConfigurationSummary
    WorkerConfigurationSummary (WorkerConfigurationSummary'),
    newWorkerConfigurationSummary,

    -- ** WorkerLogDelivery
    WorkerLogDelivery (WorkerLogDelivery'),
    newWorkerLogDelivery,

    -- ** WorkerLogDeliveryDescription
    WorkerLogDeliveryDescription (WorkerLogDeliveryDescription'),
    newWorkerLogDeliveryDescription,
  )
where

import Network.AWS.KafkaConnect.CreateConnector
import Network.AWS.KafkaConnect.CreateCustomPlugin
import Network.AWS.KafkaConnect.CreateWorkerConfiguration
import Network.AWS.KafkaConnect.DeleteConnector
import Network.AWS.KafkaConnect.DescribeConnector
import Network.AWS.KafkaConnect.DescribeCustomPlugin
import Network.AWS.KafkaConnect.DescribeWorkerConfiguration
import Network.AWS.KafkaConnect.Lens
import Network.AWS.KafkaConnect.ListConnectors
import Network.AWS.KafkaConnect.ListCustomPlugins
import Network.AWS.KafkaConnect.ListWorkerConfigurations
import Network.AWS.KafkaConnect.Types
import Network.AWS.KafkaConnect.UpdateConnector
import Network.AWS.KafkaConnect.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'KafkaConnect'.

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
