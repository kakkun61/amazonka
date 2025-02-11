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
-- Module      : Network.AWS.ECS.Types.Device
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.Device where

import qualified Network.AWS.Core as Core
import Network.AWS.ECS.Types.DeviceCgroupPermission
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object representing a container instance host device.
--
-- /See:/ 'newDevice' smart constructor.
data Device = Device'
  { -- | The path inside the container at which to expose the host device.
    containerPath :: Prelude.Maybe Prelude.Text,
    -- | The explicit permissions to provide to the container for the device. By
    -- default, the container has permissions for @read@, @write@, and @mknod@
    -- for the device.
    permissions :: Prelude.Maybe [DeviceCgroupPermission],
    -- | The path for the device on the host container instance.
    hostPath :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Device' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'containerPath', 'device_containerPath' - The path inside the container at which to expose the host device.
--
-- 'permissions', 'device_permissions' - The explicit permissions to provide to the container for the device. By
-- default, the container has permissions for @read@, @write@, and @mknod@
-- for the device.
--
-- 'hostPath', 'device_hostPath' - The path for the device on the host container instance.
newDevice ::
  -- | 'hostPath'
  Prelude.Text ->
  Device
newDevice pHostPath_ =
  Device'
    { containerPath = Prelude.Nothing,
      permissions = Prelude.Nothing,
      hostPath = pHostPath_
    }

-- | The path inside the container at which to expose the host device.
device_containerPath :: Lens.Lens' Device (Prelude.Maybe Prelude.Text)
device_containerPath = Lens.lens (\Device' {containerPath} -> containerPath) (\s@Device' {} a -> s {containerPath = a} :: Device)

-- | The explicit permissions to provide to the container for the device. By
-- default, the container has permissions for @read@, @write@, and @mknod@
-- for the device.
device_permissions :: Lens.Lens' Device (Prelude.Maybe [DeviceCgroupPermission])
device_permissions = Lens.lens (\Device' {permissions} -> permissions) (\s@Device' {} a -> s {permissions = a} :: Device) Prelude.. Lens.mapping Lens.coerced

-- | The path for the device on the host container instance.
device_hostPath :: Lens.Lens' Device Prelude.Text
device_hostPath = Lens.lens (\Device' {hostPath} -> hostPath) (\s@Device' {} a -> s {hostPath = a} :: Device)

instance Core.FromJSON Device where
  parseJSON =
    Core.withObject
      "Device"
      ( \x ->
          Device'
            Prelude.<$> (x Core..:? "containerPath")
            Prelude.<*> (x Core..:? "permissions" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..: "hostPath")
      )

instance Prelude.Hashable Device

instance Prelude.NFData Device

instance Core.ToJSON Device where
  toJSON Device' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("containerPath" Core..=) Prelude.<$> containerPath,
            ("permissions" Core..=) Prelude.<$> permissions,
            Prelude.Just ("hostPath" Core..= hostPath)
          ]
      )
