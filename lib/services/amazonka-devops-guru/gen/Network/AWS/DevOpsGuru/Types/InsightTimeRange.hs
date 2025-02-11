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
-- Module      : Network.AWS.DevOpsGuru.Types.InsightTimeRange
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DevOpsGuru.Types.InsightTimeRange where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A time ranged that specifies when the observed behavior in an insight
-- started and ended.
--
-- /See:/ 'newInsightTimeRange' smart constructor.
data InsightTimeRange = InsightTimeRange'
  { -- | The time when the behavior described in an insight ended.
    endTime :: Prelude.Maybe Core.POSIX,
    -- | The time when the behavior described in an insight started.
    startTime :: Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InsightTimeRange' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'endTime', 'insightTimeRange_endTime' - The time when the behavior described in an insight ended.
--
-- 'startTime', 'insightTimeRange_startTime' - The time when the behavior described in an insight started.
newInsightTimeRange ::
  -- | 'startTime'
  Prelude.UTCTime ->
  InsightTimeRange
newInsightTimeRange pStartTime_ =
  InsightTimeRange'
    { endTime = Prelude.Nothing,
      startTime = Core._Time Lens.# pStartTime_
    }

-- | The time when the behavior described in an insight ended.
insightTimeRange_endTime :: Lens.Lens' InsightTimeRange (Prelude.Maybe Prelude.UTCTime)
insightTimeRange_endTime = Lens.lens (\InsightTimeRange' {endTime} -> endTime) (\s@InsightTimeRange' {} a -> s {endTime = a} :: InsightTimeRange) Prelude.. Lens.mapping Core._Time

-- | The time when the behavior described in an insight started.
insightTimeRange_startTime :: Lens.Lens' InsightTimeRange Prelude.UTCTime
insightTimeRange_startTime = Lens.lens (\InsightTimeRange' {startTime} -> startTime) (\s@InsightTimeRange' {} a -> s {startTime = a} :: InsightTimeRange) Prelude.. Core._Time

instance Core.FromJSON InsightTimeRange where
  parseJSON =
    Core.withObject
      "InsightTimeRange"
      ( \x ->
          InsightTimeRange'
            Prelude.<$> (x Core..:? "EndTime")
            Prelude.<*> (x Core..: "StartTime")
      )

instance Prelude.Hashable InsightTimeRange

instance Prelude.NFData InsightTimeRange
