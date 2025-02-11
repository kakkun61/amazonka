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
-- Module      : Network.AWS.Route53Resolver.GetResolverQueryLogConfigAssociation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a specified association between a Resolver query
-- logging configuration and an Amazon VPC. When you associate a VPC with a
-- query logging configuration, Resolver logs DNS queries that originate in
-- that VPC.
module Network.AWS.Route53Resolver.GetResolverQueryLogConfigAssociation
  ( -- * Creating a Request
    GetResolverQueryLogConfigAssociation (..),
    newGetResolverQueryLogConfigAssociation,

    -- * Request Lenses
    getResolverQueryLogConfigAssociation_resolverQueryLogConfigAssociationId,

    -- * Destructuring the Response
    GetResolverQueryLogConfigAssociationResponse (..),
    newGetResolverQueryLogConfigAssociationResponse,

    -- * Response Lenses
    getResolverQueryLogConfigAssociationResponse_resolverQueryLogConfigAssociation,
    getResolverQueryLogConfigAssociationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Route53Resolver.Types

-- | /See:/ 'newGetResolverQueryLogConfigAssociation' smart constructor.
data GetResolverQueryLogConfigAssociation = GetResolverQueryLogConfigAssociation'
  { -- | The ID of the Resolver query logging configuration association that you
    -- want to get information about.
    resolverQueryLogConfigAssociationId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetResolverQueryLogConfigAssociation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resolverQueryLogConfigAssociationId', 'getResolverQueryLogConfigAssociation_resolverQueryLogConfigAssociationId' - The ID of the Resolver query logging configuration association that you
-- want to get information about.
newGetResolverQueryLogConfigAssociation ::
  -- | 'resolverQueryLogConfigAssociationId'
  Prelude.Text ->
  GetResolverQueryLogConfigAssociation
newGetResolverQueryLogConfigAssociation
  pResolverQueryLogConfigAssociationId_ =
    GetResolverQueryLogConfigAssociation'
      { resolverQueryLogConfigAssociationId =
          pResolverQueryLogConfigAssociationId_
      }

-- | The ID of the Resolver query logging configuration association that you
-- want to get information about.
getResolverQueryLogConfigAssociation_resolverQueryLogConfigAssociationId :: Lens.Lens' GetResolverQueryLogConfigAssociation Prelude.Text
getResolverQueryLogConfigAssociation_resolverQueryLogConfigAssociationId = Lens.lens (\GetResolverQueryLogConfigAssociation' {resolverQueryLogConfigAssociationId} -> resolverQueryLogConfigAssociationId) (\s@GetResolverQueryLogConfigAssociation' {} a -> s {resolverQueryLogConfigAssociationId = a} :: GetResolverQueryLogConfigAssociation)

instance
  Core.AWSRequest
    GetResolverQueryLogConfigAssociation
  where
  type
    AWSResponse GetResolverQueryLogConfigAssociation =
      GetResolverQueryLogConfigAssociationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetResolverQueryLogConfigAssociationResponse'
            Prelude.<$> (x Core..?> "ResolverQueryLogConfigAssociation")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    GetResolverQueryLogConfigAssociation

instance
  Prelude.NFData
    GetResolverQueryLogConfigAssociation

instance
  Core.ToHeaders
    GetResolverQueryLogConfigAssociation
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Route53Resolver.GetResolverQueryLogConfigAssociation" ::
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
    GetResolverQueryLogConfigAssociation
  where
  toJSON GetResolverQueryLogConfigAssociation' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "ResolverQueryLogConfigAssociationId"
                  Core..= resolverQueryLogConfigAssociationId
              )
          ]
      )

instance
  Core.ToPath
    GetResolverQueryLogConfigAssociation
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    GetResolverQueryLogConfigAssociation
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetResolverQueryLogConfigAssociationResponse' smart constructor.
data GetResolverQueryLogConfigAssociationResponse = GetResolverQueryLogConfigAssociationResponse'
  { -- | Information about the Resolver query logging configuration association
    -- that you specified in a @GetQueryLogConfigAssociation@ request.
    resolverQueryLogConfigAssociation :: Prelude.Maybe ResolverQueryLogConfigAssociation,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetResolverQueryLogConfigAssociationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resolverQueryLogConfigAssociation', 'getResolverQueryLogConfigAssociationResponse_resolverQueryLogConfigAssociation' - Information about the Resolver query logging configuration association
-- that you specified in a @GetQueryLogConfigAssociation@ request.
--
-- 'httpStatus', 'getResolverQueryLogConfigAssociationResponse_httpStatus' - The response's http status code.
newGetResolverQueryLogConfigAssociationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetResolverQueryLogConfigAssociationResponse
newGetResolverQueryLogConfigAssociationResponse
  pHttpStatus_ =
    GetResolverQueryLogConfigAssociationResponse'
      { resolverQueryLogConfigAssociation =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | Information about the Resolver query logging configuration association
-- that you specified in a @GetQueryLogConfigAssociation@ request.
getResolverQueryLogConfigAssociationResponse_resolverQueryLogConfigAssociation :: Lens.Lens' GetResolverQueryLogConfigAssociationResponse (Prelude.Maybe ResolverQueryLogConfigAssociation)
getResolverQueryLogConfigAssociationResponse_resolverQueryLogConfigAssociation = Lens.lens (\GetResolverQueryLogConfigAssociationResponse' {resolverQueryLogConfigAssociation} -> resolverQueryLogConfigAssociation) (\s@GetResolverQueryLogConfigAssociationResponse' {} a -> s {resolverQueryLogConfigAssociation = a} :: GetResolverQueryLogConfigAssociationResponse)

-- | The response's http status code.
getResolverQueryLogConfigAssociationResponse_httpStatus :: Lens.Lens' GetResolverQueryLogConfigAssociationResponse Prelude.Int
getResolverQueryLogConfigAssociationResponse_httpStatus = Lens.lens (\GetResolverQueryLogConfigAssociationResponse' {httpStatus} -> httpStatus) (\s@GetResolverQueryLogConfigAssociationResponse' {} a -> s {httpStatus = a} :: GetResolverQueryLogConfigAssociationResponse)

instance
  Prelude.NFData
    GetResolverQueryLogConfigAssociationResponse
