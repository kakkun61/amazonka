{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.AWS.AppMesh
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2019-01-25@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- App Mesh is a service mesh based on the Envoy proxy that makes it easy
-- to monitor and control microservices. App Mesh standardizes how your
-- microservices communicate, giving you end-to-end visibility and helping
-- to ensure high availability for your applications.
--
-- App Mesh gives you consistent visibility and network traffic controls
-- for every microservice in an application. You can use App Mesh with
-- Amazon Web Services Fargate, Amazon ECS, Amazon EKS, Kubernetes on
-- Amazon Web Services, and Amazon EC2.
--
-- App Mesh supports microservice applications that use service discovery
-- naming for their components. For more information about service
-- discovery on Amazon ECS, see
-- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html Service Discovery>
-- in the /Amazon Elastic Container Service Developer Guide/. Kubernetes
-- @kube-dns@ and @coredns@ are supported. For more information, see
-- <https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/ DNS for Services and Pods>
-- in the Kubernetes documentation.
module Network.AWS.AppMesh
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** TooManyTagsException
    _TooManyTagsException,

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

    -- ** BadRequestException
    _BadRequestException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** ResourceInUseException
    _ResourceInUseException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** DescribeVirtualNode
    DescribeVirtualNode (DescribeVirtualNode'),
    newDescribeVirtualNode,
    DescribeVirtualNodeResponse (DescribeVirtualNodeResponse'),
    newDescribeVirtualNodeResponse,

    -- ** DescribeVirtualGateway
    DescribeVirtualGateway (DescribeVirtualGateway'),
    newDescribeVirtualGateway,
    DescribeVirtualGatewayResponse (DescribeVirtualGatewayResponse'),
    newDescribeVirtualGatewayResponse,

    -- ** DescribeRoute
    DescribeRoute (DescribeRoute'),
    newDescribeRoute,
    DescribeRouteResponse (DescribeRouteResponse'),
    newDescribeRouteResponse,

    -- ** DescribeVirtualRouter
    DescribeVirtualRouter (DescribeVirtualRouter'),
    newDescribeVirtualRouter,
    DescribeVirtualRouterResponse (DescribeVirtualRouterResponse'),
    newDescribeVirtualRouterResponse,

    -- ** ListMeshes (Paginated)
    ListMeshes (ListMeshes'),
    newListMeshes,
    ListMeshesResponse (ListMeshesResponse'),
    newListMeshesResponse,

    -- ** CreateMesh
    CreateMesh (CreateMesh'),
    newCreateMesh,
    CreateMeshResponse (CreateMeshResponse'),
    newCreateMeshResponse,

    -- ** UpdateMesh
    UpdateMesh (UpdateMesh'),
    newUpdateMesh,
    UpdateMeshResponse (UpdateMeshResponse'),
    newUpdateMeshResponse,

    -- ** DeleteMesh
    DeleteMesh (DeleteMesh'),
    newDeleteMesh,
    DeleteMeshResponse (DeleteMeshResponse'),
    newDeleteMeshResponse,

    -- ** ListTagsForResource (Paginated)
    ListTagsForResource (ListTagsForResource'),
    newListTagsForResource,
    ListTagsForResourceResponse (ListTagsForResourceResponse'),
    newListTagsForResourceResponse,

    -- ** CreateVirtualGateway
    CreateVirtualGateway (CreateVirtualGateway'),
    newCreateVirtualGateway,
    CreateVirtualGatewayResponse (CreateVirtualGatewayResponse'),
    newCreateVirtualGatewayResponse,

    -- ** ListVirtualServices (Paginated)
    ListVirtualServices (ListVirtualServices'),
    newListVirtualServices,
    ListVirtualServicesResponse (ListVirtualServicesResponse'),
    newListVirtualServicesResponse,

    -- ** DeleteVirtualService
    DeleteVirtualService (DeleteVirtualService'),
    newDeleteVirtualService,
    DeleteVirtualServiceResponse (DeleteVirtualServiceResponse'),
    newDeleteVirtualServiceResponse,

    -- ** UpdateVirtualService
    UpdateVirtualService (UpdateVirtualService'),
    newUpdateVirtualService,
    UpdateVirtualServiceResponse (UpdateVirtualServiceResponse'),
    newUpdateVirtualServiceResponse,

    -- ** UpdateVirtualGateway
    UpdateVirtualGateway (UpdateVirtualGateway'),
    newUpdateVirtualGateway,
    UpdateVirtualGatewayResponse (UpdateVirtualGatewayResponse'),
    newUpdateVirtualGatewayResponse,

    -- ** DeleteVirtualGateway
    DeleteVirtualGateway (DeleteVirtualGateway'),
    newDeleteVirtualGateway,
    DeleteVirtualGatewayResponse (DeleteVirtualGatewayResponse'),
    newDeleteVirtualGatewayResponse,

    -- ** DeleteRoute
    DeleteRoute (DeleteRoute'),
    newDeleteRoute,
    DeleteRouteResponse (DeleteRouteResponse'),
    newDeleteRouteResponse,

    -- ** UpdateRoute
    UpdateRoute (UpdateRoute'),
    newUpdateRoute,
    UpdateRouteResponse (UpdateRouteResponse'),
    newUpdateRouteResponse,

    -- ** CreateVirtualService
    CreateVirtualService (CreateVirtualService'),
    newCreateVirtualService,
    CreateVirtualServiceResponse (CreateVirtualServiceResponse'),
    newCreateVirtualServiceResponse,

    -- ** DeleteVirtualNode
    DeleteVirtualNode (DeleteVirtualNode'),
    newDeleteVirtualNode,
    DeleteVirtualNodeResponse (DeleteVirtualNodeResponse'),
    newDeleteVirtualNodeResponse,

    -- ** UpdateVirtualNode
    UpdateVirtualNode (UpdateVirtualNode'),
    newUpdateVirtualNode,
    UpdateVirtualNodeResponse (UpdateVirtualNodeResponse'),
    newUpdateVirtualNodeResponse,

    -- ** ListGatewayRoutes (Paginated)
    ListGatewayRoutes (ListGatewayRoutes'),
    newListGatewayRoutes,
    ListGatewayRoutesResponse (ListGatewayRoutesResponse'),
    newListGatewayRoutesResponse,

    -- ** ListRoutes (Paginated)
    ListRoutes (ListRoutes'),
    newListRoutes,
    ListRoutesResponse (ListRoutesResponse'),
    newListRoutesResponse,

    -- ** ListVirtualNodes (Paginated)
    ListVirtualNodes (ListVirtualNodes'),
    newListVirtualNodes,
    ListVirtualNodesResponse (ListVirtualNodesResponse'),
    newListVirtualNodesResponse,

    -- ** DeleteVirtualRouter
    DeleteVirtualRouter (DeleteVirtualRouter'),
    newDeleteVirtualRouter,
    DeleteVirtualRouterResponse (DeleteVirtualRouterResponse'),
    newDeleteVirtualRouterResponse,

    -- ** UpdateVirtualRouter
    UpdateVirtualRouter (UpdateVirtualRouter'),
    newUpdateVirtualRouter,
    UpdateVirtualRouterResponse (UpdateVirtualRouterResponse'),
    newUpdateVirtualRouterResponse,

    -- ** CreateVirtualRouter
    CreateVirtualRouter (CreateVirtualRouter'),
    newCreateVirtualRouter,
    CreateVirtualRouterResponse (CreateVirtualRouterResponse'),
    newCreateVirtualRouterResponse,

    -- ** DescribeVirtualService
    DescribeVirtualService (DescribeVirtualService'),
    newDescribeVirtualService,
    DescribeVirtualServiceResponse (DescribeVirtualServiceResponse'),
    newDescribeVirtualServiceResponse,

    -- ** DescribeGatewayRoute
    DescribeGatewayRoute (DescribeGatewayRoute'),
    newDescribeGatewayRoute,
    DescribeGatewayRouteResponse (DescribeGatewayRouteResponse'),
    newDescribeGatewayRouteResponse,

    -- ** CreateRoute
    CreateRoute (CreateRoute'),
    newCreateRoute,
    CreateRouteResponse (CreateRouteResponse'),
    newCreateRouteResponse,

    -- ** CreateVirtualNode
    CreateVirtualNode (CreateVirtualNode'),
    newCreateVirtualNode,
    CreateVirtualNodeResponse (CreateVirtualNodeResponse'),
    newCreateVirtualNodeResponse,

    -- ** CreateGatewayRoute
    CreateGatewayRoute (CreateGatewayRoute'),
    newCreateGatewayRoute,
    CreateGatewayRouteResponse (CreateGatewayRouteResponse'),
    newCreateGatewayRouteResponse,

    -- ** UpdateGatewayRoute
    UpdateGatewayRoute (UpdateGatewayRoute'),
    newUpdateGatewayRoute,
    UpdateGatewayRouteResponse (UpdateGatewayRouteResponse'),
    newUpdateGatewayRouteResponse,

    -- ** DeleteGatewayRoute
    DeleteGatewayRoute (DeleteGatewayRoute'),
    newDeleteGatewayRoute,
    DeleteGatewayRouteResponse (DeleteGatewayRouteResponse'),
    newDeleteGatewayRouteResponse,

    -- ** TagResource
    TagResource (TagResource'),
    newTagResource,
    TagResourceResponse (TagResourceResponse'),
    newTagResourceResponse,

    -- ** ListVirtualGateways (Paginated)
    ListVirtualGateways (ListVirtualGateways'),
    newListVirtualGateways,
    ListVirtualGatewaysResponse (ListVirtualGatewaysResponse'),
    newListVirtualGatewaysResponse,

    -- ** ListVirtualRouters (Paginated)
    ListVirtualRouters (ListVirtualRouters'),
    newListVirtualRouters,
    ListVirtualRoutersResponse (ListVirtualRoutersResponse'),
    newListVirtualRoutersResponse,

    -- ** UntagResource
    UntagResource (UntagResource'),
    newUntagResource,
    UntagResourceResponse (UntagResourceResponse'),
    newUntagResourceResponse,

    -- ** DescribeMesh
    DescribeMesh (DescribeMesh'),
    newDescribeMesh,
    DescribeMeshResponse (DescribeMeshResponse'),
    newDescribeMeshResponse,

    -- * Types

    -- ** DefaultGatewayRouteRewrite
    DefaultGatewayRouteRewrite (..),

    -- ** DnsResponseType
    DnsResponseType (..),

    -- ** DurationUnit
    DurationUnit (..),

    -- ** EgressFilterType
    EgressFilterType (..),

    -- ** GatewayRouteStatusCode
    GatewayRouteStatusCode (..),

    -- ** GrpcRetryPolicyEvent
    GrpcRetryPolicyEvent (..),

    -- ** HttpMethod
    HttpMethod (..),

    -- ** HttpScheme
    HttpScheme (..),

    -- ** ListenerTlsMode
    ListenerTlsMode (..),

    -- ** MeshStatusCode
    MeshStatusCode (..),

    -- ** PortProtocol
    PortProtocol (..),

    -- ** RouteStatusCode
    RouteStatusCode (..),

    -- ** TcpRetryPolicyEvent
    TcpRetryPolicyEvent (..),

    -- ** VirtualGatewayListenerTlsMode
    VirtualGatewayListenerTlsMode (..),

    -- ** VirtualGatewayPortProtocol
    VirtualGatewayPortProtocol (..),

    -- ** VirtualGatewayStatusCode
    VirtualGatewayStatusCode (..),

    -- ** VirtualNodeStatusCode
    VirtualNodeStatusCode (..),

    -- ** VirtualRouterStatusCode
    VirtualRouterStatusCode (..),

    -- ** VirtualServiceStatusCode
    VirtualServiceStatusCode (..),

    -- ** AccessLog
    AccessLog (AccessLog'),
    newAccessLog,

    -- ** AwsCloudMapInstanceAttribute
    AwsCloudMapInstanceAttribute (AwsCloudMapInstanceAttribute'),
    newAwsCloudMapInstanceAttribute,

    -- ** AwsCloudMapServiceDiscovery
    AwsCloudMapServiceDiscovery (AwsCloudMapServiceDiscovery'),
    newAwsCloudMapServiceDiscovery,

    -- ** Backend
    Backend (Backend'),
    newBackend,

    -- ** BackendDefaults
    BackendDefaults (BackendDefaults'),
    newBackendDefaults,

    -- ** ClientPolicy
    ClientPolicy (ClientPolicy'),
    newClientPolicy,

    -- ** ClientPolicyTls
    ClientPolicyTls (ClientPolicyTls'),
    newClientPolicyTls,

    -- ** ClientTlsCertificate
    ClientTlsCertificate (ClientTlsCertificate'),
    newClientTlsCertificate,

    -- ** DnsServiceDiscovery
    DnsServiceDiscovery (DnsServiceDiscovery'),
    newDnsServiceDiscovery,

    -- ** Duration
    Duration (Duration'),
    newDuration,

    -- ** EgressFilter
    EgressFilter (EgressFilter'),
    newEgressFilter,

    -- ** FileAccessLog
    FileAccessLog (FileAccessLog'),
    newFileAccessLog,

    -- ** GatewayRouteData
    GatewayRouteData (GatewayRouteData'),
    newGatewayRouteData,

    -- ** GatewayRouteHostnameMatch
    GatewayRouteHostnameMatch (GatewayRouteHostnameMatch'),
    newGatewayRouteHostnameMatch,

    -- ** GatewayRouteHostnameRewrite
    GatewayRouteHostnameRewrite (GatewayRouteHostnameRewrite'),
    newGatewayRouteHostnameRewrite,

    -- ** GatewayRouteRef
    GatewayRouteRef (GatewayRouteRef'),
    newGatewayRouteRef,

    -- ** GatewayRouteSpec
    GatewayRouteSpec (GatewayRouteSpec'),
    newGatewayRouteSpec,

    -- ** GatewayRouteStatus
    GatewayRouteStatus (GatewayRouteStatus'),
    newGatewayRouteStatus,

    -- ** GatewayRouteTarget
    GatewayRouteTarget (GatewayRouteTarget'),
    newGatewayRouteTarget,

    -- ** GatewayRouteVirtualService
    GatewayRouteVirtualService (GatewayRouteVirtualService'),
    newGatewayRouteVirtualService,

    -- ** GrpcGatewayRoute
    GrpcGatewayRoute (GrpcGatewayRoute'),
    newGrpcGatewayRoute,

    -- ** GrpcGatewayRouteAction
    GrpcGatewayRouteAction (GrpcGatewayRouteAction'),
    newGrpcGatewayRouteAction,

    -- ** GrpcGatewayRouteMatch
    GrpcGatewayRouteMatch (GrpcGatewayRouteMatch'),
    newGrpcGatewayRouteMatch,

    -- ** GrpcGatewayRouteMetadata
    GrpcGatewayRouteMetadata (GrpcGatewayRouteMetadata'),
    newGrpcGatewayRouteMetadata,

    -- ** GrpcGatewayRouteRewrite
    GrpcGatewayRouteRewrite (GrpcGatewayRouteRewrite'),
    newGrpcGatewayRouteRewrite,

    -- ** GrpcMetadataMatchMethod
    GrpcMetadataMatchMethod (GrpcMetadataMatchMethod'),
    newGrpcMetadataMatchMethod,

    -- ** GrpcRetryPolicy
    GrpcRetryPolicy (GrpcRetryPolicy'),
    newGrpcRetryPolicy,

    -- ** GrpcRoute
    GrpcRoute (GrpcRoute'),
    newGrpcRoute,

    -- ** GrpcRouteAction
    GrpcRouteAction (GrpcRouteAction'),
    newGrpcRouteAction,

    -- ** GrpcRouteMatch
    GrpcRouteMatch (GrpcRouteMatch'),
    newGrpcRouteMatch,

    -- ** GrpcRouteMetadata
    GrpcRouteMetadata (GrpcRouteMetadata'),
    newGrpcRouteMetadata,

    -- ** GrpcRouteMetadataMatchMethod
    GrpcRouteMetadataMatchMethod (GrpcRouteMetadataMatchMethod'),
    newGrpcRouteMetadataMatchMethod,

    -- ** GrpcTimeout
    GrpcTimeout (GrpcTimeout'),
    newGrpcTimeout,

    -- ** HeaderMatchMethod
    HeaderMatchMethod (HeaderMatchMethod'),
    newHeaderMatchMethod,

    -- ** HealthCheckPolicy
    HealthCheckPolicy (HealthCheckPolicy'),
    newHealthCheckPolicy,

    -- ** HttpGatewayRoute
    HttpGatewayRoute (HttpGatewayRoute'),
    newHttpGatewayRoute,

    -- ** HttpGatewayRouteAction
    HttpGatewayRouteAction (HttpGatewayRouteAction'),
    newHttpGatewayRouteAction,

    -- ** HttpGatewayRouteHeader
    HttpGatewayRouteHeader (HttpGatewayRouteHeader'),
    newHttpGatewayRouteHeader,

    -- ** HttpGatewayRouteMatch
    HttpGatewayRouteMatch (HttpGatewayRouteMatch'),
    newHttpGatewayRouteMatch,

    -- ** HttpGatewayRoutePathRewrite
    HttpGatewayRoutePathRewrite (HttpGatewayRoutePathRewrite'),
    newHttpGatewayRoutePathRewrite,

    -- ** HttpGatewayRoutePrefixRewrite
    HttpGatewayRoutePrefixRewrite (HttpGatewayRoutePrefixRewrite'),
    newHttpGatewayRoutePrefixRewrite,

    -- ** HttpGatewayRouteRewrite
    HttpGatewayRouteRewrite (HttpGatewayRouteRewrite'),
    newHttpGatewayRouteRewrite,

    -- ** HttpPathMatch
    HttpPathMatch (HttpPathMatch'),
    newHttpPathMatch,

    -- ** HttpQueryParameter
    HttpQueryParameter (HttpQueryParameter'),
    newHttpQueryParameter,

    -- ** HttpRetryPolicy
    HttpRetryPolicy (HttpRetryPolicy'),
    newHttpRetryPolicy,

    -- ** HttpRoute
    HttpRoute (HttpRoute'),
    newHttpRoute,

    -- ** HttpRouteAction
    HttpRouteAction (HttpRouteAction'),
    newHttpRouteAction,

    -- ** HttpRouteHeader
    HttpRouteHeader (HttpRouteHeader'),
    newHttpRouteHeader,

    -- ** HttpRouteMatch
    HttpRouteMatch (HttpRouteMatch'),
    newHttpRouteMatch,

    -- ** HttpTimeout
    HttpTimeout (HttpTimeout'),
    newHttpTimeout,

    -- ** Listener
    Listener (Listener'),
    newListener,

    -- ** ListenerTimeout
    ListenerTimeout (ListenerTimeout'),
    newListenerTimeout,

    -- ** ListenerTls
    ListenerTls (ListenerTls'),
    newListenerTls,

    -- ** ListenerTlsAcmCertificate
    ListenerTlsAcmCertificate (ListenerTlsAcmCertificate'),
    newListenerTlsAcmCertificate,

    -- ** ListenerTlsCertificate
    ListenerTlsCertificate (ListenerTlsCertificate'),
    newListenerTlsCertificate,

    -- ** ListenerTlsFileCertificate
    ListenerTlsFileCertificate (ListenerTlsFileCertificate'),
    newListenerTlsFileCertificate,

    -- ** ListenerTlsSdsCertificate
    ListenerTlsSdsCertificate (ListenerTlsSdsCertificate'),
    newListenerTlsSdsCertificate,

    -- ** ListenerTlsValidationContext
    ListenerTlsValidationContext (ListenerTlsValidationContext'),
    newListenerTlsValidationContext,

    -- ** ListenerTlsValidationContextTrust
    ListenerTlsValidationContextTrust (ListenerTlsValidationContextTrust'),
    newListenerTlsValidationContextTrust,

    -- ** Logging
    Logging (Logging'),
    newLogging,

    -- ** MatchRange
    MatchRange (MatchRange'),
    newMatchRange,

    -- ** MeshData
    MeshData (MeshData'),
    newMeshData,

    -- ** MeshRef
    MeshRef (MeshRef'),
    newMeshRef,

    -- ** MeshSpec
    MeshSpec (MeshSpec'),
    newMeshSpec,

    -- ** MeshStatus
    MeshStatus (MeshStatus'),
    newMeshStatus,

    -- ** OutlierDetection
    OutlierDetection (OutlierDetection'),
    newOutlierDetection,

    -- ** PortMapping
    PortMapping (PortMapping'),
    newPortMapping,

    -- ** QueryParameterMatch
    QueryParameterMatch (QueryParameterMatch'),
    newQueryParameterMatch,

    -- ** ResourceMetadata
    ResourceMetadata (ResourceMetadata'),
    newResourceMetadata,

    -- ** RouteData
    RouteData (RouteData'),
    newRouteData,

    -- ** RouteRef
    RouteRef (RouteRef'),
    newRouteRef,

    -- ** RouteSpec
    RouteSpec (RouteSpec'),
    newRouteSpec,

    -- ** RouteStatus
    RouteStatus (RouteStatus'),
    newRouteStatus,

    -- ** ServiceDiscovery
    ServiceDiscovery (ServiceDiscovery'),
    newServiceDiscovery,

    -- ** SubjectAlternativeNameMatchers
    SubjectAlternativeNameMatchers (SubjectAlternativeNameMatchers'),
    newSubjectAlternativeNameMatchers,

    -- ** SubjectAlternativeNames
    SubjectAlternativeNames (SubjectAlternativeNames'),
    newSubjectAlternativeNames,

    -- ** TagRef
    TagRef (TagRef'),
    newTagRef,

    -- ** TcpRoute
    TcpRoute (TcpRoute'),
    newTcpRoute,

    -- ** TcpRouteAction
    TcpRouteAction (TcpRouteAction'),
    newTcpRouteAction,

    -- ** TcpTimeout
    TcpTimeout (TcpTimeout'),
    newTcpTimeout,

    -- ** TlsValidationContext
    TlsValidationContext (TlsValidationContext'),
    newTlsValidationContext,

    -- ** TlsValidationContextAcmTrust
    TlsValidationContextAcmTrust (TlsValidationContextAcmTrust'),
    newTlsValidationContextAcmTrust,

    -- ** TlsValidationContextFileTrust
    TlsValidationContextFileTrust (TlsValidationContextFileTrust'),
    newTlsValidationContextFileTrust,

    -- ** TlsValidationContextSdsTrust
    TlsValidationContextSdsTrust (TlsValidationContextSdsTrust'),
    newTlsValidationContextSdsTrust,

    -- ** TlsValidationContextTrust
    TlsValidationContextTrust (TlsValidationContextTrust'),
    newTlsValidationContextTrust,

    -- ** VirtualGatewayAccessLog
    VirtualGatewayAccessLog (VirtualGatewayAccessLog'),
    newVirtualGatewayAccessLog,

    -- ** VirtualGatewayBackendDefaults
    VirtualGatewayBackendDefaults (VirtualGatewayBackendDefaults'),
    newVirtualGatewayBackendDefaults,

    -- ** VirtualGatewayClientPolicy
    VirtualGatewayClientPolicy (VirtualGatewayClientPolicy'),
    newVirtualGatewayClientPolicy,

    -- ** VirtualGatewayClientPolicyTls
    VirtualGatewayClientPolicyTls (VirtualGatewayClientPolicyTls'),
    newVirtualGatewayClientPolicyTls,

    -- ** VirtualGatewayClientTlsCertificate
    VirtualGatewayClientTlsCertificate (VirtualGatewayClientTlsCertificate'),
    newVirtualGatewayClientTlsCertificate,

    -- ** VirtualGatewayConnectionPool
    VirtualGatewayConnectionPool (VirtualGatewayConnectionPool'),
    newVirtualGatewayConnectionPool,

    -- ** VirtualGatewayData
    VirtualGatewayData (VirtualGatewayData'),
    newVirtualGatewayData,

    -- ** VirtualGatewayFileAccessLog
    VirtualGatewayFileAccessLog (VirtualGatewayFileAccessLog'),
    newVirtualGatewayFileAccessLog,

    -- ** VirtualGatewayGrpcConnectionPool
    VirtualGatewayGrpcConnectionPool (VirtualGatewayGrpcConnectionPool'),
    newVirtualGatewayGrpcConnectionPool,

    -- ** VirtualGatewayHealthCheckPolicy
    VirtualGatewayHealthCheckPolicy (VirtualGatewayHealthCheckPolicy'),
    newVirtualGatewayHealthCheckPolicy,

    -- ** VirtualGatewayHttp2ConnectionPool
    VirtualGatewayHttp2ConnectionPool (VirtualGatewayHttp2ConnectionPool'),
    newVirtualGatewayHttp2ConnectionPool,

    -- ** VirtualGatewayHttpConnectionPool
    VirtualGatewayHttpConnectionPool (VirtualGatewayHttpConnectionPool'),
    newVirtualGatewayHttpConnectionPool,

    -- ** VirtualGatewayListener
    VirtualGatewayListener (VirtualGatewayListener'),
    newVirtualGatewayListener,

    -- ** VirtualGatewayListenerTls
    VirtualGatewayListenerTls (VirtualGatewayListenerTls'),
    newVirtualGatewayListenerTls,

    -- ** VirtualGatewayListenerTlsAcmCertificate
    VirtualGatewayListenerTlsAcmCertificate (VirtualGatewayListenerTlsAcmCertificate'),
    newVirtualGatewayListenerTlsAcmCertificate,

    -- ** VirtualGatewayListenerTlsCertificate
    VirtualGatewayListenerTlsCertificate (VirtualGatewayListenerTlsCertificate'),
    newVirtualGatewayListenerTlsCertificate,

    -- ** VirtualGatewayListenerTlsFileCertificate
    VirtualGatewayListenerTlsFileCertificate (VirtualGatewayListenerTlsFileCertificate'),
    newVirtualGatewayListenerTlsFileCertificate,

    -- ** VirtualGatewayListenerTlsSdsCertificate
    VirtualGatewayListenerTlsSdsCertificate (VirtualGatewayListenerTlsSdsCertificate'),
    newVirtualGatewayListenerTlsSdsCertificate,

    -- ** VirtualGatewayListenerTlsValidationContext
    VirtualGatewayListenerTlsValidationContext (VirtualGatewayListenerTlsValidationContext'),
    newVirtualGatewayListenerTlsValidationContext,

    -- ** VirtualGatewayListenerTlsValidationContextTrust
    VirtualGatewayListenerTlsValidationContextTrust (VirtualGatewayListenerTlsValidationContextTrust'),
    newVirtualGatewayListenerTlsValidationContextTrust,

    -- ** VirtualGatewayLogging
    VirtualGatewayLogging (VirtualGatewayLogging'),
    newVirtualGatewayLogging,

    -- ** VirtualGatewayPortMapping
    VirtualGatewayPortMapping (VirtualGatewayPortMapping'),
    newVirtualGatewayPortMapping,

    -- ** VirtualGatewayRef
    VirtualGatewayRef (VirtualGatewayRef'),
    newVirtualGatewayRef,

    -- ** VirtualGatewaySpec
    VirtualGatewaySpec (VirtualGatewaySpec'),
    newVirtualGatewaySpec,

    -- ** VirtualGatewayStatus
    VirtualGatewayStatus (VirtualGatewayStatus'),
    newVirtualGatewayStatus,

    -- ** VirtualGatewayTlsValidationContext
    VirtualGatewayTlsValidationContext (VirtualGatewayTlsValidationContext'),
    newVirtualGatewayTlsValidationContext,

    -- ** VirtualGatewayTlsValidationContextAcmTrust
    VirtualGatewayTlsValidationContextAcmTrust (VirtualGatewayTlsValidationContextAcmTrust'),
    newVirtualGatewayTlsValidationContextAcmTrust,

    -- ** VirtualGatewayTlsValidationContextFileTrust
    VirtualGatewayTlsValidationContextFileTrust (VirtualGatewayTlsValidationContextFileTrust'),
    newVirtualGatewayTlsValidationContextFileTrust,

    -- ** VirtualGatewayTlsValidationContextSdsTrust
    VirtualGatewayTlsValidationContextSdsTrust (VirtualGatewayTlsValidationContextSdsTrust'),
    newVirtualGatewayTlsValidationContextSdsTrust,

    -- ** VirtualGatewayTlsValidationContextTrust
    VirtualGatewayTlsValidationContextTrust (VirtualGatewayTlsValidationContextTrust'),
    newVirtualGatewayTlsValidationContextTrust,

    -- ** VirtualNodeConnectionPool
    VirtualNodeConnectionPool (VirtualNodeConnectionPool'),
    newVirtualNodeConnectionPool,

    -- ** VirtualNodeData
    VirtualNodeData (VirtualNodeData'),
    newVirtualNodeData,

    -- ** VirtualNodeGrpcConnectionPool
    VirtualNodeGrpcConnectionPool (VirtualNodeGrpcConnectionPool'),
    newVirtualNodeGrpcConnectionPool,

    -- ** VirtualNodeHttp2ConnectionPool
    VirtualNodeHttp2ConnectionPool (VirtualNodeHttp2ConnectionPool'),
    newVirtualNodeHttp2ConnectionPool,

    -- ** VirtualNodeHttpConnectionPool
    VirtualNodeHttpConnectionPool (VirtualNodeHttpConnectionPool'),
    newVirtualNodeHttpConnectionPool,

    -- ** VirtualNodeRef
    VirtualNodeRef (VirtualNodeRef'),
    newVirtualNodeRef,

    -- ** VirtualNodeServiceProvider
    VirtualNodeServiceProvider (VirtualNodeServiceProvider'),
    newVirtualNodeServiceProvider,

    -- ** VirtualNodeSpec
    VirtualNodeSpec (VirtualNodeSpec'),
    newVirtualNodeSpec,

    -- ** VirtualNodeStatus
    VirtualNodeStatus (VirtualNodeStatus'),
    newVirtualNodeStatus,

    -- ** VirtualNodeTcpConnectionPool
    VirtualNodeTcpConnectionPool (VirtualNodeTcpConnectionPool'),
    newVirtualNodeTcpConnectionPool,

    -- ** VirtualRouterData
    VirtualRouterData (VirtualRouterData'),
    newVirtualRouterData,

    -- ** VirtualRouterListener
    VirtualRouterListener (VirtualRouterListener'),
    newVirtualRouterListener,

    -- ** VirtualRouterRef
    VirtualRouterRef (VirtualRouterRef'),
    newVirtualRouterRef,

    -- ** VirtualRouterServiceProvider
    VirtualRouterServiceProvider (VirtualRouterServiceProvider'),
    newVirtualRouterServiceProvider,

    -- ** VirtualRouterSpec
    VirtualRouterSpec (VirtualRouterSpec'),
    newVirtualRouterSpec,

    -- ** VirtualRouterStatus
    VirtualRouterStatus (VirtualRouterStatus'),
    newVirtualRouterStatus,

    -- ** VirtualServiceBackend
    VirtualServiceBackend (VirtualServiceBackend'),
    newVirtualServiceBackend,

    -- ** VirtualServiceData
    VirtualServiceData (VirtualServiceData'),
    newVirtualServiceData,

    -- ** VirtualServiceProvider
    VirtualServiceProvider (VirtualServiceProvider'),
    newVirtualServiceProvider,

    -- ** VirtualServiceRef
    VirtualServiceRef (VirtualServiceRef'),
    newVirtualServiceRef,

    -- ** VirtualServiceSpec
    VirtualServiceSpec (VirtualServiceSpec'),
    newVirtualServiceSpec,

    -- ** VirtualServiceStatus
    VirtualServiceStatus (VirtualServiceStatus'),
    newVirtualServiceStatus,

    -- ** WeightedTarget
    WeightedTarget (WeightedTarget'),
    newWeightedTarget,
  )
where

import Network.AWS.AppMesh.CreateGatewayRoute
import Network.AWS.AppMesh.CreateMesh
import Network.AWS.AppMesh.CreateRoute
import Network.AWS.AppMesh.CreateVirtualGateway
import Network.AWS.AppMesh.CreateVirtualNode
import Network.AWS.AppMesh.CreateVirtualRouter
import Network.AWS.AppMesh.CreateVirtualService
import Network.AWS.AppMesh.DeleteGatewayRoute
import Network.AWS.AppMesh.DeleteMesh
import Network.AWS.AppMesh.DeleteRoute
import Network.AWS.AppMesh.DeleteVirtualGateway
import Network.AWS.AppMesh.DeleteVirtualNode
import Network.AWS.AppMesh.DeleteVirtualRouter
import Network.AWS.AppMesh.DeleteVirtualService
import Network.AWS.AppMesh.DescribeGatewayRoute
import Network.AWS.AppMesh.DescribeMesh
import Network.AWS.AppMesh.DescribeRoute
import Network.AWS.AppMesh.DescribeVirtualGateway
import Network.AWS.AppMesh.DescribeVirtualNode
import Network.AWS.AppMesh.DescribeVirtualRouter
import Network.AWS.AppMesh.DescribeVirtualService
import Network.AWS.AppMesh.Lens
import Network.AWS.AppMesh.ListGatewayRoutes
import Network.AWS.AppMesh.ListMeshes
import Network.AWS.AppMesh.ListRoutes
import Network.AWS.AppMesh.ListTagsForResource
import Network.AWS.AppMesh.ListVirtualGateways
import Network.AWS.AppMesh.ListVirtualNodes
import Network.AWS.AppMesh.ListVirtualRouters
import Network.AWS.AppMesh.ListVirtualServices
import Network.AWS.AppMesh.TagResource
import Network.AWS.AppMesh.Types
import Network.AWS.AppMesh.UntagResource
import Network.AWS.AppMesh.UpdateGatewayRoute
import Network.AWS.AppMesh.UpdateMesh
import Network.AWS.AppMesh.UpdateRoute
import Network.AWS.AppMesh.UpdateVirtualGateway
import Network.AWS.AppMesh.UpdateVirtualNode
import Network.AWS.AppMesh.UpdateVirtualRouter
import Network.AWS.AppMesh.UpdateVirtualService
import Network.AWS.AppMesh.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'AppMesh'.

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
