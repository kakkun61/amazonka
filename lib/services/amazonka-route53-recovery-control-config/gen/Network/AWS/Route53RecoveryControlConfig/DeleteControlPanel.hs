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
-- Module      : Network.AWS.Route53RecoveryControlConfig.DeleteControlPanel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a control panel.
module Network.AWS.Route53RecoveryControlConfig.DeleteControlPanel
  ( -- * Creating a Request
    DeleteControlPanel (..),
    newDeleteControlPanel,

    -- * Request Lenses
    deleteControlPanel_controlPanelArn,

    -- * Destructuring the Response
    DeleteControlPanelResponse (..),
    newDeleteControlPanelResponse,

    -- * Response Lenses
    deleteControlPanelResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Route53RecoveryControlConfig.Types

-- | /See:/ 'newDeleteControlPanel' smart constructor.
data DeleteControlPanel = DeleteControlPanel'
  { -- | The Amazon Resource Name (ARN) of the control panel that you\'re
    -- deleting.
    controlPanelArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteControlPanel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'controlPanelArn', 'deleteControlPanel_controlPanelArn' - The Amazon Resource Name (ARN) of the control panel that you\'re
-- deleting.
newDeleteControlPanel ::
  -- | 'controlPanelArn'
  Prelude.Text ->
  DeleteControlPanel
newDeleteControlPanel pControlPanelArn_ =
  DeleteControlPanel'
    { controlPanelArn =
        pControlPanelArn_
    }

-- | The Amazon Resource Name (ARN) of the control panel that you\'re
-- deleting.
deleteControlPanel_controlPanelArn :: Lens.Lens' DeleteControlPanel Prelude.Text
deleteControlPanel_controlPanelArn = Lens.lens (\DeleteControlPanel' {controlPanelArn} -> controlPanelArn) (\s@DeleteControlPanel' {} a -> s {controlPanelArn = a} :: DeleteControlPanel)

instance Core.AWSRequest DeleteControlPanel where
  type
    AWSResponse DeleteControlPanel =
      DeleteControlPanelResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteControlPanelResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteControlPanel

instance Prelude.NFData DeleteControlPanel

instance Core.ToHeaders DeleteControlPanel where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteControlPanel where
  toPath DeleteControlPanel' {..} =
    Prelude.mconcat
      ["/controlpanel/", Core.toBS controlPanelArn]

instance Core.ToQuery DeleteControlPanel where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteControlPanelResponse' smart constructor.
data DeleteControlPanelResponse = DeleteControlPanelResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteControlPanelResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteControlPanelResponse_httpStatus' - The response's http status code.
newDeleteControlPanelResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteControlPanelResponse
newDeleteControlPanelResponse pHttpStatus_ =
  DeleteControlPanelResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteControlPanelResponse_httpStatus :: Lens.Lens' DeleteControlPanelResponse Prelude.Int
deleteControlPanelResponse_httpStatus = Lens.lens (\DeleteControlPanelResponse' {httpStatus} -> httpStatus) (\s@DeleteControlPanelResponse' {} a -> s {httpStatus = a} :: DeleteControlPanelResponse)

instance Prelude.NFData DeleteControlPanelResponse
