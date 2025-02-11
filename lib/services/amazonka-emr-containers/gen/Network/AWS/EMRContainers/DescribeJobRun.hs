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
-- Module      : Network.AWS.EMRContainers.DescribeJobRun
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Displays detailed information about a job run. A job run is a unit of
-- work, such as a Spark jar, PySpark script, or SparkSQL query, that you
-- submit to Amazon EMR on EKS.
module Network.AWS.EMRContainers.DescribeJobRun
  ( -- * Creating a Request
    DescribeJobRun (..),
    newDescribeJobRun,

    -- * Request Lenses
    describeJobRun_id,
    describeJobRun_virtualClusterId,

    -- * Destructuring the Response
    DescribeJobRunResponse (..),
    newDescribeJobRunResponse,

    -- * Response Lenses
    describeJobRunResponse_jobRun,
    describeJobRunResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.EMRContainers.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeJobRun' smart constructor.
data DescribeJobRun = DescribeJobRun'
  { -- | The ID of the job run request.
    id :: Prelude.Text,
    -- | The ID of the virtual cluster for which the job run is submitted.
    virtualClusterId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeJobRun' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'describeJobRun_id' - The ID of the job run request.
--
-- 'virtualClusterId', 'describeJobRun_virtualClusterId' - The ID of the virtual cluster for which the job run is submitted.
newDescribeJobRun ::
  -- | 'id'
  Prelude.Text ->
  -- | 'virtualClusterId'
  Prelude.Text ->
  DescribeJobRun
newDescribeJobRun pId_ pVirtualClusterId_ =
  DescribeJobRun'
    { id = pId_,
      virtualClusterId = pVirtualClusterId_
    }

-- | The ID of the job run request.
describeJobRun_id :: Lens.Lens' DescribeJobRun Prelude.Text
describeJobRun_id = Lens.lens (\DescribeJobRun' {id} -> id) (\s@DescribeJobRun' {} a -> s {id = a} :: DescribeJobRun)

-- | The ID of the virtual cluster for which the job run is submitted.
describeJobRun_virtualClusterId :: Lens.Lens' DescribeJobRun Prelude.Text
describeJobRun_virtualClusterId = Lens.lens (\DescribeJobRun' {virtualClusterId} -> virtualClusterId) (\s@DescribeJobRun' {} a -> s {virtualClusterId = a} :: DescribeJobRun)

instance Core.AWSRequest DescribeJobRun where
  type
    AWSResponse DescribeJobRun =
      DescribeJobRunResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeJobRunResponse'
            Prelude.<$> (x Core..?> "jobRun")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeJobRun

instance Prelude.NFData DescribeJobRun

instance Core.ToHeaders DescribeJobRun where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeJobRun where
  toPath DescribeJobRun' {..} =
    Prelude.mconcat
      [ "/virtualclusters/",
        Core.toBS virtualClusterId,
        "/jobruns/",
        Core.toBS id
      ]

instance Core.ToQuery DescribeJobRun where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeJobRunResponse' smart constructor.
data DescribeJobRunResponse = DescribeJobRunResponse'
  { -- | The output displays information about a job run.
    jobRun :: Prelude.Maybe JobRun,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeJobRunResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobRun', 'describeJobRunResponse_jobRun' - The output displays information about a job run.
--
-- 'httpStatus', 'describeJobRunResponse_httpStatus' - The response's http status code.
newDescribeJobRunResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeJobRunResponse
newDescribeJobRunResponse pHttpStatus_ =
  DescribeJobRunResponse'
    { jobRun = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The output displays information about a job run.
describeJobRunResponse_jobRun :: Lens.Lens' DescribeJobRunResponse (Prelude.Maybe JobRun)
describeJobRunResponse_jobRun = Lens.lens (\DescribeJobRunResponse' {jobRun} -> jobRun) (\s@DescribeJobRunResponse' {} a -> s {jobRun = a} :: DescribeJobRunResponse)

-- | The response's http status code.
describeJobRunResponse_httpStatus :: Lens.Lens' DescribeJobRunResponse Prelude.Int
describeJobRunResponse_httpStatus = Lens.lens (\DescribeJobRunResponse' {httpStatus} -> httpStatus) (\s@DescribeJobRunResponse' {} a -> s {httpStatus = a} :: DescribeJobRunResponse)

instance Prelude.NFData DescribeJobRunResponse
