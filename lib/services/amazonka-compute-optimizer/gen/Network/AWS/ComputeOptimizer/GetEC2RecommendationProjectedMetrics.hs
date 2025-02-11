{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ComputeOptimizer.GetEC2RecommendationProjectedMetrics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the projected utilization metrics of Amazon EC2 instance
-- recommendations.
--
-- The @Cpu@ and @Memory@ metrics are the only projected utilization
-- metrics returned when you run this action. Additionally, the @Memory@
-- metric is returned only for resources that have the unified CloudWatch
-- agent installed on them. For more information, see
-- <https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent Enabling Memory Utilization with the CloudWatch Agent>.
module Network.AWS.ComputeOptimizer.GetEC2RecommendationProjectedMetrics
  ( -- * Creating a Request
    GetEC2RecommendationProjectedMetrics (..),
    newGetEC2RecommendationProjectedMetrics,

    -- * Request Lenses
    getEC2RecommendationProjectedMetrics_recommendationPreferences,
    getEC2RecommendationProjectedMetrics_instanceArn,
    getEC2RecommendationProjectedMetrics_stat,
    getEC2RecommendationProjectedMetrics_period,
    getEC2RecommendationProjectedMetrics_startTime,
    getEC2RecommendationProjectedMetrics_endTime,

    -- * Destructuring the Response
    GetEC2RecommendationProjectedMetricsResponse (..),
    newGetEC2RecommendationProjectedMetricsResponse,

    -- * Response Lenses
    getEC2RecommendationProjectedMetricsResponse_recommendedOptionProjectedMetrics,
    getEC2RecommendationProjectedMetricsResponse_httpStatus,
  )
where

import Network.AWS.ComputeOptimizer.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetEC2RecommendationProjectedMetrics' smart constructor.
data GetEC2RecommendationProjectedMetrics = GetEC2RecommendationProjectedMetrics'
  { -- | An object to specify the preferences for the Amazon EC2 recommendation
    -- projected metrics to return in the response.
    recommendationPreferences :: Prelude.Maybe RecommendationPreferences,
    -- | The Amazon Resource Name (ARN) of the instances for which to return
    -- recommendation projected metrics.
    instanceArn :: Prelude.Text,
    -- | The statistic of the projected metrics.
    stat :: MetricStatistic,
    -- | The granularity, in seconds, of the projected metrics data points.
    period :: Prelude.Int,
    -- | The timestamp of the first projected metrics data point to return.
    startTime :: Core.POSIX,
    -- | The timestamp of the last projected metrics data point to return.
    endTime :: Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetEC2RecommendationProjectedMetrics' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'recommendationPreferences', 'getEC2RecommendationProjectedMetrics_recommendationPreferences' - An object to specify the preferences for the Amazon EC2 recommendation
-- projected metrics to return in the response.
--
-- 'instanceArn', 'getEC2RecommendationProjectedMetrics_instanceArn' - The Amazon Resource Name (ARN) of the instances for which to return
-- recommendation projected metrics.
--
-- 'stat', 'getEC2RecommendationProjectedMetrics_stat' - The statistic of the projected metrics.
--
-- 'period', 'getEC2RecommendationProjectedMetrics_period' - The granularity, in seconds, of the projected metrics data points.
--
-- 'startTime', 'getEC2RecommendationProjectedMetrics_startTime' - The timestamp of the first projected metrics data point to return.
--
-- 'endTime', 'getEC2RecommendationProjectedMetrics_endTime' - The timestamp of the last projected metrics data point to return.
newGetEC2RecommendationProjectedMetrics ::
  -- | 'instanceArn'
  Prelude.Text ->
  -- | 'stat'
  MetricStatistic ->
  -- | 'period'
  Prelude.Int ->
  -- | 'startTime'
  Prelude.UTCTime ->
  -- | 'endTime'
  Prelude.UTCTime ->
  GetEC2RecommendationProjectedMetrics
newGetEC2RecommendationProjectedMetrics
  pInstanceArn_
  pStat_
  pPeriod_
  pStartTime_
  pEndTime_ =
    GetEC2RecommendationProjectedMetrics'
      { recommendationPreferences =
          Prelude.Nothing,
        instanceArn = pInstanceArn_,
        stat = pStat_,
        period = pPeriod_,
        startTime =
          Core._Time Lens.# pStartTime_,
        endTime = Core._Time Lens.# pEndTime_
      }

-- | An object to specify the preferences for the Amazon EC2 recommendation
-- projected metrics to return in the response.
getEC2RecommendationProjectedMetrics_recommendationPreferences :: Lens.Lens' GetEC2RecommendationProjectedMetrics (Prelude.Maybe RecommendationPreferences)
getEC2RecommendationProjectedMetrics_recommendationPreferences = Lens.lens (\GetEC2RecommendationProjectedMetrics' {recommendationPreferences} -> recommendationPreferences) (\s@GetEC2RecommendationProjectedMetrics' {} a -> s {recommendationPreferences = a} :: GetEC2RecommendationProjectedMetrics)

-- | The Amazon Resource Name (ARN) of the instances for which to return
-- recommendation projected metrics.
getEC2RecommendationProjectedMetrics_instanceArn :: Lens.Lens' GetEC2RecommendationProjectedMetrics Prelude.Text
getEC2RecommendationProjectedMetrics_instanceArn = Lens.lens (\GetEC2RecommendationProjectedMetrics' {instanceArn} -> instanceArn) (\s@GetEC2RecommendationProjectedMetrics' {} a -> s {instanceArn = a} :: GetEC2RecommendationProjectedMetrics)

-- | The statistic of the projected metrics.
getEC2RecommendationProjectedMetrics_stat :: Lens.Lens' GetEC2RecommendationProjectedMetrics MetricStatistic
getEC2RecommendationProjectedMetrics_stat = Lens.lens (\GetEC2RecommendationProjectedMetrics' {stat} -> stat) (\s@GetEC2RecommendationProjectedMetrics' {} a -> s {stat = a} :: GetEC2RecommendationProjectedMetrics)

-- | The granularity, in seconds, of the projected metrics data points.
getEC2RecommendationProjectedMetrics_period :: Lens.Lens' GetEC2RecommendationProjectedMetrics Prelude.Int
getEC2RecommendationProjectedMetrics_period = Lens.lens (\GetEC2RecommendationProjectedMetrics' {period} -> period) (\s@GetEC2RecommendationProjectedMetrics' {} a -> s {period = a} :: GetEC2RecommendationProjectedMetrics)

-- | The timestamp of the first projected metrics data point to return.
getEC2RecommendationProjectedMetrics_startTime :: Lens.Lens' GetEC2RecommendationProjectedMetrics Prelude.UTCTime
getEC2RecommendationProjectedMetrics_startTime = Lens.lens (\GetEC2RecommendationProjectedMetrics' {startTime} -> startTime) (\s@GetEC2RecommendationProjectedMetrics' {} a -> s {startTime = a} :: GetEC2RecommendationProjectedMetrics) Prelude.. Core._Time

-- | The timestamp of the last projected metrics data point to return.
getEC2RecommendationProjectedMetrics_endTime :: Lens.Lens' GetEC2RecommendationProjectedMetrics Prelude.UTCTime
getEC2RecommendationProjectedMetrics_endTime = Lens.lens (\GetEC2RecommendationProjectedMetrics' {endTime} -> endTime) (\s@GetEC2RecommendationProjectedMetrics' {} a -> s {endTime = a} :: GetEC2RecommendationProjectedMetrics) Prelude.. Core._Time

instance
  Core.AWSRequest
    GetEC2RecommendationProjectedMetrics
  where
  type
    AWSResponse GetEC2RecommendationProjectedMetrics =
      GetEC2RecommendationProjectedMetricsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetEC2RecommendationProjectedMetricsResponse'
            Prelude.<$> ( x Core..?> "recommendedOptionProjectedMetrics"
                            Core..!@ Prelude.mempty
                        )
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    GetEC2RecommendationProjectedMetrics

instance
  Prelude.NFData
    GetEC2RecommendationProjectedMetrics

instance
  Core.ToHeaders
    GetEC2RecommendationProjectedMetrics
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "ComputeOptimizerService.GetEC2RecommendationProjectedMetrics" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    GetEC2RecommendationProjectedMetrics
  where
  toJSON GetEC2RecommendationProjectedMetrics' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("recommendationPreferences" Core..=)
              Prelude.<$> recommendationPreferences,
            Prelude.Just ("instanceArn" Core..= instanceArn),
            Prelude.Just ("stat" Core..= stat),
            Prelude.Just ("period" Core..= period),
            Prelude.Just ("startTime" Core..= startTime),
            Prelude.Just ("endTime" Core..= endTime)
          ]
      )

