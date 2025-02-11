{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GreengrassV2.Types.DisassociateClientDeviceFromCoreDeviceEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GreengrassV2.Types.DisassociateClientDeviceFromCoreDeviceEntry where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains a request to disassociate a client device from a core device.
-- The
-- <https://docs.aws.amazon.com/greengrass/v2/APIReference/API_BatchDisassociateClientDeviceWithCoreDevice.html BatchDisassociateClientDeviceWithCoreDevice>
-- operation consumes a list of these requests.
--
-- /See:/ 'newDisassociateClientDeviceFromCoreDeviceEntry' smart constructor.
data DisassociateClientDeviceFromCoreDeviceEntry = DisassociateClientDeviceFromCoreDeviceEntry'
  { -- | The name of the IoT thing that represents the client device to
    -- disassociate.
    thingName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateClientDeviceFromCoreDeviceEntry' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'thingName', 'disassociateClientDeviceFromCoreDeviceEntry_thingName' - The name of the IoT thing that represents the client device to
-- disassociate.
newDisassociateClientDeviceFromCoreDeviceEntry ::
  -- | 'thingName'
  Prelude.Text ->
  DisassociateClientDeviceFromCoreDeviceEntry
newDisassociateClientDeviceFromCoreDeviceEntry
  pThingName_ =
    DisassociateClientDeviceFromCoreDeviceEntry'
      { thingName =
          pThingName_
      }

-- | The name of the IoT thing that represents the client device to
-- disassociate.
disassociateClientDeviceFromCoreDeviceEntry_thingName :: Lens.Lens' DisassociateClientDeviceFromCoreDeviceEntry Prelude.Text
disassociateClientDeviceFromCoreDeviceEntry_thingName = Lens.lens (\DisassociateClientDeviceFromCoreDeviceEntry' {thingName} -> thingName) (\s@DisassociateClientDeviceFromCoreDeviceEntry' {} a -> s {thingName = a} :: DisassociateClientDeviceFromCoreDeviceEntry)

instance
  Prelude.Hashable
    DisassociateClientDeviceFromCoreDeviceEntry

instance
  Prelude.NFData
    DisassociateClientDeviceFromCoreDeviceEntry

instance
  Core.ToJSON
    DisassociateClientDeviceFromCoreDeviceEntry
  where
  toJSON
    DisassociateClientDeviceFromCoreDeviceEntry' {..} =
      Core.object
        ( Prelude.catMaybes
            [Prelude.Just ("thingName" Core..= thingName)]
        )
