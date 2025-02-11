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
-- Module      : Network.AWS.GreengrassV2.Types.LambdaVolumeMount
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GreengrassV2.Types.LambdaVolumeMount where

import qualified Network.AWS.Core as Core
import Network.AWS.GreengrassV2.Types.LambdaFilesystemPermission
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information about a volume that Linux processes in a container
-- can access. When you define a volume, the IoT Greengrass Core software
-- mounts the source files to the destination inside the container.
--
-- /See:/ 'newLambdaVolumeMount' smart constructor.
data LambdaVolumeMount = LambdaVolumeMount'
  { -- | Whether or not to add the IoT Greengrass user group as an owner of the
    -- volume.
    --
    -- Default: @false@
    addGroupOwner :: Prelude.Maybe Prelude.Bool,
    -- | The permission to access the volume: read\/only (@ro@) or read\/write
    -- (@rw@).
    --
    -- Default: @ro@
    permission :: Prelude.Maybe LambdaFilesystemPermission,
    -- | The path to the physical volume in the file system.
    sourcePath :: Prelude.Text,
    -- | The path to the logical volume in the file system.
    destinationPath :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LambdaVolumeMount' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'addGroupOwner', 'lambdaVolumeMount_addGroupOwner' - Whether or not to add the IoT Greengrass user group as an owner of the
-- volume.
--
-- Default: @false@
--
-- 'permission', 'lambdaVolumeMount_permission' - The permission to access the volume: read\/only (@ro@) or read\/write
-- (@rw@).
--
-- Default: @ro@
--
-- 'sourcePath', 'lambdaVolumeMount_sourcePath' - The path to the physical volume in the file system.
--
-- 'destinationPath', 'lambdaVolumeMount_destinationPath' - The path to the logical volume in the file system.
newLambdaVolumeMount ::
  -- | 'sourcePath'
  Prelude.Text ->
  -- | 'destinationPath'
  Prelude.Text ->
  LambdaVolumeMount
newLambdaVolumeMount pSourcePath_ pDestinationPath_ =
  LambdaVolumeMount'
    { addGroupOwner = Prelude.Nothing,
      permission = Prelude.Nothing,
      sourcePath = pSourcePath_,
      destinationPath = pDestinationPath_
    }

-- | Whether or not to add the IoT Greengrass user group as an owner of the
-- volume.
--
-- Default: @false@
lambdaVolumeMount_addGroupOwner :: Lens.Lens' LambdaVolumeMount (Prelude.Maybe Prelude.Bool)
lambdaVolumeMount_addGroupOwner = Lens.lens (\LambdaVolumeMount' {addGroupOwner} -> addGroupOwner) (\s@LambdaVolumeMount' {} a -> s {addGroupOwner = a} :: LambdaVolumeMount)

-- | The permission to access the volume: read\/only (@ro@) or read\/write
-- (@rw@).
--
-- Default: @ro@
lambdaVolumeMount_permission :: Lens.Lens' LambdaVolumeMount (Prelude.Maybe LambdaFilesystemPermission)
lambdaVolumeMount_permission = Lens.lens (\LambdaVolumeMount' {permission} -> permission) (\s@LambdaVolumeMount' {} a -> s {permission = a} :: LambdaVolumeMount)

-- | The path to the physical volume in the file system.
lambdaVolumeMount_sourcePath :: Lens.Lens' LambdaVolumeMount Prelude.Text
lambdaVolumeMount_sourcePath = Lens.lens (\LambdaVolumeMount' {sourcePath} -> sourcePath) (\s@LambdaVolumeMount' {} a -> s {sourcePath = a} :: LambdaVolumeMount)

-- | The path to the logical volume in the file system.
lambdaVolumeMount_destinationPath :: Lens.Lens' LambdaVolumeMount Prelude.Text
lambdaVolumeMount_destinationPath = Lens.lens (\LambdaVolumeMount' {destinationPath} -> destinationPath) (\s@LambdaVolumeMount' {} a -> s {destinationPath = a} :: LambdaVolumeMount)

instance Prelude.Hashable LambdaVolumeMount

instance Prelude.NFData LambdaVolumeMount

instance Core.ToJSON LambdaVolumeMount where
  toJSON LambdaVolumeMount' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("addGroupOwner" Core..=) Prelude.<$> addGroupOwner,
            ("permission" Core..=) Prelude.<$> permission,
            Prelude.Just ("sourcePath" Core..= sourcePath),
            Prelude.Just
              ("destinationPath" Core..= destinationPath)
          ]
      )
