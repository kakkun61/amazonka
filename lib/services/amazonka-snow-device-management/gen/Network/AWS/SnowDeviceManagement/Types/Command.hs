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
-- Module      : Network.AWS.SnowDeviceManagement.Types.Command
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SnowDeviceManagement.Types.Command where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SnowDeviceManagement.Types.Reboot
import Network.AWS.SnowDeviceManagement.Types.Unlock

-- | The command given to the device to execute.
--
-- /See:/ 'newCommand' smart constructor.
data Command = Command'
  { -- | Unlocks the device.
    unlock :: Prelude.Maybe Unlock,
    -- | Reboots the device.
    reboot :: Prelude.Maybe Reboot
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Command' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'unlock', 'command_unlock' - Unlocks the device.
--
-- 'reboot', 'command_reboot' - Reboots the device.
newCommand ::
  Command
newCommand =
  Command'
    { unlock = Prelude.Nothing,
      reboot = Prelude.Nothing
    }

-- | Unlocks the device.
command_unlock :: Lens.Lens' Command (Prelude.Maybe Unlock)
command_unlock = Lens.lens (\Command' {unlock} -> unlock) (\s@Command' {} a -> s {unlock = a} :: Command)

-- | Reboots the device.
command_reboot :: Lens.Lens' Command (Prelude.Maybe Reboot)
command_reboot = Lens.lens (\Command' {reboot} -> reboot) (\s@Command' {} a -> s {reboot = a} :: Command)

instance Prelude.Hashable Command

instance Prelude.NFData Command

instance Core.ToJSON Command where
  toJSON Command' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("unlock" Core..=) Prelude.<$> unlock,
            ("reboot" Core..=) Prelude.<$> reboot
          ]
      )
