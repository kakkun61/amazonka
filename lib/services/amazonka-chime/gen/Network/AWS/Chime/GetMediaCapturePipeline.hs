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
-- Module      : Network.AWS.Chime.GetMediaCapturePipeline
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an existing media capture pipeline.
module Network.AWS.Chime.GetMediaCapturePipeline
  ( -- * Creating a Request
    GetMediaCapturePipeline (..),
    newGetMediaCapturePipeline,

    -- * Request Lenses
    getMediaCapturePipeline_mediaPipelineId,

    -- * Destructuring the Response
    GetMediaCapturePipelineResponse (..),
    newGetMediaCapturePipelineResponse,

    -- * Response Lenses
    getMediaCapturePipelineResponse_mediaCapturePipeline,
    getMediaCapturePipelineResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetMediaCapturePipeline' smart constructor.
data GetMediaCapturePipeline = GetMediaCapturePipeline'
  { -- | The ID of the pipeline that you want to get.
    mediaPipelineId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetMediaCapturePipeline' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'mediaPipelineId', 'getMediaCapturePipeline_mediaPipelineId' - The ID of the pipeline that you want to get.
newGetMediaCapturePipeline ::
  -- | 'mediaPipelineId'
  Prelude.Text ->
  GetMediaCapturePipeline
newGetMediaCapturePipeline pMediaPipelineId_ =
  GetMediaCapturePipeline'
    { mediaPipelineId =
        pMediaPipelineId_
    }

-- | The ID of the pipeline that you want to get.
getMediaCapturePipeline_mediaPipelineId :: Lens.Lens' GetMediaCapturePipeline Prelude.Text
getMediaCapturePipeline_mediaPipelineId = Lens.lens (\GetMediaCapturePipeline' {mediaPipelineId} -> mediaPipelineId) (\s@GetMediaCapturePipeline' {} a -> s {mediaPipelineId = a} :: GetMediaCapturePipeline)

instance Core.AWSRequest GetMediaCapturePipeline where
  type
    AWSResponse GetMediaCapturePipeline =
      GetMediaCapturePipelineResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetMediaCapturePipelineResponse'
            Prelude.<$> (x Core..?> "MediaCapturePipeline")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetMediaCapturePipeline

instance Prelude.NFData GetMediaCapturePipeline

instance Core.ToHeaders GetMediaCapturePipeline where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath GetMediaCapturePipeline where
  toPath GetMediaCapturePipeline' {..} =
    Prelude.mconcat
      [ "/media-capture-pipelines/",
        Core.toBS mediaPipelineId
      ]

instance Core.ToQuery GetMediaCapturePipeline where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetMediaCapturePipelineResponse' smart constructor.
data GetMediaCapturePipelineResponse = GetMediaCapturePipelineResponse'
  { -- | The media capture pipeline object.
    mediaCapturePipeline :: Prelude.Maybe MediaCapturePipeline,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetMediaCapturePipelineResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'mediaCapturePipeline', 'getMediaCapturePipelineResponse_mediaCapturePipeline' - The media capture pipeline object.
--
-- 'httpStatus', 'getMediaCapturePipelineResponse_httpStatus' - The response's http status code.
newGetMediaCapturePipelineResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetMediaCapturePipelineResponse
newGetMediaCapturePipelineResponse pHttpStatus_ =
  GetMediaCapturePipelineResponse'
    { mediaCapturePipeline =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The media capture pipeline object.
getMediaCapturePipelineResponse_mediaCapturePipeline :: Lens.Lens' GetMediaCapturePipelineResponse (Prelude.Maybe MediaCapturePipeline)
getMediaCapturePipelineResponse_mediaCapturePipeline = Lens.lens (\GetMediaCapturePipelineResponse' {mediaCapturePipeline} -> mediaCapturePipeline) (\s@GetMediaCapturePipelineResponse' {} a -> s {mediaCapturePipeline = a} :: GetMediaCapturePipelineResponse)

-- | The response's http status code.
getMediaCapturePipelineResponse_httpStatus :: Lens.Lens' GetMediaCapturePipelineResponse Prelude.Int
getMediaCapturePipelineResponse_httpStatus = Lens.lens (\GetMediaCapturePipelineResponse' {httpStatus} -> httpStatus) (\s@GetMediaCapturePipelineResponse' {} a -> s {httpStatus = a} :: GetMediaCapturePipelineResponse)

instance
  Prelude.NFData
    GetMediaCapturePipelineResponse
