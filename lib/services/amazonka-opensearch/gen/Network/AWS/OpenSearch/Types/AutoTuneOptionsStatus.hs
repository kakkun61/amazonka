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
-- Module      : Network.AWS.OpenSearch.Types.AutoTuneOptionsStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpenSearch.Types.AutoTuneOptionsStatus where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.OpenSearch.Types.AutoTuneOptions
import Network.AWS.OpenSearch.Types.AutoTuneStatus
import qualified Network.AWS.Prelude as Prelude

-- | The Auto-Tune status for the domain.
--
-- /See:/ 'newAutoTuneOptionsStatus' smart constructor.
data AutoTuneOptionsStatus = AutoTuneOptionsStatus'
  { -- | The status of the Auto-Tune options for the domain.
    status :: Prelude.Maybe AutoTuneStatus,
    -- | Specifies Auto-Tune options for the domain.
    options :: Prelude.Maybe AutoTuneOptions
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AutoTuneOptionsStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'autoTuneOptionsStatus_status' - The status of the Auto-Tune options for the domain.
--
-- 'options', 'autoTuneOptionsStatus_options' - Specifies Auto-Tune options for the domain.
newAutoTuneOptionsStatus ::
  AutoTuneOptionsStatus
newAutoTuneOptionsStatus =
  AutoTuneOptionsStatus'
    { status = Prelude.Nothing,
      options = Prelude.Nothing
    }

-- | The status of the Auto-Tune options for the domain.
autoTuneOptionsStatus_status :: Lens.Lens' AutoTuneOptionsStatus (Prelude.Maybe AutoTuneStatus)
autoTuneOptionsStatus_status = Lens.lens (\AutoTuneOptionsStatus' {status} -> status) (\s@AutoTuneOptionsStatus' {} a -> s {status = a} :: AutoTuneOptionsStatus)

-- | Specifies Auto-Tune options for the domain.
autoTuneOptionsStatus_options :: Lens.Lens' AutoTuneOptionsStatus (Prelude.Maybe AutoTuneOptions)
autoTuneOptionsStatus_options = Lens.lens (\AutoTuneOptionsStatus' {options} -> options) (\s@AutoTuneOptionsStatus' {} a -> s {options = a} :: AutoTuneOptionsStatus)

instance Core.FromJSON AutoTuneOptionsStatus where
  parseJSON =
    Core.withObject
      "AutoTuneOptionsStatus"
      ( \x ->
          AutoTuneOptionsStatus'
            Prelude.<$> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "Options")
      )

instance Prelude.Hashable AutoTuneOptionsStatus

instance Prelude.NFData AutoTuneOptionsStatus
