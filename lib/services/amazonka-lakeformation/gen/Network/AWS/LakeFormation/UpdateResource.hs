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
-- Module      : Network.AWS.LakeFormation.UpdateResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the data access role used for vending access to the given
-- (registered) resource in AWS Lake Formation.
module Network.AWS.LakeFormation.UpdateResource
  ( -- * Creating a Request
    UpdateResource (..),
    newUpdateResource,

    -- * Request Lenses
    updateResource_roleArn,
    updateResource_resourceArn,

    -- * Destructuring the Response
    UpdateResourceResponse (..),
    newUpdateResourceResponse,

    -- * Response Lenses
    updateResourceResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.LakeFormation.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateResource' smart constructor.
data UpdateResource = UpdateResource'
  { -- | The new role to use for the given resource registered in AWS Lake
    -- Formation.
    roleArn :: Prelude.Text,
    -- | The resource ARN.
    resourceArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateResource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'roleArn', 'updateResource_roleArn' - The new role to use for the given resource registered in AWS Lake
-- Formation.
--
-- 'resourceArn', 'updateResource_resourceArn' - The resource ARN.
newUpdateResource ::
  -- | 'roleArn'
  Prelude.Text ->
  -- | 'resourceArn'
  Prelude.Text ->
  UpdateResource
newUpdateResource pRoleArn_ pResourceArn_ =
  UpdateResource'
    { roleArn = pRoleArn_,
      resourceArn = pResourceArn_
    }

-- | The new role to use for the given resource registered in AWS Lake
-- Formation.
updateResource_roleArn :: Lens.Lens' UpdateResource Prelude.Text
updateResource_roleArn = Lens.lens (\UpdateResource' {roleArn} -> roleArn) (\s@UpdateResource' {} a -> s {roleArn = a} :: UpdateResource)

-- | The resource ARN.
updateResource_resourceArn :: Lens.Lens' UpdateResource Prelude.Text
updateResource_resourceArn = Lens.lens (\UpdateResource' {resourceArn} -> resourceArn) (\s@UpdateResource' {} a -> s {resourceArn = a} :: UpdateResource)

instance Core.AWSRequest UpdateResource where
  type
    AWSResponse UpdateResource =
      UpdateResourceResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateResourceResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateResource

instance Prelude.NFData UpdateResource

instance Core.ToHeaders UpdateResource where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSLakeFormation.UpdateResource" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateResource where
  toJSON UpdateResource' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("RoleArn" Core..= roleArn),
            Prelude.Just ("ResourceArn" Core..= resourceArn)
          ]
      )

instance Core.ToPath UpdateResource where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateResource where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateResourceResponse' smart constructor.
data UpdateResourceResponse = UpdateResourceResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateResourceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateResourceResponse_httpStatus' - The response's http status code.
newUpdateResourceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateResourceResponse
newUpdateResourceResponse pHttpStatus_ =
  UpdateResourceResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
updateResourceResponse_httpStatus :: Lens.Lens' UpdateResourceResponse Prelude.Int
updateResourceResponse_httpStatus = Lens.lens (\UpdateResourceResponse' {httpStatus} -> httpStatus) (\s@UpdateResourceResponse' {} a -> s {httpStatus = a} :: UpdateResourceResponse)

instance Prelude.NFData UpdateResourceResponse
