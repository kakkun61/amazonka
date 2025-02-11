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
-- Module      : Network.AWS.IoTSiteWise.Types.AssetPropertyValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTSiteWise.Types.AssetPropertyValue where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTSiteWise.Types.Quality
import Network.AWS.IoTSiteWise.Types.TimeInNanos
import Network.AWS.IoTSiteWise.Types.Variant
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains asset property value information.
--
-- /See:/ 'newAssetPropertyValue' smart constructor.
data AssetPropertyValue = AssetPropertyValue'
  { -- | The quality of the asset property value.
    quality :: Prelude.Maybe Quality,
    -- | The value of the asset property (see @Variant@).
    value :: Variant,
    -- | The timestamp of the asset property value.
    timestamp :: TimeInNanos
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
-- 'quality', 'assetPropertyValue_quality' - The quality of the asset property value.
--
-- 'value', 'assetPropertyValue_value' - The value of the asset property (see @Variant@).
--
-- 'timestamp', 'assetPropertyValue_timestamp' - The timestamp of the asset property value.
newAssetPropertyValue ::
  -- | 'value'
  Variant ->
  -- | 'timestamp'
  TimeInNanos ->
  AssetPropertyValue
newAssetPropertyValue pValue_ pTimestamp_ =
  AssetPropertyValue'
    { quality = Prelude.Nothing,
      value = pValue_,
      timestamp = pTimestamp_
    }

-- | The quality of the asset property value.
assetPropertyValue_quality :: Lens.Lens' AssetPropertyValue (Prelude.Maybe Quality)
assetPropertyValue_quality = Lens.lens (\AssetPropertyValue' {quality} -> quality) (\s@AssetPropertyValue' {} a -> s {quality = a} :: AssetPropertyValue)

-- | The value of the asset property (see @Variant@).
assetPropertyValue_value :: Lens.Lens' AssetPropertyValue Variant
assetPropertyValue_value = Lens.lens (\AssetPropertyValue' {value} -> value) (\s@AssetPropertyValue' {} a -> s {value = a} :: AssetPropertyValue)

-- | The timestamp of the asset property value.
assetPropertyValue_timestamp :: Lens.Lens' AssetPropertyValue TimeInNanos
assetPropertyValue_timestamp = Lens.lens (\AssetPropertyValue' {timestamp} -> timestamp) (\s@AssetPropertyValue' {} a -> s {timestamp = a} :: AssetPropertyValue)

instance Core.FromJSON AssetPropertyValue where
  parseJSON =
    Core.withObject
      "AssetPropertyValue"
      ( \x ->
          AssetPropertyValue'
            Prelude.<$> (x Core..:? "quality")
            Prelude.<*> (x Core..: "value")
            Prelude.<*> (x Core..: "timestamp")
      )

instance Prelude.Hashable AssetPropertyValue

instance Prelude.NFData AssetPropertyValue

instance Core.ToJSON AssetPropertyValue where
  toJSON AssetPropertyValue' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("quality" Core..=) Prelude.<$> quality,
            Prelude.Just ("value" Core..= value),
            Prelude.Just ("timestamp" Core..= timestamp)
          ]
      )
