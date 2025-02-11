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
-- Module      : Network.AWS.RobOMaker.Types.PortMapping
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RobOMaker.Types.PortMapping where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object representing a port mapping.
--
-- /See:/ 'newPortMapping' smart constructor.
data PortMapping = PortMapping'
  { -- | A Boolean indicating whether to enable this port mapping on public IP.
    enableOnPublicIp :: Prelude.Maybe Prelude.Bool,
    -- | The port number on the simulation job instance to use as a remote
    -- connection point.
    jobPort :: Prelude.Natural,
    -- | The port number on the application.
    applicationPort :: Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PortMapping' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'enableOnPublicIp', 'portMapping_enableOnPublicIp' - A Boolean indicating whether to enable this port mapping on public IP.
--
-- 'jobPort', 'portMapping_jobPort' - The port number on the simulation job instance to use as a remote
-- connection point.
--
-- 'applicationPort', 'portMapping_applicationPort' - The port number on the application.
newPortMapping ::
  -- | 'jobPort'
  Prelude.Natural ->
  -- | 'applicationPort'
  Prelude.Natural ->
  PortMapping
newPortMapping pJobPort_ pApplicationPort_ =
  PortMapping'
    { enableOnPublicIp = Prelude.Nothing,
      jobPort = pJobPort_,
      applicationPort = pApplicationPort_
    }

-- | A Boolean indicating whether to enable this port mapping on public IP.
portMapping_enableOnPublicIp :: Lens.Lens' PortMapping (Prelude.Maybe Prelude.Bool)
portMapping_enableOnPublicIp = Lens.lens (\PortMapping' {enableOnPublicIp} -> enableOnPublicIp) (\s@PortMapping' {} a -> s {enableOnPublicIp = a} :: PortMapping)

-- | The port number on the simulation job instance to use as a remote
-- connection point.
portMapping_jobPort :: Lens.Lens' PortMapping Prelude.Natural
portMapping_jobPort = Lens.lens (\PortMapping' {jobPort} -> jobPort) (\s@PortMapping' {} a -> s {jobPort = a} :: PortMapping)

-- | The port number on the application.
portMapping_applicationPort :: Lens.Lens' PortMapping Prelude.Natural
portMapping_applicationPort = Lens.lens (\PortMapping' {applicationPort} -> applicationPort) (\s@PortMapping' {} a -> s {applicationPort = a} :: PortMapping)

instance Core.FromJSON PortMapping where
  parseJSON =
    Core.withObject
      "PortMapping"
      ( \x ->
          PortMapping'
            Prelude.<$> (x Core..:? "enableOnPublicIp")
            Prelude.<*> (x Core..: "jobPort")
            Prelude.<*> (x Core..: "applicationPort")
      )

instance Prelude.Hashable PortMapping

instance Prelude.NFData PortMapping

instance Core.ToJSON PortMapping where
  toJSON PortMapping' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("enableOnPublicIp" Core..=)
              Prelude.<$> enableOnPublicIp,
            Prelude.Just ("jobPort" Core..= jobPort),
            Prelude.Just
              ("applicationPort" Core..= applicationPort)
          ]
      )
