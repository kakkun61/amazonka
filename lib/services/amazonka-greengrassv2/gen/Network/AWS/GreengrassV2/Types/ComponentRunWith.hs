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
-- Module      : Network.AWS.GreengrassV2.Types.ComponentRunWith
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GreengrassV2.Types.ComponentRunWith where

import qualified Network.AWS.Core as Core
import Network.AWS.GreengrassV2.Types.SystemResourceLimits
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information system user and group that the IoT Greengrass Core
-- software uses to run component processes on the core device. For more
-- information, see
-- <https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html#configure-component-user Configure the user and group that run components>
-- in the /IoT Greengrass V2 Developer Guide/.
--
-- /See:/ 'newComponentRunWith' smart constructor.
data ComponentRunWith = ComponentRunWith'
  { -- | The POSIX system user and (optional) group to use to run this component.
    -- Specify the user and group separated by a colon (@:@) in the following
    -- format: @user:group@. The group is optional. If you don\'t specify a
    -- group, the IoT Greengrass Core software uses the primary user for the
    -- group.
    --
    -- If you omit this parameter, the IoT Greengrass Core software uses the
    -- default system user and group that you configure on the Greengrass
    -- nucleus component. For more information, see
    -- <https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html#configure-component-user Configure the user and group that run components>.
    posixUser :: Prelude.Maybe Prelude.Text,
    -- | The system resource limits to apply to this component\'s process on the
    -- core device.
    --
    -- If you omit this parameter, the IoT Greengrass Core software uses the
    -- default system resource limits that you configure on the Greengrass
    -- nucleus component. For more information, see
    -- <https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html#configure-component-system-resource-limits Configure system resource limits for components>.
    systemResourceLimits :: Prelude.Maybe SystemResourceLimits
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ComponentRunWith' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'posixUser', 'componentRunWith_posixUser' - The POSIX system user and (optional) group to use to run this component.
-- Specify the user and group separated by a colon (@:@) in the following
-- format: @user:group@. The group is optional. If you don\'t specify a
-- group, the IoT Greengrass Core software uses the primary user for the
-- group.
--
-- If you omit this parameter, the IoT Greengrass Core software uses the
-- default system user and group that you configure on the Greengrass
-- nucleus component. For more information, see
-- <https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html#configure-component-user Configure the user and group that run components>.
--
-- 'systemResourceLimits', 'componentRunWith_systemResourceLimits' - The system resource limits to apply to this component\'s process on the
-- core device.
--
-- If you omit this parameter, the IoT Greengrass Core software uses the
-- default system resource limits that you configure on the Greengrass
-- nucleus component. For more information, see
-- <https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html#configure-component-system-resource-limits Configure system resource limits for components>.
newComponentRunWith ::
  ComponentRunWith
newComponentRunWith =
  ComponentRunWith'
    { posixUser = Prelude.Nothing,
      systemResourceLimits = Prelude.Nothing
    }

-- | The POSIX system user and (optional) group to use to run this component.
-- Specify the user and group separated by a colon (@:@) in the following
-- format: @user:group@. The group is optional. If you don\'t specify a
-- group, the IoT Greengrass Core software uses the primary user for the
-- group.
--
-- If you omit this parameter, the IoT Greengrass Core software uses the
-- default system user and group that you configure on the Greengrass
-- nucleus component. For more information, see
-- <https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html#configure-component-user Configure the user and group that run components>.
componentRunWith_posixUser :: Lens.Lens' ComponentRunWith (Prelude.Maybe Prelude.Text)
componentRunWith_posixUser = Lens.lens (\ComponentRunWith' {posixUser} -> posixUser) (\s@ComponentRunWith' {} a -> s {posixUser = a} :: ComponentRunWith)

-- | The system resource limits to apply to this component\'s process on the
-- core device.
--
-- If you omit this parameter, the IoT Greengrass Core software uses the
-- default system resource limits that you configure on the Greengrass
-- nucleus component. For more information, see
-- <https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html#configure-component-system-resource-limits Configure system resource limits for components>.
componentRunWith_systemResourceLimits :: Lens.Lens' ComponentRunWith (Prelude.Maybe SystemResourceLimits)
componentRunWith_systemResourceLimits = Lens.lens (\ComponentRunWith' {systemResourceLimits} -> systemResourceLimits) (\s@ComponentRunWith' {} a -> s {systemResourceLimits = a} :: ComponentRunWith)

instance Core.FromJSON ComponentRunWith where
  parseJSON =
    Core.withObject
      "ComponentRunWith"
      ( \x ->
          ComponentRunWith'
            Prelude.<$> (x Core..:? "posixUser")
            Prelude.<*> (x Core..:? "systemResourceLimits")
      )

instance Prelude.Hashable ComponentRunWith

instance Prelude.NFData ComponentRunWith

instance Core.ToJSON ComponentRunWith where
  toJSON ComponentRunWith' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("posixUser" Core..=) Prelude.<$> posixUser,
            ("systemResourceLimits" Core..=)
              Prelude.<$> systemResourceLimits
          ]
      )
