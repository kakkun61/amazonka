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
-- Module      : Network.AWS.CodeGuruProfiler.Types.Anomaly
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeGuruProfiler.Types.Anomaly where

import Network.AWS.CodeGuruProfiler.Types.AnomalyInstance
import Network.AWS.CodeGuruProfiler.Types.Metric
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Details about an anomaly in a specific metric of application profile.
-- The anomaly is detected using analysis of the metric data over a period
-- of time.
--
-- /See:/ 'newAnomaly' smart constructor.
data Anomaly = Anomaly'
  { -- | A list of the instances of the detected anomalies during the requested
    -- period.
    instances :: [AnomalyInstance],
    -- | Details about the metric that the analysis used when it detected the
    -- anomaly. The metric includes the name of the frame that was analyzed
    -- with the type and thread states used to derive the metric value for that
    -- frame.
    metric :: Metric,
    -- | The reason for which metric was flagged as anomalous.
    reason :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Anomaly' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instances', 'anomaly_instances' - A list of the instances of the detected anomalies during the requested
-- period.
--
-- 'metric', 'anomaly_metric' - Details about the metric that the analysis used when it detected the
-- anomaly. The metric includes the name of the frame that was analyzed
-- with the type and thread states used to derive the metric value for that
-- frame.
--
-- 'reason', 'anomaly_reason' - The reason for which metric was flagged as anomalous.
newAnomaly ::
  -- | 'metric'
  Metric ->
  -- | 'reason'
  Prelude.Text ->
  Anomaly
newAnomaly pMetric_ pReason_ =
  Anomaly'
    { instances = Prelude.mempty,
      metric = pMetric_,
      reason = pReason_
    }

-- | A list of the instances of the detected anomalies during the requested
-- period.
anomaly_instances :: Lens.Lens' Anomaly [AnomalyInstance]
anomaly_instances = Lens.lens (\Anomaly' {instances} -> instances) (\s@Anomaly' {} a -> s {instances = a} :: Anomaly) Prelude.. Lens.coerced

-- | Details about the metric that the analysis used when it detected the
-- anomaly. The metric includes the name of the frame that was analyzed
-- with the type and thread states used to derive the metric value for that
-- frame.
anomaly_metric :: Lens.Lens' Anomaly Metric
anomaly_metric = Lens.lens (\Anomaly' {metric} -> metric) (\s@Anomaly' {} a -> s {metric = a} :: Anomaly)

-- | The reason for which metric was flagged as anomalous.
anomaly_reason :: Lens.Lens' Anomaly Prelude.Text
anomaly_reason = Lens.lens (\Anomaly' {reason} -> reason) (\s@Anomaly' {} a -> s {reason = a} :: Anomaly)

instance Core.FromJSON Anomaly where
  parseJSON =
    Core.withObject
      "Anomaly"
      ( \x ->
          Anomaly'
            Prelude.<$> (x Core..:? "instances" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..: "metric")
            Prelude.<*> (x Core..: "reason")
      )

instance Prelude.Hashable Anomaly

instance Prelude.NFData Anomaly
