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
-- Module      : Network.AWS.ImageBuilder.GetImagePipeline
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an image pipeline.
module Network.AWS.ImageBuilder.GetImagePipeline
  ( -- * Creating a Request
    GetImagePipeline (..),
    newGetImagePipeline,

    -- * Request Lenses
    getImagePipeline_imagePipelineArn,

    -- * Destructuring the Response
    GetImagePipelineResponse (..),
    newGetImagePipelineResponse,

    -- * Response Lenses
    getImagePipelineResponse_requestId,
    getImagePipelineResponse_imagePipeline,
    getImagePipelineResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.ImageBuilder.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetImagePipeline' smart constructor.
data GetImagePipeline = GetImagePipeline'
  { -- | The Amazon Resource Name (ARN) of the image pipeline that you want to
    -- retrieve.
    imagePipelineArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetImagePipeline' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'imagePipelineArn', 'getImagePipeline_imagePipelineArn' - The Amazon Resource Name (ARN) of the image pipeline that you want to
-- retrieve.
newGetImagePipeline ::
  -- | 'imagePipelineArn'
  Prelude.Text ->
  GetImagePipeline
newGetImagePipeline pImagePipelineArn_ =
  GetImagePipeline'
    { imagePipelineArn =
        pImagePipelineArn_
    }

-- | The Amazon Resource Name (ARN) of the image pipeline that you want to
-- retrieve.
getImagePipeline_imagePipelineArn :: Lens.Lens' GetImagePipeline Prelude.Text
getImagePipeline_imagePipelineArn = Lens.lens (\GetImagePipeline' {imagePipelineArn} -> imagePipelineArn) (\s@GetImagePipeline' {} a -> s {imagePipelineArn = a} :: GetImagePipeline)

instance Core.AWSRequest GetImagePipeline where
  type
    AWSResponse GetImagePipeline =
      GetImagePipelineResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetImagePipelineResponse'
            Prelude.<$> (x Core..?> "requestId")
            Prelude.<*> (x Core..?> "imagePipeline")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetImagePipeline

instance Prelude.NFData GetImagePipeline

instance Core.ToHeaders GetImagePipeline where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetImagePipeline where
  toPath = Prelude.const "/GetImagePipeline"

instance Core.ToQuery GetImagePipeline where
  toQuery GetImagePipeline' {..} =
    Prelude.mconcat
      ["imagePipelineArn" Core.=: imagePipelineArn]

-- | /See:/ 'newGetImagePipelineResponse' smart constructor.
data GetImagePipelineResponse = GetImagePipelineResponse'
  { -- | The request ID that uniquely identifies this request.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The image pipeline object.
    imagePipeline :: Prelude.Maybe ImagePipeline,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetImagePipelineResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'getImagePipelineResponse_requestId' - The request ID that uniquely identifies this request.
--
-- 'imagePipeline', 'getImagePipelineResponse_imagePipeline' - The image pipeline object.
--
-- 'httpStatus', 'getImagePipelineResponse_httpStatus' - The response's http status code.
newGetImagePipelineResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetImagePipelineResponse
newGetImagePipelineResponse pHttpStatus_ =
  GetImagePipelineResponse'
    { requestId =
        Prelude.Nothing,
      imagePipeline = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The request ID that uniquely identifies this request.
getImagePipelineResponse_requestId :: Lens.Lens' GetImagePipelineResponse (Prelude.Maybe Prelude.Text)
getImagePipelineResponse_requestId = Lens.lens (\GetImagePipelineResponse' {requestId} -> requestId) (\s@GetImagePipelineResponse' {} a -> s {requestId = a} :: GetImagePipelineResponse)

-- | The image pipeline object.
getImagePipelineResponse_imagePipeline :: Lens.Lens' GetImagePipelineResponse (Prelude.Maybe ImagePipeline)
getImagePipelineResponse_imagePipeline = Lens.lens (\GetImagePipelineResponse' {imagePipeline} -> imagePipeline) (\s@GetImagePipelineResponse' {} a -> s {imagePipeline = a} :: GetImagePipelineResponse)

-- | The response's http status code.
getImagePipelineResponse_httpStatus :: Lens.Lens' GetImagePipelineResponse Prelude.Int
getImagePipelineResponse_httpStatus = Lens.lens (\GetImagePipelineResponse' {httpStatus} -> httpStatus) (\s@GetImagePipelineResponse' {} a -> s {httpStatus = a} :: GetImagePipelineResponse)

instance Prelude.NFData GetImagePipelineResponse
