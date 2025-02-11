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
-- Module      : Network.AWS.Synthetics.StopCanary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops the canary to prevent all future runs. If the canary is currently
-- running, Synthetics stops waiting for the current run of the specified
-- canary to complete. The run that is in progress completes on its own,
-- publishes metrics, and uploads artifacts, but it is not recorded in
-- Synthetics as a completed run.
--
-- You can use @StartCanary@ to start it running again with the canary’s
-- current schedule at any point in the future.
module Network.AWS.Synthetics.StopCanary
  ( -- * Creating a Request
    StopCanary (..),
    newStopCanary,

    -- * Request Lenses
    stopCanary_name,

    -- * Destructuring the Response
    StopCanaryResponse (..),
    newStopCanaryResponse,

    -- * Response Lenses
    stopCanaryResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Synthetics.Types

-- | /See:/ 'newStopCanary' smart constructor.
data StopCanary = StopCanary'
  { -- | The name of the canary that you want to stop. To find the names of your
    -- canaries, use
    -- <https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html DescribeCanaries>.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopCanary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'stopCanary_name' - The name of the canary that you want to stop. To find the names of your
-- canaries, use
-- <https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html DescribeCanaries>.
newStopCanary ::
  -- | 'name'
  Prelude.Text ->
  StopCanary
newStopCanary pName_ = StopCanary' {name = pName_}

-- | The name of the canary that you want to stop. To find the names of your
-- canaries, use
-- <https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html DescribeCanaries>.
stopCanary_name :: Lens.Lens' StopCanary Prelude.Text
stopCanary_name = Lens.lens (\StopCanary' {name} -> name) (\s@StopCanary' {} a -> s {name = a} :: StopCanary)

instance Core.AWSRequest StopCanary where
  type AWSResponse StopCanary = StopCanaryResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          StopCanaryResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable StopCanary

instance Prelude.NFData StopCanary

instance Core.ToHeaders StopCanary where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON StopCanary where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath StopCanary where
  toPath StopCanary' {..} =
    Prelude.mconcat
      ["/canary/", Core.toBS name, "/stop"]

instance Core.ToQuery StopCanary where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newStopCanaryResponse' smart constructor.
data StopCanaryResponse = StopCanaryResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopCanaryResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'stopCanaryResponse_httpStatus' - The response's http status code.
newStopCanaryResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  StopCanaryResponse
newStopCanaryResponse pHttpStatus_ =
  StopCanaryResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
stopCanaryResponse_httpStatus :: Lens.Lens' StopCanaryResponse Prelude.Int
stopCanaryResponse_httpStatus = Lens.lens (\StopCanaryResponse' {httpStatus} -> httpStatus) (\s@StopCanaryResponse' {} a -> s {httpStatus = a} :: StopCanaryResponse)

instance Prelude.NFData StopCanaryResponse
