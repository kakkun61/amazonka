{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53Resolver.AssociateResolverEndpointIpAddress
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds IP addresses to an inbound or an outbound Resolver endpoint. If you
-- want to add more than one IP address, submit one
-- @AssociateResolverEndpointIpAddress@ request for each IP address.
--
-- To remove an IP address from an endpoint, see
-- <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverEndpointIpAddress.html DisassociateResolverEndpointIpAddress>.
module Network.AWS.Route53Resolver.AssociateResolverEndpointIpAddress
  ( -- * Creating a Request
    AssociateResolverEndpointIpAddress (..),
    newAssociateResolverEndpointIpAddress,

    -- * Request Lenses
    associateResolverEndpointIpAddress_resolverEndpointId,
    associateResolverEndpointIpAddress_ipAddress,

    -- * Destructuring the Response
    AssociateResolverEndpointIpAddressResponse (..),
    newAssociateResolverEndpointIpAddressResponse,

    -- * Response Lenses
    associateResolverEndpointIpAddressResponse_resolverEndpoint,
    associateResolverEndpointIpAddressResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Route53Resolver.Types

-- | /See:/ 'newAssociateResolverEndpointIpAddress' smart constructor.
data AssociateResolverEndpointIpAddress = AssociateResolverEndpointIpAddress'
  { -- | The ID of the Resolver endpoint that you want to associate IP addresses
    -- with.
    resolverEndpointId :: Prelude.Text,
    -- | Either the IPv4 address that you want to add to a Resolver endpoint or a
    -- subnet ID. If you specify a subnet ID, Resolver chooses an IP address
    -- for you from the available IPs in the specified subnet.
    ipAddress :: IpAddressUpdate
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssociateResolverEndpointIpAddress' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resolverEndpointId', 'associateResolverEndpointIpAddress_resolverEndpointId' - The ID of the Resolver endpoint that you want to associate IP addresses
-- with.
--
-- 'ipAddress', 'associateResolverEndpointIpAddress_ipAddress' - Either the IPv4 address that you want to add to a Resolver endpoint or a
-- subnet ID. If you specify a subnet ID, Resolver chooses an IP address
-- for you from the available IPs in the specified subnet.
newAssociateResolverEndpointIpAddress ::
  -- | 'resolverEndpointId'
  Prelude.Text ->
  -- | 'ipAddress'
  IpAddressUpdate ->
  AssociateResolverEndpointIpAddress
newAssociateResolverEndpointIpAddress
  pResolverEndpointId_
  pIpAddress_ =
    AssociateResolverEndpointIpAddress'
      { resolverEndpointId =
          pResolverEndpointId_,
        ipAddress = pIpAddress_
      }

-- | The ID of the Resolver endpoint that you want to associate IP addresses
-- with.
associateResolverEndpointIpAddress_resolverEndpointId :: Lens.Lens' AssociateResolverEndpointIpAddress Prelude.Text
associateResolverEndpointIpAddress_resolverEndpointId = Lens.lens (\AssociateResolverEndpointIpAddress' {resolverEndpointId} -> resolverEndpointId) (\s@AssociateResolverEndpointIpAddress' {} a -> s {resolverEndpointId = a} :: AssociateResolverEndpointIpAddress)

-- | Either the IPv4 address that you want to add to a Resolver endpoint or a
-- subnet ID. If you specify a subnet ID, Resolver chooses an IP address
-- for you from the available IPs in the specified subnet.
associateResolverEndpointIpAddress_ipAddress :: Lens.Lens' AssociateResolverEndpointIpAddress IpAddressUpdate
associateResolverEndpointIpAddress_ipAddress = Lens.lens (\AssociateResolverEndpointIpAddress' {ipAddress} -> ipAddress) (\s@AssociateResolverEndpointIpAddress' {} a -> s {ipAddress = a} :: AssociateResolverEndpointIpAddress)

instance
  Core.AWSRequest
    AssociateResolverEndpointIpAddress
  where
  type
    AWSResponse AssociateResolverEndpointIpAddress =
      AssociateResolverEndpointIpAddressResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          AssociateResolverEndpointIpAddressResponse'
            Prelude.<$> (x Core..?> "ResolverEndpoint")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    AssociateResolverEndpointIpAddress

instance
  Prelude.NFData
    AssociateResolverEndpointIpAddress

instance
  Core.ToHeaders
    AssociateResolverEndpointIpAddress
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Route53Resolver.AssociateResolverEndpointIpAddress" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    AssociateResolverEndpointIpAddress
  where
  toJSON AssociateResolverEndpointIpAddress' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("ResolverEndpointId" Core..= resolverEndpointId),
            Prelude.Just ("IpAddress" Core..= ipAddress)
          ]
      )

instance
  Core.ToPath
    AssociateResolverEndpointIpAddress
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    AssociateResolverEndpointIpAddress
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newAssociateResolverEndpointIpAddressResponse' smart constructor.
data AssociateResolverEndpointIpAddressResponse = AssociateResolverEndpointIpAddressResponse'
  { -- | The response to an @AssociateResolverEndpointIpAddress@ request.
    resolverEndpoint :: Prelude.Maybe ResolverEndpoint,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssociateResolverEndpointIpAddressResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resolverEndpoint', 'associateResolverEndpointIpAddressResponse_resolverEndpoint' - The response to an @AssociateResolverEndpointIpAddress@ request.
--
-- 'httpStatus', 'associateResolverEndpointIpAddressResponse_httpStatus' - The response's http status code.
newAssociateResolverEndpointIpAddressResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  AssociateResolverEndpointIpAddressResponse
newAssociateResolverEndpointIpAddressResponse
  pHttpStatus_ =
    AssociateResolverEndpointIpAddressResponse'
      { resolverEndpoint =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The response to an @AssociateResolverEndpointIpAddress@ request.
associateResolverEndpointIpAddressResponse_resolverEndpoint :: Lens.Lens' AssociateResolverEndpointIpAddressResponse (Prelude.Maybe ResolverEndpoint)
associateResolverEndpointIpAddressResponse_resolverEndpoint = Lens.lens (\AssociateResolverEndpointIpAddressResponse' {resolverEndpoint} -> resolverEndpoint) (\s@AssociateResolverEndpointIpAddressResponse' {} a -> s {resolverEndpoint = a} :: AssociateResolverEndpointIpAddressResponse)

-- | The response's http status code.
associateResolverEndpointIpAddressResponse_httpStatus :: Lens.Lens' AssociateResolverEndpointIpAddressResponse Prelude.Int
associateResolverEndpointIpAddressResponse_httpStatus = Lens.lens (\AssociateResolverEndpointIpAddressResponse' {httpStatus} -> httpStatus) (\s@AssociateResolverEndpointIpAddressResponse' {} a -> s {httpStatus = a} :: AssociateResolverEndpointIpAddressResponse)

instance
  Prelude.NFData
    AssociateResolverEndpointIpAddressResponse
