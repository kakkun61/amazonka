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
-- Module      : Network.AWS.GlobalAccelerator.UpdateCustomRoutingListener
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a listener for a custom routing accelerator.
module Network.AWS.GlobalAccelerator.UpdateCustomRoutingListener
  ( -- * Creating a Request
    UpdateCustomRoutingListener (..),
    newUpdateCustomRoutingListener,

    -- * Request Lenses
    updateCustomRoutingListener_listenerArn,
    updateCustomRoutingListener_portRanges,

    -- * Destructuring the Response
    UpdateCustomRoutingListenerResponse (..),
    newUpdateCustomRoutingListenerResponse,

    -- * Response Lenses
    updateCustomRoutingListenerResponse_listener,
    updateCustomRoutingListenerResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.GlobalAccelerator.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateCustomRoutingListener' smart constructor.
data UpdateCustomRoutingListener = UpdateCustomRoutingListener'
  { -- | The Amazon Resource Name (ARN) of the listener to update.
    listenerArn :: Prelude.Text,
    -- | The updated port range to support for connections from clients to your
    -- accelerator. If you remove ports that are currently being used by a
    -- subnet endpoint, the call fails.
    --
    -- Separately, you set port ranges for endpoints. For more information, see
    -- <https://docs.aws.amazon.com/global-accelerator/latest/dg/about-custom-routing-endpoints.html About endpoints for custom routing accelerators>.
    portRanges :: Prelude.NonEmpty PortRange
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateCustomRoutingListener' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'listenerArn', 'updateCustomRoutingListener_listenerArn' - The Amazon Resource Name (ARN) of the listener to update.
--
-- 'portRanges', 'updateCustomRoutingListener_portRanges' - The updated port range to support for connections from clients to your
-- accelerator. If you remove ports that are currently being used by a
-- subnet endpoint, the call fails.
--
-- Separately, you set port ranges for endpoints. For more information, see
-- <https://docs.aws.amazon.com/global-accelerator/latest/dg/about-custom-routing-endpoints.html About endpoints for custom routing accelerators>.
newUpdateCustomRoutingListener ::
  -- | 'listenerArn'
  Prelude.Text ->
  -- | 'portRanges'
  Prelude.NonEmpty PortRange ->
  UpdateCustomRoutingListener
newUpdateCustomRoutingListener
  pListenerArn_
  pPortRanges_ =
    UpdateCustomRoutingListener'
      { listenerArn =
          pListenerArn_,
        portRanges = Lens.coerced Lens.# pPortRanges_
      }

-- | The Amazon Resource Name (ARN) of the listener to update.
updateCustomRoutingListener_listenerArn :: Lens.Lens' UpdateCustomRoutingListener Prelude.Text
updateCustomRoutingListener_listenerArn = Lens.lens (\UpdateCustomRoutingListener' {listenerArn} -> listenerArn) (\s@UpdateCustomRoutingListener' {} a -> s {listenerArn = a} :: UpdateCustomRoutingListener)

-- | The updated port range to support for connections from clients to your
-- accelerator. If you remove ports that are currently being used by a
-- subnet endpoint, the call fails.
--
-- Separately, you set port ranges for endpoints. For more information, see
-- <https://docs.aws.amazon.com/global-accelerator/latest/dg/about-custom-routing-endpoints.html About endpoints for custom routing accelerators>.
updateCustomRoutingListener_portRanges :: Lens.Lens' UpdateCustomRoutingListener (Prelude.NonEmpty PortRange)
updateCustomRoutingListener_portRanges = Lens.lens (\UpdateCustomRoutingListener' {portRanges} -> portRanges) (\s@UpdateCustomRoutingListener' {} a -> s {portRanges = a} :: UpdateCustomRoutingListener) Prelude.. Lens.coerced

instance Core.AWSRequest UpdateCustomRoutingListener where
  type
    AWSResponse UpdateCustomRoutingListener =
      UpdateCustomRoutingListenerResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateCustomRoutingListenerResponse'
            Prelude.<$> (x Core..?> "Listener")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateCustomRoutingListener

instance Prelude.NFData UpdateCustomRoutingListener

instance Core.ToHeaders UpdateCustomRoutingListener where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "GlobalAccelerator_V20180706.UpdateCustomRoutingListener" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateCustomRoutingListener where
  toJSON UpdateCustomRoutingListener' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("ListenerArn" Core..= listenerArn),
            Prelude.Just ("PortRanges" Core..= portRanges)
          ]
      )

instance Core.ToPath UpdateCustomRoutingListener where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateCustomRoutingListener where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateCustomRoutingListenerResponse' smart constructor.
data UpdateCustomRoutingListenerResponse = UpdateCustomRoutingListenerResponse'
  { -- | Information for the updated listener for a custom routing accelerator.
    listener :: Prelude.Maybe CustomRoutingListener,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateCustomRoutingListenerResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'listener', 'updateCustomRoutingListenerResponse_listener' - Information for the updated listener for a custom routing accelerator.
--
-- 'httpStatus', 'updateCustomRoutingListenerResponse_httpStatus' - The response's http status code.
newUpdateCustomRoutingListenerResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateCustomRoutingListenerResponse
newUpdateCustomRoutingListenerResponse pHttpStatus_ =
  UpdateCustomRoutingListenerResponse'
    { listener =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information for the updated listener for a custom routing accelerator.
updateCustomRoutingListenerResponse_listener :: Lens.Lens' UpdateCustomRoutingListenerResponse (Prelude.Maybe CustomRoutingListener)
updateCustomRoutingListenerResponse_listener = Lens.lens (\UpdateCustomRoutingListenerResponse' {listener} -> listener) (\s@UpdateCustomRoutingListenerResponse' {} a -> s {listener = a} :: UpdateCustomRoutingListenerResponse)

-- | The response's http status code.
updateCustomRoutingListenerResponse_httpStatus :: Lens.Lens' UpdateCustomRoutingListenerResponse Prelude.Int
updateCustomRoutingListenerResponse_httpStatus = Lens.lens (\UpdateCustomRoutingListenerResponse' {httpStatus} -> httpStatus) (\s@UpdateCustomRoutingListenerResponse' {} a -> s {httpStatus = a} :: UpdateCustomRoutingListenerResponse)

instance
  Prelude.NFData
    UpdateCustomRoutingListenerResponse
