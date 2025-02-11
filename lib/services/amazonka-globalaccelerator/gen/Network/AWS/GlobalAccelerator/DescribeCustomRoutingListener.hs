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
-- Module      : Network.AWS.GlobalAccelerator.DescribeCustomRoutingListener
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The description of a listener for a custom routing accelerator.
module Network.AWS.GlobalAccelerator.DescribeCustomRoutingListener
  ( -- * Creating a Request
    DescribeCustomRoutingListener (..),
    newDescribeCustomRoutingListener,

    -- * Request Lenses
    describeCustomRoutingListener_listenerArn,

    -- * Destructuring the Response
    DescribeCustomRoutingListenerResponse (..),
    newDescribeCustomRoutingListenerResponse,

    -- * Response Lenses
    describeCustomRoutingListenerResponse_listener,
    describeCustomRoutingListenerResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.GlobalAccelerator.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeCustomRoutingListener' smart constructor.
data DescribeCustomRoutingListener = DescribeCustomRoutingListener'
  { -- | The Amazon Resource Name (ARN) of the listener to describe.
    listenerArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeCustomRoutingListener' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'listenerArn', 'describeCustomRoutingListener_listenerArn' - The Amazon Resource Name (ARN) of the listener to describe.
newDescribeCustomRoutingListener ::
  -- | 'listenerArn'
  Prelude.Text ->
  DescribeCustomRoutingListener
newDescribeCustomRoutingListener pListenerArn_ =
  DescribeCustomRoutingListener'
    { listenerArn =
        pListenerArn_
    }

-- | The Amazon Resource Name (ARN) of the listener to describe.
describeCustomRoutingListener_listenerArn :: Lens.Lens' DescribeCustomRoutingListener Prelude.Text
describeCustomRoutingListener_listenerArn = Lens.lens (\DescribeCustomRoutingListener' {listenerArn} -> listenerArn) (\s@DescribeCustomRoutingListener' {} a -> s {listenerArn = a} :: DescribeCustomRoutingListener)

instance
  Core.AWSRequest
    DescribeCustomRoutingListener
  where
  type
    AWSResponse DescribeCustomRoutingListener =
      DescribeCustomRoutingListenerResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeCustomRoutingListenerResponse'
            Prelude.<$> (x Core..?> "Listener")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeCustomRoutingListener

instance Prelude.NFData DescribeCustomRoutingListener

instance Core.ToHeaders DescribeCustomRoutingListener where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "GlobalAccelerator_V20180706.DescribeCustomRoutingListener" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeCustomRoutingListener where
  toJSON DescribeCustomRoutingListener' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("ListenerArn" Core..= listenerArn)]
      )

instance Core.ToPath DescribeCustomRoutingListener where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeCustomRoutingListener where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeCustomRoutingListenerResponse' smart constructor.
data DescribeCustomRoutingListenerResponse = DescribeCustomRoutingListenerResponse'
  { -- | The description of a listener for a custom routing accelerator.
    listener :: Prelude.Maybe CustomRoutingListener,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeCustomRoutingListenerResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'listener', 'describeCustomRoutingListenerResponse_listener' - The description of a listener for a custom routing accelerator.
--
-- 'httpStatus', 'describeCustomRoutingListenerResponse_httpStatus' - The response's http status code.
newDescribeCustomRoutingListenerResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeCustomRoutingListenerResponse
newDescribeCustomRoutingListenerResponse pHttpStatus_ =
  DescribeCustomRoutingListenerResponse'
    { listener =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The description of a listener for a custom routing accelerator.
describeCustomRoutingListenerResponse_listener :: Lens.Lens' DescribeCustomRoutingListenerResponse (Prelude.Maybe CustomRoutingListener)
describeCustomRoutingListenerResponse_listener = Lens.lens (\DescribeCustomRoutingListenerResponse' {listener} -> listener) (\s@DescribeCustomRoutingListenerResponse' {} a -> s {listener = a} :: DescribeCustomRoutingListenerResponse)

-- | The response's http status code.
describeCustomRoutingListenerResponse_httpStatus :: Lens.Lens' DescribeCustomRoutingListenerResponse Prelude.Int
describeCustomRoutingListenerResponse_httpStatus = Lens.lens (\DescribeCustomRoutingListenerResponse' {httpStatus} -> httpStatus) (\s@DescribeCustomRoutingListenerResponse' {} a -> s {httpStatus = a} :: DescribeCustomRoutingListenerResponse)

instance
  Prelude.NFData
    DescribeCustomRoutingListenerResponse
