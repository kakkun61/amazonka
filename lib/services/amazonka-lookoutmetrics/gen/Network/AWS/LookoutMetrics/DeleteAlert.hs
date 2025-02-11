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
-- Module      : Network.AWS.LookoutMetrics.DeleteAlert
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an alert.
module Network.AWS.LookoutMetrics.DeleteAlert
  ( -- * Creating a Request
    DeleteAlert (..),
    newDeleteAlert,

    -- * Request Lenses
    deleteAlert_alertArn,

    -- * Destructuring the Response
    DeleteAlertResponse (..),
    newDeleteAlertResponse,

    -- * Response Lenses
    deleteAlertResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LookoutMetrics.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteAlert' smart constructor.
data DeleteAlert = DeleteAlert'
  { -- | The ARN of the alert to delete.
    alertArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteAlert' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'alertArn', 'deleteAlert_alertArn' - The ARN of the alert to delete.
newDeleteAlert ::
  -- | 'alertArn'
  Prelude.Text ->
  DeleteAlert
newDeleteAlert pAlertArn_ =
  DeleteAlert' {alertArn = pAlertArn_}

-- | The ARN of the alert to delete.
deleteAlert_alertArn :: Lens.Lens' DeleteAlert Prelude.Text
deleteAlert_alertArn = Lens.lens (\DeleteAlert' {alertArn} -> alertArn) (\s@DeleteAlert' {} a -> s {alertArn = a} :: DeleteAlert)

instance Core.AWSRequest DeleteAlert where
  type AWSResponse DeleteAlert = DeleteAlertResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteAlertResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteAlert

instance Prelude.NFData DeleteAlert

instance Core.ToHeaders DeleteAlert where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteAlert where
  toJSON DeleteAlert' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("AlertArn" Core..= alertArn)]
      )

instance Core.ToPath DeleteAlert where
  toPath = Prelude.const "/DeleteAlert"

instance Core.ToQuery DeleteAlert where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteAlertResponse' smart constructor.
data DeleteAlertResponse = DeleteAlertResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteAlertResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteAlertResponse_httpStatus' - The response's http status code.
newDeleteAlertResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteAlertResponse
newDeleteAlertResponse pHttpStatus_ =
  DeleteAlertResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
deleteAlertResponse_httpStatus :: Lens.Lens' DeleteAlertResponse Prelude.Int
deleteAlertResponse_httpStatus = Lens.lens (\DeleteAlertResponse' {httpStatus} -> httpStatus) (\s@DeleteAlertResponse' {} a -> s {httpStatus = a} :: DeleteAlertResponse)

instance Prelude.NFData DeleteAlertResponse
