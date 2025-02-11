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
-- Module      : Network.AWS.CodeStarConnections.UpdateHost
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a specified host with the provided configurations.
module Network.AWS.CodeStarConnections.UpdateHost
  ( -- * Creating a Request
    UpdateHost (..),
    newUpdateHost,

    -- * Request Lenses
    updateHost_providerEndpoint,
    updateHost_vpcConfiguration,
    updateHost_hostArn,

    -- * Destructuring the Response
    UpdateHostResponse (..),
    newUpdateHostResponse,

    -- * Response Lenses
    updateHostResponse_httpStatus,
  )
where

import Network.AWS.CodeStarConnections.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateHost' smart constructor.
data UpdateHost = UpdateHost'
  { -- | The URL or endpoint of the host to be updated.
    providerEndpoint :: Prelude.Maybe Prelude.Text,
    -- | The VPC configuration of the host to be updated. A VPC must be
    -- configured and the infrastructure to be represented by the host must
    -- already be connected to the VPC.
    vpcConfiguration :: Prelude.Maybe VpcConfiguration,
    -- | The Amazon Resource Name (ARN) of the host to be updated.
    hostArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateHost' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'providerEndpoint', 'updateHost_providerEndpoint' - The URL or endpoint of the host to be updated.
--
-- 'vpcConfiguration', 'updateHost_vpcConfiguration' - The VPC configuration of the host to be updated. A VPC must be
-- configured and the infrastructure to be represented by the host must
-- already be connected to the VPC.
--
-- 'hostArn', 'updateHost_hostArn' - The Amazon Resource Name (ARN) of the host to be updated.
newUpdateHost ::
  -- | 'hostArn'
  Prelude.Text ->
  UpdateHost
newUpdateHost pHostArn_ =
  UpdateHost'
    { providerEndpoint = Prelude.Nothing,
      vpcConfiguration = Prelude.Nothing,
      hostArn = pHostArn_
    }

-- | The URL or endpoint of the host to be updated.
updateHost_providerEndpoint :: Lens.Lens' UpdateHost (Prelude.Maybe Prelude.Text)
updateHost_providerEndpoint = Lens.lens (\UpdateHost' {providerEndpoint} -> providerEndpoint) (\s@UpdateHost' {} a -> s {providerEndpoint = a} :: UpdateHost)

-- | The VPC configuration of the host to be updated. A VPC must be
-- configured and the infrastructure to be represented by the host must
-- already be connected to the VPC.
updateHost_vpcConfiguration :: Lens.Lens' UpdateHost (Prelude.Maybe VpcConfiguration)
updateHost_vpcConfiguration = Lens.lens (\UpdateHost' {vpcConfiguration} -> vpcConfiguration) (\s@UpdateHost' {} a -> s {vpcConfiguration = a} :: UpdateHost)

-- | The Amazon Resource Name (ARN) of the host to be updated.
updateHost_hostArn :: Lens.Lens' UpdateHost Prelude.Text
updateHost_hostArn = Lens.lens (\UpdateHost' {hostArn} -> hostArn) (\s@UpdateHost' {} a -> s {hostArn = a} :: UpdateHost)

instance Core.AWSRequest UpdateHost where
  type AWSResponse UpdateHost = UpdateHostResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateHostResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateHost

instance Prelude.NFData UpdateHost

instance Core.ToHeaders UpdateHost where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "com.amazonaws.codestar.connections.CodeStar_connections_20191201.UpdateHost" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateHost where
  toJSON UpdateHost' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ProviderEndpoint" Core..=)
              Prelude.<$> providerEndpoint,
            ("VpcConfiguration" Core..=)
              Prelude.<$> vpcConfiguration,
            Prelude.Just ("HostArn" Core..= hostArn)
          ]
      )

instance Core.ToPath UpdateHost where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateHost where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateHostResponse' smart constructor.
data UpdateHostResponse = UpdateHostResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateHostResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateHostResponse_httpStatus' - The response's http status code.
newUpdateHostResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateHostResponse
newUpdateHostResponse pHttpStatus_ =
  UpdateHostResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
updateHostResponse_httpStatus :: Lens.Lens' UpdateHostResponse Prelude.Int
updateHostResponse_httpStatus = Lens.lens (\UpdateHostResponse' {httpStatus} -> httpStatus) (\s@UpdateHostResponse' {} a -> s {httpStatus = a} :: UpdateHostResponse)

instance Prelude.NFData UpdateHostResponse
