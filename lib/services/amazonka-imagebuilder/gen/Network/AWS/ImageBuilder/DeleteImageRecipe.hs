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
-- Module      : Network.AWS.ImageBuilder.DeleteImageRecipe
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an image recipe.
module Network.AWS.ImageBuilder.DeleteImageRecipe
  ( -- * Creating a Request
    DeleteImageRecipe (..),
    newDeleteImageRecipe,

    -- * Request Lenses
    deleteImageRecipe_imageRecipeArn,

    -- * Destructuring the Response
    DeleteImageRecipeResponse (..),
    newDeleteImageRecipeResponse,

    -- * Response Lenses
    deleteImageRecipeResponse_requestId,
    deleteImageRecipeResponse_imageRecipeArn,
    deleteImageRecipeResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.ImageBuilder.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteImageRecipe' smart constructor.
data DeleteImageRecipe = DeleteImageRecipe'
  { -- | The Amazon Resource Name (ARN) of the image recipe to delete.
    imageRecipeArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteImageRecipe' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'imageRecipeArn', 'deleteImageRecipe_imageRecipeArn' - The Amazon Resource Name (ARN) of the image recipe to delete.
newDeleteImageRecipe ::
  -- | 'imageRecipeArn'
  Prelude.Text ->
  DeleteImageRecipe
newDeleteImageRecipe pImageRecipeArn_ =
  DeleteImageRecipe'
    { imageRecipeArn =
        pImageRecipeArn_
    }

-- | The Amazon Resource Name (ARN) of the image recipe to delete.
deleteImageRecipe_imageRecipeArn :: Lens.Lens' DeleteImageRecipe Prelude.Text
deleteImageRecipe_imageRecipeArn = Lens.lens (\DeleteImageRecipe' {imageRecipeArn} -> imageRecipeArn) (\s@DeleteImageRecipe' {} a -> s {imageRecipeArn = a} :: DeleteImageRecipe)

instance Core.AWSRequest DeleteImageRecipe where
  type
    AWSResponse DeleteImageRecipe =
      DeleteImageRecipeResponse
  request = Request.delete defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteImageRecipeResponse'
            Prelude.<$> (x Core..?> "requestId")
            Prelude.<*> (x Core..?> "imageRecipeArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteImageRecipe

instance Prelude.NFData DeleteImageRecipe

instance Core.ToHeaders DeleteImageRecipe where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteImageRecipe where
  toPath = Prelude.const "/DeleteImageRecipe"

instance Core.ToQuery DeleteImageRecipe where
  toQuery DeleteImageRecipe' {..} =
    Prelude.mconcat
      ["imageRecipeArn" Core.=: imageRecipeArn]

-- | /See:/ 'newDeleteImageRecipeResponse' smart constructor.
data DeleteImageRecipeResponse = DeleteImageRecipeResponse'
  { -- | The request ID that uniquely identifies this request.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the image recipe that was deleted.
    imageRecipeArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteImageRecipeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'deleteImageRecipeResponse_requestId' - The request ID that uniquely identifies this request.
--
-- 'imageRecipeArn', 'deleteImageRecipeResponse_imageRecipeArn' - The Amazon Resource Name (ARN) of the image recipe that was deleted.
--
-- 'httpStatus', 'deleteImageRecipeResponse_httpStatus' - The response's http status code.
newDeleteImageRecipeResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteImageRecipeResponse
newDeleteImageRecipeResponse pHttpStatus_ =
  DeleteImageRecipeResponse'
    { requestId =
        Prelude.Nothing,
      imageRecipeArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The request ID that uniquely identifies this request.
deleteImageRecipeResponse_requestId :: Lens.Lens' DeleteImageRecipeResponse (Prelude.Maybe Prelude.Text)
deleteImageRecipeResponse_requestId = Lens.lens (\DeleteImageRecipeResponse' {requestId} -> requestId) (\s@DeleteImageRecipeResponse' {} a -> s {requestId = a} :: DeleteImageRecipeResponse)

-- | The Amazon Resource Name (ARN) of the image recipe that was deleted.
deleteImageRecipeResponse_imageRecipeArn :: Lens.Lens' DeleteImageRecipeResponse (Prelude.Maybe Prelude.Text)
deleteImageRecipeResponse_imageRecipeArn = Lens.lens (\DeleteImageRecipeResponse' {imageRecipeArn} -> imageRecipeArn) (\s@DeleteImageRecipeResponse' {} a -> s {imageRecipeArn = a} :: DeleteImageRecipeResponse)

-- | The response's http status code.
deleteImageRecipeResponse_httpStatus :: Lens.Lens' DeleteImageRecipeResponse Prelude.Int
deleteImageRecipeResponse_httpStatus = Lens.lens (\DeleteImageRecipeResponse' {httpStatus} -> httpStatus) (\s@DeleteImageRecipeResponse' {} a -> s {httpStatus = a} :: DeleteImageRecipeResponse)

instance Prelude.NFData DeleteImageRecipeResponse
