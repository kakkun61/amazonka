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
-- Module      : Network.AWS.IoTSiteWise.Types.TimeInNanos
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTSiteWise.Types.TimeInNanos where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains a timestamp with optional nanosecond granularity.
--
-- /See:/ 'newTimeInNanos' smart constructor.
data TimeInNanos = TimeInNanos'
  { -- | The nanosecond offset from @timeInSeconds@.
    offsetInNanos :: Prelude.Maybe Prelude.Natural,
    -- | The timestamp date, in seconds, in the Unix epoch format. Fractional
    -- nanosecond data is provided by @offsetInNanos@.
    timeInSeconds :: Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TimeInNanos' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'offsetInNanos', 'timeInNanos_offsetInNanos' - The nanosecond offset from @timeInSeconds@.
--
-- 'timeInSeconds', 'timeInNanos_timeInSeconds' - The timestamp date, in seconds, in the Unix epoch format. Fractional
-- nanosecond data is provided by @offsetInNanos@.
newTimeInNanos ::
  -- | 'timeInSeconds'
  Prelude.Natural ->
  TimeInNanos
newTimeInNanos pTimeInSeconds_ =
  TimeInNanos'
    { offsetInNanos = Prelude.Nothing,
      timeInSeconds = pTimeInSeconds_
    }

-- | The nanosecond offset from @timeInSeconds@.
timeInNanos_offsetInNanos :: Lens.Lens' TimeInNanos (Prelude.Maybe Prelude.Natural)
timeInNanos_offsetInNanos = Lens.lens (\TimeInNanos' {offsetInNanos} -> offsetInNanos) (\s@TimeInNanos' {} a -> s {offsetInNanos = a} :: TimeInNanos)

-- | The timestamp date, in seconds, in the Unix epoch format. Fractional
-- nanosecond data is provided by @offsetInNanos@.
timeInNanos_timeInSeconds :: Lens.Lens' TimeInNanos Prelude.Natural
timeInNanos_timeInSeconds = Lens.lens (\TimeInNanos' {timeInSeconds} -> timeInSeconds) (\s@TimeInNanos' {} a -> s {timeInSeconds = a} :: TimeInNanos)

instance Core.FromJSON TimeInNanos where
  parseJSON =
    Core.withObject
      "TimeInNanos"
      ( \x ->
          TimeInNanos'
            Prelude.<$> (x Core..:? "offsetInNanos")
            Prelude.<*> (x Core..: "timeInSeconds")
      )

instance Prelude.Hashable TimeInNanos

instance Prelude.NFData TimeInNanos

instance Core.ToJSON TimeInNanos where
  toJSON TimeInNanos' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("offsetInNanos" Core..=) Prelude.<$> offsetInNanos,
            Prelude.Just
              ("timeInSeconds" Core..= timeInSeconds)
          ]
      )
