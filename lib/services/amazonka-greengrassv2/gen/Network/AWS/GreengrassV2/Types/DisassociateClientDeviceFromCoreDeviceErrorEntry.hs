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
-- Module      : Network.AWS.GreengrassV2.Types.DisassociateClientDeviceFromCoreDeviceErrorEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GreengrassV2.Types.DisassociateClientDeviceFromCoreDeviceErrorEntry where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains an error that occurs from a request to disassociate a client
-- device from a core device. The
-- <https://docs.aws.amazon.com/greengrass/v2/APIReference/API_BatchDisassociateClientDeviceWithCoreDevice.html BatchDisassociateClientDeviceWithCoreDevice>
-- operation returns a list of these errors.
--
-- /See:/ 'newDisassociateClientDeviceFromCoreDeviceErrorEntry' smart constructor.
data DisassociateClientDeviceFromCoreDeviceErrorEntry = DisassociateClientDeviceFromCoreDeviceErrorEntry'
  { -- | The error code for the request.
    code :: Prelude.Maybe Prelude.Text,
    -- | A message that provides additional information about the error.
    message :: Prelude.Maybe Prelude.Text,
    -- | The name of the IoT thing whose disassociate request failed.
    thingName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateClientDeviceFromCoreDeviceErrorEntry' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'code', 'disassociateClientDeviceFromCoreDeviceErrorEntry_code' - The error code for the request.
--
-- 'message', 'disassociateClientDeviceFromCoreDeviceErrorEntry_message' - A message that provides additional information about the error.
--
-- 'thingName', 'disassociateClientDeviceFromCoreDeviceErrorEntry_thingName' - The name of the IoT thing whose disassociate request failed.
newDisassociateClientDeviceFromCoreDeviceErrorEntry ::
  DisassociateClientDeviceFromCoreDeviceErrorEntry
newDisassociateClientDeviceFromCoreDeviceErrorEntry =
  DisassociateClientDeviceFromCoreDeviceErrorEntry'
    { code =
        Prelude.Nothing,
      message = Prelude.Nothing,
      thingName =
        Prelude.Nothing
    }

-- | The error code for the request.
disassociateClientDeviceFromCoreDeviceErrorEntry_code :: Lens.Lens' DisassociateClientDeviceFromCoreDeviceErrorEntry (Prelude.Maybe Prelude.Text)
disassociateClientDeviceFromCoreDeviceErrorEntry_code = Lens.lens (\DisassociateClientDeviceFromCoreDeviceErrorEntry' {code} -> code) (\s@DisassociateClientDeviceFromCoreDeviceErrorEntry' {} a -> s {code = a} :: DisassociateClientDeviceFromCoreDeviceErrorEntry)

-- | A message that provides additional information about the error.
disassociateClientDeviceFromCoreDeviceErrorEntry_message :: Lens.Lens' DisassociateClientDeviceFromCoreDeviceErrorEntry (Prelude.Maybe Prelude.Text)
disassociateClientDeviceFromCoreDeviceErrorEntry_message = Lens.lens (\DisassociateClientDeviceFromCoreDeviceErrorEntry' {message} -> message) (\s@DisassociateClientDeviceFromCoreDeviceErrorEntry' {} a -> s {message = a} :: DisassociateClientDeviceFromCoreDeviceErrorEntry)

-- | The name of the IoT thing whose disassociate request failed.
disassociateClientDeviceFromCoreDeviceErrorEntry_thingName :: Lens.Lens' DisassociateClientDeviceFromCoreDeviceErrorEntry (Prelude.Maybe Prelude.Text)
disassociateClientDeviceFromCoreDeviceErrorEntry_thingName = Lens.lens (\DisassociateClientDeviceFromCoreDeviceErrorEntry' {thingName} -> thingName) (\s@DisassociateClientDeviceFromCoreDeviceErrorEntry' {} a -> s {thingName = a} :: DisassociateClientDeviceFromCoreDeviceErrorEntry)

instance
  Core.FromJSON
    DisassociateClientDeviceFromCoreDeviceErrorEntry
  where
  parseJSON =
    Core.withObject
      "DisassociateClientDeviceFromCoreDeviceErrorEntry"
      ( \x ->
          DisassociateClientDeviceFromCoreDeviceErrorEntry'
            Prelude.<$> (x Core..:? "code")
              Prelude.<*> (x Core..:? "message")
              Prelude.<*> (x Core..:? "thingName")
      )

instance
  Prelude.Hashable
    DisassociateClientDeviceFromCoreDeviceErrorEntry

instance
  Prelude.NFData
    DisassociateClientDeviceFromCoreDeviceErrorEntry
