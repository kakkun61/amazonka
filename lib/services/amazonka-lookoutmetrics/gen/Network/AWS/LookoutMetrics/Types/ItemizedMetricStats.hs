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
-- Module      : Network.AWS.LookoutMetrics.Types.ItemizedMetricStats
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LookoutMetrics.Types.ItemizedMetricStats where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Aggregated statistics about a measure affected by an anomaly.
--
-- /See:/ 'newItemizedMetricStats' smart constructor.
data ItemizedMetricStats = ItemizedMetricStats'
  { -- | The name of the measure.
    metricName :: Prelude.Maybe Prelude.Text,
    -- | The number of times that the measure appears.
    occurrenceCount :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ItemizedMetricStats' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'metricName', 'itemizedMetricStats_metricName' - The name of the measure.
--
-- 'occurrenceCount', 'itemizedMetricStats_occurrenceCount' - The number of times that the measure appears.
newItemizedMetricStats ::
  ItemizedMetricStats
newItemizedMetricStats =
  ItemizedMetricStats'
    { metricName = Prelude.Nothing,
      occurrenceCount = Prelude.Nothing
    }

-- | The name of the measure.
itemizedMetricStats_metricName :: Lens.Lens' ItemizedMetricStats (Prelude.Maybe Prelude.Text)
itemizedMetricStats_metricName = Lens.lens (\ItemizedMetricStats' {metricName} -> metricName) (\s@ItemizedMetricStats' {} a -> s {metricName = a} :: ItemizedMetricStats)

-- | The number of times that the measure appears.
itemizedMetricStats_occurrenceCount :: Lens.Lens' ItemizedMetricStats (Prelude.Maybe Prelude.Int)
itemizedMetricStats_occurrenceCount = Lens.lens (\ItemizedMetricStats' {occurrenceCount} -> occurrenceCount) (\s@ItemizedMetricStats' {} a -> s {occurrenceCount = a} :: ItemizedMetricStats)

instance Core.FromJSON ItemizedMetricStats where
  parseJSON =
    Core.withObject
      "ItemizedMetricStats"
      ( \x ->
          ItemizedMetricStats'
            Prelude.<$> (x Core..:? "MetricName")
            Prelude.<*> (x Core..:? "OccurrenceCount")
      )

instance Prelude.Hashable ItemizedMetricStats

instance Prelude.NFData ItemizedMetricStats
