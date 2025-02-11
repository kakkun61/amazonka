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
-- Module      : Network.AWS.Kafka.DescribeClusterOperation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a description of the cluster operation specified by the ARN.
module Network.AWS.Kafka.DescribeClusterOperation
  ( -- * Creating a Request
    DescribeClusterOperation (..),
    newDescribeClusterOperation,

    -- * Request Lenses
    describeClusterOperation_clusterOperationArn,

    -- * Destructuring the Response
    DescribeClusterOperationResponse (..),
    newDescribeClusterOperationResponse,

    -- * Response Lenses
    describeClusterOperationResponse_clusterOperationInfo,
    describeClusterOperationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Kafka.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeClusterOperation' smart constructor.
data DescribeClusterOperation = DescribeClusterOperation'
  { -- | The Amazon Resource Name (ARN) that uniquely identifies the MSK cluster
    -- operation.
    clusterOperationArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeClusterOperation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clusterOperationArn', 'describeClusterOperation_clusterOperationArn' - The Amazon Resource Name (ARN) that uniquely identifies the MSK cluster
-- operation.
newDescribeClusterOperation ::
  -- | 'clusterOperationArn'
  Prelude.Text ->
  DescribeClusterOperation
newDescribeClusterOperation pClusterOperationArn_ =
  DescribeClusterOperation'
    { clusterOperationArn =
        pClusterOperationArn_
    }

-- | The Amazon Resource Name (ARN) that uniquely identifies the MSK cluster
-- operation.
describeClusterOperation_clusterOperationArn :: Lens.Lens' DescribeClusterOperation Prelude.Text
describeClusterOperation_clusterOperationArn = Lens.lens (\DescribeClusterOperation' {clusterOperationArn} -> clusterOperationArn) (\s@DescribeClusterOperation' {} a -> s {clusterOperationArn = a} :: DescribeClusterOperation)

instance Core.AWSRequest DescribeClusterOperation where
  type
    AWSResponse DescribeClusterOperation =
      DescribeClusterOperationResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeClusterOperationResponse'
            Prelude.<$> (x Core..?> "clusterOperationInfo")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeClusterOperation

instance Prelude.NFData DescribeClusterOperation

instance Core.ToHeaders DescribeClusterOperation where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeClusterOperation where
  toPath DescribeClusterOperation' {..} =
    Prelude.mconcat
      ["/v1/operations/", Core.toBS clusterOperationArn]

instance Core.ToQuery DescribeClusterOperation where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeClusterOperationResponse' smart constructor.
data DescribeClusterOperationResponse = DescribeClusterOperationResponse'
  { -- | Cluster operation information
    clusterOperationInfo :: Prelude.Maybe ClusterOperationInfo,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeClusterOperationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clusterOperationInfo', 'describeClusterOperationResponse_clusterOperationInfo' - Cluster operation information
--
-- 'httpStatus', 'describeClusterOperationResponse_httpStatus' - The response's http status code.
newDescribeClusterOperationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeClusterOperationResponse
newDescribeClusterOperationResponse pHttpStatus_ =
  DescribeClusterOperationResponse'
    { clusterOperationInfo =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Cluster operation information
describeClusterOperationResponse_clusterOperationInfo :: Lens.Lens' DescribeClusterOperationResponse (Prelude.Maybe ClusterOperationInfo)
describeClusterOperationResponse_clusterOperationInfo = Lens.lens (\DescribeClusterOperationResponse' {clusterOperationInfo} -> clusterOperationInfo) (\s@DescribeClusterOperationResponse' {} a -> s {clusterOperationInfo = a} :: DescribeClusterOperationResponse)

-- | The response's http status code.
describeClusterOperationResponse_httpStatus :: Lens.Lens' DescribeClusterOperationResponse Prelude.Int
describeClusterOperationResponse_httpStatus = Lens.lens (\DescribeClusterOperationResponse' {httpStatus} -> httpStatus) (\s@DescribeClusterOperationResponse' {} a -> s {httpStatus = a} :: DescribeClusterOperationResponse)

instance
  Prelude.NFData
    DescribeClusterOperationResponse
