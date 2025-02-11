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
-- Module      : Network.AWS.DevOpsGuru.Types.RecommendationRelatedAnomalySourceDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DevOpsGuru.Types.RecommendationRelatedAnomalySourceDetail where

import qualified Network.AWS.Core as Core
import Network.AWS.DevOpsGuru.Types.RecommendationRelatedCloudWatchMetricsSourceDetail
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains an array of
-- @RecommendationRelatedCloudWatchMetricsSourceDetail@ objects that
-- contain the name and namespace of an Amazon CloudWatch metric.
--
-- /See:/ 'newRecommendationRelatedAnomalySourceDetail' smart constructor.
data RecommendationRelatedAnomalySourceDetail = RecommendationRelatedAnomalySourceDetail'
  { -- | An array of @CloudWatchMetricsDetail@ objects that contains information
    -- about the analyzed metrics that displayed anomalous behavior.
    cloudWatchMetrics :: Prelude.Maybe [RecommendationRelatedCloudWatchMetricsSourceDetail]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RecommendationRelatedAnomalySourceDetail' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cloudWatchMetrics', 'recommendationRelatedAnomalySourceDetail_cloudWatchMetrics' - An array of @CloudWatchMetricsDetail@ objects that contains information
-- about the analyzed metrics that displayed anomalous behavior.
newRecommendationRelatedAnomalySourceDetail ::
  RecommendationRelatedAnomalySourceDetail
newRecommendationRelatedAnomalySourceDetail =
  RecommendationRelatedAnomalySourceDetail'
    { cloudWatchMetrics =
        Prelude.Nothing
    }

-- | An array of @CloudWatchMetricsDetail@ objects that contains information
-- about the analyzed metrics that displayed anomalous behavior.
recommendationRelatedAnomalySourceDetail_cloudWatchMetrics :: Lens.Lens' RecommendationRelatedAnomalySourceDetail (Prelude.Maybe [RecommendationRelatedCloudWatchMetricsSourceDetail])
recommendationRelatedAnomalySourceDetail_cloudWatchMetrics = Lens.lens (\RecommendationRelatedAnomalySourceDetail' {cloudWatchMetrics} -> cloudWatchMetrics) (\s@RecommendationRelatedAnomalySourceDetail' {} a -> s {cloudWatchMetrics = a} :: RecommendationRelatedAnomalySourceDetail) Prelude.. Lens.mapping Lens.coerced

instance
  Core.FromJSON
    RecommendationRelatedAnomalySourceDetail
  where
  parseJSON =
    Core.withObject
      "RecommendationRelatedAnomalySourceDetail"
      ( \x ->
          RecommendationRelatedAnomalySourceDetail'
            Prelude.<$> ( x Core..:? "CloudWatchMetrics"
                            Core..!= Prelude.mempty
                        )
      )

instance
  Prelude.Hashable
    RecommendationRelatedAnomalySourceDetail

instance
  Prelude.NFData
    RecommendationRelatedAnomalySourceDetail
