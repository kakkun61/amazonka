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
-- Module      : Network.AWS.LicenseManager.Types.AutomatedDiscoveryInformation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LicenseManager.Types.AutomatedDiscoveryInformation where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes automated discovery.
--
-- /See:/ 'newAutomatedDiscoveryInformation' smart constructor.
data AutomatedDiscoveryInformation = AutomatedDiscoveryInformation'
  { -- | Time that automated discovery last ran.
    lastRunTime :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AutomatedDiscoveryInformation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastRunTime', 'automatedDiscoveryInformation_lastRunTime' - Time that automated discovery last ran.
newAutomatedDiscoveryInformation ::
  AutomatedDiscoveryInformation
newAutomatedDiscoveryInformation =
  AutomatedDiscoveryInformation'
    { lastRunTime =
        Prelude.Nothing
    }

-- | Time that automated discovery last ran.
automatedDiscoveryInformation_lastRunTime :: Lens.Lens' AutomatedDiscoveryInformation (Prelude.Maybe Prelude.UTCTime)
automatedDiscoveryInformation_lastRunTime = Lens.lens (\AutomatedDiscoveryInformation' {lastRunTime} -> lastRunTime) (\s@AutomatedDiscoveryInformation' {} a -> s {lastRunTime = a} :: AutomatedDiscoveryInformation) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON AutomatedDiscoveryInformation where
  parseJSON =
    Core.withObject
      "AutomatedDiscoveryInformation"
      ( \x ->
          AutomatedDiscoveryInformation'
            Prelude.<$> (x Core..:? "LastRunTime")
      )

instance
  Prelude.Hashable
    AutomatedDiscoveryInformation

instance Prelude.NFData AutomatedDiscoveryInformation
