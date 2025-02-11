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
-- Module      : Network.AWS.LookoutMetrics.Types.AnomalyGroupTimeSeriesFeedback
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LookoutMetrics.Types.AnomalyGroupTimeSeriesFeedback where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Feedback for an anomalous metric.
--
-- /See:/ 'newAnomalyGroupTimeSeriesFeedback' smart constructor.
data AnomalyGroupTimeSeriesFeedback = AnomalyGroupTimeSeriesFeedback'
  { -- | The ID of the anomaly group.
    anomalyGroupId :: Prelude.Text,
    -- | The ID of the metric.
    timeSeriesId :: Prelude.Text,
    -- | Feedback on whether the metric is a legitimate anomaly.
    isAnomaly :: Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AnomalyGroupTimeSeriesFeedback' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'anomalyGroupId', 'anomalyGroupTimeSeriesFeedback_anomalyGroupId' - The ID of the anomaly group.
--
-- 'timeSeriesId', 'anomalyGroupTimeSeriesFeedback_timeSeriesId' - The ID of the metric.
--
-- 'isAnomaly', 'anomalyGroupTimeSeriesFeedback_isAnomaly' - Feedback on whether the metric is a legitimate anomaly.
newAnomalyGroupTimeSeriesFeedback ::
  -- | 'anomalyGroupId'
  Prelude.Text ->
  -- | 'timeSeriesId'
  Prelude.Text ->
  -- | 'isAnomaly'
  Prelude.Bool ->
  AnomalyGroupTimeSeriesFeedback
newAnomalyGroupTimeSeriesFeedback
  pAnomalyGroupId_
  pTimeSeriesId_
  pIsAnomaly_ =
    AnomalyGroupTimeSeriesFeedback'
      { anomalyGroupId =
          pAnomalyGroupId_,
        timeSeriesId = pTimeSeriesId_,
        isAnomaly = pIsAnomaly_
      }

-- | The ID of the anomaly group.
anomalyGroupTimeSeriesFeedback_anomalyGroupId :: Lens.Lens' AnomalyGroupTimeSeriesFeedback Prelude.Text
anomalyGroupTimeSeriesFeedback_anomalyGroupId = Lens.lens (\AnomalyGroupTimeSeriesFeedback' {anomalyGroupId} -> anomalyGroupId) (\s@AnomalyGroupTimeSeriesFeedback' {} a -> s {anomalyGroupId = a} :: AnomalyGroupTimeSeriesFeedback)

-- | The ID of the metric.
anomalyGroupTimeSeriesFeedback_timeSeriesId :: Lens.Lens' AnomalyGroupTimeSeriesFeedback Prelude.Text
anomalyGroupTimeSeriesFeedback_timeSeriesId = Lens.lens (\AnomalyGroupTimeSeriesFeedback' {timeSeriesId} -> timeSeriesId) (\s@AnomalyGroupTimeSeriesFeedback' {} a -> s {timeSeriesId = a} :: AnomalyGroupTimeSeriesFeedback)

-- | Feedback on whether the metric is a legitimate anomaly.
anomalyGroupTimeSeriesFeedback_isAnomaly :: Lens.Lens' AnomalyGroupTimeSeriesFeedback Prelude.Bool
anomalyGroupTimeSeriesFeedback_isAnomaly = Lens.lens (\AnomalyGroupTimeSeriesFeedback' {isAnomaly} -> isAnomaly) (\s@AnomalyGroupTimeSeriesFeedback' {} a -> s {isAnomaly = a} :: AnomalyGroupTimeSeriesFeedback)

instance
  Prelude.Hashable
    AnomalyGroupTimeSeriesFeedback

instance
  Prelude.NFData
    AnomalyGroupTimeSeriesFeedback

instance Core.ToJSON AnomalyGroupTimeSeriesFeedback where
  toJSON AnomalyGroupTimeSeriesFeedback' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("AnomalyGroupId" Core..= anomalyGroupId),
            Prelude.Just ("TimeSeriesId" Core..= timeSeriesId),
            Prelude.Just ("IsAnomaly" Core..= isAnomaly)
          ]
      )
