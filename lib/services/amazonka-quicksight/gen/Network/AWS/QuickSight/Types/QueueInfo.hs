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
-- Module      : Network.AWS.QuickSight.Types.QueueInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.QueueInfo where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about a queued dataset SPICE ingestion.
--
-- /See:/ 'newQueueInfo' smart constructor.
data QueueInfo = QueueInfo'
  { -- | The ID of the queued ingestion.
    waitingOnIngestion :: Prelude.Text,
    -- | The ID of the ongoing ingestion. The queued ingestion is waiting for the
    -- ongoing ingestion to complete.
    queuedIngestion :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'QueueInfo' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'waitingOnIngestion', 'queueInfo_waitingOnIngestion' - The ID of the queued ingestion.
--
-- 'queuedIngestion', 'queueInfo_queuedIngestion' - The ID of the ongoing ingestion. The queued ingestion is waiting for the
-- ongoing ingestion to complete.
newQueueInfo ::
  -- | 'waitingOnIngestion'
  Prelude.Text ->
  -- | 'queuedIngestion'
  Prelude.Text ->
  QueueInfo
newQueueInfo pWaitingOnIngestion_ pQueuedIngestion_ =
  QueueInfo'
    { waitingOnIngestion =
        pWaitingOnIngestion_,
      queuedIngestion = pQueuedIngestion_
    }

-- | The ID of the queued ingestion.
queueInfo_waitingOnIngestion :: Lens.Lens' QueueInfo Prelude.Text
queueInfo_waitingOnIngestion = Lens.lens (\QueueInfo' {waitingOnIngestion} -> waitingOnIngestion) (\s@QueueInfo' {} a -> s {waitingOnIngestion = a} :: QueueInfo)

-- | The ID of the ongoing ingestion. The queued ingestion is waiting for the
-- ongoing ingestion to complete.
queueInfo_queuedIngestion :: Lens.Lens' QueueInfo Prelude.Text
queueInfo_queuedIngestion = Lens.lens (\QueueInfo' {queuedIngestion} -> queuedIngestion) (\s@QueueInfo' {} a -> s {queuedIngestion = a} :: QueueInfo)

instance Core.FromJSON QueueInfo where
  parseJSON =
    Core.withObject
      "QueueInfo"
      ( \x ->
          QueueInfo'
            Prelude.<$> (x Core..: "WaitingOnIngestion")
            Prelude.<*> (x Core..: "QueuedIngestion")
      )

instance Prelude.Hashable QueueInfo

instance Prelude.NFData QueueInfo
