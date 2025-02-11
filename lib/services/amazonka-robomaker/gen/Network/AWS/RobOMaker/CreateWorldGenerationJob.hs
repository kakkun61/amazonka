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
-- Module      : Network.AWS.RobOMaker.CreateWorldGenerationJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates worlds using the specified template.
module Network.AWS.RobOMaker.CreateWorldGenerationJob
  ( -- * Creating a Request
    CreateWorldGenerationJob (..),
    newCreateWorldGenerationJob,

    -- * Request Lenses
    createWorldGenerationJob_worldTags,
    createWorldGenerationJob_clientRequestToken,
    createWorldGenerationJob_tags,
    createWorldGenerationJob_template,
    createWorldGenerationJob_worldCount,

    -- * Destructuring the Response
    CreateWorldGenerationJobResponse (..),
    newCreateWorldGenerationJobResponse,

    -- * Response Lenses
    createWorldGenerationJobResponse_status,
    createWorldGenerationJobResponse_arn,
    createWorldGenerationJobResponse_createdAt,
    createWorldGenerationJobResponse_failureCode,
    createWorldGenerationJobResponse_worldCount,
    createWorldGenerationJobResponse_template,
    createWorldGenerationJobResponse_worldTags,
    createWorldGenerationJobResponse_clientRequestToken,
    createWorldGenerationJobResponse_tags,
    createWorldGenerationJobResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.RobOMaker.Types

-- | /See:/ 'newCreateWorldGenerationJob' smart constructor.
data CreateWorldGenerationJob = CreateWorldGenerationJob'
  { -- | A map that contains tag keys and tag values that are attached to the
    -- generated worlds.
    worldTags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request.
    clientRequestToken :: Prelude.Maybe Prelude.Text,
    -- | A map that contains tag keys and tag values that are attached to the
    -- world generator job.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The Amazon Resource Name (arn) of the world template describing the
    -- worlds you want to create.
    template :: Prelude.Text,
    -- | Information about the world count.
    worldCount :: WorldCount
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateWorldGenerationJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'worldTags', 'createWorldGenerationJob_worldTags' - A map that contains tag keys and tag values that are attached to the
-- generated worlds.
--
-- 'clientRequestToken', 'createWorldGenerationJob_clientRequestToken' - Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request.
--
-- 'tags', 'createWorldGenerationJob_tags' - A map that contains tag keys and tag values that are attached to the
-- world generator job.
--
-- 'template', 'createWorldGenerationJob_template' - The Amazon Resource Name (arn) of the world template describing the
-- worlds you want to create.
--
-- 'worldCount', 'createWorldGenerationJob_worldCount' - Information about the world count.
newCreateWorldGenerationJob ::
  -- | 'template'
  Prelude.Text ->
  -- | 'worldCount'
  WorldCount ->
  CreateWorldGenerationJob
newCreateWorldGenerationJob pTemplate_ pWorldCount_ =
  CreateWorldGenerationJob'
    { worldTags =
        Prelude.Nothing,
      clientRequestToken = Prelude.Nothing,
      tags = Prelude.Nothing,
      template = pTemplate_,
      worldCount = pWorldCount_
    }

-- | A map that contains tag keys and tag values that are attached to the
-- generated worlds.
createWorldGenerationJob_worldTags :: Lens.Lens' CreateWorldGenerationJob (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createWorldGenerationJob_worldTags = Lens.lens (\CreateWorldGenerationJob' {worldTags} -> worldTags) (\s@CreateWorldGenerationJob' {} a -> s {worldTags = a} :: CreateWorldGenerationJob) Prelude.. Lens.mapping Lens.coerced

-- | Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request.
createWorldGenerationJob_clientRequestToken :: Lens.Lens' CreateWorldGenerationJob (Prelude.Maybe Prelude.Text)
createWorldGenerationJob_clientRequestToken = Lens.lens (\CreateWorldGenerationJob' {clientRequestToken} -> clientRequestToken) (\s@CreateWorldGenerationJob' {} a -> s {clientRequestToken = a} :: CreateWorldGenerationJob)

-- | A map that contains tag keys and tag values that are attached to the
-- world generator job.
createWorldGenerationJob_tags :: Lens.Lens' CreateWorldGenerationJob (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createWorldGenerationJob_tags = Lens.lens (\CreateWorldGenerationJob' {tags} -> tags) (\s@CreateWorldGenerationJob' {} a -> s {tags = a} :: CreateWorldGenerationJob) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name (arn) of the world template describing the
-- worlds you want to create.
createWorldGenerationJob_template :: Lens.Lens' CreateWorldGenerationJob Prelude.Text
createWorldGenerationJob_template = Lens.lens (\CreateWorldGenerationJob' {template} -> template) (\s@CreateWorldGenerationJob' {} a -> s {template = a} :: CreateWorldGenerationJob)

-- | Information about the world count.
createWorldGenerationJob_worldCount :: Lens.Lens' CreateWorldGenerationJob WorldCount
createWorldGenerationJob_worldCount = Lens.lens (\CreateWorldGenerationJob' {worldCount} -> worldCount) (\s@CreateWorldGenerationJob' {} a -> s {worldCount = a} :: CreateWorldGenerationJob)

instance Core.AWSRequest CreateWorldGenerationJob where
  type
    AWSResponse CreateWorldGenerationJob =
      CreateWorldGenerationJobResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateWorldGenerationJobResponse'
            Prelude.<$> (x Core..?> "status")
            Prelude.<*> (x Core..?> "arn")
            Prelude.<*> (x Core..?> "createdAt")
            Prelude.<*> (x Core..?> "failureCode")
            Prelude.<*> (x Core..?> "worldCount")
            Prelude.<*> (x Core..?> "template")
            Prelude.<*> (x Core..?> "worldTags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "clientRequestToken")
            Prelude.<*> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateWorldGenerationJob

instance Prelude.NFData CreateWorldGenerationJob

instance Core.ToHeaders CreateWorldGenerationJob where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateWorldGenerationJob where
  toJSON CreateWorldGenerationJob' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("worldTags" Core..=) Prelude.<$> worldTags,
            ("clientRequestToken" Core..=)
              Prelude.<$> clientRequestToken,
            ("tags" Core..=) Prelude.<$> tags,
            Prelude.Just ("template" Core..= template),
            Prelude.Just ("worldCount" Core..= worldCount)
          ]
      )

instance Core.ToPath CreateWorldGenerationJob where
  toPath = Prelude.const "/createWorldGenerationJob"

instance Core.ToQuery CreateWorldGenerationJob where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateWorldGenerationJobResponse' smart constructor.
data CreateWorldGenerationJobResponse = CreateWorldGenerationJobResponse'
  { -- | The status of the world generator job.
    --
    -- [Pending]
    --     The world generator job request is pending.
    --
    -- [Running]
    --     The world generator job is running.
    --
    -- [Completed]
    --     The world generator job completed.
    --
    -- [Failed]
    --     The world generator job failed. See @failureCode@ for more
    --     information.
    --
    -- [PartialFailed]
    --     Some worlds did not generate.
    --
    -- [Canceled]
    --     The world generator job was cancelled.
    --
    -- [Canceling]
    --     The world generator job is being cancelled.
    status :: Prelude.Maybe WorldGenerationJobStatus,
    -- | The Amazon Resource Name (ARN) of the world generator job.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The time, in milliseconds since the epoch, when the world generator job
    -- was created.
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | The failure code of the world generator job if it failed:
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
    -- | The Amazon Resource Name (arn) of the world template.
    template :: Prelude.Maybe Prelude.Text,
    -- | A map that contains tag keys and tag values that are attached to the
    -- generated worlds.
    worldTags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request.
    clientRequestToken :: Prelude.Maybe Prelude.Text,
    -- | A map that contains tag keys and tag values that are attached to the
    -- world generator job.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateWorldGenerationJobResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'createWorldGenerationJobResponse_status' - The status of the world generator job.
--
-- [Pending]
--     The world generator job request is pending.
--
-- [Running]
--     The world generator job is running.
--
-- [Completed]
--     The world generator job completed.
--
-- [Failed]
--     The world generator job failed. See @failureCode@ for more
--     information.
--
-- [PartialFailed]
--     Some worlds did not generate.
--
-- [Canceled]
--     The world generator job was cancelled.
--
-- [Canceling]
--     The world generator job is being cancelled.
--
-- 'arn', 'createWorldGenerationJobResponse_arn' - The Amazon Resource Name (ARN) of the world generator job.
--
-- 'createdAt', 'createWorldGenerationJobResponse_createdAt' - The time, in milliseconds since the epoch, when the world generator job
-- was created.
--
-- 'failureCode', 'createWorldGenerationJobResponse_failureCode' - The failure code of the world generator job if it failed:
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
-- 'worldCount', 'createWorldGenerationJobResponse_worldCount' - Information about the world count.
--
-- 'template', 'createWorldGenerationJobResponse_template' - The Amazon Resource Name (arn) of the world template.
--
-- 'worldTags', 'createWorldGenerationJobResponse_worldTags' - A map that contains tag keys and tag values that are attached to the
-- generated worlds.
--
-- 'clientRequestToken', 'createWorldGenerationJobResponse_clientRequestToken' - Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request.
--
-- 'tags', 'createWorldGenerationJobResponse_tags' - A map that contains tag keys and tag values that are attached to the
-- world generator job.
--
-- 'httpStatus', 'createWorldGenerationJobResponse_httpStatus' - The response's http status code.
newCreateWorldGenerationJobResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateWorldGenerationJobResponse
newCreateWorldGenerationJobResponse pHttpStatus_ =
  CreateWorldGenerationJobResponse'
    { status =
        Prelude.Nothing,
      arn = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      failureCode = Prelude.Nothing,
      worldCount = Prelude.Nothing,
      template = Prelude.Nothing,
      worldTags = Prelude.Nothing,
      clientRequestToken = Prelude.Nothing,
      tags = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The status of the world generator job.
--
-- [Pending]
--     The world generator job request is pending.
--
-- [Running]
--     The world generator job is running.
--
-- [Completed]
--     The world generator job completed.
--
-- [Failed]
--     The world generator job failed. See @failureCode@ for more
--     information.
--
-- [PartialFailed]
--     Some worlds did not generate.
--
-- [Canceled]
--     The world generator job was cancelled.
--
-- [Canceling]
--     The world generator job is being cancelled.
createWorldGenerationJobResponse_status :: Lens.Lens' CreateWorldGenerationJobResponse (Prelude.Maybe WorldGenerationJobStatus)
createWorldGenerationJobResponse_status = Lens.lens (\CreateWorldGenerationJobResponse' {status} -> status) (\s@CreateWorldGenerationJobResponse' {} a -> s {status = a} :: CreateWorldGenerationJobResponse)

-- | The Amazon Resource Name (ARN) of the world generator job.
createWorldGenerationJobResponse_arn :: Lens.Lens' CreateWorldGenerationJobResponse (Prelude.Maybe Prelude.Text)
createWorldGenerationJobResponse_arn = Lens.lens (\CreateWorldGenerationJobResponse' {arn} -> arn) (\s@CreateWorldGenerationJobResponse' {} a -> s {arn = a} :: CreateWorldGenerationJobResponse)

-- | The time, in milliseconds since the epoch, when the world generator job
-- was created.
createWorldGenerationJobResponse_createdAt :: Lens.Lens' CreateWorldGenerationJobResponse (Prelude.Maybe Prelude.UTCTime)
createWorldGenerationJobResponse_createdAt = Lens.lens (\CreateWorldGenerationJobResponse' {createdAt} -> createdAt) (\s@CreateWorldGenerationJobResponse' {} a -> s {createdAt = a} :: CreateWorldGenerationJobResponse) Prelude.. Lens.mapping Core._Time

-- | The failure code of the world generator job if it failed:
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
createWorldGenerationJobResponse_failureCode :: Lens.Lens' CreateWorldGenerationJobResponse (Prelude.Maybe WorldGenerationJobErrorCode)
createWorldGenerationJobResponse_failureCode = Lens.lens (\CreateWorldGenerationJobResponse' {failureCode} -> failureCode) (\s@CreateWorldGenerationJobResponse' {} a -> s {failureCode = a} :: CreateWorldGenerationJobResponse)

-- | Information about the world count.
createWorldGenerationJobResponse_worldCount :: Lens.Lens' CreateWorldGenerationJobResponse (Prelude.Maybe WorldCount)
createWorldGenerationJobResponse_worldCount = Lens.lens (\CreateWorldGenerationJobResponse' {worldCount} -> worldCount) (\s@CreateWorldGenerationJobResponse' {} a -> s {worldCount = a} :: CreateWorldGenerationJobResponse)

-- | The Amazon Resource Name (arn) of the world template.
createWorldGenerationJobResponse_template :: Lens.Lens' CreateWorldGenerationJobResponse (Prelude.Maybe Prelude.Text)
createWorldGenerationJobResponse_template = Lens.lens (\CreateWorldGenerationJobResponse' {template} -> template) (\s@CreateWorldGenerationJobResponse' {} a -> s {template = a} :: CreateWorldGenerationJobResponse)

-- | A map that contains tag keys and tag values that are attached to the
-- generated worlds.
createWorldGenerationJobResponse_worldTags :: Lens.Lens' CreateWorldGenerationJobResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createWorldGenerationJobResponse_worldTags = Lens.lens (\CreateWorldGenerationJobResponse' {worldTags} -> worldTags) (\s@CreateWorldGenerationJobResponse' {} a -> s {worldTags = a} :: CreateWorldGenerationJobResponse) Prelude.. Lens.mapping Lens.coerced

-- | Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request.
createWorldGenerationJobResponse_clientRequestToken :: Lens.Lens' CreateWorldGenerationJobResponse (Prelude.Maybe Prelude.Text)
createWorldGenerationJobResponse_clientRequestToken = Lens.lens (\CreateWorldGenerationJobResponse' {clientRequestToken} -> clientRequestToken) (\s@CreateWorldGenerationJobResponse' {} a -> s {clientRequestToken = a} :: CreateWorldGenerationJobResponse)

-- | A map that contains tag keys and tag values that are attached to the
-- world generator job.
createWorldGenerationJobResponse_tags :: Lens.Lens' CreateWorldGenerationJobResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createWorldGenerationJobResponse_tags = Lens.lens (\CreateWorldGenerationJobResponse' {tags} -> tags) (\s@CreateWorldGenerationJobResponse' {} a -> s {tags = a} :: CreateWorldGenerationJobResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
createWorldGenerationJobResponse_httpStatus :: Lens.Lens' CreateWorldGenerationJobResponse Prelude.Int
createWorldGenerationJobResponse_httpStatus = Lens.lens (\CreateWorldGenerationJobResponse' {httpStatus} -> httpStatus) (\s@CreateWorldGenerationJobResponse' {} a -> s {httpStatus = a} :: CreateWorldGenerationJobResponse)

instance
  Prelude.NFData
    CreateWorldGenerationJobResponse
