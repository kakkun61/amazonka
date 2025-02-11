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
-- Module      : Network.AWS.Nimble.UpdateStreamingImage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update streaming image.
module Network.AWS.Nimble.UpdateStreamingImage
  ( -- * Creating a Request
    UpdateStreamingImage (..),
    newUpdateStreamingImage,

    -- * Request Lenses
    updateStreamingImage_clientToken,
    updateStreamingImage_name,
    updateStreamingImage_description,
    updateStreamingImage_studioId,
    updateStreamingImage_streamingImageId,

    -- * Destructuring the Response
    UpdateStreamingImageResponse (..),
    newUpdateStreamingImageResponse,

    -- * Response Lenses
    updateStreamingImageResponse_streamingImage,
    updateStreamingImageResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Nimble.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The streaming image ID.
--
-- /See:/ 'newUpdateStreamingImage' smart constructor.
data UpdateStreamingImage = UpdateStreamingImage'
  { -- | To make an idempotent API request using one of these actions, specify a
    -- client token in the request. You should not reuse the same client token
    -- for other API requests. If you retry a request that completed
    -- successfully using the same client token and the same parameters, the
    -- retry succeeds without performing any further actions. If you retry a
    -- successful request using the same client token, but one or more of the
    -- parameters are different, the retry fails with a ValidationException
    -- error.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The name for the streaming image.
    name :: Prelude.Maybe Prelude.Text,
    -- | The description.
    description :: Prelude.Maybe Prelude.Text,
    -- | The studio ID.
    studioId :: Prelude.Text,
    -- | The streaming image ID.
    streamingImageId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateStreamingImage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'updateStreamingImage_clientToken' - To make an idempotent API request using one of these actions, specify a
-- client token in the request. You should not reuse the same client token
-- for other API requests. If you retry a request that completed
-- successfully using the same client token and the same parameters, the
-- retry succeeds without performing any further actions. If you retry a
-- successful request using the same client token, but one or more of the
-- parameters are different, the retry fails with a ValidationException
-- error.
--
-- 'name', 'updateStreamingImage_name' - The name for the streaming image.
--
-- 'description', 'updateStreamingImage_description' - The description.
--
-- 'studioId', 'updateStreamingImage_studioId' - The studio ID.
--
-- 'streamingImageId', 'updateStreamingImage_streamingImageId' - The streaming image ID.
newUpdateStreamingImage ::
  -- | 'studioId'
  Prelude.Text ->
  -- | 'streamingImageId'
  Prelude.Text ->
  UpdateStreamingImage
newUpdateStreamingImage pStudioId_ pStreamingImageId_ =
  UpdateStreamingImage'
    { clientToken =
        Prelude.Nothing,
      name = Prelude.Nothing,
      description = Prelude.Nothing,
      studioId = pStudioId_,
      streamingImageId = pStreamingImageId_
    }

-- | To make an idempotent API request using one of these actions, specify a
-- client token in the request. You should not reuse the same client token
-- for other API requests. If you retry a request that completed
-- successfully using the same client token and the same parameters, the
-- retry succeeds without performing any further actions. If you retry a
-- successful request using the same client token, but one or more of the
-- parameters are different, the retry fails with a ValidationException
-- error.
updateStreamingImage_clientToken :: Lens.Lens' UpdateStreamingImage (Prelude.Maybe Prelude.Text)
updateStreamingImage_clientToken = Lens.lens (\UpdateStreamingImage' {clientToken} -> clientToken) (\s@UpdateStreamingImage' {} a -> s {clientToken = a} :: UpdateStreamingImage)

-- | The name for the streaming image.
updateStreamingImage_name :: Lens.Lens' UpdateStreamingImage (Prelude.Maybe Prelude.Text)
updateStreamingImage_name = Lens.lens (\UpdateStreamingImage' {name} -> name) (\s@UpdateStreamingImage' {} a -> s {name = a} :: UpdateStreamingImage)

-- | The description.
updateStreamingImage_description :: Lens.Lens' UpdateStreamingImage (Prelude.Maybe Prelude.Text)
updateStreamingImage_description = Lens.lens (\UpdateStreamingImage' {description} -> description) (\s@UpdateStreamingImage' {} a -> s {description = a} :: UpdateStreamingImage)

-- | The studio ID.
updateStreamingImage_studioId :: Lens.Lens' UpdateStreamingImage Prelude.Text
updateStreamingImage_studioId = Lens.lens (\UpdateStreamingImage' {studioId} -> studioId) (\s@UpdateStreamingImage' {} a -> s {studioId = a} :: UpdateStreamingImage)

-- | The streaming image ID.
updateStreamingImage_streamingImageId :: Lens.Lens' UpdateStreamingImage Prelude.Text
updateStreamingImage_streamingImageId = Lens.lens (\UpdateStreamingImage' {streamingImageId} -> streamingImageId) (\s@UpdateStreamingImage' {} a -> s {streamingImageId = a} :: UpdateStreamingImage)

instance Core.AWSRequest UpdateStreamingImage where
  type
    AWSResponse UpdateStreamingImage =
      UpdateStreamingImageResponse
  request = Request.patchJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateStreamingImageResponse'
            Prelude.<$> (x Core..?> "streamingImage")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateStreamingImage

instance Prelude.NFData UpdateStreamingImage

instance Core.ToHeaders UpdateStreamingImage where
  toHeaders UpdateStreamingImage' {..} =
    Prelude.mconcat
      [ "X-Amz-Client-Token" Core.=# clientToken,
        "Content-Type"
          Core.=# ("application/x-amz-json-1.1" :: Prelude.ByteString)
      ]

instance Core.ToJSON UpdateStreamingImage where
  toJSON UpdateStreamingImage' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("name" Core..=) Prelude.<$> name,
            ("description" Core..=) Prelude.<$> description
          ]
      )

instance Core.ToPath UpdateStreamingImage where
  toPath UpdateStreamingImage' {..} =
    Prelude.mconcat
      [ "/2020-08-01/studios/",
        Core.toBS studioId,
        "/streaming-images/",
        Core.toBS streamingImageId
      ]

instance Core.ToQuery UpdateStreamingImage where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateStreamingImageResponse' smart constructor.
data UpdateStreamingImageResponse = UpdateStreamingImageResponse'
  { streamingImage :: Prelude.Maybe StreamingImage,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateStreamingImageResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'streamingImage', 'updateStreamingImageResponse_streamingImage' -
--
-- 'httpStatus', 'updateStreamingImageResponse_httpStatus' - The response's http status code.
newUpdateStreamingImageResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateStreamingImageResponse
newUpdateStreamingImageResponse pHttpStatus_ =
  UpdateStreamingImageResponse'
    { streamingImage =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- |
updateStreamingImageResponse_streamingImage :: Lens.Lens' UpdateStreamingImageResponse (Prelude.Maybe StreamingImage)
updateStreamingImageResponse_streamingImage = Lens.lens (\UpdateStreamingImageResponse' {streamingImage} -> streamingImage) (\s@UpdateStreamingImageResponse' {} a -> s {streamingImage = a} :: UpdateStreamingImageResponse)

-- | The response's http status code.
updateStreamingImageResponse_httpStatus :: Lens.Lens' UpdateStreamingImageResponse Prelude.Int
updateStreamingImageResponse_httpStatus = Lens.lens (\UpdateStreamingImageResponse' {httpStatus} -> httpStatus) (\s@UpdateStreamingImageResponse' {} a -> s {httpStatus = a} :: UpdateStreamingImageResponse)

instance Prelude.NFData UpdateStreamingImageResponse
