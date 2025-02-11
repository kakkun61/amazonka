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
-- Module      : Network.AWS.GlobalAccelerator.DescribeEndpointGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describe an endpoint group.
module Network.AWS.GlobalAccelerator.DescribeEndpointGroup
  ( -- * Creating a Request
    DescribeEndpointGroup (..),
    newDescribeEndpointGroup,

    -- * Request Lenses
    describeEndpointGroup_endpointGroupArn,

    -- * Destructuring the Response
    DescribeEndpointGroupResponse (..),
    newDescribeEndpointGroupResponse,

    -- * Response Lenses
    describeEndpointGroupResponse_endpointGroup,
    describeEndpointGroupResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.GlobalAccelerator.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeEndpointGroup' smart constructor.
data DescribeEndpointGroup = DescribeEndpointGroup'
  { -- | The Amazon Resource Name (ARN) of the endpoint group to describe.
    endpointGroupArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeEndpointGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'endpointGroupArn', 'describeEndpointGroup_endpointGroupArn' - The Amazon Resource Name (ARN) of the endpoint group to describe.
newDescribeEndpointGroup ::
  -- | 'endpointGroupArn'
  Prelude.Text ->
  DescribeEndpointGroup
newDescribeEndpointGroup pEndpointGroupArn_ =
  DescribeEndpointGroup'
    { endpointGroupArn =
        pEndpointGroupArn_
    }

-- | The Amazon Resource Name (ARN) of the endpoint group to describe.
describeEndpointGroup_endpointGroupArn :: Lens.Lens' DescribeEndpointGroup Prelude.Text
describeEndpointGroup_endpointGroupArn = Lens.lens (\DescribeEndpointGroup' {endpointGroupArn} -> endpointGroupArn) (\s@DescribeEndpointGroup' {} a -> s {endpointGroupArn = a} :: DescribeEndpointGroup)

instance Core.AWSRequest DescribeEndpointGroup where
  type
    AWSResponse DescribeEndpointGroup =
      DescribeEndpointGroupResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeEndpointGroupResponse'
            Prelude.<$> (x Core..?> "EndpointGroup")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeEndpointGroup

instance Prelude.NFData DescribeEndpointGroup

instance Core.ToHeaders DescribeEndpointGroup where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "GlobalAccelerator_V20180706.DescribeEndpointGroup" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeEndpointGroup where
  toJSON DescribeEndpointGroup' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("EndpointGroupArn" Core..= endpointGroupArn)
          ]
      )

instance Core.ToPath DescribeEndpointGroup where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeEndpointGroup where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeEndpointGroupResponse' smart constructor.
data DescribeEndpointGroupResponse = DescribeEndpointGroupResponse'
  { -- | The description of an endpoint group.
    endpointGroup :: Prelude.Maybe EndpointGroup,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeEndpointGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'endpointGroup', 'describeEndpointGroupResponse_endpointGroup' - The description of an endpoint group.
--
-- 'httpStatus', 'describeEndpointGroupResponse_httpStatus' - The response's http status code.
newDescribeEndpointGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeEndpointGroupResponse
newDescribeEndpointGroupResponse pHttpStatus_ =
  DescribeEndpointGroupResponse'
    { endpointGroup =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The description of an endpoint group.
describeEndpointGroupResponse_endpointGroup :: Lens.Lens' DescribeEndpointGroupResponse (Prelude.Maybe EndpointGroup)
describeEndpointGroupResponse_endpointGroup = Lens.lens (\DescribeEndpointGroupResponse' {endpointGroup} -> endpointGroup) (\s@DescribeEndpointGroupResponse' {} a -> s {endpointGroup = a} :: DescribeEndpointGroupResponse)

-- | The response's http status code.
describeEndpointGroupResponse_httpStatus :: Lens.Lens' DescribeEndpointGroupResponse Prelude.Int
describeEndpointGroupResponse_httpStatus = Lens.lens (\DescribeEndpointGroupResponse' {httpStatus} -> httpStatus) (\s@DescribeEndpointGroupResponse' {} a -> s {httpStatus = a} :: DescribeEndpointGroupResponse)

instance Prelude.NFData DescribeEndpointGroupResponse
