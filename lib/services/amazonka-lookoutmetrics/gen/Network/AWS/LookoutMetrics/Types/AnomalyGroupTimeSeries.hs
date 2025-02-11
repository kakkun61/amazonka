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
-- Module      : Network.AWS.LookoutMetrics.Types.AnomalyGroupTimeSeries
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LookoutMetrics.Types.AnomalyGroupTimeSeries where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An anomalous metric in an anomaly group.
--
-- /See:/ 'newAnomalyGroupTimeSeries' smart constructor.
data AnomalyGroupTimeSeries = AnomalyGroupTimeSeries'
  { -- | The ID of the metric.
    timeSeriesId :: Prelude.Maybe Prelude.Text,
    -- | The ID of the anomaly group.
    anomalyGroupId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AnomalyGroupTimeSeries' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'timeSeriesId', 'anomalyGroupTimeSeries_timeSeriesId' - The ID of the metric.
--
-- 'anomalyGroupId', 'anomalyGroupTimeSeries_anomalyGroupId' - The ID of the anomaly group.
newAnomalyGroupTimeSeries ::
  -- | 'anomalyGroupId'
  Prelude.Text ->
  AnomalyGroupTimeSeries
newAnomalyGroupTimeSeries pAnomalyGroupId_ =
  AnomalyGroupTimeSeries'
    { timeSeriesId =
        Prelude.Nothing,
      anomalyGroupId = pAnomalyGroupId_
    }

-- | The ID of the metric.
anomalyGroupTimeSeries_timeSeriesId :: Lens.Lens' AnomalyGroupTimeSeries (Prelude.Maybe Prelude.Text)
anomalyGroupTimeSeries_timeSeriesId = Lens.lens (\AnomalyGroupTimeSeries' {timeSeriesId} -> timeSeriesId) (\s@AnomalyGroupTimeSeries' {} a -> s {timeSeriesId = a} :: AnomalyGroupTimeSeries)

-- | The ID of the anomaly group.
anomalyGroupTimeSeries_anomalyGroupId :: Lens.Lens' AnomalyGroupTimeSeries Prelude.Text
anomalyGroupTimeSeries_anomalyGroupId = Lens.lens (\AnomalyGroupTimeSeries' {anomalyGroupId} -> anomalyGroupId) (\s@AnomalyGroupTimeSeries' {} a -> s {anomalyGroupId = a} :: AnomalyGroupTimeSeries)

instance Prelude.Hashable AnomalyGroupTimeSeries

instance Prelude.NFData AnomalyGroupTimeSeries

instance Core.ToJSON AnomalyGroupTimeSeries where
  toJSON AnomalyGroupTimeSeries' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("TimeSeriesId" Core..=) Prelude.<$> timeSeriesId,
            Prelude.Just
              ("AnomalyGroupId" Core..= anomalyGroupId)
          ]
      )
