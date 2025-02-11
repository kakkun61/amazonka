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
-- Module      : Network.AWS.RobOMaker.DescribeWorldGenerationJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a world generation job.
module Network.AWS.RobOMaker.DescribeWorldGenerationJob
  ( -- * Creating a Request
    DescribeWorldGenerationJob (..),
    newDescribeWorldGenerationJob,

    -- * Request Lenses
    describeWorldGenerationJob_job,

    -- * Destructuring the Response
    DescribeWorldGenerationJobResponse (..),
    newDescribeWorldGenerationJobResponse,

    -- * Response Lenses
    describeWorldGenerationJobResponse_failureReason,
    describeWorldGenerationJobResponse_status,
    describeWorldGenerationJobResponse_arn,
    describeWorldGenerationJobResponse_createdAt,
    describeWorldGenerationJobResponse_failureCode,
    describeWorldGenerationJobResponse_worldCount,
    describeWorldGenerationJobResponse_finishedWorldsSummary,
    describeWorldGenerationJobResponse_template,
    describeWorldGenerationJobResponse_worldTags,
    describeWorldGenerationJobResponse_clientRequestToken,
    describeWorldGenerationJobResponse_tags,
    describeWorldGenerationJobResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.RobOMaker.Types

-- | /See:/ 'newDescribeWorldGenerationJob' smart constructor.
data DescribeWorldGenerationJob = DescribeWorldGenerationJob'
  { -- | The Amazon Resource Name (arn) of the world generation job to describe.
    job :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeWorldGenerationJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'job', 'describeWorldGenerationJob_job' - The Amazon Resource Name (arn) of the world generation job to describe.
newDescribeWorldGenerationJob ::
  -- | 'job'
  Prelude.Text ->
  DescribeWorldGenerationJob
newDescribeWorldGenerationJob pJob_ =
  DescribeWorldGenerationJob' {job = pJob_}

-- | The Amazon Resource Name (arn) of the world generation job to describe.
describeWorldGenerationJob_job :: Lens.Lens' DescribeWorldGenerationJob Prelude.Text
describeWorldGenerationJob_job = Lens.lens (\DescribeWorldGenerationJob' {job} -> job) (\s@DescribeWorldGenerationJob' {} a -> s {job = a} :: DescribeWorldGenerationJob)

instance Core.AWSRequest DescribeWorldGenerationJob where
  type
    AWSResponse DescribeWorldGenerationJob =
      DescribeWorldGenerationJobResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeWorldGenerationJobResponse'
            Prelude.<$> (x Core..?> "failureReason")
            Prelude.<*> (x Core..?> "status")
            Prelude.<*> (x Core..?> "arn")
            Prelude.<*> (x Core..?> "createdAt")
            Prelude.<*> (x Core..?> "failureCode")
            Prelude.<*> (x Core..?> "worldCount")
            Prelude.<*> (x Core..?> "finishedWorldsSummary")
            Prelude.<*> (x Core..?> "template")
            Prelude.<*> (x Core..?> "worldTags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "clientRequestToken")
            Prelude.<*> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeWorldGenerationJob

instance Prelude.NFData DescribeWorldGenerationJob

instance Core.ToHeaders DescribeWorldGenerationJob where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeWorldGenerationJob where
  toJSON DescribeWorldGenerationJob' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("job" Core..= job)]
      )

instance Core.ToPath DescribeWorldGenerationJob where
  toPath = Prelude.const "/describeWorldGenerationJob"

instance Core.ToQuery DescribeWorldGenerationJob where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeWorldGenerationJobResponse' smart constructor.
data DescribeWorldGenerationJobResponse = DescribeWorldGenerationJobResponse'
  { -- | The reason why the world generation job failed.
    failureReason :: Prelude.Maybe Prelude.Text,
    -- | The status of the world generation job:
    --
    -- [Pending]
    --     The world generation job request is pending.
    --
    -- [Running]
    --     The world generation job is running.
    --
    -- [Completed]
    --     The world generation job completed.
    --
    -- [Failed]
    --     The world generation job failed. See @failureCode@ for more
    --     information.
    --
    -- [PartialFailed]
    --     Some worlds did not generate.
    --
    -- [Canceled]
    --     The world generation job was cancelled.
    --
    -- [Canceling]
    --     The world generation job is being cancelled.
    status :: Prelude.Maybe WorldGenerationJobStatus,
    -- | The Amazon Resource Name (ARN) of the world generation job.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The time, in milliseconds since the epoch, when the world generation job
    -- was created.
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | The failure code of the world generation job if it failed:
    --
    -- [InternalServiceError]
    --     Internal service error.
    --
    -- [LimitExceeded]
    --     The requested resource exceeds the maximum number allowed, or the
    --     number of concurrent stream requests exceeds the maximum number
    --     allowed.
    --
    -- [ResourceNotFound]
    --     The specified resource could not be found.
    --
    -- [RequestThrottled]
    --     The request was throttled.
    --
    -- [InvalidInput]
    --     An input parameter in the request is not valid.
    failureCode :: Prelude.Maybe WorldGenerationJobErrorCode,
    -- | Information about the world count.
    worldCount :: Prelude.Maybe WorldCount,
    -- | Summary information about finished worlds.
    finishedWorldsSummary :: Prelude.Maybe FinishedWorldsSummary,
    -- | The Amazon Resource Name (arn) of the world template.
    template :: Prelude.Maybe Prelude.Text,
    -- | A map that contains tag keys and tag values that are attached to the
    -- generated worlds.
    worldTags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request.
    clientRequestToken :: Prelude.Maybe Prelude.Text,
    -- | A map that contains tag keys and tag values that are attached to the
    -- world generation job.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeWorldGenerationJobResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'failureReason', 'describeWorldGenerationJobResponse_failureReason' - The reason why the world generation job failed.
--
-- 'status', 'describeWorldGenerationJobResponse_status' - The status of the world generation job:
--
-- [Pending]
--     The world generation job request is pending.
--
-- [Running]
--     The world generation job is running.
--
-- [Completed]
--     The world generation job completed.
--
-- [Failed]
--     The world generation job failed. See @failureCode@ for more
--     information.
--
-- [PartialFailed]
--     Some worlds did not generate.
--
-- [Canceled]
--     The world generation job was cancelled.
--
-- [Canceling]
--     The world generation job is being cancelled.
--
-- 'arn', 'describeWorldGenerationJobResponse_arn' - The Amazon Resource Name (ARN) of the world generation job.
--
-- 'createdAt', 'describeWorldGenerationJobResponse_createdAt' - The time, in milliseconds since the epoch, when the world generation job
-- was created.
--
-- 'failureCode', 'describeWorldGenerationJobResponse_failureCode' - The failure code of the world generation job if it failed:
--
-- [InternalServiceError]
--     Internal service error.
--
-- [LimitExceeded]
--     The requested resource exceeds the maximum number allowed, or the
--     number of concurrent stream requests exceeds the maximum number
--     allowed.
--
-- [ResourceNotFound]
--     The specified resource could not be found.
--
-- [RequestThrottled]
--     The request was throttled.
--
-- [InvalidInput]
--     An input parameter in the request is not valid.
--
-- 'worldCount', 'describeWorldGenerationJobResponse_worldCount' - Information about the world count.
--
-- 'finishedWorldsSummary', 'describeWorldGenerationJobResponse_finishedWorldsSummary' - Summary information about finished worlds.
--
-- 'template', 'describeWorldGenerationJobResponse_template' - The Amazon Resource Name (arn) of the world template.
--
-- 'worldTags', 'describeWorldGenerationJobResponse_worldTags' - A map that contains tag keys and tag values that are attached to the
-- generated worlds.
--
-- 'clientRequestToken', 'describeWorldGenerationJobResponse_clientRequestToken' - Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request.
--
-- 'tags', 'describeWorldGenerationJobResponse_tags' - A map that contains tag keys and tag values that are attached to the
-- world generation job.
--
-- 'httpStatus', 'describeWorldGenerationJobResponse_httpStatus' - The response's http status code.
newDescribeWorldGenerationJobResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeWorldGenerationJobResponse
newDescribeWorldGenerationJobResponse pHttpStatus_ =
  DescribeWorldGenerationJobResponse'
    { failureReason =
        Prelude.Nothing,
      status = Prelude.Nothing,
      arn = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      failureCode = Prelude.Nothing,
      worldCount = Prelude.Nothing,
      finishedWorldsSummary = Prelude.Nothing,
      template = Prelude.Nothing,
      worldTags = Prelude.Nothing,
      clientRequestToken = Prelude.Nothing,
      tags = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The reason why the world generation job failed.
describeWorldGenerationJobResponse_failureReason :: Lens.Lens' DescribeWorldGenerationJobResponse (Prelude.Maybe Prelude.Text)
describeWorldGenerationJobResponse_failureReason = Lens.lens (\DescribeWorldGenerationJobResponse' {failureReason} -> failureReason) (\s@DescribeWorldGenerationJobResponse' {} a -> s {failureReason = a} :: DescribeWorldGenerationJobResponse)

-- | The status of the world generation job:
--
-- [Pending]
--     The world generation job request is pending.
--
-- [Running]
--     The world generation job is running.
--
-- [Completed]
--     The world generation job completed.
--
-- [Failed]
--     The world generation job failed. See @failureCode@ for more
--     information.
--
-- [PartialFailed]
--     Some worlds did not generate.
--
-- [Canceled]
--     The world generation job was cancelled.
--
-- [Canceling]
--     The world generation job is being cancelled.
describeWorldGenerationJobResponse_status :: Lens.Lens' DescribeWorldGenerationJobResponse (Prelude.Maybe WorldGenerationJobStatus)
describeWorldGenerationJobResponse_status = Lens.lens (\DescribeWorldGenerationJobResponse' {status} -> status) (\s@DescribeWorldGenerationJobResponse' {} a -> s {status = a} :: DescribeWorldGenerationJobResponse)

-- | The Amazon Resource Name (ARN) of the world generation job.
describeWorldGenerationJobResponse_arn :: Lens.Lens' DescribeWorldGenerationJobResponse (Prelude.Maybe Prelude.Text)
describeWorldGenerationJobResponse_arn = Lens.lens (\DescribeWorldGenerationJobResponse' {arn} -> arn) (\s@DescribeWorldGenerationJobResponse' {} a -> s {arn = a} :: DescribeWorldGenerationJobResponse)

-- | The time, in milliseconds since the epoch, when the world generation job
-- was created.
describeWorldGenerationJobResponse_createdAt :: Lens.Lens' DescribeWorldGenerationJobResponse (Prelude.Maybe Prelude.UTCTime)
describeWorldGenerationJobResponse_createdAt = Lens.lens (\DescribeWorldGenerationJobResponse' {createdAt} -> createdAt) (\s@DescribeWorldGenerationJobResponse' {} a -> s {createdAt = a} :: DescribeWorldGenerationJobResponse) Prelude.. Lens.mapping Core._Time

-- | The failure code of the world generation job if it failed:
--
-- [InternalServiceError]
--     Internal service error.
--
-- [LimitExceeded]
--     The requested resource exceeds the maximum number allowed, or the
--     number of concurrent stream requests exceeds the maximum number
--     allowed.
--
-- [ResourceNotFound]
--     The specified resource could not be found.
--
-- [RequestThrottled]
--     The request was throttled.
--
-- [InvalidInput]
--     An input parameter in the request is not valid.
describeWorldGenerationJobResponse_failureCode :: Lens.Lens' DescribeWorldGenerationJobResponse (Prelude.Maybe WorldGenerationJobErrorCode)
describeWorldGenerationJobResponse_failureCode = Lens.lens (\DescribeWorldGenerationJobResponse' {failureCode} -> failureCode) (\s@DescribeWorldGenerationJobResponse' {} a -> s {failureCode = a} :: DescribeWorldGenerationJobResponse)

-- | Information about the world count.
describeWorldGenerationJobResponse_worldCount :: Lens.Lens' DescribeWorldGenerationJobResponse (Prelude.Maybe WorldCount)
describeWorldGenerationJobResponse_worldCount = Lens.lens (\DescribeWorldGenerationJobResponse' {worldCount} -> worldCount) (\s@DescribeWorldGenerationJobResponse' {} a -> s {worldCount = a} :: DescribeWorldGenerationJobResponse)

-- | Summary information about finished worlds.
describeWorldGenerationJobResponse_finishedWorldsSummary :: Lens.Lens' DescribeWorldGenerationJobResponse (Prelude.Maybe FinishedWorldsSummary)
describeWorldGenerationJobResponse_finishedWorldsSummary = Lens.lens (\DescribeWorldGenerationJobResponse' {finishedWorldsSummary} -> finishedWorldsSummary) (\s@DescribeWorldGenerationJobResponse' {} a -> s {finishedWorldsSummary = a} :: DescribeWorldGenerationJobResponse)

-- | The Amazon Resource Name (arn) of the world template.
describeWorldGenerationJobResponse_template :: Lens.Lens' DescribeWorldGenerationJobResponse (Prelude.Maybe Prelude.Text)
describeWorldGenerationJobResponse_template = Lens.lens (\DescribeWorldGenerationJobResponse' {template} -> template) (\s@DescribeWorldGenerationJobResponse' {} a -> s {template = a} :: DescribeWorldGenerationJobResponse)

-- | A map that contains tag keys and tag values that are attached to the
-- generated worlds.
describeWorldGenerationJobResponse_worldTags :: Lens.Lens' DescribeWorldGenerationJobResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
describeWorldGenerationJobResponse_worldTags = Lens.lens (\DescribeWorldGenerationJobResponse' {worldTags} -> worldTags) (\s@DescribeWorldGenerationJobResponse' {} a -> s {worldTags = a} :: DescribeWorldGenerationJobResponse) Prelude.. Lens.mapping Lens.coerced

-- | Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request.
describeWorldGenerationJobResponse_clientRequestToken :: Lens.Lens' DescribeWorldGenerationJobResponse (Prelude.Maybe Prelude.Text)
describeWorldGenerationJobResponse_clientRequestToken = Lens.lens (\DescribeWorldGenerationJobResponse' {clientRequestToken} -> clientRequestToken) (\s@DescribeWorldGenerationJobResponse' {} a -> s {clientRequestToken = a} :: DescribeWorldGenerationJobResponse)

-- | A map that contains tag keys and tag values that are attached to the
-- world generation job.
describeWorldGenerationJobResponse_tags :: Lens.Lens' DescribeWorldGenerationJobResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
describeWorldGenerationJobResponse_tags = Lens.lens (\DescribeWorldGenerationJobResponse' {tags} -> tags) (\s@DescribeWorldGenerationJobResponse' {} a -> s {tags = a} :: DescribeWorldGenerationJobResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeWorldGenerationJobResponse_httpStatus :: Lens.Lens' DescribeWorldGenerationJobResponse Prelude.Int
describeWorldGenerationJobResponse_httpStatus = Lens.lens (\DescribeWorldGenerationJobResponse' {httpStatus} -> httpStatus) (\s@DescribeWorldGenerationJobResponse' {} a -> s {httpStatus = a} :: DescribeWorldGenerationJobResponse)

instance
  Prelude.NFData
    DescribeWorldGenerationJobResponse
