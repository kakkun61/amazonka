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
-- Module      : Network.AWS.ImageBuilder.Types.SystemsManagerAgent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ImageBuilder.Types.SystemsManagerAgent where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains settings for the Systems Manager agent on your build instance.
--
-- /See:/ 'newSystemsManagerAgent' smart constructor.
data SystemsManagerAgent = SystemsManagerAgent'
  { -- | Controls whether the Systems Manager agent is removed from your final
    -- build image, prior to creating the new AMI. If this is set to true, then
    -- the agent is removed from the final image. If it\'s set to false, then
    -- the agent is left in, so that it is included in the new AMI. The default
    -- value is false.
    uninstallAfterBuild :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SystemsManagerAgent' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'uninstallAfterBuild', 'systemsManagerAgent_uninstallAfterBuild' - Controls whether the Systems Manager agent is removed from your final
-- build image, prior to creating the new AMI. If this is set to true, then
-- the agent is removed from the final image. If it\'s set to false, then
-- the agent is left in, so that it is included in the new AMI. The default
-- value is false.
newSystemsManagerAgent ::
  SystemsManagerAgent
newSystemsManagerAgent =
  SystemsManagerAgent'
    { uninstallAfterBuild =
        Prelude.Nothing
    }

-- | Controls whether the Systems Manager agent is removed from your final
-- build image, prior to creating the new AMI. If this is set to true, then
-- the agent is removed from the final image. If it\'s set to false, then
-- the agent is left in, so that it is included in the new AMI. The default
-- value is false.
systemsManagerAgent_uninstallAfterBuild :: Lens.Lens' SystemsManagerAgent (Prelude.Maybe Prelude.Bool)
systemsManagerAgent_uninstallAfterBuild = Lens.lens (\SystemsManagerAgent' {uninstallAfterBuild} -> uninstallAfterBuild) (\s@SystemsManagerAgent' {} a -> s {uninstallAfterBuild = a} :: SystemsManagerAgent)

instance Core.FromJSON SystemsManagerAgent where
  parseJSON =
    Core.withObject
      "SystemsManagerAgent"
      ( \x ->
          SystemsManagerAgent'
            Prelude.<$> (x Core..:? "uninstallAfterBuild")
      )

instance Prelude.Hashable SystemsManagerAgent

instance Prelude.NFData SystemsManagerAgent

instance Core.ToJSON SystemsManagerAgent where
  toJSON SystemsManagerAgent' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("uninstallAfterBuild" Core..=)
              Prelude.<$> uninstallAfterBuild
          ]
      )
