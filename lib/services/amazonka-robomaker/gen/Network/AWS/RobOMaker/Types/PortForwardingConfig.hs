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
-- Module      : Network.AWS.RobOMaker.Types.PortForwardingConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RobOMaker.Types.PortForwardingConfig where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RobOMaker.Types.PortMapping

-- | Configuration information for port forwarding.
--
-- /See:/ 'newPortForwardingConfig' smart constructor.
data PortForwardingConfig = PortForwardingConfig'
  { -- | The port mappings for the configuration.
    portMappings :: Prelude.Maybe [PortMapping]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PortForwardingConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'portMappings', 'portForwardingConfig_portMappings' - The port mappings for the configuration.
newPortForwardingConfig ::
  PortForwardingConfig
newPortForwardingConfig =
  PortForwardingConfig'
    { portMappings =
        Prelude.Nothing
    }

-- | The port mappings for the configuration.
portForwardingConfig_portMappings :: Lens.Lens' PortForwardingConfig (Prelude.Maybe [PortMapping])
portForwardingConfig_portMappings = Lens.lens (\PortForwardingConfig' {portMappings} -> portMappings) (\s@PortForwardingConfig' {} a -> s {portMappings = a} :: PortForwardingConfig) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON PortForwardingConfig where
  parseJSON =
    Core.withObject
      "PortForwardingConfig"
      ( \x ->
          PortForwardingConfig'
            Prelude.<$> (x Core..:? "portMappings" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable PortForwardingConfig

instance Prelude.NFData PortForwardingConfig

instance Core.ToJSON PortForwardingConfig where
  toJSON PortForwardingConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [("portMappings" Core..=) Prelude.<$> portMappings]
      )
