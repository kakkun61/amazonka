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
-- Module      : Network.AWS.ImageBuilder.GetImageRecipePolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an image recipe policy.
module Network.AWS.ImageBuilder.GetImageRecipePolicy
  ( -- * Creating a Request
    GetImageRecipePolicy (..),
    newGetImageRecipePolicy,

    -- * Request Lenses
    getImageRecipePolicy_imageRecipeArn,

    -- * Destructuring the Response
    GetImageRecipePolicyResponse (..),
    newGetImageRecipePolicyResponse,

    -- * Response Lenses
    getImageRecipePolicyResponse_requestId,
    getImageRecipePolicyResponse_policy,
    getImageRecipePolicyResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.ImageBuilder.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetImageRecipePolicy' smart constructor.
data GetImageRecipePolicy = GetImageRecipePolicy'
  { -- | The Amazon Resource Name (ARN) of the image recipe whose policy you want
    -- to retrieve.
    imageRecipeArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetImageRecipePolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'imageRecipeArn', 'getImageRecipePolicy_imageRecipeArn' - The Amazon Resource Name (ARN) of the image recipe whose policy you want
-- to retrieve.
newGetImageRecipePolicy ::
  -- | 'imageRecipeArn'
  Prelude.Text ->
  GetImageRecipePolicy
newGetImageRecipePolicy pImageRecipeArn_ =
  GetImageRecipePolicy'
    { imageRecipeArn =
        pImageRecipeArn_
    }

-- | The Amazon Resource Name (ARN) of the image recipe whose policy you want
-- to retrieve.
getImageRecipePolicy_imageRecipeArn :: Lens.Lens' GetImageRecipePolicy Prelude.Text
getImageRecipePolicy_imageRecipeArn = Lens.lens (\GetImageRecipePolicy' {imageRecipeArn} -> imageRecipeArn) (\s@GetImageRecipePolicy' {} a -> s {imageRecipeArn = a} :: GetImageRecipePolicy)

instance Core.AWSRequest GetImageRecipePolicy where
  type
    AWSResponse GetImageRecipePolicy =
      GetImageRecipePolicyResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetImageRecipePolicyResponse'
            Prelude.<$> (x Core..?> "requestId")
            Prelude.<*> (x Core..?> "policy")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetImageRecipePolicy

instance Prelude.NFData GetImageRecipePolicy

instance Core.ToHeaders GetImageRecipePolicy where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetImageRecipePolicy where
  toPath = Prelude.const "/GetImageRecipePolicy"

instance Core.ToQuery GetImageRecipePolicy where
  toQuery GetImageRecipePolicy' {..} =
    Prelude.mconcat
      ["imageRecipeArn" Core.=: imageRecipeArn]

-- | /See:/ 'newGetImageRecipePolicyResponse' smart constructor.
data GetImageRecipePolicyResponse = GetImageRecipePolicyResponse'
  { -- | The request ID that uniquely identifies this request.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The image recipe policy object.
    policy :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetImageRecipePolicyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'getImageRecipePolicyResponse_requestId' - The request ID that uniquely identifies this request.
--
-- 'policy', 'getImageRecipePolicyResponse_policy' - The image recipe policy object.
--
-- 'httpStatus', 'getImageRecipePolicyResponse_httpStatus' - The response's http status code.
newGetImageRecipePolicyResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetImageRecipePolicyResponse
newGetImageRecipePolicyResponse pHttpStatus_ =
  GetImageRecipePolicyResponse'
    { requestId =
        Prelude.Nothing,
      policy = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The request ID that uniquely identifies this request.
getImageRecipePolicyResponse_requestId :: Lens.Lens' GetImageRecipePolicyResponse (Prelude.Maybe Prelude.Text)
getImageRecipePolicyResponse_requestId = Lens.lens (\GetImageRecipePolicyResponse' {requestId} -> requestId) (\s@GetImageRecipePolicyResponse' {} a -> s {requestId = a} :: GetImageRecipePolicyResponse)

-- | The image recipe policy object.
getImageRecipePolicyResponse_policy :: Lens.Lens' GetImageRecipePolicyResponse (Prelude.Maybe Prelude.Text)
getImageRecipePolicyResponse_policy = Lens.lens (\GetImageRecipePolicyResponse' {policy} -> policy) (\s@GetImageRecipePolicyResponse' {} a -> s {policy = a} :: GetImageRecipePolicyResponse)

-- | The response's http status code.
getImageRecipePolicyResponse_httpStatus :: Lens.Lens' GetImageRecipePolicyResponse Prelude.Int
getImageRecipePolicyResponse_httpStatus = Lens.lens (\GetImageRecipePolicyResponse' {httpStatus} -> httpStatus) (\s@GetImageRecipePolicyResponse' {} a -> s {httpStatus = a} :: GetImageRecipePolicyResponse)

instance Prelude.NFData GetImageRecipePolicyResponse
