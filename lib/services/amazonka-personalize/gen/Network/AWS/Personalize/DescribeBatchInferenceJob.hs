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
-- Module      : Network.AWS.Personalize.DescribeBatchInferenceJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the properties of a batch inference job including name, Amazon
-- Resource Name (ARN), status, input and output configurations, and the
-- ARN of the solution version used to generate the recommendations.
module Network.AWS.Personalize.DescribeBatchInferenceJob
  ( -- * Creating a Request
    DescribeBatchInferenceJob (..),
    newDescribeBatchInferenceJob,

    -- * Request Lenses
    describeBatchInferenceJob_batchInferenceJobArn,

    -- * Destructuring the Response
    DescribeBatchInferenceJobResponse (..),
    newDescribeBatchInferenceJobResponse,

    -- * Response Lenses
    describeBatchInferenceJobResponse_batchInferenceJob,
    describeBatchInferenceJobResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Personalize.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeBatchInferenceJob' smart constructor.
data DescribeBatchInferenceJob = DescribeBatchInferenceJob'
  { -- | The ARN of the batch inference job to describe.
    batchInferenceJobArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeBatchInferenceJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'batchInferenceJobArn', 'describeBatchInferenceJob_batchInferenceJobArn' - The ARN of the batch inference job to describe.
newDescribeBatchInferenceJob ::
  -- | 'batchInferenceJobArn'
  Prelude.Text ->
  DescribeBatchInferenceJob
newDescribeBatchInferenceJob pBatchInferenceJobArn_ =
  DescribeBatchInferenceJob'
    { batchInferenceJobArn =
        pBatchInferenceJobArn_
    }

-- | The ARN of the batch inference job to describe.
describeBatchInferenceJob_batchInferenceJobArn :: Lens.Lens' DescribeBatchInferenceJob Prelude.Text
describeBatchInferenceJob_batchInferenceJobArn = Lens.lens (\DescribeBatchInferenceJob' {batchInferenceJobArn} -> batchInferenceJobArn) (\s@DescribeBatchInferenceJob' {} a -> s {batchInferenceJobArn = a} :: DescribeBatchInferenceJob)

instance Core.AWSRequest DescribeBatchInferenceJob where
  type
    AWSResponse DescribeBatchInferenceJob =
      DescribeBatchInferenceJobResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeBatchInferenceJobResponse'
            Prelude.<$> (x Core..?> "batchInferenceJob")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeBatchInferenceJob

instance Prelude.NFData DescribeBatchInferenceJob

instance Core.ToHeaders DescribeBatchInferenceJob where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonPersonalize.DescribeBatchInferenceJob" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeBatchInferenceJob where
  toJSON DescribeBatchInferenceJob' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "batchInferenceJobArn"
                  Core..= batchInferenceJobArn
              )
          ]
      )

instance Core.ToPath DescribeBatchInferenceJob where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeBatchInferenceJob where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeBatchInferenceJobResponse' smart constructor.
data DescribeBatchInferenceJobResponse = DescribeBatchInferenceJobResponse'
  { -- | Information on the specified batch inference job.
    batchInferenceJob :: Prelude.Maybe BatchInferenceJob,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeBatchInferenceJobResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'batchInferenceJob', 'describeBatchInferenceJobResponse_batchInferenceJob' - Information on the specified batch inference job.
--
-- 'httpStatus', 'describeBatchInferenceJobResponse_httpStatus' - The response's http status code.
newDescribeBatchInferenceJobResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeBatchInferenceJobResponse
newDescribeBatchInferenceJobResponse pHttpStatus_ =
  DescribeBatchInferenceJobResponse'
    { batchInferenceJob =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information on the specified batch inference job.
describeBatchInferenceJobResponse_batchInferenceJob :: Lens.Lens' DescribeBatchInferenceJobResponse (Prelude.Maybe BatchInferenceJob)
describeBatchInferenceJobResponse_batchInferenceJob = Lens.lens (\DescribeBatchInferenceJobResponse' {batchInferenceJob} -> batchInferenceJob) (\s@DescribeBatchInferenceJobResponse' {} a -> s {batchInferenceJob = a} :: DescribeBatchInferenceJobResponse)

-- | The response's http status code.
describeBatchInferenceJobResponse_httpStatus :: Lens.Lens' DescribeBatchInferenceJobResponse Prelude.Int
describeBatchInferenceJobResponse_httpStatus = Lens.lens (\DescribeBatchInferenceJobResponse' {httpStatus} -> httpStatus) (\s@DescribeBatchInferenceJobResponse' {} a -> s {httpStatus = a} :: DescribeBatchInferenceJobResponse)

instance
  Prelude.NFData
    DescribeBatchInferenceJobResponse
