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
-- Module      : Network.AWS.IoTEvents.Types.AssetPropertyTimestamp
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTEvents.Types.AssetPropertyTimestamp where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A structure that contains timestamp information. For more information,
-- see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_TimeInNanos.html TimeInNanos>
-- in the /AWS IoT SiteWise API Reference/.
--
-- You must use expressions for all parameters in @AssetPropertyTimestamp@.
-- The expressions accept literals, operators, functions, references, and
-- substitution templates.
--
-- __Examples__
--
-- -   For literal values, the expressions must contain single quotes. For
--     example, the value for the @timeInSeconds@ parameter can be
--     @\'1586400675\'@.
--
-- -   For references, you must specify either variables or input values.
--     For example, the value for the @offsetInNanos@ parameter can be
--     @$variable.time@.
--
-- -   For a substitution template, you must use @${}@, and the template
--     must be in single quotes. A substitution template can also contain a
--     combination of literals, operators, functions, references, and
--     substitution templates.
--
--     In the following example, the value for the @timeInSeconds@
--     parameter uses a substitution template.
--
--     @\'${$input.TemperatureInput.sensorData.timestamp \/ 1000}\'@
--
-- For more information, see
-- <https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html Expressions>
-- in the /AWS IoT Events Developer Guide/.
--
-- /See:/ 'newAssetPropertyTimestamp' smart constructor.
data AssetPropertyTimestamp = AssetPropertyTimestamp'
  { -- | The nanosecond offset converted from @timeInSeconds@. The valid range is
    -- between 0-999999999.
    offsetInNanos :: Prelude.Maybe Prelude.Text,
    -- | The timestamp, in seconds, in the Unix epoch format. The valid range is
    -- between 1-31556889864403199.
    timeInSeconds :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssetPropertyTimestamp' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'offsetInNanos', 'assetPropertyTimestamp_offsetInNanos' - The nanosecond offset converted from @timeInSeconds@. The valid range is
-- between 0-999999999.
--
-- 'timeInSeconds', 'assetPropertyTimestamp_timeInSeconds' - The timestamp, in seconds, in the Unix epoch format. The valid range is
-- between 1-31556889864403199.
newAssetPropertyTimestamp ::
  -- | 'timeInSeconds'
  Prelude.Text ->
  AssetPropertyTimestamp
newAssetPropertyTimestamp pTimeInSeconds_ =
  AssetPropertyTimestamp'
    { offsetInNanos =
        Prelude.Nothing,
      timeInSeconds = pTimeInSeconds_
    }

-- | The nanosecond offset converted from @timeInSeconds@. The valid range is
-- between 0-999999999.
assetPropertyTimestamp_offsetInNanos :: Lens.Lens' AssetPropertyTimestamp (Prelude.Maybe Prelude.Text)
assetPropertyTimestamp_offsetInNanos = Lens.lens (\AssetPropertyTimestamp' {offsetInNanos} -> offsetInNanos) (\s@AssetPropertyTimestamp' {} a -> s {offsetInNanos = a} :: AssetPropertyTimestamp)

-- | The timestamp, in seconds, in the Unix epoch format. The valid range is
-- between 1-31556889864403199.
assetPropertyTimestamp_timeInSeconds :: Lens.Lens' AssetPropertyTimestamp Prelude.Text
assetPropertyTimestamp_timeInSeconds = Lens.lens (\AssetPropertyTimestamp' {timeInSeconds} -> timeInSeconds) (\s@AssetPropertyTimestamp' {} a -> s {timeInSeconds = a} :: AssetPropertyTimestamp)

instance Core.FromJSON AssetPropertyTimestamp where
  parseJSON =
    Core.withObject
      "AssetPropertyTimestamp"
      ( \x ->
          AssetPropertyTimestamp'
            Prelude.<$> (x Core..:? "offsetInNanos")
            Prelude.<*> (x Core..: "timeInSeconds")
      )

instance Prelude.Hashable AssetPropertyTimestamp

instance Prelude.NFData AssetPropertyTimestamp

instance Core.ToJSON AssetPropertyTimestamp where
  toJSON AssetPropertyTimestamp' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("offsetInNanos" Core..=) Prelude.<$> offsetInNanos,
            Prelude.Just
              ("timeInSeconds" Core..= timeInSeconds)
          ]
      )
