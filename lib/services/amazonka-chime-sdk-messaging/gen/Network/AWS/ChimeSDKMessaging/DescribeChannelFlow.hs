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
-- Module      : Network.AWS.ChimeSDKMessaging.DescribeChannelFlow
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the full details of a channel flow in an Amazon Chime
-- @AppInstance@. This is a developer API.
module Network.AWS.ChimeSDKMessaging.DescribeChannelFlow
  ( -- * Creating a Request
    DescribeChannelFlow (..),
    newDescribeChannelFlow,

    -- * Request Lenses
    describeChannelFlow_channelFlowArn,

    -- * Destructuring the Response
    DescribeChannelFlowResponse (..),
    newDescribeChannelFlowResponse,

    -- * Response Lenses
    describeChannelFlowResponse_channelFlow,
    describeChannelFlowResponse_httpStatus,
  )
where

import Network.AWS.ChimeSDKMessaging.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeChannelFlow' smart constructor.
data DescribeChannelFlow = DescribeChannelFlow'
  { -- | The ARN of the channel flow.
    channelFlowArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeChannelFlow' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'channelFlowArn', 'describeChannelFlow_channelFlowArn' - The ARN of the channel flow.
newDescribeChannelFlow ::
  -- | 'channelFlowArn'
  Prelude.Text ->
  DescribeChannelFlow
newDescribeChannelFlow pChannelFlowArn_ =
  DescribeChannelFlow'
    { channelFlowArn =
        pChannelFlowArn_
    }

-- | The ARN of the channel flow.
describeChannelFlow_channelFlowArn :: Lens.Lens' DescribeChannelFlow Prelude.Text
describeChannelFlow_channelFlowArn = Lens.lens (\DescribeChannelFlow' {channelFlowArn} -> channelFlowArn) (\s@DescribeChannelFlow' {} a -> s {channelFlowArn = a} :: DescribeChannelFlow)

instance Core.AWSRequest DescribeChannelFlow where
  type
    AWSResponse DescribeChannelFlow =
      DescribeChannelFlowResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeChannelFlowResponse'
            Prelude.<$> (x Core..?> "ChannelFlow")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeChannelFlow

instance Prelude.NFData DescribeChannelFlow

instance Core.ToHeaders DescribeChannelFlow where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeChannelFlow where
  toPath DescribeChannelFlow' {..} =
    Prelude.mconcat
      ["/channel-flows/", Core.toBS channelFlowArn]

instance Core.ToQuery DescribeChannelFlow where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeChannelFlowResponse' smart constructor.
data DescribeChannelFlowResponse = DescribeChannelFlowResponse'
  { -- | The channel flow details.
    channelFlow :: Prelude.Maybe ChannelFlow,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeChannelFlowResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'channelFlow', 'describeChannelFlowResponse_channelFlow' - The channel flow details.
--
-- 'httpStatus', 'describeChannelFlowResponse_httpStatus' - The response's http status code.
newDescribeChannelFlowResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeChannelFlowResponse
newDescribeChannelFlowResponse pHttpStatus_ =
  DescribeChannelFlowResponse'
    { channelFlow =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The channel flow details.
describeChannelFlowResponse_channelFlow :: Lens.Lens' DescribeChannelFlowResponse (Prelude.Maybe ChannelFlow)
describeChannelFlowResponse_channelFlow = Lens.lens (\DescribeChannelFlowResponse' {channelFlow} -> channelFlow) (\s@DescribeChannelFlowResponse' {} a -> s {channelFlow = a} :: DescribeChannelFlowResponse)

-- | The response's http status code.
describeChannelFlowResponse_httpStatus :: Lens.Lens' DescribeChannelFlowResponse Prelude.Int
describeChannelFlowResponse_httpStatus = Lens.lens (\DescribeChannelFlowResponse' {httpStatus} -> httpStatus) (\s@DescribeChannelFlowResponse' {} a -> s {httpStatus = a} :: DescribeChannelFlowResponse)

instance Prelude.NFData DescribeChannelFlowResponse
