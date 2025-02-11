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
-- Module      : Network.AWS.IoTWireless.DeleteWirelessGateway
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a wireless gateway.
module Network.AWS.IoTWireless.DeleteWirelessGateway
  ( -- * Creating a Request
    DeleteWirelessGateway (..),
    newDeleteWirelessGateway,

    -- * Request Lenses
    deleteWirelessGateway_id,

    -- * Destructuring the Response
    DeleteWirelessGatewayResponse (..),
    newDeleteWirelessGatewayResponse,

    -- * Response Lenses
    deleteWirelessGatewayResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTWireless.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteWirelessGateway' smart constructor.
data DeleteWirelessGateway = DeleteWirelessGateway'
  { -- | The ID of the resource to delete.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteWirelessGateway' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'deleteWirelessGateway_id' - The ID of the resource to delete.
newDeleteWirelessGateway ::
  -- | 'id'
  Prelude.Text ->
  DeleteWirelessGateway
newDeleteWirelessGateway pId_ =
  DeleteWirelessGateway' {id = pId_}

-- | The ID of the resource to delete.
deleteWirelessGateway_id :: Lens.Lens' DeleteWirelessGateway Prelude.Text
deleteWirelessGateway_id = Lens.lens (\DeleteWirelessGateway' {id} -> id) (\s@DeleteWirelessGateway' {} a -> s {id = a} :: DeleteWirelessGateway)

instance Core.AWSRequest DeleteWirelessGateway where
  type
    AWSResponse DeleteWirelessGateway =
      DeleteWirelessGatewayResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteWirelessGatewayResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteWirelessGateway

instance Prelude.NFData DeleteWirelessGateway

instance Core.ToHeaders DeleteWirelessGateway where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DeleteWirelessGateway where
  toPath DeleteWirelessGateway' {..} =
    Prelude.mconcat
      ["/wireless-gateways/", Core.toBS id]

instance Core.ToQuery DeleteWirelessGateway where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteWirelessGatewayResponse' smart constructor.
data DeleteWirelessGatewayResponse = DeleteWirelessGatewayResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteWirelessGatewayResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteWirelessGatewayResponse_httpStatus' - The response's http status code.
newDeleteWirelessGatewayResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteWirelessGatewayResponse
newDeleteWirelessGatewayResponse pHttpStatus_ =
  DeleteWirelessGatewayResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteWirelessGatewayResponse_httpStatus :: Lens.Lens' DeleteWirelessGatewayResponse Prelude.Int
deleteWirelessGatewayResponse_httpStatus = Lens.lens (\DeleteWirelessGatewayResponse' {httpStatus} -> httpStatus) (\s@DeleteWirelessGatewayResponse' {} a -> s {httpStatus = a} :: DeleteWirelessGatewayResponse)

instance Prelude.NFData DeleteWirelessGatewayResponse
