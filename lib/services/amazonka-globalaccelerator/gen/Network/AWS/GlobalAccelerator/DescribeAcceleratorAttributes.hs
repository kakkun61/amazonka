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
-- Module      : Network.AWS.GlobalAccelerator.DescribeAcceleratorAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describe the attributes of an accelerator.
module Network.AWS.GlobalAccelerator.DescribeAcceleratorAttributes
  ( -- * Creating a Request
    DescribeAcceleratorAttributes (..),
    newDescribeAcceleratorAttributes,

    -- * Request Lenses
    describeAcceleratorAttributes_acceleratorArn,

    -- * Destructuring the Response
    DescribeAcceleratorAttributesResponse (..),
    newDescribeAcceleratorAttributesResponse,

    -- * Response Lenses
    describeAcceleratorAttributesResponse_acceleratorAttributes,
    describeAcceleratorAttributesResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.GlobalAccelerator.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeAcceleratorAttributes' smart constructor.
data DescribeAcceleratorAttributes = DescribeAcceleratorAttributes'
  { -- | The Amazon Resource Name (ARN) of the accelerator with the attributes
    -- that you want to describe.
    acceleratorArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAcceleratorAttributes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'acceleratorArn', 'describeAcceleratorAttributes_acceleratorArn' - The Amazon Resource Name (ARN) of the accelerator with the attributes
-- that you want to describe.
newDescribeAcceleratorAttributes ::
  -- | 'acceleratorArn'
  Prelude.Text ->
  DescribeAcceleratorAttributes
newDescribeAcceleratorAttributes pAcceleratorArn_ =
  DescribeAcceleratorAttributes'
    { acceleratorArn =
        pAcceleratorArn_
    }

-- | The Amazon Resource Name (ARN) of the accelerator with the attributes
-- that you want to describe.
describeAcceleratorAttributes_acceleratorArn :: Lens.Lens' DescribeAcceleratorAttributes Prelude.Text
describeAcceleratorAttributes_acceleratorArn = Lens.lens (\DescribeAcceleratorAttributes' {acceleratorArn} -> acceleratorArn) (\s@DescribeAcceleratorAttributes' {} a -> s {acceleratorArn = a} :: DescribeAcceleratorAttributes)

instance
  Core.AWSRequest
    DescribeAcceleratorAttributes
  where
  type
    AWSResponse DescribeAcceleratorAttributes =
      DescribeAcceleratorAttributesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeAcceleratorAttributesResponse'
            Prelude.<$> (x Core..?> "AcceleratorAttributes")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeAcceleratorAttributes

instance Prelude.NFData DescribeAcceleratorAttributes

instance Core.ToHeaders DescribeAcceleratorAttributes where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "GlobalAccelerator_V20180706.DescribeAcceleratorAttributes" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeAcceleratorAttributes where
  toJSON DescribeAcceleratorAttributes' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("AcceleratorArn" Core..= acceleratorArn)
          ]
      )

instance Core.ToPath DescribeAcceleratorAttributes where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeAcceleratorAttributes where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeAcceleratorAttributesResponse' smart constructor.
data DescribeAcceleratorAttributesResponse = DescribeAcceleratorAttributesResponse'
  { -- | The attributes of the accelerator.
    acceleratorAttributes :: Prelude.Maybe AcceleratorAttributes,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAcceleratorAttributesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'acceleratorAttributes', 'describeAcceleratorAttributesResponse_acceleratorAttributes' - The attributes of the accelerator.
--
-- 'httpStatus', 'describeAcceleratorAttributesResponse_httpStatus' - The response's http status code.
newDescribeAcceleratorAttributesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeAcceleratorAttributesResponse
newDescribeAcceleratorAttributesResponse pHttpStatus_ =
  DescribeAcceleratorAttributesResponse'
    { acceleratorAttributes =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The attributes of the accelerator.
describeAcceleratorAttributesResponse_acceleratorAttributes :: Lens.Lens' DescribeAcceleratorAttributesResponse (Prelude.Maybe AcceleratorAttributes)
describeAcceleratorAttributesResponse_acceleratorAttributes = Lens.lens (\DescribeAcceleratorAttributesResponse' {acceleratorAttributes} -> acceleratorAttributes) (\s@DescribeAcceleratorAttributesResponse' {} a -> s {acceleratorAttributes = a} :: DescribeAcceleratorAttributesResponse)

-- | The response's http status code.
describeAcceleratorAttributesResponse_httpStatus :: Lens.Lens' DescribeAcceleratorAttributesResponse Prelude.Int
describeAcceleratorAttributesResponse_httpStatus = Lens.lens (\DescribeAcceleratorAttributesResponse' {httpStatus} -> httpStatus) (\s@DescribeAcceleratorAttributesResponse' {} a -> s {httpStatus = a} :: DescribeAcceleratorAttributesResponse)

instance
  Prelude.NFData
    DescribeAcceleratorAttributesResponse
