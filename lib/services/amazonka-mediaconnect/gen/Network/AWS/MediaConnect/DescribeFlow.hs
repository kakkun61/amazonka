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
-- Module      : Network.AWS.MediaConnect.DescribeFlow
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Displays the details of a flow. The response includes the flow ARN,
-- name, and Availability Zone, as well as details about the source,
-- outputs, and entitlements.
module Network.AWS.MediaConnect.DescribeFlow
  ( -- * Creating a Request
    DescribeFlow (..),
    newDescribeFlow,

    -- * Request Lenses
    describeFlow_flowArn,

    -- * Destructuring the Response
    DescribeFlowResponse (..),
    newDescribeFlowResponse,

    -- * Response Lenses
    describeFlowResponse_flow,
    describeFlowResponse_messages,
    describeFlowResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaConnect.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeFlow' smart constructor.
data DescribeFlow = DescribeFlow'
  { -- | The ARN of the flow that you want to describe.
    flowArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeFlow' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'flowArn', 'describeFlow_flowArn' - The ARN of the flow that you want to describe.
newDescribeFlow ::
  -- | 'flowArn'
  Prelude.Text ->
  DescribeFlow
newDescribeFlow pFlowArn_ =
  DescribeFlow' {flowArn = pFlowArn_}

-- | The ARN of the flow that you want to describe.
describeFlow_flowArn :: Lens.Lens' DescribeFlow Prelude.Text
describeFlow_flowArn = Lens.lens (\DescribeFlow' {flowArn} -> flowArn) (\s@DescribeFlow' {} a -> s {flowArn = a} :: DescribeFlow)

instance Core.AWSRequest DescribeFlow where
  type AWSResponse DescribeFlow = DescribeFlowResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeFlowResponse'
            Prelude.<$> (x Core..?> "flow")
            Prelude.<*> (x Core..?> "messages")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeFlow

instance Prelude.NFData DescribeFlow

instance Core.ToHeaders DescribeFlow where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeFlow where
  toPath DescribeFlow' {..} =
    Prelude.mconcat ["/v1/flows/", Core.toBS flowArn]

instance Core.ToQuery DescribeFlow where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeFlowResponse' smart constructor.
data DescribeFlowResponse = DescribeFlowResponse'
  { flow :: Prelude.Maybe Flow,
    messages :: Prelude.Maybe Messages,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeFlowResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'flow', 'describeFlowResponse_flow' - Undocumented member.
--
-- 'messages', 'describeFlowResponse_messages' - Undocumented member.
--
-- 'httpStatus', 'describeFlowResponse_httpStatus' - The response's http status code.
newDescribeFlowResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeFlowResponse
newDescribeFlowResponse pHttpStatus_ =
  DescribeFlowResponse'
    { flow = Prelude.Nothing,
      messages = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
describeFlowResponse_flow :: Lens.Lens' DescribeFlowResponse (Prelude.Maybe Flow)
describeFlowResponse_flow = Lens.lens (\DescribeFlowResponse' {flow} -> flow) (\s@DescribeFlowResponse' {} a -> s {flow = a} :: DescribeFlowResponse)

-- | Undocumented member.
describeFlowResponse_messages :: Lens.Lens' DescribeFlowResponse (Prelude.Maybe Messages)
describeFlowResponse_messages = Lens.lens (\DescribeFlowResponse' {messages} -> messages) (\s@DescribeFlowResponse' {} a -> s {messages = a} :: DescribeFlowResponse)

-- | The response's http status code.
describeFlowResponse_httpStatus :: Lens.Lens' DescribeFlowResponse Prelude.Int
describeFlowResponse_httpStatus = Lens.lens (\DescribeFlowResponse' {httpStatus} -> httpStatus) (\s@DescribeFlowResponse' {} a -> s {httpStatus = a} :: DescribeFlowResponse)

instance Prelude.NFData DescribeFlowResponse
