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
-- Module      : Network.AWS.EC2.CreateStoreImageTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stores an AMI as a single object in an Amazon S3 bucket.
--
-- To use this API, you must have the required permissions. For more
-- information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html#ami-s3-permissions Permissions for storing and restoring AMIs using Amazon S3>
-- in the /Amazon Elastic Compute Cloud User Guide/.
--
-- For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html Store and restore an AMI using Amazon S3>
-- in the /Amazon Elastic Compute Cloud User Guide/.
module Network.AWS.EC2.CreateStoreImageTask
  ( -- * Creating a Request
    CreateStoreImageTask (..),
    newCreateStoreImageTask,

    -- * Request Lenses
    createStoreImageTask_s3ObjectTags,
    createStoreImageTask_dryRun,
    createStoreImageTask_imageId,
    createStoreImageTask_bucket,

    -- * Destructuring the Response
    CreateStoreImageTaskResponse (..),
    newCreateStoreImageTaskResponse,

    -- * Response Lenses
    createStoreImageTaskResponse_objectKey,
    createStoreImageTaskResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateStoreImageTask' smart constructor.
data CreateStoreImageTask = CreateStoreImageTask'
  { -- | The tags to apply to the AMI object that will be stored in the Amazon S3
    -- bucket.
    s3ObjectTags :: Prelude.Maybe [S3ObjectTag],
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The ID of the AMI.
    imageId :: Prelude.Text,
    -- | The name of the Amazon S3 bucket in which the AMI object will be stored.
    -- The bucket must be in the Region in which the request is being made. The
    -- AMI object appears in the bucket only after the upload task has
    -- completed.
    bucket :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateStoreImageTask' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 's3ObjectTags', 'createStoreImageTask_s3ObjectTags' - The tags to apply to the AMI object that will be stored in the Amazon S3
-- bucket.
--
-- 'dryRun', 'createStoreImageTask_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'imageId', 'createStoreImageTask_imageId' - The ID of the AMI.
--
-- 'bucket', 'createStoreImageTask_bucket' - The name of the Amazon S3 bucket in which the AMI object will be stored.
-- The bucket must be in the Region in which the request is being made. The
-- AMI object appears in the bucket only after the upload task has
-- completed.
newCreateStoreImageTask ::
  -- | 'imageId'
  Prelude.Text ->
  -- | 'bucket'
  Prelude.Text ->
  CreateStoreImageTask
newCreateStoreImageTask pImageId_ pBucket_ =
  CreateStoreImageTask'
    { s3ObjectTags =
        Prelude.Nothing,
      dryRun = Prelude.Nothing,
      imageId = pImageId_,
      bucket = pBucket_
    }

-- | The tags to apply to the AMI object that will be stored in the Amazon S3
-- bucket.
createStoreImageTask_s3ObjectTags :: Lens.Lens' CreateStoreImageTask (Prelude.Maybe [S3ObjectTag])
createStoreImageTask_s3ObjectTags = Lens.lens (\CreateStoreImageTask' {s3ObjectTags} -> s3ObjectTags) (\s@CreateStoreImageTask' {} a -> s {s3ObjectTags = a} :: CreateStoreImageTask) Prelude.. Lens.mapping Lens.coerced

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
createStoreImageTask_dryRun :: Lens.Lens' CreateStoreImageTask (Prelude.Maybe Prelude.Bool)
createStoreImageTask_dryRun = Lens.lens (\CreateStoreImageTask' {dryRun} -> dryRun) (\s@CreateStoreImageTask' {} a -> s {dryRun = a} :: CreateStoreImageTask)

-- | The ID of the AMI.
createStoreImageTask_imageId :: Lens.Lens' CreateStoreImageTask Prelude.Text
createStoreImageTask_imageId = Lens.lens (\CreateStoreImageTask' {imageId} -> imageId) (\s@CreateStoreImageTask' {} a -> s {imageId = a} :: CreateStoreImageTask)

-- | The name of the Amazon S3 bucket in which the AMI object will be stored.
-- The bucket must be in the Region in which the request is being made. The
-- AMI object appears in the bucket only after the upload task has
-- completed.
createStoreImageTask_bucket :: Lens.Lens' CreateStoreImageTask Prelude.Text
createStoreImageTask_bucket = Lens.lens (\CreateStoreImageTask' {bucket} -> bucket) (\s@CreateStoreImageTask' {} a -> s {bucket = a} :: CreateStoreImageTask)

instance Core.AWSRequest CreateStoreImageTask where
  type
    AWSResponse CreateStoreImageTask =
      CreateStoreImageTaskResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          CreateStoreImageTaskResponse'
            Prelude.<$> (x Core..@? "objectKey")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateStoreImageTask

instance Prelude.NFData CreateStoreImageTask

instance Core.ToHeaders CreateStoreImageTask where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath CreateStoreImageTask where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateStoreImageTask where
  toQuery CreateStoreImageTask' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("CreateStoreImageTask" :: Prelude.ByteString),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        Core.toQuery
          ( Core.toQueryList "S3ObjectTag"
              Prelude.<$> s3ObjectTags
          ),
        "DryRun" Core.=: dryRun,
        "ImageId" Core.=: imageId,
        "Bucket" Core.=: bucket
      ]

-- | /See:/ 'newCreateStoreImageTaskResponse' smart constructor.
data CreateStoreImageTaskResponse = CreateStoreImageTaskResponse'
  { -- | The name of the stored AMI object in the S3 bucket.
    objectKey :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateStoreImageTaskResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'objectKey', 'createStoreImageTaskResponse_objectKey' - The name of the stored AMI object in the S3 bucket.
--
-- 'httpStatus', 'createStoreImageTaskResponse_httpStatus' - The response's http status code.
newCreateStoreImageTaskResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateStoreImageTaskResponse
newCreateStoreImageTaskResponse pHttpStatus_ =
  CreateStoreImageTaskResponse'
    { objectKey =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the stored AMI object in the S3 bucket.
createStoreImageTaskResponse_objectKey :: Lens.Lens' CreateStoreImageTaskResponse (Prelude.Maybe Prelude.Text)
createStoreImageTaskResponse_objectKey = Lens.lens (\CreateStoreImageTaskResponse' {objectKey} -> objectKey) (\s@CreateStoreImageTaskResponse' {} a -> s {objectKey = a} :: CreateStoreImageTaskResponse)

-- | The response's http status code.
createStoreImageTaskResponse_httpStatus :: Lens.Lens' CreateStoreImageTaskResponse Prelude.Int
createStoreImageTaskResponse_httpStatus = Lens.lens (\CreateStoreImageTaskResponse' {httpStatus} -> httpStatus) (\s@CreateStoreImageTaskResponse' {} a -> s {httpStatus = a} :: CreateStoreImageTaskResponse)

instance Prelude.NFData CreateStoreImageTaskResponse