instance
  Core.ToPath
    GetEC2RecommendationProjectedMetrics
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    GetEC2RecommendationProjectedMetrics
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetEC2RecommendationProjectedMetricsResponse' smart constructor.
data GetEC2RecommendationProjectedMetricsResponse = GetEC2RecommendationProjectedMetricsResponse'
  { -- | An array of objects that describes projected metrics.
    recommendedOptionProjectedMetrics :: Prelude.Maybe [RecommendedOptionProjectedMetric],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetEC2RecommendationProjectedMetricsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'recommendedOptionProjectedMetrics', 'getEC2RecommendationProjectedMetricsResponse_recommendedOptionProjectedMetrics' - An array of objects that describes projected metrics.
--
-- 'httpStatus', 'getEC2RecommendationProjectedMetricsResponse_httpStatus' - The response's http status code.
newGetEC2RecommendationProjectedMetricsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetEC2RecommendationProjectedMetricsResponse
newGetEC2RecommendationProjectedMetricsResponse
  pHttpStatus_ =
    GetEC2RecommendationProjectedMetricsResponse'
      { recommendedOptionProjectedMetrics =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | An array of objects that describes projected metrics.
getEC2RecommendationProjectedMetricsResponse_recommendedOptionProjectedMetrics :: Lens.Lens' GetEC2RecommendationProjectedMetricsResponse (Prelude.Maybe [RecommendedOptionProjectedMetric])
getEC2RecommendationProjectedMetricsResponse_recommendedOptionProjectedMetrics = Lens.lens (\GetEC2RecommendationProjectedMetricsResponse' {recommendedOptionProjectedMetrics} -> recommendedOptionProjectedMetrics) (\s@GetEC2RecommendationProjectedMetricsResponse' {} a -> s {recommendedOptionProjectedMetrics = a} :: GetEC2RecommendationProjectedMetricsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getEC2RecommendationProjectedMetricsResponse_httpStatus :: Lens.Lens' GetEC2RecommendationProjectedMetricsResponse Prelude.Int
getEC2RecommendationProjectedMetricsResponse_httpStatus = Lens.lens (\GetEC2RecommendationProjectedMetricsResponse' {httpStatus} -> httpStatus) (\s@GetEC2RecommendationProjectedMetricsResponse' {} a -> s {httpStatus = a} :: GetEC2RecommendationProjectedMetricsResponse)

instance
  Prelude.NFData
    GetEC2RecommendationProjectedMetricsResponse
