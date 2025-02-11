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
-- Module      : Network.AWS.Chime.Types.EmergencyCallingConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Chime.Types.EmergencyCallingConfiguration where

import Network.AWS.Chime.Types.DNISEmergencyCallingConfiguration
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The emergency calling configuration details associated with an Amazon
-- Chime Voice Connector.
--
-- /See:/ 'newEmergencyCallingConfiguration' smart constructor.
data EmergencyCallingConfiguration = EmergencyCallingConfiguration'
  { -- | The Dialed Number Identification Service (DNIS) emergency calling
    -- configuration details.
    dnis :: Prelude.Maybe [DNISEmergencyCallingConfiguration]
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EmergencyCallingConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dnis', 'emergencyCallingConfiguration_dnis' - The Dialed Number Identification Service (DNIS) emergency calling
-- configuration details.
newEmergencyCallingConfiguration ::
  EmergencyCallingConfiguration
newEmergencyCallingConfiguration =
  EmergencyCallingConfiguration'
    { dnis =
        Prelude.Nothing
    }

-- | The Dialed Number Identification Service (DNIS) emergency calling
-- configuration details.
emergencyCallingConfiguration_dnis :: Lens.Lens' EmergencyCallingConfiguration (Prelude.Maybe [DNISEmergencyCallingConfiguration])
emergencyCallingConfiguration_dnis = Lens.lens (\EmergencyCallingConfiguration' {dnis} -> dnis) (\s@EmergencyCallingConfiguration' {} a -> s {dnis = a} :: EmergencyCallingConfiguration) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON EmergencyCallingConfiguration where
  parseJSON =
    Core.withObject
      "EmergencyCallingConfiguration"
      ( \x ->
          EmergencyCallingConfiguration'
            Prelude.<$> (x Core..:? "DNIS" Core..!= Prelude.mempty)
      )

instance
  Prelude.Hashable
    EmergencyCallingConfiguration

instance Prelude.NFData EmergencyCallingConfiguration

instance Core.ToJSON EmergencyCallingConfiguration where
  toJSON EmergencyCallingConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [("DNIS" Core..=) Prelude.<$> dnis]
      )
