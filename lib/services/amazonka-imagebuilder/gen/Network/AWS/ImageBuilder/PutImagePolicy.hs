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
-- Module      : Network.AWS.ImageBuilder.PutImagePolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Applies a policy to an image. We recommend that you call the RAM API
-- <https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html CreateResourceShare>
-- to share resources. If you call the Image Builder API @PutImagePolicy@,
-- you must also call the RAM API
-- <https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html PromoteResourceShareCreatedFromPolicy>
-- in order for the resource to be visible to all principals with whom the
-- resource is shared.
module Network.AWS.ImageBuilder.PutImagePolicy
  ( -- * Creating a Request
    PutImagePolicy (..),
    newPutImagePolicy,

    -- * Request Lenses
    putImagePolicy_imageArn,
    putImagePolicy_policy,

    -- * Destructuring the Response
    PutImagePolicyResponse (..),
    newPutImagePolicyResponse,

    -- * Response Lenses
    putImagePolicyResponse_requestId,
    putImagePolicyResponse_imageArn,
    putImagePolicyResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.ImageBuilder.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newPutImagePolicy' smart constructor.
data PutImagePolicy = PutImagePolicy'
  { -- | The Amazon Resource Name (ARN) of the image that this policy should be
    -- applied to.
    imageArn :: Prelude.Text,
    -- | The policy to apply.
    policy :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutImagePolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'imageArn', 'putImagePolicy_imageArn' - The Amazon Resource Name (ARN) of the image that this policy should be
-- applied to.
--
-- 'policy', 'putImagePolicy_policy' - The policy to apply.
newPutImagePolicy ::
  -- | 'imageArn'
  Prelude.Text ->
  -- | 'policy'
  Prelude.Text ->
  PutImagePolicy
newPutImagePolicy pImageArn_ pPolicy_ =
  PutImagePolicy'
    { imageArn = pImageArn_,
      policy = pPolicy_
    }

-- | The Amazon Resource Name (ARN) of the image that this policy should be
-- applied to.
putImagePolicy_imageArn :: Lens.Lens' PutImagePolicy Prelude.Text
putImagePolicy_imageArn = Lens.lens (\PutImagePolicy' {imageArn} -> imageArn) (\s@PutImagePolicy' {} a -> s {imageArn = a} :: PutImagePolicy)

-- | The policy to apply.
putImagePolicy_policy :: Lens.Lens' PutImagePolicy Prelude.Text
putImagePolicy_policy = Lens.lens (\PutImagePolicy' {policy} -> policy) (\s@PutImagePolicy' {} a -> s {policy = a} :: PutImagePolicy)

instance Core.AWSRequest PutImagePolicy where
  type
    AWSResponse PutImagePolicy =
      PutImagePolicyResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          PutImagePolicyResponse'
            Prelude.<$> (x Core..?> "requestId")
            Prelude.<*> (x Core..?> "imageArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable PutImagePolicy

instance Prelude.NFData PutImagePolicy

instance Core.ToHeaders PutImagePolicy where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON PutImagePolicy where
  toJSON PutImagePolicy' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("imageArn" Core..= imageArn),
            Prelude.Just ("policy" Core..= policy)
          ]
      )

instance Core.ToPath PutImagePolicy where
  toPath = Prelude.const "/PutImagePolicy"

instance Core.ToQuery PutImagePolicy where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newPutImagePolicyResponse' smart constructor.
data PutImagePolicyResponse = PutImagePolicyResponse'
  { -- | The request ID that uniquely identifies this request.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the image that this policy was applied
    -- to.
    imageArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutImagePolicyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'putImagePolicyResponse_requestId' - The request ID that uniquely identifies this request.
--
-- 'imageArn', 'putImagePolicyResponse_imageArn' - The Amazon Resource Name (ARN) of the image that this policy was applied
-- to.
--
-- 'httpStatus', 'putImagePolicyResponse_httpStatus' - The response's http status code.
newPutImagePolicyResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  PutImagePolicyResponse
newPutImagePolicyResponse pHttpStatus_ =
  PutImagePolicyResponse'
    { requestId =
        Prelude.Nothing,
      imageArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The request ID that uniquely identifies this request.
putImagePolicyResponse_requestId :: Lens.Lens' PutImagePolicyResponse (Prelude.Maybe Prelude.Text)
putImagePolicyResponse_requestId = Lens.lens (\PutImagePolicyResponse' {requestId} -> requestId) (\s@PutImagePolicyResponse' {} a -> s {requestId = a} :: PutImagePolicyResponse)

-- | The Amazon Resource Name (ARN) of the image that this policy was applied
-- to.
putImagePolicyResponse_imageArn :: Lens.Lens' PutImagePolicyResponse (Prelude.Maybe Prelude.Text)
putImagePolicyResponse_imageArn = Lens.lens (\PutImagePolicyResponse' {imageArn} -> imageArn) (\s@PutImagePolicyResponse' {} a -> s {imageArn = a} :: PutImagePolicyResponse)

-- | The response's http status code.
putImagePolicyResponse_httpStatus :: Lens.Lens' PutImagePolicyResponse Prelude.Int
putImagePolicyResponse_httpStatus = Lens.lens (\PutImagePolicyResponse' {httpStatus} -> httpStatus) (\s@PutImagePolicyResponse' {} a -> s {httpStatus = a} :: PutImagePolicyResponse)

instance Prelude.NFData PutImagePolicyResponse
