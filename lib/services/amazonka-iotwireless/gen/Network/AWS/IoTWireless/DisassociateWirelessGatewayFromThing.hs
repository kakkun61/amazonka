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
-- Module      : Network.AWS.IoTWireless.DisassociateWirelessGatewayFromThing
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates a wireless gateway from its currently associated thing.
module Network.AWS.IoTWireless.DisassociateWirelessGatewayFromThing
  ( -- * Creating a Request
    DisassociateWirelessGatewayFromThing (..),
    newDisassociateWirelessGatewayFromThing,

    -- * Request Lenses
    disassociateWirelessGatewayFromThing_id,

    -- * Destructuring the Response
    DisassociateWirelessGatewayFromThingResponse (..),
    newDisassociateWirelessGatewayFromThingResponse,

    -- * Response Lenses
    disassociateWirelessGatewayFromThingResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTWireless.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDisassociateWirelessGatewayFromThing' smart constructor.
data DisassociateWirelessGatewayFromThing = DisassociateWirelessGatewayFromThing'
  { -- | The ID of the resource to update.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateWirelessGatewayFromThing' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'disassociateWirelessGatewayFromThing_id' - The ID of the resource to update.
newDisassociateWirelessGatewayFromThing ::
  -- | 'id'
  Prelude.Text ->
  DisassociateWirelessGatewayFromThing
newDisassociateWirelessGatewayFromThing pId_ =
  DisassociateWirelessGatewayFromThing' {id = pId_}

-- | The ID of the resource to update.
disassociateWirelessGatewayFromThing_id :: Lens.Lens' DisassociateWirelessGatewayFromThing Prelude.Text
disassociateWirelessGatewayFromThing_id = Lens.lens (\DisassociateWirelessGatewayFromThing' {id} -> id) (\s@DisassociateWirelessGatewayFromThing' {} a -> s {id = a} :: DisassociateWirelessGatewayFromThing)

instance
  Core.AWSRequest
    DisassociateWirelessGatewayFromThing
  where
  type
    AWSResponse DisassociateWirelessGatewayFromThing =
      DisassociateWirelessGatewayFromThingResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DisassociateWirelessGatewayFromThingResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DisassociateWirelessGatewayFromThing

instance
  Prelude.NFData
    DisassociateWirelessGatewayFromThing

instance
  Core.ToHeaders
    DisassociateWirelessGatewayFromThing
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Core.ToPath
    DisassociateWirelessGatewayFromThing
  where
  toPath DisassociateWirelessGatewayFromThing' {..} =
    Prelude.mconcat
      ["/wireless-gateways/", Core.toBS id, "/thing"]

instance
  Core.ToQuery
    DisassociateWirelessGatewayFromThing
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDisassociateWirelessGatewayFromThingResponse' smart constructor.
data DisassociateWirelessGatewayFromThingResponse = DisassociateWirelessGatewayFromThingResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateWirelessGatewayFromThingResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'disassociateWirelessGatewayFromThingResponse_httpStatus' - The response's http status code.
newDisassociateWirelessGatewayFromThingResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DisassociateWirelessGatewayFromThingResponse
newDisassociateWirelessGatewayFromThingResponse
  pHttpStatus_ =
    DisassociateWirelessGatewayFromThingResponse'
      { httpStatus =
          pHttpStatus_
      }

-- | The response's http status code.
disassociateWirelessGatewayFromThingResponse_httpStatus :: Lens.Lens' DisassociateWirelessGatewayFromThingResponse Prelude.Int
disassociateWirelessGatewayFromThingResponse_httpStatus = Lens.lens (\DisassociateWirelessGatewayFromThingResponse' {httpStatus} -> httpStatus) (\s@DisassociateWirelessGatewayFromThingResponse' {} a -> s {httpStatus = a} :: DisassociateWirelessGatewayFromThingResponse)

instance
  Prelude.NFData
    DisassociateWirelessGatewayFromThingResponse
