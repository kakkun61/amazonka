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
-- Module      : Network.AWS.ServiceQuotas.Types.MetricInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceQuotas.Types.MetricInfo where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about the CloudWatch metric that reflects quota usage.
--
-- /See:/ 'newMetricInfo' smart constructor.
data MetricInfo = MetricInfo'
  { -- | The metric dimension. This is a name\/value pair that is part of the
    -- identity of a metric.
    metricDimensions :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the metric.
    metricName :: Prelude.Maybe Prelude.Text,
    -- | The metric statistic that we recommend you use when determining quota
    -- usage.
    metricStatisticRecommendation :: Prelude.Maybe Prelude.Text,
    -- | The namespace of the metric.
    metricNamespace :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MetricInfo' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'metricDimensions', 'metricInfo_metricDimensions' - The metric dimension. This is a name\/value pair that is part of the
-- identity of a metric.
--
-- 'metricName', 'metricInfo_metricName' - The name of the metric.
--
-- 'metricStatisticRecommendation', 'metricInfo_metricStatisticRecommendation' - The metric statistic that we recommend you use when determining quota
-- usage.
--
-- 'metricNamespace', 'metricInfo_metricNamespace' - The namespace of the metric.
newMetricInfo ::
  MetricInfo
newMetricInfo =
  MetricInfo'
    { metricDimensions = Prelude.Nothing,
      metricName = Prelude.Nothing,
      metricStatisticRecommendation = Prelude.Nothing,
      metricNamespace = Prelude.Nothing
    }

-- | The metric dimension. This is a name\/value pair that is part of the
-- identity of a metric.
metricInfo_metricDimensions :: Lens.Lens' MetricInfo (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
metricInfo_metricDimensions = Lens.lens (\MetricInfo' {metricDimensions} -> metricDimensions) (\s@MetricInfo' {} a -> s {metricDimensions = a} :: MetricInfo) Prelude.. Lens.mapping Lens.coerced

-- | The name of the metric.
metricInfo_metricName :: Lens.Lens' MetricInfo (Prelude.Maybe Prelude.Text)
metricInfo_metricName = Lens.lens (\MetricInfo' {metricName} -> metricName) (\s@MetricInfo' {} a -> s {metricName = a} :: MetricInfo)

-- | The metric statistic that we recommend you use when determining quota
-- usage.
metricInfo_metricStatisticRecommendation :: Lens.Lens' MetricInfo (Prelude.Maybe Prelude.Text)
metricInfo_metricStatisticRecommendation = Lens.lens (\MetricInfo' {metricStatisticRecommendation} -> metricStatisticRecommendation) (\s@MetricInfo' {} a -> s {metricStatisticRecommendation = a} :: MetricInfo)

-- | The namespace of the metric.
metricInfo_metricNamespace :: Lens.Lens' MetricInfo (Prelude.Maybe Prelude.Text)
metricInfo_metricNamespace = Lens.lens (\MetricInfo' {metricNamespace} -> metricNamespace) (\s@MetricInfo' {} a -> s {metricNamespace = a} :: MetricInfo)

instance Core.FromJSON MetricInfo where
  parseJSON =
    Core.withObject
      "MetricInfo"
      ( \x ->
          MetricInfo'
            Prelude.<$> ( x Core..:? "MetricDimensions"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "MetricName")
            Prelude.<*> (x Core..:? "MetricStatisticRecommendation")
            Prelude.<*> (x Core..:? "MetricNamespace")
      )

instance Prelude.Hashable MetricInfo

instance Prelude.NFData MetricInfo
