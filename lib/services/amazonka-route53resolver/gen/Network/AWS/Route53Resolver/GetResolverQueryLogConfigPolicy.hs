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
-- Module      : Network.AWS.Route53Resolver.GetResolverQueryLogConfigPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a query logging policy. A query logging policy
-- specifies the Resolver query logging operations and resources that you
-- want to allow another Amazon Web Services account to be able to use.
module Network.AWS.Route53Resolver.GetResolverQueryLogConfigPolicy
  ( -- * Creating a Request
    GetResolverQueryLogConfigPolicy (..),
    newGetResolverQueryLogConfigPolicy,

    -- * Request Lenses
    getResolverQueryLogConfigPolicy_arn,

    -- * Destructuring the Response
    GetResolverQueryLogConfigPolicyResponse (..),
    newGetResolverQueryLogConfigPolicyResponse,

    -- * Response Lenses
    getResolverQueryLogConfigPolicyResponse_resolverQueryLogConfigPolicy,
    getResolverQueryLogConfigPolicyResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Route53Resolver.Types

-- | /See:/ 'newGetResolverQueryLogConfigPolicy' smart constructor.
data GetResolverQueryLogConfigPolicy = GetResolverQueryLogConfigPolicy'
  { -- | The ARN of the query logging configuration that you want to get the
    -- query logging policy for.
    arn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetResolverQueryLogConfigPolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'getResolverQueryLogConfigPolicy_arn' - The ARN of the query logging configuration that you want to get the
-- query logging policy for.
newGetResolverQueryLogConfigPolicy ::
  -- | 'arn'
  Prelude.Text ->
  GetResolverQueryLogConfigPolicy
newGetResolverQueryLogConfigPolicy pArn_ =
  GetResolverQueryLogConfigPolicy' {arn = pArn_}

-- | The ARN of the query logging configuration that you want to get the
-- query logging policy for.
getResolverQueryLogConfigPolicy_arn :: Lens.Lens' GetResolverQueryLogConfigPolicy Prelude.Text
getResolverQueryLogConfigPolicy_arn = Lens.lens (\GetResolverQueryLogConfigPolicy' {arn} -> arn) (\s@GetResolverQueryLogConfigPolicy' {} a -> s {arn = a} :: GetResolverQueryLogConfigPolicy)

instance
  Core.AWSRequest
    GetResolverQueryLogConfigPolicy
  where
  type
    AWSResponse GetResolverQueryLogConfigPolicy =
      GetResolverQueryLogConfigPolicyResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetResolverQueryLogConfigPolicyResponse'
            Prelude.<$> (x Core..?> "ResolverQueryLogConfigPolicy")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    GetResolverQueryLogConfigPolicy

instance
  Prelude.NFData
    GetResolverQueryLogConfigPolicy

instance
  Core.ToHeaders
    GetResolverQueryLogConfigPolicy
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Route53Resolver.GetResolverQueryLogConfigPolicy" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetResolverQueryLogConfigPolicy where
  toJSON GetResolverQueryLogConfigPolicy' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("Arn" Core..= arn)]
      )

instance Core.ToPath GetResolverQueryLogConfigPolicy where
  toPath = Prelude.const "/"

instance Core.ToQuery GetResolverQueryLogConfigPolicy where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetResolverQueryLogConfigPolicyResponse' smart constructor.
data GetResolverQueryLogConfigPolicyResponse = GetResolverQueryLogConfigPolicyResponse'
  { -- | Information about the query logging policy for the query logging
    -- configuration that you specified in a @GetResolverQueryLogConfigPolicy@
    -- request.
    resolverQueryLogConfigPolicy :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetResolverQueryLogConfigPolicyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resolverQueryLogConfigPolicy', 'getResolverQueryLogConfigPolicyResponse_resolverQueryLogConfigPolicy' - Information about the query logging policy for the query logging
-- configuration that you specified in a @GetResolverQueryLogConfigPolicy@
-- request.
--
-- 'httpStatus', 'getResolverQueryLogConfigPolicyResponse_httpStatus' - The response's http status code.
newGetResolverQueryLogConfigPolicyResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetResolverQueryLogConfigPolicyResponse
newGetResolverQueryLogConfigPolicyResponse
  pHttpStatus_ =
    GetResolverQueryLogConfigPolicyResponse'
      { resolverQueryLogConfigPolicy =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | Information about the query logging policy for the query logging
-- configuration that you specified in a @GetResolverQueryLogConfigPolicy@
-- request.
getResolverQueryLogConfigPolicyResponse_resolverQueryLogConfigPolicy :: Lens.Lens' GetResolverQueryLogConfigPolicyResponse (Prelude.Maybe Prelude.Text)
getResolverQueryLogConfigPolicyResponse_resolverQueryLogConfigPolicy = Lens.lens (\GetResolverQueryLogConfigPolicyResponse' {resolverQueryLogConfigPolicy} -> resolverQueryLogConfigPolicy) (\s@GetResolverQueryLogConfigPolicyResponse' {} a -> s {resolverQueryLogConfigPolicy = a} :: GetResolverQueryLogConfigPolicyResponse)

-- | The response's http status code.
getResolverQueryLogConfigPolicyResponse_httpStatus :: Lens.Lens' GetResolverQueryLogConfigPolicyResponse Prelude.Int
getResolverQueryLogConfigPolicyResponse_httpStatus = Lens.lens (\GetResolverQueryLogConfigPolicyResponse' {httpStatus} -> httpStatus) (\s@GetResolverQueryLogConfigPolicyResponse' {} a -> s {httpStatus = a} :: GetResolverQueryLogConfigPolicyResponse)

instance
  Prelude.NFData
    GetResolverQueryLogConfigPolicyResponse
