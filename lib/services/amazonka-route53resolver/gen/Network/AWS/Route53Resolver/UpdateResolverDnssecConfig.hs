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
-- Module      : Network.AWS.Route53Resolver.UpdateResolverDnssecConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing DNSSEC validation configuration. If there is no
-- existing DNSSEC validation configuration, one is created.
module Network.AWS.Route53Resolver.UpdateResolverDnssecConfig
  ( -- * Creating a Request
    UpdateResolverDnssecConfig (..),
    newUpdateResolverDnssecConfig,

    -- * Request Lenses
    updateResolverDnssecConfig_resourceId,
    updateResolverDnssecConfig_validation,

    -- * Destructuring the Response
    UpdateResolverDnssecConfigResponse (..),
    newUpdateResolverDnssecConfigResponse,

    -- * Response Lenses
    updateResolverDnssecConfigResponse_resolverDNSSECConfig,
    updateResolverDnssecConfigResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Route53Resolver.Types

-- | /See:/ 'newUpdateResolverDnssecConfig' smart constructor.
data UpdateResolverDnssecConfig = UpdateResolverDnssecConfig'
  { -- | The ID of the virtual private cloud (VPC) that you\'re updating the
    -- DNSSEC validation status for.
    resourceId :: Prelude.Text,
    -- | The new value that you are specifying for DNSSEC validation for the VPC.
    -- The value can be @ENABLE@ or @DISABLE@. Be aware that it can take time
    -- for a validation status change to be completed.
    validation :: Validation
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateResolverDnssecConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceId', 'updateResolverDnssecConfig_resourceId' - The ID of the virtual private cloud (VPC) that you\'re updating the
-- DNSSEC validation status for.
--
-- 'validation', 'updateResolverDnssecConfig_validation' - The new value that you are specifying for DNSSEC validation for the VPC.
-- The value can be @ENABLE@ or @DISABLE@. Be aware that it can take time
-- for a validation status change to be completed.
newUpdateResolverDnssecConfig ::
  -- | 'resourceId'
  Prelude.Text ->
  -- | 'validation'
  Validation ->
  UpdateResolverDnssecConfig
newUpdateResolverDnssecConfig
  pResourceId_
  pValidation_ =
    UpdateResolverDnssecConfig'
      { resourceId =
          pResourceId_,
        validation = pValidation_
      }

-- | The ID of the virtual private cloud (VPC) that you\'re updating the
-- DNSSEC validation status for.
updateResolverDnssecConfig_resourceId :: Lens.Lens' UpdateResolverDnssecConfig Prelude.Text
updateResolverDnssecConfig_resourceId = Lens.lens (\UpdateResolverDnssecConfig' {resourceId} -> resourceId) (\s@UpdateResolverDnssecConfig' {} a -> s {resourceId = a} :: UpdateResolverDnssecConfig)

-- | The new value that you are specifying for DNSSEC validation for the VPC.
-- The value can be @ENABLE@ or @DISABLE@. Be aware that it can take time
-- for a validation status change to be completed.
updateResolverDnssecConfig_validation :: Lens.Lens' UpdateResolverDnssecConfig Validation
updateResolverDnssecConfig_validation = Lens.lens (\UpdateResolverDnssecConfig' {validation} -> validation) (\s@UpdateResolverDnssecConfig' {} a -> s {validation = a} :: UpdateResolverDnssecConfig)

instance Core.AWSRequest UpdateResolverDnssecConfig where
  type
    AWSResponse UpdateResolverDnssecConfig =
      UpdateResolverDnssecConfigResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateResolverDnssecConfigResponse'
            Prelude.<$> (x Core..?> "ResolverDNSSECConfig")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateResolverDnssecConfig

instance Prelude.NFData UpdateResolverDnssecConfig

instance Core.ToHeaders UpdateResolverDnssecConfig where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Route53Resolver.UpdateResolverDnssecConfig" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateResolverDnssecConfig where
  toJSON UpdateResolverDnssecConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("ResourceId" Core..= resourceId),
            Prelude.Just ("Validation" Core..= validation)
          ]
      )

instance Core.ToPath UpdateResolverDnssecConfig where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateResolverDnssecConfig where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateResolverDnssecConfigResponse' smart constructor.
data UpdateResolverDnssecConfigResponse = UpdateResolverDnssecConfigResponse'
  { -- | A complex type that contains settings for the specified DNSSEC
    -- configuration.
    resolverDNSSECConfig :: Prelude.Maybe ResolverDnssecConfig,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateResolverDnssecConfigResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resolverDNSSECConfig', 'updateResolverDnssecConfigResponse_resolverDNSSECConfig' - A complex type that contains settings for the specified DNSSEC
-- configuration.
--
-- 'httpStatus', 'updateResolverDnssecConfigResponse_httpStatus' - The response's http status code.
newUpdateResolverDnssecConfigResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateResolverDnssecConfigResponse
newUpdateResolverDnssecConfigResponse pHttpStatus_ =
  UpdateResolverDnssecConfigResponse'
    { resolverDNSSECConfig =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A complex type that contains settings for the specified DNSSEC
-- configuration.
updateResolverDnssecConfigResponse_resolverDNSSECConfig :: Lens.Lens' UpdateResolverDnssecConfigResponse (Prelude.Maybe ResolverDnssecConfig)
updateResolverDnssecConfigResponse_resolverDNSSECConfig = Lens.lens (\UpdateResolverDnssecConfigResponse' {resolverDNSSECConfig} -> resolverDNSSECConfig) (\s@UpdateResolverDnssecConfigResponse' {} a -> s {resolverDNSSECConfig = a} :: UpdateResolverDnssecConfigResponse)

-- | The response's http status code.
updateResolverDnssecConfigResponse_httpStatus :: Lens.Lens' UpdateResolverDnssecConfigResponse Prelude.Int
updateResolverDnssecConfigResponse_httpStatus = Lens.lens (\UpdateResolverDnssecConfigResponse' {httpStatus} -> httpStatus) (\s@UpdateResolverDnssecConfigResponse' {} a -> s {httpStatus = a} :: UpdateResolverDnssecConfigResponse)

instance
  Prelude.NFData
    UpdateResolverDnssecConfigResponse
