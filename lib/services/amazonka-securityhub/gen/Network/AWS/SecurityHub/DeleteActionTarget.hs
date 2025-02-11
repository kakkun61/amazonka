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
-- Module      : Network.AWS.SecurityHub.DeleteActionTarget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a custom action target from Security Hub.
--
-- Deleting a custom action target does not affect any findings or insights
-- that were already sent to Amazon CloudWatch Events using the custom
-- action.
module Network.AWS.SecurityHub.DeleteActionTarget
  ( -- * Creating a Request
    DeleteActionTarget (..),
    newDeleteActionTarget,

    -- * Request Lenses
    deleteActionTarget_actionTargetArn,

    -- * Destructuring the Response
    DeleteActionTargetResponse (..),
    newDeleteActionTargetResponse,

    -- * Response Lenses
    deleteActionTargetResponse_httpStatus,
    deleteActionTargetResponse_actionTargetArn,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SecurityHub.Types

-- | /See:/ 'newDeleteActionTarget' smart constructor.
data DeleteActionTarget = DeleteActionTarget'
  { -- | The ARN of the custom action target to delete.
    actionTargetArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteActionTarget' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'actionTargetArn', 'deleteActionTarget_actionTargetArn' - The ARN of the custom action target to delete.
newDeleteActionTarget ::
  -- | 'actionTargetArn'
  Prelude.Text ->
  DeleteActionTarget
newDeleteActionTarget pActionTargetArn_ =
  DeleteActionTarget'
    { actionTargetArn =
        pActionTargetArn_
    }

-- | The ARN of the custom action target to delete.
deleteActionTarget_actionTargetArn :: Lens.Lens' DeleteActionTarget Prelude.Text
deleteActionTarget_actionTargetArn = Lens.lens (\DeleteActionTarget' {actionTargetArn} -> actionTargetArn) (\s@DeleteActionTarget' {} a -> s {actionTargetArn = a} :: DeleteActionTarget)

instance Core.AWSRequest DeleteActionTarget where
  type
    AWSResponse DeleteActionTarget =
      DeleteActionTargetResponse
  request = Request.delete defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteActionTargetResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "ActionTargetArn")
      )

instance Prelude.Hashable DeleteActionTarget

instance Prelude.NFData DeleteActionTarget

instance Core.ToHeaders DeleteActionTarget where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteActionTarget where
  toPath DeleteActionTarget' {..} =
    Prelude.mconcat
      ["/actionTargets/", Core.toBS actionTargetArn]

instance Core.ToQuery DeleteActionTarget where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteActionTargetResponse' smart constructor.
data DeleteActionTargetResponse = DeleteActionTargetResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The ARN of the custom action target that was deleted.
    actionTargetArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteActionTargetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteActionTargetResponse_httpStatus' - The response's http status code.
--
-- 'actionTargetArn', 'deleteActionTargetResponse_actionTargetArn' - The ARN of the custom action target that was deleted.
newDeleteActionTargetResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'actionTargetArn'
  Prelude.Text ->
  DeleteActionTargetResponse
newDeleteActionTargetResponse
  pHttpStatus_
  pActionTargetArn_ =
    DeleteActionTargetResponse'
      { httpStatus =
          pHttpStatus_,
        actionTargetArn = pActionTargetArn_
      }

-- | The response's http status code.
deleteActionTargetResponse_httpStatus :: Lens.Lens' DeleteActionTargetResponse Prelude.Int
deleteActionTargetResponse_httpStatus = Lens.lens (\DeleteActionTargetResponse' {httpStatus} -> httpStatus) (\s@DeleteActionTargetResponse' {} a -> s {httpStatus = a} :: DeleteActionTargetResponse)

-- | The ARN of the custom action target that was deleted.
deleteActionTargetResponse_actionTargetArn :: Lens.Lens' DeleteActionTargetResponse Prelude.Text
deleteActionTargetResponse_actionTargetArn = Lens.lens (\DeleteActionTargetResponse' {actionTargetArn} -> actionTargetArn) (\s@DeleteActionTargetResponse' {} a -> s {actionTargetArn = a} :: DeleteActionTargetResponse)

instance Prelude.NFData DeleteActionTargetResponse
