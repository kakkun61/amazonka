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
-- Module      : Network.AWS.ImageBuilder.DeleteComponent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a component build version.
module Network.AWS.ImageBuilder.DeleteComponent
  ( -- * Creating a Request
    DeleteComponent (..),
    newDeleteComponent,

    -- * Request Lenses
    deleteComponent_componentBuildVersionArn,

    -- * Destructuring the Response
    DeleteComponentResponse (..),
    newDeleteComponentResponse,

    -- * Response Lenses
    deleteComponentResponse_requestId,
    deleteComponentResponse_componentBuildVersionArn,
    deleteComponentResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.ImageBuilder.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteComponent' smart constructor.
data DeleteComponent = DeleteComponent'
  { -- | The Amazon Resource Name (ARN) of the component build version to delete.
    componentBuildVersionArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteComponent' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'componentBuildVersionArn', 'deleteComponent_componentBuildVersionArn' - The Amazon Resource Name (ARN) of the component build version to delete.
newDeleteComponent ::
  -- | 'componentBuildVersionArn'
  Prelude.Text ->
  DeleteComponent
newDeleteComponent pComponentBuildVersionArn_ =
  DeleteComponent'
    { componentBuildVersionArn =
        pComponentBuildVersionArn_
    }

-- | The Amazon Resource Name (ARN) of the component build version to delete.
deleteComponent_componentBuildVersionArn :: Lens.Lens' DeleteComponent Prelude.Text
deleteComponent_componentBuildVersionArn = Lens.lens (\DeleteComponent' {componentBuildVersionArn} -> componentBuildVersionArn) (\s@DeleteComponent' {} a -> s {componentBuildVersionArn = a} :: DeleteComponent)

instance Core.AWSRequest DeleteComponent where
  type
    AWSResponse DeleteComponent =
      DeleteComponentResponse
  request = Request.delete defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteComponentResponse'
            Prelude.<$> (x Core..?> "requestId")
            Prelude.<*> (x Core..?> "componentBuildVersionArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteComponent

instance Prelude.NFData DeleteComponent

instance Core.ToHeaders DeleteComponent where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteComponent where
  toPath = Prelude.const "/DeleteComponent"

instance Core.ToQuery DeleteComponent where
  toQuery DeleteComponent' {..} =
    Prelude.mconcat
      [ "componentBuildVersionArn"
          Core.=: componentBuildVersionArn
      ]

-- | /See:/ 'newDeleteComponentResponse' smart constructor.
data DeleteComponentResponse = DeleteComponentResponse'
  { -- | The request ID that uniquely identifies this request.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the component build version that was
    -- deleted.
    componentBuildVersionArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteComponentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'deleteComponentResponse_requestId' - The request ID that uniquely identifies this request.
--
-- 'componentBuildVersionArn', 'deleteComponentResponse_componentBuildVersionArn' - The Amazon Resource Name (ARN) of the component build version that was
-- deleted.
--
-- 'httpStatus', 'deleteComponentResponse_httpStatus' - The response's http status code.
newDeleteComponentResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteComponentResponse
newDeleteComponentResponse pHttpStatus_ =
  DeleteComponentResponse'
    { requestId =
        Prelude.Nothing,
      componentBuildVersionArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The request ID that uniquely identifies this request.
deleteComponentResponse_requestId :: Lens.Lens' DeleteComponentResponse (Prelude.Maybe Prelude.Text)
deleteComponentResponse_requestId = Lens.lens (\DeleteComponentResponse' {requestId} -> requestId) (\s@DeleteComponentResponse' {} a -> s {requestId = a} :: DeleteComponentResponse)

-- | The Amazon Resource Name (ARN) of the component build version that was
-- deleted.
deleteComponentResponse_componentBuildVersionArn :: Lens.Lens' DeleteComponentResponse (Prelude.Maybe Prelude.Text)
deleteComponentResponse_componentBuildVersionArn = Lens.lens (\DeleteComponentResponse' {componentBuildVersionArn} -> componentBuildVersionArn) (\s@DeleteComponentResponse' {} a -> s {componentBuildVersionArn = a} :: DeleteComponentResponse)

-- | The response's http status code.
deleteComponentResponse_httpStatus :: Lens.Lens' DeleteComponentResponse Prelude.Int
deleteComponentResponse_httpStatus = Lens.lens (\DeleteComponentResponse' {httpStatus} -> httpStatus) (\s@DeleteComponentResponse' {} a -> s {httpStatus = a} :: DeleteComponentResponse)

instance Prelude.NFData DeleteComponentResponse
