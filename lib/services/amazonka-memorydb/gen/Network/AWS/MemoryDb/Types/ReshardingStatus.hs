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
-- Module      : Network.AWS.MemoryDb.Types.ReshardingStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MemoryDb.Types.ReshardingStatus where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MemoryDb.Types.SlotMigration
import qualified Network.AWS.Prelude as Prelude

-- | The status of the online resharding
--
-- /See:/ 'newReshardingStatus' smart constructor.
data ReshardingStatus = ReshardingStatus'
  { -- | The status of the online resharding slot migration
    slotMigration :: Prelude.Maybe SlotMigration
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ReshardingStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'slotMigration', 'reshardingStatus_slotMigration' - The status of the online resharding slot migration
newReshardingStatus ::
  ReshardingStatus
newReshardingStatus =
  ReshardingStatus' {slotMigration = Prelude.Nothing}

-- | The status of the online resharding slot migration
reshardingStatus_slotMigration :: Lens.Lens' ReshardingStatus (Prelude.Maybe SlotMigration)
reshardingStatus_slotMigration = Lens.lens (\ReshardingStatus' {slotMigration} -> slotMigration) (\s@ReshardingStatus' {} a -> s {slotMigration = a} :: ReshardingStatus)

instance Core.FromJSON ReshardingStatus where
  parseJSON =
    Core.withObject
      "ReshardingStatus"
      ( \x ->
          ReshardingStatus'
            Prelude.<$> (x Core..:? "SlotMigration")
      )

instance Prelude.Hashable ReshardingStatus

instance Prelude.NFData ReshardingStatus
