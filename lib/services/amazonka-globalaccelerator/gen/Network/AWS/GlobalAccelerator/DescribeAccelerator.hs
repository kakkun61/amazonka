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
-- Module      : Network.AWS.GlobalAccelerator.DescribeAccelerator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describe an accelerator.
module Network.AWS.GlobalAccelerator.DescribeAccelerator
  ( -- * Creating a Request
    DescribeAccelerator (..),
    newDescribeAccelerator,

    -- * Request Lenses
    describeAccelerator_acceleratorArn,

    -- * Destructuring the Response
    DescribeAcceleratorResponse (..),
    newDescribeAcceleratorResponse,

    -- * Response Lenses
    describeAcceleratorResponse_accelerator,
    describeAcceleratorResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.GlobalAccelerator.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeAccelerator' smart constructor.
data DescribeAccelerator = DescribeAccelerator'
  { -- | The Amazon Resource Name (ARN) of the accelerator to describe.
    acceleratorArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAccelerator' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'acceleratorArn', 'describeAccelerator_acceleratorArn' - The Amazon Resource Name (ARN) of the accelerator to describe.
newDescribeAccelerator ::
  -- | 'acceleratorArn'
  Prelude.Text ->
  DescribeAccelerator
newDescribeAccelerator pAcceleratorArn_ =
  DescribeAccelerator'
    { acceleratorArn =
        pAcceleratorArn_
    }

-- | The Amazon Resource Name (ARN) of the accelerator to describe.
describeAccelerator_acceleratorArn :: Lens.Lens' DescribeAccelerator Prelude.Text
describeAccelerator_acceleratorArn = Lens.lens (\DescribeAccelerator' {acceleratorArn} -> acceleratorArn) (\s@DescribeAccelerator' {} a -> s {acceleratorArn = a} :: DescribeAccelerator)

instance Core.AWSRequest DescribeAccelerator where
  type
    AWSResponse DescribeAccelerator =
      DescribeAcceleratorResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeAcceleratorResponse'
            Prelude.<$> (x Core..?> "Accelerator")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeAccelerator

instance Prelude.NFData DescribeAccelerator

instance Core.ToHeaders DescribeAccelerator where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "GlobalAccelerator_V20180706.DescribeAccelerator" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeAccelerator where
  toJSON DescribeAccelerator' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("AcceleratorArn" Core..= acceleratorArn)
          ]
      )

instance Core.ToPath DescribeAccelerator where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeAccelerator where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeAcceleratorResponse' smart constructor.
data DescribeAcceleratorResponse = DescribeAcceleratorResponse'
  { -- | The description of the accelerator.
    accelerator :: Prelude.Maybe Accelerator,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAcceleratorResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accelerator', 'describeAcceleratorResponse_accelerator' - The description of the accelerator.
--
-- 'httpStatus', 'describeAcceleratorResponse_httpStatus' - The response's http status code.
newDescribeAcceleratorResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeAcceleratorResponse
newDescribeAcceleratorResponse pHttpStatus_ =
  DescribeAcceleratorResponse'
    { accelerator =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The description of the accelerator.
describeAcceleratorResponse_accelerator :: Lens.Lens' DescribeAcceleratorResponse (Prelude.Maybe Accelerator)
describeAcceleratorResponse_accelerator = Lens.lens (\DescribeAcceleratorResponse' {accelerator} -> accelerator) (\s@DescribeAcceleratorResponse' {} a -> s {accelerator = a} :: DescribeAcceleratorResponse)

-- | The response's http status code.
describeAcceleratorResponse_httpStatus :: Lens.Lens' DescribeAcceleratorResponse Prelude.Int
describeAcceleratorResponse_httpStatus = Lens.lens (\DescribeAcceleratorResponse' {httpStatus} -> httpStatus) (\s@DescribeAcceleratorResponse' {} a -> s {httpStatus = a} :: DescribeAcceleratorResponse)

instance Prelude.NFData DescribeAcceleratorResponse
