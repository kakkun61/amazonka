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
-- Module      : Network.AWS.AppFlow.DeleteFlow
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables your application to delete an existing flow. Before deleting the
-- flow, Amazon AppFlow validates the request by checking the flow
-- configuration and status. You can delete flows one at a time.
module Network.AWS.AppFlow.DeleteFlow
  ( -- * Creating a Request
    DeleteFlow (..),
    newDeleteFlow,

    -- * Request Lenses
    deleteFlow_forceDelete,
    deleteFlow_flowName,

    -- * Destructuring the Response
    DeleteFlowResponse (..),
    newDeleteFlowResponse,

    -- * Response Lenses
    deleteFlowResponse_httpStatus,
  )
where

import Network.AWS.AppFlow.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteFlow' smart constructor.
data DeleteFlow = DeleteFlow'
  { -- | Indicates whether Amazon AppFlow should delete the flow, even if it is
    -- currently in use.
    forceDelete :: Prelude.Maybe Prelude.Bool,
    -- | The specified name of the flow. Spaces are not allowed. Use underscores
    -- (_) or hyphens (-) only.
    flowName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteFlow' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'forceDelete', 'deleteFlow_forceDelete' - Indicates whether Amazon AppFlow should delete the flow, even if it is
-- currently in use.
--
-- 'flowName', 'deleteFlow_flowName' - The specified name of the flow. Spaces are not allowed. Use underscores
-- (_) or hyphens (-) only.
newDeleteFlow ::
  -- | 'flowName'
  Prelude.Text ->
  DeleteFlow
newDeleteFlow pFlowName_ =
  DeleteFlow'
    { forceDelete = Prelude.Nothing,
      flowName = pFlowName_
    }

-- | Indicates whether Amazon AppFlow should delete the flow, even if it is
-- currently in use.
deleteFlow_forceDelete :: Lens.Lens' DeleteFlow (Prelude.Maybe Prelude.Bool)
deleteFlow_forceDelete = Lens.lens (\DeleteFlow' {forceDelete} -> forceDelete) (\s@DeleteFlow' {} a -> s {forceDelete = a} :: DeleteFlow)

-- | The specified name of the flow. Spaces are not allowed. Use underscores
-- (_) or hyphens (-) only.
deleteFlow_flowName :: Lens.Lens' DeleteFlow Prelude.Text
deleteFlow_flowName = Lens.lens (\DeleteFlow' {flowName} -> flowName) (\s@DeleteFlow' {} a -> s {flowName = a} :: DeleteFlow)

instance Core.AWSRequest DeleteFlow where
  type AWSResponse DeleteFlow = DeleteFlowResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteFlowResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteFlow

instance Prelude.NFData DeleteFlow

instance Core.ToHeaders DeleteFlow where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteFlow where
  toJSON DeleteFlow' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("forceDelete" Core..=) Prelude.<$> forceDelete,
            Prelude.Just ("flowName" Core..= flowName)
          ]
      )

instance Core.ToPath DeleteFlow where
  toPath = Prelude.const "/delete-flow"

instance Core.ToQuery DeleteFlow where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteFlowResponse' smart constructor.
data DeleteFlowResponse = DeleteFlowResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteFlowResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteFlowResponse_httpStatus' - The response's http status code.
newDeleteFlowResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteFlowResponse
newDeleteFlowResponse pHttpStatus_ =
  DeleteFlowResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
deleteFlowResponse_httpStatus :: Lens.Lens' DeleteFlowResponse Prelude.Int
deleteFlowResponse_httpStatus = Lens.lens (\DeleteFlowResponse' {httpStatus} -> httpStatus) (\s@DeleteFlowResponse' {} a -> s {httpStatus = a} :: DeleteFlowResponse)

instance Prelude.NFData DeleteFlowResponse
