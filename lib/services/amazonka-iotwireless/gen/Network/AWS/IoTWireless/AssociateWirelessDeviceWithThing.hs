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
-- Module      : Network.AWS.IoTWireless.AssociateWirelessDeviceWithThing
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates a wireless device with a thing.
module Network.AWS.IoTWireless.AssociateWirelessDeviceWithThing
  ( -- * Creating a Request
    AssociateWirelessDeviceWithThing (..),
    newAssociateWirelessDeviceWithThing,

    -- * Request Lenses
    associateWirelessDeviceWithThing_id,
    associateWirelessDeviceWithThing_thingArn,

    -- * Destructuring the Response
    AssociateWirelessDeviceWithThingResponse (..),
    newAssociateWirelessDeviceWithThingResponse,

    -- * Response Lenses
    associateWirelessDeviceWithThingResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTWireless.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newAssociateWirelessDeviceWithThing' smart constructor.
data AssociateWirelessDeviceWithThing = AssociateWirelessDeviceWithThing'
  { -- | The ID of the resource to update.
    id :: Prelude.Text,
    -- | The ARN of the thing to associate with the wireless device.
    thingArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssociateWirelessDeviceWithThing' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'associateWirelessDeviceWithThing_id' - The ID of the resource to update.
--
-- 'thingArn', 'associateWirelessDeviceWithThing_thingArn' - The ARN of the thing to associate with the wireless device.
newAssociateWirelessDeviceWithThing ::
  -- | 'id'
  Prelude.Text ->
  -- | 'thingArn'
  Prelude.Text ->
  AssociateWirelessDeviceWithThing
newAssociateWirelessDeviceWithThing pId_ pThingArn_ =
  AssociateWirelessDeviceWithThing'
    { id = pId_,
      thingArn = pThingArn_
    }

-- | The ID of the resource to update.
associateWirelessDeviceWithThing_id :: Lens.Lens' AssociateWirelessDeviceWithThing Prelude.Text
associateWirelessDeviceWithThing_id = Lens.lens (\AssociateWirelessDeviceWithThing' {id} -> id) (\s@AssociateWirelessDeviceWithThing' {} a -> s {id = a} :: AssociateWirelessDeviceWithThing)

-- | The ARN of the thing to associate with the wireless device.
associateWirelessDeviceWithThing_thingArn :: Lens.Lens' AssociateWirelessDeviceWithThing Prelude.Text
associateWirelessDeviceWithThing_thingArn = Lens.lens (\AssociateWirelessDeviceWithThing' {thingArn} -> thingArn) (\s@AssociateWirelessDeviceWithThing' {} a -> s {thingArn = a} :: AssociateWirelessDeviceWithThing)

instance
  Core.AWSRequest
    AssociateWirelessDeviceWithThing
  where
  type
    AWSResponse AssociateWirelessDeviceWithThing =
      AssociateWirelessDeviceWithThingResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          AssociateWirelessDeviceWithThingResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    AssociateWirelessDeviceWithThing

instance
  Prelude.NFData
    AssociateWirelessDeviceWithThing

instance
  Core.ToHeaders
    AssociateWirelessDeviceWithThing
  where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON AssociateWirelessDeviceWithThing where
  toJSON AssociateWirelessDeviceWithThing' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("ThingArn" Core..= thingArn)]
      )

instance Core.ToPath AssociateWirelessDeviceWithThing where
  toPath AssociateWirelessDeviceWithThing' {..} =
    Prelude.mconcat
      ["/wireless-devices/", Core.toBS id, "/thing"]

instance
  Core.ToQuery
    AssociateWirelessDeviceWithThing
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newAssociateWirelessDeviceWithThingResponse' smart constructor.
data AssociateWirelessDeviceWithThingResponse = AssociateWirelessDeviceWithThingResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssociateWirelessDeviceWithThingResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'associateWirelessDeviceWithThingResponse_httpStatus' - The response's http status code.
newAssociateWirelessDeviceWithThingResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  AssociateWirelessDeviceWithThingResponse
newAssociateWirelessDeviceWithThingResponse
  pHttpStatus_ =
    AssociateWirelessDeviceWithThingResponse'
      { httpStatus =
          pHttpStatus_
      }

-- | The response's http status code.
associateWirelessDeviceWithThingResponse_httpStatus :: Lens.Lens' AssociateWirelessDeviceWithThingResponse Prelude.Int
associateWirelessDeviceWithThingResponse_httpStatus = Lens.lens (\AssociateWirelessDeviceWithThingResponse' {httpStatus} -> httpStatus) (\s@AssociateWirelessDeviceWithThingResponse' {} a -> s {httpStatus = a} :: AssociateWirelessDeviceWithThingResponse)

instance
  Prelude.NFData
    AssociateWirelessDeviceWithThingResponse
