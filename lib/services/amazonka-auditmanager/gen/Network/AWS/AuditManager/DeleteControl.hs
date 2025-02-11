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
-- Module      : Network.AWS.AuditManager.DeleteControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a custom control in Audit Manager.
module Network.AWS.AuditManager.DeleteControl
  ( -- * Creating a Request
    DeleteControl (..),
    newDeleteControl,

    -- * Request Lenses
    deleteControl_controlId,

    -- * Destructuring the Response
    DeleteControlResponse (..),
    newDeleteControlResponse,

    -- * Response Lenses
    deleteControlResponse_httpStatus,
  )
where

import Network.AWS.AuditManager.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteControl' smart constructor.
data DeleteControl = DeleteControl'
  { -- | The identifier for the specified control.
    controlId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteControl' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'controlId', 'deleteControl_controlId' - The identifier for the specified control.
newDeleteControl ::
  -- | 'controlId'
  Prelude.Text ->
  DeleteControl
newDeleteControl pControlId_ =
  DeleteControl' {controlId = pControlId_}

-- | The identifier for the specified control.
deleteControl_controlId :: Lens.Lens' DeleteControl Prelude.Text
deleteControl_controlId = Lens.lens (\DeleteControl' {controlId} -> controlId) (\s@DeleteControl' {} a -> s {controlId = a} :: DeleteControl)

instance Core.AWSRequest DeleteControl where
  type
    AWSResponse DeleteControl =
      DeleteControlResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteControlResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteControl

instance Prelude.NFData DeleteControl

instance Core.ToHeaders DeleteControl where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteControl where
  toPath DeleteControl' {..} =
    Prelude.mconcat ["/controls/", Core.toBS controlId]

instance Core.ToQuery DeleteControl where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteControlResponse' smart constructor.
data DeleteControlResponse = DeleteControlResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteControlResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteControlResponse_httpStatus' - The response's http status code.
newDeleteControlResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteControlResponse
newDeleteControlResponse pHttpStatus_ =
  DeleteControlResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
deleteControlResponse_httpStatus :: Lens.Lens' DeleteControlResponse Prelude.Int
deleteControlResponse_httpStatus = Lens.lens (\DeleteControlResponse' {httpStatus} -> httpStatus) (\s@DeleteControlResponse' {} a -> s {httpStatus = a} :: DeleteControlResponse)

instance Prelude.NFData DeleteControlResponse
