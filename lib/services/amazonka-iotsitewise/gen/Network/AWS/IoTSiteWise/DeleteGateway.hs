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
-- Module      : Network.AWS.IoTSiteWise.DeleteGateway
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a gateway from IoT SiteWise. When you delete a gateway, some of
-- the gateway\'s files remain in your gateway\'s file system.
module Network.AWS.IoTSiteWise.DeleteGateway
  ( -- * Creating a Request
    DeleteGateway (..),
    newDeleteGateway,

    -- * Request Lenses
    deleteGateway_gatewayId,

    -- * Destructuring the Response
    DeleteGatewayResponse (..),
    newDeleteGatewayResponse,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTSiteWise.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteGateway' smart constructor.
data DeleteGateway = DeleteGateway'
  { -- | The ID of the gateway to delete.
    gatewayId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteGateway' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'gatewayId', 'deleteGateway_gatewayId' - The ID of the gateway to delete.
newDeleteGateway ::
  -- | 'gatewayId'
  Prelude.Text ->
  DeleteGateway
newDeleteGateway pGatewayId_ =
  DeleteGateway' {gatewayId = pGatewayId_}

-- | The ID of the gateway to delete.
deleteGateway_gatewayId :: Lens.Lens' DeleteGateway Prelude.Text
deleteGateway_gatewayId = Lens.lens (\DeleteGateway' {gatewayId} -> gatewayId) (\s@DeleteGateway' {} a -> s {gatewayId = a} :: DeleteGateway)

instance Core.AWSRequest DeleteGateway where
  type
    AWSResponse DeleteGateway =
      DeleteGatewayResponse
  request = Request.delete defaultService
  response =
    Response.receiveNull DeleteGatewayResponse'

instance Prelude.Hashable DeleteGateway

instance Prelude.NFData DeleteGateway

instance Core.ToHeaders DeleteGateway where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteGateway where
  toPath DeleteGateway' {..} =
    Prelude.mconcat
      ["/20200301/gateways/", Core.toBS gatewayId]

instance Core.ToQuery DeleteGateway where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteGatewayResponse' smart constructor.
data DeleteGatewayResponse = DeleteGatewayResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteGatewayResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteGatewayResponse ::
  DeleteGatewayResponse
newDeleteGatewayResponse = DeleteGatewayResponse'

instance Prelude.NFData DeleteGatewayResponse
