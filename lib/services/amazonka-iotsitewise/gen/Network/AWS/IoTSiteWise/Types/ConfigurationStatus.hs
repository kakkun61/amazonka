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
-- Module      : Network.AWS.IoTSiteWise.Types.ConfigurationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTSiteWise.Types.ConfigurationStatus where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTSiteWise.Types.ConfigurationErrorDetails
import Network.AWS.IoTSiteWise.Types.ConfigurationState
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains current status information for the configuration.
--
-- /See:/ 'newConfigurationStatus' smart constructor.
data ConfigurationStatus = ConfigurationStatus'
  { -- | Contains associated error information, if any.
    error :: Prelude.Maybe ConfigurationErrorDetails,
    -- | The current state of the configuration.
    state :: ConfigurationState
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConfigurationStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'error', 'configurationStatus_error' - Contains associated error information, if any.
--
-- 'state', 'configurationStatus_state' - The current state of the configuration.
newConfigurationStatus ::
  -- | 'state'
  ConfigurationState ->
  ConfigurationStatus
newConfigurationStatus pState_ =
  ConfigurationStatus'
    { error = Prelude.Nothing,
      state = pState_
    }

-- | Contains associated error information, if any.
configurationStatus_error :: Lens.Lens' ConfigurationStatus (Prelude.Maybe ConfigurationErrorDetails)
configurationStatus_error = Lens.lens (\ConfigurationStatus' {error} -> error) (\s@ConfigurationStatus' {} a -> s {error = a} :: ConfigurationStatus)

-- | The current state of the configuration.
configurationStatus_state :: Lens.Lens' ConfigurationStatus ConfigurationState
configurationStatus_state = Lens.lens (\ConfigurationStatus' {state} -> state) (\s@ConfigurationStatus' {} a -> s {state = a} :: ConfigurationStatus)

instance Core.FromJSON ConfigurationStatus where
  parseJSON =
    Core.withObject
      "ConfigurationStatus"
      ( \x ->
          ConfigurationStatus'
            Prelude.<$> (x Core..:? "error") Prelude.<*> (x Core..: "state")
      )

instance Prelude.Hashable ConfigurationStatus

instance Prelude.NFData ConfigurationStatus
