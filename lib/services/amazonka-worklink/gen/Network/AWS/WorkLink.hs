{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.AWS.WorkLink
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2018-09-25@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- Amazon WorkLink is a cloud-based service that provides secure access to
-- internal websites and web apps from iOS and Android phones. In a single
-- step, your users, such as employees, can access internal websites as
-- efficiently as they access any other public website. They enter a URL in
-- their web browser, or choose a link to an internal website in an email.
-- Amazon WorkLink authenticates the user\'s access and securely renders
-- authorized internal web content in a secure rendering service in the AWS
-- cloud. Amazon WorkLink doesn\'t download or store any internal web
-- content on mobile devices.
module Network.AWS.WorkLink
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** InvalidRequestException
    _InvalidRequestException,

    -- ** ResourceAlreadyExistsException
    _ResourceAlreadyExistsException,

    -- ** TooManyRequestsException
    _TooManyRequestsException,

    -- ** InternalServerErrorException
    _InternalServerErrorException,

    -- ** UnauthorizedException
    _UnauthorizedException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** UpdateDomainMetadata
    UpdateDomainMetadata (UpdateDomainMetadata'),
    newUpdateDomainMetadata,
    UpdateDomainMetadataResponse (UpdateDomainMetadataResponse'),
    newUpdateDomainMetadataResponse,

    -- ** SignOutUser
    SignOutUser (SignOutUser'),
    newSignOutUser,
    SignOutUserResponse (SignOutUserResponse'),
    newSignOutUserResponse,

    -- ** RestoreDomainAccess
    RestoreDomainAccess (RestoreDomainAccess'),
    newRestoreDomainAccess,
    RestoreDomainAccessResponse (RestoreDomainAccessResponse'),
    newRestoreDomainAccessResponse,

    -- ** AssociateDomain
    AssociateDomain (AssociateDomain'),
    newAssociateDomain,
    AssociateDomainResponse (AssociateDomainResponse'),
    newAssociateDomainResponse,

    -- ** DeleteFleet
    DeleteFleet (DeleteFleet'),
    newDeleteFleet,
    DeleteFleetResponse (DeleteFleetResponse'),
    newDeleteFleetResponse,

    -- ** DisassociateDomain
    DisassociateDomain (DisassociateDomain'),
    newDisassociateDomain,
    DisassociateDomainResponse (DisassociateDomainResponse'),
    newDisassociateDomainResponse,

    -- ** ListTagsForResource
    ListTagsForResource (ListTagsForResource'),
    newListTagsForResource,
    ListTagsForResourceResponse (ListTagsForResourceResponse'),
    newListTagsForResourceResponse,

    -- ** AssociateWebsiteAuthorizationProvider
    AssociateWebsiteAuthorizationProvider (AssociateWebsiteAuthorizationProvider'),
    newAssociateWebsiteAuthorizationProvider,
    AssociateWebsiteAuthorizationProviderResponse (AssociateWebsiteAuthorizationProviderResponse'),
    newAssociateWebsiteAuthorizationProviderResponse,

    -- ** DescribeDevicePolicyConfiguration
    DescribeDevicePolicyConfiguration (DescribeDevicePolicyConfiguration'),
    newDescribeDevicePolicyConfiguration,
    DescribeDevicePolicyConfigurationResponse (DescribeDevicePolicyConfigurationResponse'),
    newDescribeDevicePolicyConfigurationResponse,

    -- ** ListWebsiteAuthorizationProviders
    ListWebsiteAuthorizationProviders (ListWebsiteAuthorizationProviders'),
    newListWebsiteAuthorizationProviders,
    ListWebsiteAuthorizationProvidersResponse (ListWebsiteAuthorizationProvidersResponse'),
    newListWebsiteAuthorizationProvidersResponse,

    -- ** DisassociateWebsiteAuthorizationProvider
    DisassociateWebsiteAuthorizationProvider (DisassociateWebsiteAuthorizationProvider'),
    newDisassociateWebsiteAuthorizationProvider,
    DisassociateWebsiteAuthorizationProviderResponse (DisassociateWebsiteAuthorizationProviderResponse'),
    newDisassociateWebsiteAuthorizationProviderResponse,

    -- ** ListWebsiteCertificateAuthorities
    ListWebsiteCertificateAuthorities (ListWebsiteCertificateAuthorities'),
    newListWebsiteCertificateAuthorities,
    ListWebsiteCertificateAuthoritiesResponse (ListWebsiteCertificateAuthoritiesResponse'),
    newListWebsiteCertificateAuthoritiesResponse,

    -- ** UpdateIdentityProviderConfiguration
    UpdateIdentityProviderConfiguration (UpdateIdentityProviderConfiguration'),
    newUpdateIdentityProviderConfiguration,
    UpdateIdentityProviderConfigurationResponse (UpdateIdentityProviderConfigurationResponse'),
    newUpdateIdentityProviderConfigurationResponse,

    -- ** DescribeFleetMetadata
    DescribeFleetMetadata (DescribeFleetMetadata'),
    newDescribeFleetMetadata,
    DescribeFleetMetadataResponse (DescribeFleetMetadataResponse'),
    newDescribeFleetMetadataResponse,

    -- ** UpdateDevicePolicyConfiguration
    UpdateDevicePolicyConfiguration (UpdateDevicePolicyConfiguration'),
    newUpdateDevicePolicyConfiguration,
    UpdateDevicePolicyConfigurationResponse (UpdateDevicePolicyConfigurationResponse'),
    newUpdateDevicePolicyConfigurationResponse,

    -- ** DescribeCompanyNetworkConfiguration
    DescribeCompanyNetworkConfiguration (DescribeCompanyNetworkConfiguration'),
    newDescribeCompanyNetworkConfiguration,
    DescribeCompanyNetworkConfigurationResponse (DescribeCompanyNetworkConfigurationResponse'),
    newDescribeCompanyNetworkConfigurationResponse,

    -- ** DescribeAuditStreamConfiguration
    DescribeAuditStreamConfiguration (DescribeAuditStreamConfiguration'),
    newDescribeAuditStreamConfiguration,
    DescribeAuditStreamConfigurationResponse (DescribeAuditStreamConfigurationResponse'),
    newDescribeAuditStreamConfigurationResponse,

    -- ** RevokeDomainAccess
    RevokeDomainAccess (RevokeDomainAccess'),
    newRevokeDomainAccess,
    RevokeDomainAccessResponse (RevokeDomainAccessResponse'),
    newRevokeDomainAccessResponse,

    -- ** ListFleets
    ListFleets (ListFleets'),
    newListFleets,
    ListFleetsResponse (ListFleetsResponse'),
    newListFleetsResponse,

    -- ** UpdateFleetMetadata
    UpdateFleetMetadata (UpdateFleetMetadata'),
    newUpdateFleetMetadata,
    UpdateFleetMetadataResponse (UpdateFleetMetadataResponse'),
    newUpdateFleetMetadataResponse,

    -- ** DescribeIdentityProviderConfiguration
    DescribeIdentityProviderConfiguration (DescribeIdentityProviderConfiguration'),
    newDescribeIdentityProviderConfiguration,
    DescribeIdentityProviderConfigurationResponse (DescribeIdentityProviderConfigurationResponse'),
    newDescribeIdentityProviderConfigurationResponse,

    -- ** CreateFleet
    CreateFleet (CreateFleet'),
    newCreateFleet,
    CreateFleetResponse (CreateFleetResponse'),
    newCreateFleetResponse,

    -- ** DescribeWebsiteCertificateAuthority
    DescribeWebsiteCertificateAuthority (DescribeWebsiteCertificateAuthority'),
    newDescribeWebsiteCertificateAuthority,
    DescribeWebsiteCertificateAuthorityResponse (DescribeWebsiteCertificateAuthorityResponse'),
    newDescribeWebsiteCertificateAuthorityResponse,

    -- ** DescribeDomain
    DescribeDomain (DescribeDomain'),
    newDescribeDomain,
    DescribeDomainResponse (DescribeDomainResponse'),
    newDescribeDomainResponse,

    -- ** DisassociateWebsiteCertificateAuthority
    DisassociateWebsiteCertificateAuthority (DisassociateWebsiteCertificateAuthority'),
    newDisassociateWebsiteCertificateAuthority,
    DisassociateWebsiteCertificateAuthorityResponse (DisassociateWebsiteCertificateAuthorityResponse'),
    newDisassociateWebsiteCertificateAuthorityResponse,

    -- ** DescribeDevice
    DescribeDevice (DescribeDevice'),
    newDescribeDevice,
    DescribeDeviceResponse (DescribeDeviceResponse'),
    newDescribeDeviceResponse,

    -- ** UpdateAuditStreamConfiguration
    UpdateAuditStreamConfiguration (UpdateAuditStreamConfiguration'),
    newUpdateAuditStreamConfiguration,
    UpdateAuditStreamConfigurationResponse (UpdateAuditStreamConfigurationResponse'),
    newUpdateAuditStreamConfigurationResponse,

    -- ** UpdateCompanyNetworkConfiguration
    UpdateCompanyNetworkConfiguration (UpdateCompanyNetworkConfiguration'),
    newUpdateCompanyNetworkConfiguration,
    UpdateCompanyNetworkConfigurationResponse (UpdateCompanyNetworkConfigurationResponse'),
    newUpdateCompanyNetworkConfigurationResponse,

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

    -- ** AssociateWebsiteCertificateAuthority
    AssociateWebsiteCertificateAuthority (AssociateWebsiteCertificateAuthority'),
    newAssociateWebsiteCertificateAuthority,
    AssociateWebsiteCertificateAuthorityResponse (AssociateWebsiteCertificateAuthorityResponse'),
    newAssociateWebsiteCertificateAuthorityResponse,

    -- ** ListDomains
    ListDomains (ListDomains'),
    newListDomains,
    ListDomainsResponse (ListDomainsResponse'),
    newListDomainsResponse,

    -- ** ListDevices
    ListDevices (ListDevices'),
    newListDevices,
    ListDevicesResponse (ListDevicesResponse'),
    newListDevicesResponse,

    -- * Types

    -- ** AuthorizationProviderType
    AuthorizationProviderType (..),

    -- ** DeviceStatus
    DeviceStatus (..),

    -- ** DomainStatus
    DomainStatus (..),

    -- ** FleetStatus
    FleetStatus (..),

    -- ** IdentityProviderType
    IdentityProviderType (..),

    -- ** DeviceSummary
    DeviceSummary (DeviceSummary'),
    newDeviceSummary,

    -- ** DomainSummary
    DomainSummary (DomainSummary'),
    newDomainSummary,

    -- ** FleetSummary
    FleetSummary (FleetSummary'),
    newFleetSummary,

    -- ** WebsiteAuthorizationProviderSummary
    WebsiteAuthorizationProviderSummary (WebsiteAuthorizationProviderSummary'),
    newWebsiteAuthorizationProviderSummary,

    -- ** WebsiteCaSummary
    WebsiteCaSummary (WebsiteCaSummary'),
    newWebsiteCaSummary,
  )
where

import Network.AWS.WorkLink.AssociateDomain
import Network.AWS.WorkLink.AssociateWebsiteAuthorizationProvider
import Network.AWS.WorkLink.AssociateWebsiteCertificateAuthority
import Network.AWS.WorkLink.CreateFleet
import Network.AWS.WorkLink.DeleteFleet
import Network.AWS.WorkLink.DescribeAuditStreamConfiguration
import Network.AWS.WorkLink.DescribeCompanyNetworkConfiguration
import Network.AWS.WorkLink.DescribeDevice
import Network.AWS.WorkLink.DescribeDevicePolicyConfiguration
import Network.AWS.WorkLink.DescribeDomain
import Network.AWS.WorkLink.DescribeFleetMetadata
import Network.AWS.WorkLink.DescribeIdentityProviderConfiguration
import Network.AWS.WorkLink.DescribeWebsiteCertificateAuthority
import Network.AWS.WorkLink.DisassociateDomain
import Network.AWS.WorkLink.DisassociateWebsiteAuthorizationProvider
import Network.AWS.WorkLink.DisassociateWebsiteCertificateAuthority
import Network.AWS.WorkLink.Lens
import Network.AWS.WorkLink.ListDevices
import Network.AWS.WorkLink.ListDomains
import Network.AWS.WorkLink.ListFleets
import Network.AWS.WorkLink.ListTagsForResource
import Network.AWS.WorkLink.ListWebsiteAuthorizationProviders
import Network.AWS.WorkLink.ListWebsiteCertificateAuthorities
import Network.AWS.WorkLink.RestoreDomainAccess
import Network.AWS.WorkLink.RevokeDomainAccess
import Network.AWS.WorkLink.SignOutUser
import Network.AWS.WorkLink.TagResource
import Network.AWS.WorkLink.Types
import Network.AWS.WorkLink.UntagResource
import Network.AWS.WorkLink.UpdateAuditStreamConfiguration
import Network.AWS.WorkLink.UpdateCompanyNetworkConfiguration
import Network.AWS.WorkLink.UpdateDevicePolicyConfiguration
import Network.AWS.WorkLink.UpdateDomainMetadata
import Network.AWS.WorkLink.UpdateFleetMetadata
import Network.AWS.WorkLink.UpdateIdentityProviderConfiguration
import Network.AWS.WorkLink.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'WorkLink'.

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
