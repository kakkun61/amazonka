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
-- Module      : Network.AWS.LookoutMetrics.Types.TimeSeries
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LookoutMetrics.Types.TimeSeries where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LookoutMetrics.Types.DimensionNameValue
import qualified Network.AWS.Prelude as Prelude

-- | Details about a metric. A metric is an aggregation of the values of a
-- measure for a dimension value, such as /availability/ in the /us-east-1/
-- Region.
--
-- /See:/ 'newTimeSeries' smart constructor.
data TimeSeries = TimeSeries'
  { -- | The ID of the metric.
    timeSeriesId :: Prelude.Text,
    -- | The dimensions of the metric.
    dimensionList :: [DimensionNameValue],
    -- | The values for the metric.
    metricValueList :: [Prelude.Double]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TimeSeries' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'timeSeriesId', 'timeSeries_timeSeriesId' - The ID of the metric.
--
-- 'dimensionList', 'timeSeries_dimensionList' - The dimensions of the metric.
--
-- 'metricValueList', 'timeSeries_metricValueList' - The values for the metric.
newTimeSeries ::
  -- | 'timeSeriesId'
  Prelude.Text ->
  TimeSeries
newTimeSeries pTimeSeriesId_ =
  TimeSeries'
    { timeSeriesId = pTimeSeriesId_,
      dimensionList = Prelude.mempty,
      metricValueList = Prelude.mempty
    }

-- | The ID of the metric.
timeSeries_timeSeriesId :: Lens.Lens' TimeSeries Prelude.Text
timeSeries_timeSeriesId = Lens.lens (\TimeSeries' {timeSeriesId} -> timeSeriesId) (\s@TimeSeries' {} a -> s {timeSeriesId = a} :: TimeSeries)

-- | The dimensions of the metric.
timeSeries_dimensionList :: Lens.Lens' TimeSeries [DimensionNameValue]
timeSeries_dimensionList = Lens.lens (\TimeSeries' {dimensionList} -> dimensionList) (\s@TimeSeries' {} a -> s {dimensionList = a} :: TimeSeries) Prelude.. Lens.coerced

-- | The values for the metric.
timeSeries_metricValueList :: Lens.Lens' TimeSeries [Prelude.Double]
timeSeries_metricValueList = Lens.lens (\TimeSeries' {metricValueList} -> metricValueList) (\s@TimeSeries' {} a -> s {metricValueList = a} :: TimeSeries) Prelude.. Lens.coerced

instance Core.FromJSON TimeSeries where
  parseJSON =
    Core.withObject
      "TimeSeries"
      ( \x ->
          TimeSeries'
            Prelude.<$> (x Core..: "TimeSeriesId")
            Prelude.<*> (x Core..:? "DimensionList" Core..!= Prelude.mempty)
            Prelude.<*> ( x Core..:? "MetricValueList"
                            Core..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable TimeSeries

instance Prelude.NFData TimeSeries
