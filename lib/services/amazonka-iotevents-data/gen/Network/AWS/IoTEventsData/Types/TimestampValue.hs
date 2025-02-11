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
-- Module      : Network.AWS.IoTEventsData.Types.TimestampValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTEventsData.Types.TimestampValue where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information about a timestamp.
--
-- /See:/ 'newTimestampValue' smart constructor.
data TimestampValue = TimestampValue'
  { -- | The value of the timestamp, in the Unix epoch format.
    timeInMillis :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TimestampValue' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'timeInMillis', 'timestampValue_timeInMillis' - The value of the timestamp, in the Unix epoch format.
newTimestampValue ::
  TimestampValue
newTimestampValue =
  TimestampValue' {timeInMillis = Prelude.Nothing}

-- | The value of the timestamp, in the Unix epoch format.
timestampValue_timeInMillis :: Lens.Lens' TimestampValue (Prelude.Maybe Prelude.Natural)
timestampValue_timeInMillis = Lens.lens (\TimestampValue' {timeInMillis} -> timeInMillis) (\s@TimestampValue' {} a -> s {timeInMillis = a} :: TimestampValue)

instance Prelude.Hashable TimestampValue

instance Prelude.NFData TimestampValue

instance Core.ToJSON TimestampValue where
  toJSON TimestampValue' {..} =
    Core.object
      ( Prelude.catMaybes
          [("timeInMillis" Core..=) Prelude.<$> timeInMillis]
      )
