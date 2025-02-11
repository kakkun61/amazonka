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
-- Module      : Network.AWS.IoTEvents.Types.AssetPropertyValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTEvents.Types.AssetPropertyValue where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTEvents.Types.AssetPropertyTimestamp
import Network.AWS.IoTEvents.Types.AssetPropertyVariant
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A structure that contains value information. For more information, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_AssetPropertyValue.html AssetPropertyValue>
-- in the /AWS IoT SiteWise API Reference/.
--
-- You must use expressions for all parameters in @AssetPropertyValue@. The
-- expressions accept literals, operators, functions, references, and
-- substitution templates.
--
-- __Examples__
--
-- -   For literal values, the expressions must contain single quotes. For
--     example, the value for the @quality@ parameter can be @\'GOOD\'@.
--
-- -   For references, you must specify either variables or input values.
--     For example, the value for the @quality@ parameter can be
--     @$input.TemperatureInput.sensorData.quality@.
--
-- For more information, see
-- <https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html Expressions>
-- in the /AWS IoT Events Developer Guide/.
--
-- /See:/ 'newAssetPropertyValue' smart constructor.
data AssetPropertyValue = AssetPropertyValue'
  { -- | The value to send to an asset property.
    value :: Prelude.Maybe AssetPropertyVariant,
    -- | The quality of the asset property value. The value must be @\'GOOD\'@,
    -- @\'BAD\'@, or @\'UNCERTAIN\'@.
    quality :: Prelude.Maybe Prelude.Text,
    -- | The timestamp associated with the asset property value. The default is
    -- the current event time.
    timestamp :: Prelude.Maybe AssetPropertyTimestamp
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssetPropertyValue' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'value', 'assetPropertyValue_value' - The value to send to an asset property.
--
-- 'quality', 'assetPropertyValue_quality' - The quality of the asset property value. The value must be @\'GOOD\'@,
-- @\'BAD\'@, or @\'UNCERTAIN\'@.
--
-- 'timestamp', 'assetPropertyValue_timestamp' - The timestamp associated with the asset property value. The default is
-- the current event time.
newAssetPropertyValue ::
  AssetPropertyValue
newAssetPropertyValue =
  AssetPropertyValue'
    { value = Prelude.Nothing,
      quality = Prelude.Nothing,
      timestamp = Prelude.Nothing
    }

-- | The value to send to an asset property.
assetPropertyValue_value :: Lens.Lens' AssetPropertyValue (Prelude.Maybe AssetPropertyVariant)
assetPropertyValue_value = Lens.lens (\AssetPropertyValue' {value} -> value) (\s@AssetPropertyValue' {} a -> s {value = a} :: AssetPropertyValue)

-- | The quality of the asset property value. The value must be @\'GOOD\'@,
-- @\'BAD\'@, or @\'UNCERTAIN\'@.
assetPropertyValue_quality :: Lens.Lens' AssetPropertyValue (Prelude.Maybe Prelude.Text)
assetPropertyValue_quality = Lens.lens (\AssetPropertyValue' {quality} -> quality) (\s@AssetPropertyValue' {} a -> s {quality = a} :: AssetPropertyValue)

-- | The timestamp associated with the asset property value. The default is
-- the current event time.
assetPropertyValue_timestamp :: Lens.Lens' AssetPropertyValue (Prelude.Maybe AssetPropertyTimestamp)
assetPropertyValue_timestamp = Lens.lens (\AssetPropertyValue' {timestamp} -> timestamp) (\s@AssetPropertyValue' {} a -> s {timestamp = a} :: AssetPropertyValue)

instance Core.FromJSON AssetPropertyValue where
  parseJSON =
    Core.withObject
      "AssetPropertyValue"
      ( \x ->
          AssetPropertyValue'
            Prelude.<$> (x Core..:? "value")
            Prelude.<*> (x Core..:? "quality")
            Prelude.<*> (x Core..:? "timestamp")
      )

instance Prelude.Hashable AssetPropertyValue

instance Prelude.NFData AssetPropertyValue

instance Core.ToJSON AssetPropertyValue where
  toJSON AssetPropertyValue' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("value" Core..=) Prelude.<$> value,
            ("quality" Core..=) Prelude.<$> quality,
            ("timestamp" Core..=) Prelude.<$> timestamp
          ]
      )
