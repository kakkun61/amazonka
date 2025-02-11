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
-- Module      : Network.AWS.FraudDetector.CreateBatchImportJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a batch import job.
module Network.AWS.FraudDetector.CreateBatchImportJob
  ( -- * Creating a Request
    CreateBatchImportJob (..),
    newCreateBatchImportJob,

    -- * Request Lenses
    createBatchImportJob_tags,
    createBatchImportJob_jobId,
    createBatchImportJob_inputPath,
    createBatchImportJob_outputPath,
    createBatchImportJob_eventTypeName,
    createBatchImportJob_iamRoleArn,

    -- * Destructuring the Response
    CreateBatchImportJobResponse (..),
    newCreateBatchImportJobResponse,

    -- * Response Lenses
    createBatchImportJobResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.FraudDetector.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateBatchImportJob' smart constructor.
data CreateBatchImportJob = CreateBatchImportJob'
  { -- | A collection of key-value pairs associated with this request.
    tags :: Prelude.Maybe [Tag],
    -- | The ID of the batch import job. The ID cannot be of a past job, unless
    -- the job exists in @CREATE_FAILED@ state.
    jobId :: Prelude.Text,
    -- | The URI that points to the Amazon S3 location of your data file.
    inputPath :: Prelude.Text,
    -- | The URI that points to the Amazon S3 location for storing your results.
    outputPath :: Prelude.Text,
    -- | The name of the event type.
    eventTypeName :: Prelude.Text,
    -- | The ARN of the IAM role created for Amazon S3 bucket that holds your
    -- data file. The IAM role must have read and write permissions to both
    -- input and output S3 buckets.
    iamRoleArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateBatchImportJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createBatchImportJob_tags' - A collection of key-value pairs associated with this request.
--
-- 'jobId', 'createBatchImportJob_jobId' - The ID of the batch import job. The ID cannot be of a past job, unless
-- the job exists in @CREATE_FAILED@ state.
--
-- 'inputPath', 'createBatchImportJob_inputPath' - The URI that points to the Amazon S3 location of your data file.
--
-- 'outputPath', 'createBatchImportJob_outputPath' - The URI that points to the Amazon S3 location for storing your results.
--
-- 'eventTypeName', 'createBatchImportJob_eventTypeName' - The name of the event type.
--
-- 'iamRoleArn', 'createBatchImportJob_iamRoleArn' - The ARN of the IAM role created for Amazon S3 bucket that holds your
-- data file. The IAM role must have read and write permissions to both
-- input and output S3 buckets.
newCreateBatchImportJob ::
  -- | 'jobId'
  Prelude.Text ->
  -- | 'inputPath'
  Prelude.Text ->
  -- | 'outputPath'
  Prelude.Text ->
  -- | 'eventTypeName'
  Prelude.Text ->
  -- | 'iamRoleArn'
  Prelude.Text ->
  CreateBatchImportJob
newCreateBatchImportJob
  pJobId_
  pInputPath_
  pOutputPath_
  pEventTypeName_
  pIamRoleArn_ =
    CreateBatchImportJob'
      { tags = Prelude.Nothing,
        jobId = pJobId_,
        inputPath = pInputPath_,
        outputPath = pOutputPath_,
        eventTypeName = pEventTypeName_,
        iamRoleArn = pIamRoleArn_
      }

-- | A collection of key-value pairs associated with this request.
createBatchImportJob_tags :: Lens.Lens' CreateBatchImportJob (Prelude.Maybe [Tag])
createBatchImportJob_tags = Lens.lens (\CreateBatchImportJob' {tags} -> tags) (\s@CreateBatchImportJob' {} a -> s {tags = a} :: CreateBatchImportJob) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the batch import job. The ID cannot be of a past job, unless
-- the job exists in @CREATE_FAILED@ state.
createBatchImportJob_jobId :: Lens.Lens' CreateBatchImportJob Prelude.Text
createBatchImportJob_jobId = Lens.lens (\CreateBatchImportJob' {jobId} -> jobId) (\s@CreateBatchImportJob' {} a -> s {jobId = a} :: CreateBatchImportJob)

-- | The URI that points to the Amazon S3 location of your data file.
createBatchImportJob_inputPath :: Lens.Lens' CreateBatchImportJob Prelude.Text
createBatchImportJob_inputPath = Lens.lens (\CreateBatchImportJob' {inputPath} -> inputPath) (\s@CreateBatchImportJob' {} a -> s {inputPath = a} :: CreateBatchImportJob)

-- | The URI that points to the Amazon S3 location for storing your results.
createBatchImportJob_outputPath :: Lens.Lens' CreateBatchImportJob Prelude.Text
createBatchImportJob_outputPath = Lens.lens (\CreateBatchImportJob' {outputPath} -> outputPath) (\s@CreateBatchImportJob' {} a -> s {outputPath = a} :: CreateBatchImportJob)

-- | The name of the event type.
createBatchImportJob_eventTypeName :: Lens.Lens' CreateBatchImportJob Prelude.Text
createBatchImportJob_eventTypeName = Lens.lens (\CreateBatchImportJob' {eventTypeName} -> eventTypeName) (\s@CreateBatchImportJob' {} a -> s {eventTypeName = a} :: CreateBatchImportJob)

-- | The ARN of the IAM role created for Amazon S3 bucket that holds your
-- data file. The IAM role must have read and write permissions to both
-- input and output S3 buckets.
createBatchImportJob_iamRoleArn :: Lens.Lens' CreateBatchImportJob Prelude.Text
createBatchImportJob_iamRoleArn = Lens.lens (\CreateBatchImportJob' {iamRoleArn} -> iamRoleArn) (\s@CreateBatchImportJob' {} a -> s {iamRoleArn = a} :: CreateBatchImportJob)

instance Core.AWSRequest CreateBatchImportJob where
  type
    AWSResponse CreateBatchImportJob =
      CreateBatchImportJobResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          CreateBatchImportJobResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateBatchImportJob

instance Prelude.NFData CreateBatchImportJob

instance Core.ToHeaders CreateBatchImportJob where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSHawksNestServiceFacade.CreateBatchImportJob" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateBatchImportJob where
  toJSON CreateBatchImportJob' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            Prelude.Just ("jobId" Core..= jobId),
            Prelude.Just ("inputPath" Core..= inputPath),
            Prelude.Just ("outputPath" Core..= outputPath),
            Prelude.Just ("eventTypeName" Core..= eventTypeName),
            Prelude.Just ("iamRoleArn" Core..= iamRoleArn)
          ]
      )

instance Core.ToPath CreateBatchImportJob where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateBatchImportJob where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateBatchImportJobResponse' smart constructor.
data CreateBatchImportJobResponse = CreateBatchImportJobResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateBatchImportJobResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createBatchImportJobResponse_httpStatus' - The response's http status code.
newCreateBatchImportJobResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateBatchImportJobResponse
newCreateBatchImportJobResponse pHttpStatus_ =
  CreateBatchImportJobResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
createBatchImportJobResponse_httpStatus :: Lens.Lens' CreateBatchImportJobResponse Prelude.Int
createBatchImportJobResponse_httpStatus = Lens.lens (\CreateBatchImportJobResponse' {httpStatus} -> httpStatus) (\s@CreateBatchImportJobResponse' {} a -> s {httpStatus = a} :: CreateBatchImportJobResponse)

instance Prelude.NFData CreateBatchImportJobResponse
