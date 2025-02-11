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
-- Module      : Network.AWS.RobOMaker.Types.RobotSoftwareSuite
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RobOMaker.Types.RobotSoftwareSuite where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RobOMaker.Types.RobotSoftwareSuiteType
import Network.AWS.RobOMaker.Types.RobotSoftwareSuiteVersionType

-- | Information about a robot software suite (ROS distribution).
--
-- /See:/ 'newRobotSoftwareSuite' smart constructor.
data RobotSoftwareSuite = RobotSoftwareSuite'
  { -- | The name of the robot software suite (ROS distribution).
    name :: Prelude.Maybe RobotSoftwareSuiteType,
    -- | The version of the robot software suite (ROS distribution).
    version :: Prelude.Maybe RobotSoftwareSuiteVersionType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RobotSoftwareSuite' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'robotSoftwareSuite_name' - The name of the robot software suite (ROS distribution).
--
-- 'version', 'robotSoftwareSuite_version' - The version of the robot software suite (ROS distribution).
newRobotSoftwareSuite ::
  RobotSoftwareSuite
newRobotSoftwareSuite =
  RobotSoftwareSuite'
    { name = Prelude.Nothing,
      version = Prelude.Nothing
    }

-- | The name of the robot software suite (ROS distribution).
robotSoftwareSuite_name :: Lens.Lens' RobotSoftwareSuite (Prelude.Maybe RobotSoftwareSuiteType)
robotSoftwareSuite_name = Lens.lens (\RobotSoftwareSuite' {name} -> name) (\s@RobotSoftwareSuite' {} a -> s {name = a} :: RobotSoftwareSuite)

-- | The version of the robot software suite (ROS distribution).
robotSoftwareSuite_version :: Lens.Lens' RobotSoftwareSuite (Prelude.Maybe RobotSoftwareSuiteVersionType)
robotSoftwareSuite_version = Lens.lens (\RobotSoftwareSuite' {version} -> version) (\s@RobotSoftwareSuite' {} a -> s {version = a} :: RobotSoftwareSuite)

instance Core.FromJSON RobotSoftwareSuite where
  parseJSON =
    Core.withObject
      "RobotSoftwareSuite"
      ( \x ->
          RobotSoftwareSuite'
            Prelude.<$> (x Core..:? "name")
            Prelude.<*> (x Core..:? "version")
      )

instance Prelude.Hashable RobotSoftwareSuite

instance Prelude.NFData RobotSoftwareSuite

instance Core.ToJSON RobotSoftwareSuite where
  toJSON RobotSoftwareSuite' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("name" Core..=) Prelude.<$> name,
            ("version" Core..=) Prelude.<$> version
          ]
      )
