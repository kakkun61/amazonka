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
-- Module      : Network.AWS.Synthetics.StartCanary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Use this operation to run a canary that has already been created. The
-- frequency of the canary runs is determined by the value of the canary\'s
-- @Schedule@. To see a canary\'s schedule, use
-- <https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanary.html GetCanary>.
module Network.AWS.Synthetics.StartCanary
  ( -- * Creating a Request
    StartCanary (..),
    newStartCanary,

    -- * Request Lenses
    startCanary_name,

    -- * Destructuring the Response
    StartCanaryResponse (..),
    newStartCanaryResponse,

    -- * Response Lenses
    startCanaryResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Synthetics.Types

-- | /See:/ 'newStartCanary' smart constructor.
data StartCanary = StartCanary'
  { -- | The name of the canary that you want to run. To find canary names, use
    -- <https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html DescribeCanaries>.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartCanary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'startCanary_name' - The name of the canary that you want to run. To find canary names, use
-- <https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html DescribeCanaries>.
newStartCanary ::
  -- | 'name'
  Prelude.Text ->
  StartCanary
newStartCanary pName_ = StartCanary' {name = pName_}

-- | The name of the canary that you want to run. To find canary names, use
-- <https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html DescribeCanaries>.
startCanary_name :: Lens.Lens' StartCanary Prelude.Text
startCanary_name = Lens.lens (\StartCanary' {name} -> name) (\s@StartCanary' {} a -> s {name = a} :: StartCanary)

instance Core.AWSRequest StartCanary where
  type AWSResponse StartCanary = StartCanaryResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          StartCanaryResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable StartCanary

instance Prelude.NFData StartCanary

instance Core.ToHeaders StartCanary where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON StartCanary where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath StartCanary where
  toPath StartCanary' {..} =
    Prelude.mconcat
      ["/canary/", Core.toBS name, "/start"]

instance Core.ToQuery StartCanary where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newStartCanaryResponse' smart constructor.
data StartCanaryResponse = StartCanaryResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartCanaryResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'startCanaryResponse_httpStatus' - The response's http status code.
newStartCanaryResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  StartCanaryResponse
newStartCanaryResponse pHttpStatus_ =
  StartCanaryResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
startCanaryResponse_httpStatus :: Lens.Lens' StartCanaryResponse Prelude.Int
startCanaryResponse_httpStatus = Lens.lens (\StartCanaryResponse' {httpStatus} -> httpStatus) (\s@StartCanaryResponse' {} a -> s {httpStatus = a} :: StartCanaryResponse)

instance Prelude.NFData StartCanaryResponse
