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
-- Module      : Network.AWS.Nimble.GetStreamingImage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get streaming image.
module Network.AWS.Nimble.GetStreamingImage
  ( -- * Creating a Request
    GetStreamingImage (..),
    newGetStreamingImage,

    -- * Request Lenses
    getStreamingImage_studioId,
    getStreamingImage_streamingImageId,

    -- * Destructuring the Response
    GetStreamingImageResponse (..),
    newGetStreamingImageResponse,

    -- * Response Lenses
    getStreamingImageResponse_streamingImage,
    getStreamingImageResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Nimble.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetStreamingImage' smart constructor.
data GetStreamingImage = GetStreamingImage'
  { -- | The studio ID.
    studioId :: Prelude.Text,
    -- | The streaming image ID.
    streamingImageId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetStreamingImage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'studioId', 'getStreamingImage_studioId' - The studio ID.
--
-- 'streamingImageId', 'getStreamingImage_streamingImageId' - The streaming image ID.
newGetStreamingImage ::
  -- | 'studioId'
  Prelude.Text ->
  -- | 'streamingImageId'
  Prelude.Text ->
  GetStreamingImage
newGetStreamingImage pStudioId_ pStreamingImageId_ =
  GetStreamingImage'
    { studioId = pStudioId_,
      streamingImageId = pStreamingImageId_
    }

-- | The studio ID.
getStreamingImage_studioId :: Lens.Lens' GetStreamingImage Prelude.Text
getStreamingImage_studioId = Lens.lens (\GetStreamingImage' {studioId} -> studioId) (\s@GetStreamingImage' {} a -> s {studioId = a} :: GetStreamingImage)

-- | The streaming image ID.
getStreamingImage_streamingImageId :: Lens.Lens' GetStreamingImage Prelude.Text
getStreamingImage_streamingImageId = Lens.lens (\GetStreamingImage' {streamingImageId} -> streamingImageId) (\s@GetStreamingImage' {} a -> s {streamingImageId = a} :: GetStreamingImage)

instance Core.AWSRequest GetStreamingImage where
  type
    AWSResponse GetStreamingImage =
      GetStreamingImageResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetStreamingImageResponse'
            Prelude.<$> (x Core..?> "streamingImage")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetStreamingImage

instance Prelude.NFData GetStreamingImage

instance Core.ToHeaders GetStreamingImage where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetStreamingImage where
  toPath GetStreamingImage' {..} =
    Prelude.mconcat
      [ "/2020-08-01/studios/",
        Core.toBS studioId,
        "/streaming-images/",
        Core.toBS streamingImageId
      ]

instance Core.ToQuery GetStreamingImage where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetStreamingImageResponse' smart constructor.
data GetStreamingImageResponse = GetStreamingImageResponse'
  { -- | The streaming image.
    streamingImage :: Prelude.Maybe StreamingImage,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetStreamingImageResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'streamingImage', 'getStreamingImageResponse_streamingImage' - The streaming image.
--
-- 'httpStatus', 'getStreamingImageResponse_httpStatus' - The response's http status code.
newGetStreamingImageResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetStreamingImageResponse
newGetStreamingImageResponse pHttpStatus_ =
  GetStreamingImageResponse'
    { streamingImage =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The streaming image.
getStreamingImageResponse_streamingImage :: Lens.Lens' GetStreamingImageResponse (Prelude.Maybe StreamingImage)
getStreamingImageResponse_streamingImage = Lens.lens (\GetStreamingImageResponse' {streamingImage} -> streamingImage) (\s@GetStreamingImageResponse' {} a -> s {streamingImage = a} :: GetStreamingImageResponse)

-- | The response's http status code.
getStreamingImageResponse_httpStatus :: Lens.Lens' GetStreamingImageResponse Prelude.Int
getStreamingImageResponse_httpStatus = Lens.lens (\GetStreamingImageResponse' {httpStatus} -> httpStatus) (\s@GetStreamingImageResponse' {} a -> s {httpStatus = a} :: GetStreamingImageResponse)

instance Prelude.NFData GetStreamingImageResponse
