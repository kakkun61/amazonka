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
-- Module      : Network.AWS.IoTSiteWise.Types.InterpolatedAssetPropertyValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTSiteWise.Types.InterpolatedAssetPropertyValue where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTSiteWise.Types.TimeInNanos
import Network.AWS.IoTSiteWise.Types.Variant
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information about an interpolated asset property value.
--
-- /See:/ 'newInterpolatedAssetPropertyValue' smart constructor.
data InterpolatedAssetPropertyValue = InterpolatedAssetPropertyValue'
  { timestamp :: TimeInNanos,
    value :: Variant
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InterpolatedAssetPropertyValue' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'timestamp', 'interpolatedAssetPropertyValue_timestamp' - Undocumented member.
--
-- 'value', 'interpolatedAssetPropertyValue_value' - Undocumented member.
newInterpolatedAssetPropertyValue ::
  -- | 'timestamp'
  TimeInNanos ->
  -- | 'value'
  Variant ->
  InterpolatedAssetPropertyValue
newInterpolatedAssetPropertyValue pTimestamp_ pValue_ =
  InterpolatedAssetPropertyValue'
    { timestamp =
        pTimestamp_,
      value = pValue_
    }

-- | Undocumented member.
interpolatedAssetPropertyValue_timestamp :: Lens.Lens' InterpolatedAssetPropertyValue TimeInNanos
interpolatedAssetPropertyValue_timestamp = Lens.lens (\InterpolatedAssetPropertyValue' {timestamp} -> timestamp) (\s@InterpolatedAssetPropertyValue' {} a -> s {timestamp = a} :: InterpolatedAssetPropertyValue)

-- | Undocumented member.
interpolatedAssetPropertyValue_value :: Lens.Lens' InterpolatedAssetPropertyValue Variant
interpolatedAssetPropertyValue_value = Lens.lens (\InterpolatedAssetPropertyValue' {value} -> value) (\s@InterpolatedAssetPropertyValue' {} a -> s {value = a} :: InterpolatedAssetPropertyValue)

instance Core.FromJSON InterpolatedAssetPropertyValue where
  parseJSON =
    Core.withObject
      "InterpolatedAssetPropertyValue"
      ( \x ->
          InterpolatedAssetPropertyValue'
            Prelude.<$> (x Core..: "timestamp")
            Prelude.<*> (x Core..: "value")
      )

instance
  Prelude.Hashable
    InterpolatedAssetPropertyValue

instance
  Prelude.NFData
    InterpolatedAssetPropertyValue
