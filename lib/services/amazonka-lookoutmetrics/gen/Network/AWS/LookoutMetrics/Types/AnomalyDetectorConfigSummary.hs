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
-- Module      : Network.AWS.LookoutMetrics.Types.AnomalyDetectorConfigSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LookoutMetrics.Types.AnomalyDetectorConfigSummary where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LookoutMetrics.Types.Frequency
import qualified Network.AWS.Prelude as Prelude

-- | Contains information about a detector\'s configuration.
--
-- /See:/ 'newAnomalyDetectorConfigSummary' smart constructor.
data AnomalyDetectorConfigSummary = AnomalyDetectorConfigSummary'
  { -- | The interval at which the detector analyzes its source data.
    anomalyDetectorFrequency :: Prelude.Maybe Frequency
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AnomalyDetectorConfigSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'anomalyDetectorFrequency', 'anomalyDetectorConfigSummary_anomalyDetectorFrequency' - The interval at which the detector analyzes its source data.
newAnomalyDetectorConfigSummary ::
  AnomalyDetectorConfigSummary
newAnomalyDetectorConfigSummary =
  AnomalyDetectorConfigSummary'
    { anomalyDetectorFrequency =
        Prelude.Nothing
    }

-- | The interval at which the detector analyzes its source data.
anomalyDetectorConfigSummary_anomalyDetectorFrequency :: Lens.Lens' AnomalyDetectorConfigSummary (Prelude.Maybe Frequency)
anomalyDetectorConfigSummary_anomalyDetectorFrequency = Lens.lens (\AnomalyDetectorConfigSummary' {anomalyDetectorFrequency} -> anomalyDetectorFrequency) (\s@AnomalyDetectorConfigSummary' {} a -> s {anomalyDetectorFrequency = a} :: AnomalyDetectorConfigSummary)

instance Core.FromJSON AnomalyDetectorConfigSummary where
  parseJSON =
    Core.withObject
      "AnomalyDetectorConfigSummary"
      ( \x ->
          AnomalyDetectorConfigSummary'
            Prelude.<$> (x Core..:? "AnomalyDetectorFrequency")
      )

instance
  Prelude.Hashable
    AnomalyDetectorConfigSummary

instance Prelude.NFData AnomalyDetectorConfigSummary
