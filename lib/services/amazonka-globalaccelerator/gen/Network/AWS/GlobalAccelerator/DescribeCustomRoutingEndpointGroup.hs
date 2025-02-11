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
-- Module      : Network.AWS.GlobalAccelerator.DescribeCustomRoutingEndpointGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describe an endpoint group for a custom routing accelerator.
module Network.AWS.GlobalAccelerator.DescribeCustomRoutingEndpointGroup
  ( -- * Creating a Request
    DescribeCustomRoutingEndpointGroup (..),
    newDescribeCustomRoutingEndpointGroup,

    -- * Request Lenses
    describeCustomRoutingEndpointGroup_endpointGroupArn,

    -- * Destructuring the Response
    DescribeCustomRoutingEndpointGroupResponse (..),
    newDescribeCustomRoutingEndpointGroupResponse,

    -- * Response Lenses
    describeCustomRoutingEndpointGroupResponse_endpointGroup,
    describeCustomRoutingEndpointGroupResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.GlobalAccelerator.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeCustomRoutingEndpointGroup' smart constructor.
data DescribeCustomRoutingEndpointGroup = DescribeCustomRoutingEndpointGroup'
  { -- | The Amazon Resource Name (ARN) of the endpoint group to describe.
    endpointGroupArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeCustomRoutingEndpointGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'endpointGroupArn', 'describeCustomRoutingEndpointGroup_endpointGroupArn' - The Amazon Resource Name (ARN) of the endpoint group to describe.
newDescribeCustomRoutingEndpointGroup ::
  -- | 'endpointGroupArn'
  Prelude.Text ->
  DescribeCustomRoutingEndpointGroup
newDescribeCustomRoutingEndpointGroup
  pEndpointGroupArn_ =
    DescribeCustomRoutingEndpointGroup'
      { endpointGroupArn =
          pEndpointGroupArn_
      }

-- | The Amazon Resource Name (ARN) of the endpoint group to describe.
describeCustomRoutingEndpointGroup_endpointGroupArn :: Lens.Lens' DescribeCustomRoutingEndpointGroup Prelude.Text
describeCustomRoutingEndpointGroup_endpointGroupArn = Lens.lens (\DescribeCustomRoutingEndpointGroup' {endpointGroupArn} -> endpointGroupArn) (\s@DescribeCustomRoutingEndpointGroup' {} a -> s {endpointGroupArn = a} :: DescribeCustomRoutingEndpointGroup)

instance
  Core.AWSRequest
    DescribeCustomRoutingEndpointGroup
  where
  type
    AWSResponse DescribeCustomRoutingEndpointGroup =
      DescribeCustomRoutingEndpointGroupResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeCustomRoutingEndpointGroupResponse'
            Prelude.<$> (x Core..?> "EndpointGroup")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeCustomRoutingEndpointGroup

instance
  Prelude.NFData
    DescribeCustomRoutingEndpointGroup

instance
  Core.ToHeaders
    DescribeCustomRoutingEndpointGroup
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "GlobalAccelerator_V20180706.DescribeCustomRoutingEndpointGroup" ::
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
    DescribeCustomRoutingEndpointGroup
  where
  toJSON DescribeCustomRoutingEndpointGroup' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("EndpointGroupArn" Core..= endpointGroupArn)
          ]
      )

instance
  Core.ToPath
    DescribeCustomRoutingEndpointGroup
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    DescribeCustomRoutingEndpointGroup
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeCustomRoutingEndpointGroupResponse' smart constructor.
data DescribeCustomRoutingEndpointGroupResponse = DescribeCustomRoutingEndpointGroupResponse'
  { -- | The description of an endpoint group for a custom routing accelerator.
    endpointGroup :: Prelude.Maybe CustomRoutingEndpointGroup,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeCustomRoutingEndpointGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'endpointGroup', 'describeCustomRoutingEndpointGroupResponse_endpointGroup' - The description of an endpoint group for a custom routing accelerator.
--
-- 'httpStatus', 'describeCustomRoutingEndpointGroupResponse_httpStatus' - The response's http status code.
newDescribeCustomRoutingEndpointGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeCustomRoutingEndpointGroupResponse
newDescribeCustomRoutingEndpointGroupResponse
  pHttpStatus_ =
    DescribeCustomRoutingEndpointGroupResponse'
      { endpointGroup =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The description of an endpoint group for a custom routing accelerator.
describeCustomRoutingEndpointGroupResponse_endpointGroup :: Lens.Lens' DescribeCustomRoutingEndpointGroupResponse (Prelude.Maybe CustomRoutingEndpointGroup)
describeCustomRoutingEndpointGroupResponse_endpointGroup = Lens.lens (\DescribeCustomRoutingEndpointGroupResponse' {endpointGroup} -> endpointGroup) (\s@DescribeCustomRoutingEndpointGroupResponse' {} a -> s {endpointGroup = a} :: DescribeCustomRoutingEndpointGroupResponse)

-- | The response's http status code.
describeCustomRoutingEndpointGroupResponse_httpStatus :: Lens.Lens' DescribeCustomRoutingEndpointGroupResponse Prelude.Int
describeCustomRoutingEndpointGroupResponse_httpStatus = Lens.lens (\DescribeCustomRoutingEndpointGroupResponse' {httpStatus} -> httpStatus) (\s@DescribeCustomRoutingEndpointGroupResponse' {} a -> s {httpStatus = a} :: DescribeCustomRoutingEndpointGroupResponse)

instance
  Prelude.NFData
    DescribeCustomRoutingEndpointGroupResponse
