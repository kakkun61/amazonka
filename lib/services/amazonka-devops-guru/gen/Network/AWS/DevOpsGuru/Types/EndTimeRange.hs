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
-- Module      : Network.AWS.DevOpsGuru.Types.EndTimeRange
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DevOpsGuru.Types.EndTimeRange where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A range of time that specifies when anomalous behavior in an anomaly or
-- insight ended.
--
-- /See:/ 'newEndTimeRange' smart constructor.
data EndTimeRange = EndTimeRange'
  { -- | The earliest end time in the time range.
    fromTime :: Prelude.Maybe Core.POSIX,
    -- | The latest end time in the time range.
    toTime :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EndTimeRange' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'fromTime', 'endTimeRange_fromTime' - The earliest end time in the time range.
--
-- 'toTime', 'endTimeRange_toTime' - The latest end time in the time range.
newEndTimeRange ::
  EndTimeRange
newEndTimeRange =
  EndTimeRange'
    { fromTime = Prelude.Nothing,
      toTime = Prelude.Nothing
    }

-- | The earliest end time in the time range.
endTimeRange_fromTime :: Lens.Lens' EndTimeRange (Prelude.Maybe Prelude.UTCTime)
endTimeRange_fromTime = Lens.lens (\EndTimeRange' {fromTime} -> fromTime) (\s@EndTimeRange' {} a -> s {fromTime = a} :: EndTimeRange) Prelude.. Lens.mapping Core._Time

-- | The latest end time in the time range.
endTimeRange_toTime :: Lens.Lens' EndTimeRange (Prelude.Maybe Prelude.UTCTime)
endTimeRange_toTime = Lens.lens (\EndTimeRange' {toTime} -> toTime) (\s@EndTimeRange' {} a -> s {toTime = a} :: EndTimeRange) Prelude.. Lens.mapping Core._Time

instance Prelude.Hashable EndTimeRange

instance Prelude.NFData EndTimeRange

instance Core.ToJSON EndTimeRange where
  toJSON EndTimeRange' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("FromTime" Core..=) Prelude.<$> fromTime,
            ("ToTime" Core..=) Prelude.<$> toTime
          ]
      )
