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
-- Module      : Network.AWS.Route53Resolver.DeleteResolverEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a Resolver endpoint. The effect of deleting a Resolver endpoint
-- depends on whether it\'s an inbound or an outbound Resolver endpoint:
--
-- -   __Inbound__: DNS queries from your network are no longer routed to
--     the DNS service for the specified VPC.
--
-- -   __Outbound__: DNS queries from a VPC are no longer routed to your
--     network.
module Network.AWS.Route53Resolver.DeleteResolverEndpoint
  ( -- * Creating a Request
    DeleteResolverEndpoint (..),
    newDeleteResolverEndpoint,

    -- * Request Lenses
    deleteResolverEndpoint_resolverEndpointId,

    -- * Destructuring the Response
    DeleteResolverEndpointResponse (..),
    newDeleteResolverEndpointResponse,

    -- * Response Lenses
    deleteResolverEndpointResponse_resolverEndpoint,
    deleteResolverEndpointResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Route53Resolver.Types

-- | /See:/ 'newDeleteResolverEndpoint' smart constructor.
data DeleteResolverEndpoint = DeleteResolverEndpoint'
  { -- | The ID of the Resolver endpoint that you want to delete.
    resolverEndpointId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteResolverEndpoint' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resolverEndpointId', 'deleteResolverEndpoint_resolverEndpointId' - The ID of the Resolver endpoint that you want to delete.
newDeleteResolverEndpoint ::
  -- | 'resolverEndpointId'
  Prelude.Text ->
  DeleteResolverEndpoint
newDeleteResolverEndpoint pResolverEndpointId_ =
  DeleteResolverEndpoint'
    { resolverEndpointId =
        pResolverEndpointId_
    }

-- | The ID of the Resolver endpoint that you want to delete.
deleteResolverEndpoint_resolverEndpointId :: Lens.Lens' DeleteResolverEndpoint Prelude.Text
deleteResolverEndpoint_resolverEndpointId = Lens.lens (\DeleteResolverEndpoint' {resolverEndpointId} -> resolverEndpointId) (\s@DeleteResolverEndpoint' {} a -> s {resolverEndpointId = a} :: DeleteResolverEndpoint)

instance Core.AWSRequest DeleteResolverEndpoint where
  type
    AWSResponse DeleteResolverEndpoint =
      DeleteResolverEndpointResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteResolverEndpointResponse'
            Prelude.<$> (x Core..?> "ResolverEndpoint")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteResolverEndpoint

instance Prelude.NFData DeleteResolverEndpoint

instance Core.ToHeaders DeleteResolverEndpoint where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Route53Resolver.DeleteResolverEndpoint" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteResolverEndpoint where
  toJSON DeleteResolverEndpoint' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("ResolverEndpointId" Core..= resolverEndpointId)
          ]
      )

instance Core.ToPath DeleteResolverEndpoint where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteResolverEndpoint where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteResolverEndpointResponse' smart constructor.
data DeleteResolverEndpointResponse = DeleteResolverEndpointResponse'
  { -- | Information about the @DeleteResolverEndpoint@ request, including the
    -- status of the request.
    resolverEndpoint :: Prelude.Maybe ResolverEndpoint,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteResolverEndpointResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resolverEndpoint', 'deleteResolverEndpointResponse_resolverEndpoint' - Information about the @DeleteResolverEndpoint@ request, including the
-- status of the request.
--
-- 'httpStatus', 'deleteResolverEndpointResponse_httpStatus' - The response's http status code.
newDeleteResolverEndpointResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteResolverEndpointResponse
newDeleteResolverEndpointResponse pHttpStatus_ =
  DeleteResolverEndpointResponse'
    { resolverEndpoint =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the @DeleteResolverEndpoint@ request, including the
-- status of the request.
deleteResolverEndpointResponse_resolverEndpoint :: Lens.Lens' DeleteResolverEndpointResponse (Prelude.Maybe ResolverEndpoint)
deleteResolverEndpointResponse_resolverEndpoint = Lens.lens (\DeleteResolverEndpointResponse' {resolverEndpoint} -> resolverEndpoint) (\s@DeleteResolverEndpointResponse' {} a -> s {resolverEndpoint = a} :: DeleteResolverEndpointResponse)

-- | The response's http status code.
deleteResolverEndpointResponse_httpStatus :: Lens.Lens' DeleteResolverEndpointResponse Prelude.Int
deleteResolverEndpointResponse_httpStatus = Lens.lens (\DeleteResolverEndpointResponse' {httpStatus} -> httpStatus) (\s@DeleteResolverEndpointResponse' {} a -> s {httpStatus = a} :: DeleteResolverEndpointResponse)

instance
  Prelude.NFData
    DeleteResolverEndpointResponse
