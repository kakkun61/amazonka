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
-- Module      : Network.AWS.MGN.Types.DataReplicationInitiation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MGN.Types.DataReplicationInitiation where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MGN.Types.DataReplicationInitiationStep
import qualified Network.AWS.Prelude as Prelude

-- | Data replication initiation.
--
-- /See:/ 'newDataReplicationInitiation' smart constructor.
data DataReplicationInitiation = DataReplicationInitiation'
  { -- | Request to query data initiation steps.
    steps :: Prelude.Maybe [DataReplicationInitiationStep],
    -- | Request to query next data initiation date and time.
    nextAttemptDateTime :: Prelude.Maybe Prelude.Text,
    -- | Request to query data initiation start date and time.
    startDateTime :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DataReplicationInitiation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'steps', 'dataReplicationInitiation_steps' - Request to query data initiation steps.
--
-- 'nextAttemptDateTime', 'dataReplicationInitiation_nextAttemptDateTime' - Request to query next data initiation date and time.
--
-- 'startDateTime', 'dataReplicationInitiation_startDateTime' - Request to query data initiation start date and time.
newDataReplicationInitiation ::
  DataReplicationInitiation
newDataReplicationInitiation =
  DataReplicationInitiation'
    { steps = Prelude.Nothing,
      nextAttemptDateTime = Prelude.Nothing,
      startDateTime = Prelude.Nothing
    }

-- | Request to query data initiation steps.
dataReplicationInitiation_steps :: Lens.Lens' DataReplicationInitiation (Prelude.Maybe [DataReplicationInitiationStep])
dataReplicationInitiation_steps = Lens.lens (\DataReplicationInitiation' {steps} -> steps) (\s@DataReplicationInitiation' {} a -> s {steps = a} :: DataReplicationInitiation) Prelude.. Lens.mapping Lens.coerced

-- | Request to query next data initiation date and time.
dataReplicationInitiation_nextAttemptDateTime :: Lens.Lens' DataReplicationInitiation (Prelude.Maybe Prelude.Text)
dataReplicationInitiation_nextAttemptDateTime = Lens.lens (\DataReplicationInitiation' {nextAttemptDateTime} -> nextAttemptDateTime) (\s@DataReplicationInitiation' {} a -> s {nextAttemptDateTime = a} :: DataReplicationInitiation)

-- | Request to query data initiation start date and time.
dataReplicationInitiation_startDateTime :: Lens.Lens' DataReplicationInitiation (Prelude.Maybe Prelude.Text)
dataReplicationInitiation_startDateTime = Lens.lens (\DataReplicationInitiation' {startDateTime} -> startDateTime) (\s@DataReplicationInitiation' {} a -> s {startDateTime = a} :: DataReplicationInitiation)

instance Core.FromJSON DataReplicationInitiation where
  parseJSON =
    Core.withObject
      "DataReplicationInitiation"
      ( \x ->
          DataReplicationInitiation'
            Prelude.<$> (x Core..:? "steps" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "nextAttemptDateTime")
            Prelude.<*> (x Core..:? "startDateTime")
      )

instance Prelude.Hashable DataReplicationInitiation

instance Prelude.NFData DataReplicationInitiation
