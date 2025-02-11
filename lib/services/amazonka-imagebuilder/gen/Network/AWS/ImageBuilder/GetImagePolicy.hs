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
-- Module      : Network.AWS.ImageBuilder.GetImagePolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an image policy.
module Network.AWS.ImageBuilder.GetImagePolicy
  ( -- * Creating a Request
    GetImagePolicy (..),
    newGetImagePolicy,

    -- * Request Lenses
    getImagePolicy_imageArn,

    -- * Destructuring the Response
    GetImagePolicyResponse (..),
    newGetImagePolicyResponse,

    -- * Response Lenses
    getImagePolicyResponse_requestId,
    getImagePolicyResponse_policy,
    getImagePolicyResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.ImageBuilder.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetImagePolicy' smart constructor.
data GetImagePolicy = GetImagePolicy'
  { -- | The Amazon Resource Name (ARN) of the image whose policy you want to
    -- retrieve.
    imageArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetImagePolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'imageArn', 'getImagePolicy_imageArn' - The Amazon Resource Name (ARN) of the image whose policy you want to
-- retrieve.
newGetImagePolicy ::
  -- | 'imageArn'
  Prelude.Text ->
  GetImagePolicy
newGetImagePolicy pImageArn_ =
  GetImagePolicy' {imageArn = pImageArn_}

-- | The Amazon Resource Name (ARN) of the image whose policy you want to
-- retrieve.
getImagePolicy_imageArn :: Lens.Lens' GetImagePolicy Prelude.Text
getImagePolicy_imageArn = Lens.lens (\GetImagePolicy' {imageArn} -> imageArn) (\s@GetImagePolicy' {} a -> s {imageArn = a} :: GetImagePolicy)

instance Core.AWSRequest GetImagePolicy where
  type
    AWSResponse GetImagePolicy =
      GetImagePolicyResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetImagePolicyResponse'
            Prelude.<$> (x Core..?> "requestId")
            Prelude.<*> (x Core..?> "policy")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetImagePolicy

instance Prelude.NFData GetImagePolicy

instance Core.ToHeaders GetImagePolicy where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetImagePolicy where
  toPath = Prelude.const "/GetImagePolicy"

instance Core.ToQuery GetImagePolicy where
  toQuery GetImagePolicy' {..} =
    Prelude.mconcat ["imageArn" Core.=: imageArn]

-- | /See:/ 'newGetImagePolicyResponse' smart constructor.
data GetImagePolicyResponse = GetImagePolicyResponse'
  { -- | The request ID that uniquely identifies this request.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The image policy object.
    policy :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetImagePolicyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'getImagePolicyResponse_requestId' - The request ID that uniquely identifies this request.
--
-- 'policy', 'getImagePolicyResponse_policy' - The image policy object.
--
-- 'httpStatus', 'getImagePolicyResponse_httpStatus' - The response's http status code.
newGetImagePolicyResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetImagePolicyResponse
newGetImagePolicyResponse pHttpStatus_ =
  GetImagePolicyResponse'
    { requestId =
        Prelude.Nothing,
      policy = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The request ID that uniquely identifies this request.
getImagePolicyResponse_requestId :: Lens.Lens' GetImagePolicyResponse (Prelude.Maybe Prelude.Text)
getImagePolicyResponse_requestId = Lens.lens (\GetImagePolicyResponse' {requestId} -> requestId) (\s@GetImagePolicyResponse' {} a -> s {requestId = a} :: GetImagePolicyResponse)

-- | The image policy object.
getImagePolicyResponse_policy :: Lens.Lens' GetImagePolicyResponse (Prelude.Maybe Prelude.Text)
getImagePolicyResponse_policy = Lens.lens (\GetImagePolicyResponse' {policy} -> policy) (\s@GetImagePolicyResponse' {} a -> s {policy = a} :: GetImagePolicyResponse)

-- | The response's http status code.
getImagePolicyResponse_httpStatus :: Lens.Lens' GetImagePolicyResponse Prelude.Int
getImagePolicyResponse_httpStatus = Lens.lens (\GetImagePolicyResponse' {httpStatus} -> httpStatus) (\s@GetImagePolicyResponse' {} a -> s {httpStatus = a} :: GetImagePolicyResponse)

instance Prelude.NFData GetImagePolicyResponse
