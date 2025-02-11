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
-- Module      : Network.AWS.Route53Resolver.GetResolverDnssecConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets DNSSEC validation information for a specified resource.
module Network.AWS.Route53Resolver.GetResolverDnssecConfig
  ( -- * Creating a Request
    GetResolverDnssecConfig (..),
    newGetResolverDnssecConfig,

    -- * Request Lenses
    getResolverDnssecConfig_resourceId,

    -- * Destructuring the Response
    GetResolverDnssecConfigResponse (..),
    newGetResolverDnssecConfigResponse,

    -- * Response Lenses
    getResolverDnssecConfigResponse_resolverDNSSECConfig,
    getResolverDnssecConfigResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Route53Resolver.Types

-- | /See:/ 'newGetResolverDnssecConfig' smart constructor.
data GetResolverDnssecConfig = GetResolverDnssecConfig'
  { -- | The ID of the virtual private cloud (VPC) for the DNSSEC validation
    -- status.
    resourceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetResolverDnssecConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceId', 'getResolverDnssecConfig_resourceId' - The ID of the virtual private cloud (VPC) for the DNSSEC validation
-- status.
newGetResolverDnssecConfig ::
  -- | 'resourceId'
  Prelude.Text ->
  GetResolverDnssecConfig
newGetResolverDnssecConfig pResourceId_ =
  GetResolverDnssecConfig' {resourceId = pResourceId_}

-- | The ID of the virtual private cloud (VPC) for the DNSSEC validation
-- status.
getResolverDnssecConfig_resourceId :: Lens.Lens' GetResolverDnssecConfig Prelude.Text
getResolverDnssecConfig_resourceId = Lens.lens (\GetResolverDnssecConfig' {resourceId} -> resourceId) (\s@GetResolverDnssecConfig' {} a -> s {resourceId = a} :: GetResolverDnssecConfig)

instance Core.AWSRequest GetResolverDnssecConfig where
  type
    AWSResponse GetResolverDnssecConfig =
      GetResolverDnssecConfigResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetResolverDnssecConfigResponse'
            Prelude.<$> (x Core..?> "ResolverDNSSECConfig")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetResolverDnssecConfig

instance Prelude.NFData GetResolverDnssecConfig

instance Core.ToHeaders GetResolverDnssecConfig where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Route53Resolver.GetResolverDnssecConfig" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetResolverDnssecConfig where
  toJSON GetResolverDnssecConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("ResourceId" Core..= resourceId)]
      )

instance Core.ToPath GetResolverDnssecConfig where
  toPath = Prelude.const "/"

instance Core.ToQuery GetResolverDnssecConfig where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetResolverDnssecConfigResponse' smart constructor.
data GetResolverDnssecConfigResponse = GetResolverDnssecConfigResponse'
  { -- | The information about a configuration for DNSSEC validation.
    resolverDNSSECConfig :: Prelude.Maybe ResolverDnssecConfig,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetResolverDnssecConfigResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resolverDNSSECConfig', 'getResolverDnssecConfigResponse_resolverDNSSECConfig' - The information about a configuration for DNSSEC validation.
--
-- 'httpStatus', 'getResolverDnssecConfigResponse_httpStatus' - The response's http status code.
newGetResolverDnssecConfigResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetResolverDnssecConfigResponse
newGetResolverDnssecConfigResponse pHttpStatus_ =
  GetResolverDnssecConfigResponse'
    { resolverDNSSECConfig =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The information about a configuration for DNSSEC validation.
getResolverDnssecConfigResponse_resolverDNSSECConfig :: Lens.Lens' GetResolverDnssecConfigResponse (Prelude.Maybe ResolverDnssecConfig)
getResolverDnssecConfigResponse_resolverDNSSECConfig = Lens.lens (\GetResolverDnssecConfigResponse' {resolverDNSSECConfig} -> resolverDNSSECConfig) (\s@GetResolverDnssecConfigResponse' {} a -> s {resolverDNSSECConfig = a} :: GetResolverDnssecConfigResponse)

-- | The response's http status code.
getResolverDnssecConfigResponse_httpStatus :: Lens.Lens' GetResolverDnssecConfigResponse Prelude.Int
getResolverDnssecConfigResponse_httpStatus = Lens.lens (\GetResolverDnssecConfigResponse' {httpStatus} -> httpStatus) (\s@GetResolverDnssecConfigResponse' {} a -> s {httpStatus = a} :: GetResolverDnssecConfigResponse)

instance
  Prelude.NFData
    GetResolverDnssecConfigResponse
