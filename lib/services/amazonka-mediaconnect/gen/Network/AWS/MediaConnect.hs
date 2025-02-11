{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.AWS.MediaConnect
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2018-11-14@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- API for AWS Elemental MediaConnect
module Network.AWS.MediaConnect
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** GrantFlowEntitlements420Exception
    _GrantFlowEntitlements420Exception,

    -- ** ForbiddenException
    _ForbiddenException,

    -- ** NotFoundException
    _NotFoundException,

    -- ** CreateFlow420Exception
    _CreateFlow420Exception,

    -- ** TooManyRequestsException
    _TooManyRequestsException,

    -- ** InternalServerErrorException
    _InternalServerErrorException,

    -- ** ServiceUnavailableException
    _ServiceUnavailableException,

    -- ** AddFlowOutputs420Exception
    _AddFlowOutputs420Exception,

    -- ** BadRequestException
    _BadRequestException,

    -- * Waiters
    -- $waiters

    -- ** FlowStandby
    newFlowStandby,

    -- ** FlowActive
    newFlowActive,

    -- ** FlowDeleted
    newFlowDeleted,

    -- * Operations
    -- $operations

    -- ** RemoveFlowVpcInterface
    RemoveFlowVpcInterface (RemoveFlowVpcInterface'),
    newRemoveFlowVpcInterface,
    RemoveFlowVpcInterfaceResponse (RemoveFlowVpcInterfaceResponse'),
    newRemoveFlowVpcInterfaceResponse,

    -- ** RemoveFlowMediaStream
    RemoveFlowMediaStream (RemoveFlowMediaStream'),
    newRemoveFlowMediaStream,
    RemoveFlowMediaStreamResponse (RemoveFlowMediaStreamResponse'),
    newRemoveFlowMediaStreamResponse,

    -- ** UpdateFlowOutput
    UpdateFlowOutput (UpdateFlowOutput'),
    newUpdateFlowOutput,
    UpdateFlowOutputResponse (UpdateFlowOutputResponse'),
    newUpdateFlowOutputResponse,

    -- ** AddFlowOutputs
    AddFlowOutputs (AddFlowOutputs'),
    newAddFlowOutputs,
    AddFlowOutputsResponse (AddFlowOutputsResponse'),
    newAddFlowOutputsResponse,

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

    -- ** AddFlowSources
    AddFlowSources (AddFlowSources'),
    newAddFlowSources,
    AddFlowSourcesResponse (AddFlowSourcesResponse'),
    newAddFlowSourcesResponse,

    -- ** DescribeReservation
    DescribeReservation (DescribeReservation'),
    newDescribeReservation,
    DescribeReservationResponse (DescribeReservationResponse'),
    newDescribeReservationResponse,

    -- ** AddFlowMediaStreams
    AddFlowMediaStreams (AddFlowMediaStreams'),
    newAddFlowMediaStreams,
    AddFlowMediaStreamsResponse (AddFlowMediaStreamsResponse'),
    newAddFlowMediaStreamsResponse,

    -- ** RemoveFlowOutput
    RemoveFlowOutput (RemoveFlowOutput'),
    newRemoveFlowOutput,
    RemoveFlowOutputResponse (RemoveFlowOutputResponse'),
    newRemoveFlowOutputResponse,

    -- ** RevokeFlowEntitlement
    RevokeFlowEntitlement (RevokeFlowEntitlement'),
    newRevokeFlowEntitlement,
    RevokeFlowEntitlementResponse (RevokeFlowEntitlementResponse'),
    newRevokeFlowEntitlementResponse,

    -- ** CreateFlow
    CreateFlow (CreateFlow'),
    newCreateFlow,
    CreateFlowResponse (CreateFlowResponse'),
    newCreateFlowResponse,

    -- ** RemoveFlowSource
    RemoveFlowSource (RemoveFlowSource'),
    newRemoveFlowSource,
    RemoveFlowSourceResponse (RemoveFlowSourceResponse'),
    newRemoveFlowSourceResponse,

    -- ** DescribeFlow
    DescribeFlow (DescribeFlow'),
    newDescribeFlow,
    DescribeFlowResponse (DescribeFlowResponse'),
    newDescribeFlowResponse,

    -- ** UpdateFlowEntitlement
    UpdateFlowEntitlement (UpdateFlowEntitlement'),
    newUpdateFlowEntitlement,
    UpdateFlowEntitlementResponse (UpdateFlowEntitlementResponse'),
    newUpdateFlowEntitlementResponse,

    -- ** StopFlow
    StopFlow (StopFlow'),
    newStopFlow,
    StopFlowResponse (StopFlowResponse'),
    newStopFlowResponse,

    -- ** DescribeOffering
    DescribeOffering (DescribeOffering'),
    newDescribeOffering,
    DescribeOfferingResponse (DescribeOfferingResponse'),
    newDescribeOfferingResponse,

    -- ** AddFlowVpcInterfaces
    AddFlowVpcInterfaces (AddFlowVpcInterfaces'),
    newAddFlowVpcInterfaces,
    AddFlowVpcInterfacesResponse (AddFlowVpcInterfacesResponse'),
    newAddFlowVpcInterfacesResponse,

    -- ** ListEntitlements (Paginated)
    ListEntitlements (ListEntitlements'),
    newListEntitlements,
    ListEntitlementsResponse (ListEntitlementsResponse'),
    newListEntitlementsResponse,

    -- ** TagResource
    TagResource (TagResource'),
    newTagResource,
    TagResourceResponse (TagResourceResponse'),
    newTagResourceResponse,

    -- ** ListFlows (Paginated)
    ListFlows (ListFlows'),
    newListFlows,
    ListFlowsResponse (ListFlowsResponse'),
    newListFlowsResponse,

    -- ** PurchaseOffering
    PurchaseOffering (PurchaseOffering'),
    newPurchaseOffering,
    PurchaseOfferingResponse (PurchaseOfferingResponse'),
    newPurchaseOfferingResponse,

    -- ** UpdateFlowMediaStream
    UpdateFlowMediaStream (UpdateFlowMediaStream'),
    newUpdateFlowMediaStream,
    UpdateFlowMediaStreamResponse (UpdateFlowMediaStreamResponse'),
    newUpdateFlowMediaStreamResponse,

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

    -- ** UpdateFlowSource
    UpdateFlowSource (UpdateFlowSource'),
    newUpdateFlowSource,
    UpdateFlowSourceResponse (UpdateFlowSourceResponse'),
    newUpdateFlowSourceResponse,

    -- ** GrantFlowEntitlements
    GrantFlowEntitlements (GrantFlowEntitlements'),
    newGrantFlowEntitlements,
    GrantFlowEntitlementsResponse (GrantFlowEntitlementsResponse'),
    newGrantFlowEntitlementsResponse,

    -- ** ListReservations (Paginated)
    ListReservations (ListReservations'),
    newListReservations,
    ListReservationsResponse (ListReservationsResponse'),
    newListReservationsResponse,

    -- ** ListOfferings (Paginated)
    ListOfferings (ListOfferings'),
    newListOfferings,
    ListOfferingsResponse (ListOfferingsResponse'),
    newListOfferingsResponse,

    -- * Types

    -- ** Algorithm
    Algorithm (..),

    -- ** Colorimetry
    Colorimetry (..),

    -- ** DurationUnits
    DurationUnits (..),

    -- ** EncoderProfile
    EncoderProfile (..),

    -- ** EncodingName
    EncodingName (..),

    -- ** EntitlementStatus
    EntitlementStatus (..),

    -- ** FailoverMode
    FailoverMode (..),

    -- ** KeyType
    KeyType (..),

    -- ** MediaStreamType
    MediaStreamType (..),

    -- ** NetworkInterfaceType
    NetworkInterfaceType (..),

    -- ** PriceUnits
    PriceUnits (..),

    -- ** Protocol
    Protocol (..),

    -- ** Range
    Range (..),

    -- ** ReservationState
    ReservationState (..),

    -- ** ResourceType
    ResourceType (..),

    -- ** ScanMode
    ScanMode (..),

    -- ** SourceType
    SourceType (..),

    -- ** State
    State (..),

    -- ** Status
    Status (..),

    -- ** Tcs
    Tcs (..),

    -- ** AddMediaStreamRequest
    AddMediaStreamRequest (AddMediaStreamRequest'),
    newAddMediaStreamRequest,

    -- ** AddOutputRequest
    AddOutputRequest (AddOutputRequest'),
    newAddOutputRequest,

    -- ** DestinationConfiguration
    DestinationConfiguration (DestinationConfiguration'),
    newDestinationConfiguration,

    -- ** DestinationConfigurationRequest
    DestinationConfigurationRequest (DestinationConfigurationRequest'),
    newDestinationConfigurationRequest,

    -- ** EncodingParameters
    EncodingParameters (EncodingParameters'),
    newEncodingParameters,

    -- ** EncodingParametersRequest
    EncodingParametersRequest (EncodingParametersRequest'),
    newEncodingParametersRequest,

    -- ** Encryption
    Encryption (Encryption'),
    newEncryption,

    -- ** Entitlement
    Entitlement (Entitlement'),
    newEntitlement,

    -- ** FailoverConfig
    FailoverConfig (FailoverConfig'),
    newFailoverConfig,

    -- ** Flow
    Flow (Flow'),
    newFlow,

    -- ** Fmtp
    Fmtp (Fmtp'),
    newFmtp,

    -- ** FmtpRequest
    FmtpRequest (FmtpRequest'),
    newFmtpRequest,

    -- ** GrantEntitlementRequest
    GrantEntitlementRequest (GrantEntitlementRequest'),
    newGrantEntitlementRequest,

    -- ** InputConfiguration
    InputConfiguration (InputConfiguration'),
    newInputConfiguration,

    -- ** InputConfigurationRequest
    InputConfigurationRequest (InputConfigurationRequest'),
    newInputConfigurationRequest,

    -- ** Interface
    Interface (Interface'),
    newInterface,

    -- ** InterfaceRequest
    InterfaceRequest (InterfaceRequest'),
    newInterfaceRequest,

    -- ** ListedEntitlement
    ListedEntitlement (ListedEntitlement'),
    newListedEntitlement,

    -- ** ListedFlow
    ListedFlow (ListedFlow'),
    newListedFlow,

    -- ** MediaStream
    MediaStream (MediaStream'),
    newMediaStream,

    -- ** MediaStreamAttributes
    MediaStreamAttributes (MediaStreamAttributes'),
    newMediaStreamAttributes,

    -- ** MediaStreamAttributesRequest
    MediaStreamAttributesRequest (MediaStreamAttributesRequest'),
    newMediaStreamAttributesRequest,

    -- ** MediaStreamOutputConfiguration
    MediaStreamOutputConfiguration (MediaStreamOutputConfiguration'),
    newMediaStreamOutputConfiguration,

    -- ** MediaStreamOutputConfigurationRequest
    MediaStreamOutputConfigurationRequest (MediaStreamOutputConfigurationRequest'),
    newMediaStreamOutputConfigurationRequest,

    -- ** MediaStreamSourceConfiguration
    MediaStreamSourceConfiguration (MediaStreamSourceConfiguration'),
    newMediaStreamSourceConfiguration,

    -- ** MediaStreamSourceConfigurationRequest
    MediaStreamSourceConfigurationRequest (MediaStreamSourceConfigurationRequest'),
    newMediaStreamSourceConfigurationRequest,

    -- ** Messages
    Messages (Messages'),
    newMessages,

    -- ** Offering
    Offering (Offering'),
    newOffering,

    -- ** Output
    Output (Output'),
    newOutput,

    -- ** Reservation
    Reservation (Reservation'),
    newReservation,

    -- ** ResourceSpecification
    ResourceSpecification (ResourceSpecification'),
    newResourceSpecification,

    -- ** SetSourceRequest
    SetSourceRequest (SetSourceRequest'),
    newSetSourceRequest,

    -- ** Source
    Source (Source'),
    newSource,

    -- ** SourcePriority
    SourcePriority (SourcePriority'),
    newSourcePriority,

    -- ** Transport
    Transport (Transport'),
    newTransport,

    -- ** UpdateEncryption
    UpdateEncryption (UpdateEncryption'),
    newUpdateEncryption,

    -- ** UpdateFailoverConfig
    UpdateFailoverConfig (UpdateFailoverConfig'),
    newUpdateFailoverConfig,

    -- ** VpcInterface
    VpcInterface (VpcInterface'),
    newVpcInterface,

    -- ** VpcInterfaceAttachment
    VpcInterfaceAttachment (VpcInterfaceAttachment'),
    newVpcInterfaceAttachment,

    -- ** VpcInterfaceRequest
    VpcInterfaceRequest (VpcInterfaceRequest'),
    newVpcInterfaceRequest,
  )
where

import Network.AWS.MediaConnect.AddFlowMediaStreams
import Network.AWS.MediaConnect.AddFlowOutputs
import Network.AWS.MediaConnect.AddFlowSources
import Network.AWS.MediaConnect.AddFlowVpcInterfaces
import Network.AWS.MediaConnect.CreateFlow
import Network.AWS.MediaConnect.DeleteFlow
import Network.AWS.MediaConnect.DescribeFlow
import Network.AWS.MediaConnect.DescribeOffering
import Network.AWS.MediaConnect.DescribeReservation
import Network.AWS.MediaConnect.GrantFlowEntitlements
import Network.AWS.MediaConnect.Lens
import Network.AWS.MediaConnect.ListEntitlements
import Network.AWS.MediaConnect.ListFlows
import Network.AWS.MediaConnect.ListOfferings
import Network.AWS.MediaConnect.ListReservations
import Network.AWS.MediaConnect.ListTagsForResource
import Network.AWS.MediaConnect.PurchaseOffering
import Network.AWS.MediaConnect.RemoveFlowMediaStream
import Network.AWS.MediaConnect.RemoveFlowOutput
import Network.AWS.MediaConnect.RemoveFlowSource
import Network.AWS.MediaConnect.RemoveFlowVpcInterface
import Network.AWS.MediaConnect.RevokeFlowEntitlement
import Network.AWS.MediaConnect.StartFlow
import Network.AWS.MediaConnect.StopFlow
import Network.AWS.MediaConnect.TagResource
import Network.AWS.MediaConnect.Types
import Network.AWS.MediaConnect.UntagResource
import Network.AWS.MediaConnect.UpdateFlow
import Network.AWS.MediaConnect.UpdateFlowEntitlement
import Network.AWS.MediaConnect.UpdateFlowMediaStream
import Network.AWS.MediaConnect.UpdateFlowOutput
import Network.AWS.MediaConnect.UpdateFlowSource
import Network.AWS.MediaConnect.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'MediaConnect'.

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
