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
-- Module      : Network.AWS.CodeGuruProfiler.Types.AggregatedProfileTime
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeGuruProfiler.Types.AggregatedProfileTime where

import Network.AWS.CodeGuruProfiler.Types.AggregationPeriod
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Specifies the aggregation period and aggregation start time for an
-- aggregated profile. An aggregated profile is used to collect posted
-- agent profiles during an aggregation period. There are three possible
-- aggregation periods (1 day, 1 hour, or 5 minutes).
--
-- /See:/ 'newAggregatedProfileTime' smart constructor.
data AggregatedProfileTime = AggregatedProfileTime'
  { -- | The aggregation period. This indicates the period during which an
    -- aggregation profile collects posted agent profiles for a profiling
    -- group. Use one of three valid durations that are specified using the ISO
    -- 8601 format.
    --
    -- -   @P1D@ — 1 day
    --
    -- -   @PT1H@ — 1 hour
    --
    -- -   @PT5M@ — 5 minutes
    period :: Prelude.Maybe AggregationPeriod,
    -- | The time that aggregation of posted agent profiles for a profiling group
    -- starts. The aggregation profile contains profiles posted by the agent
    -- starting at this time for an aggregation period specified by the
    -- @period@ property of the @AggregatedProfileTime@ object.
    --
    -- Specify @start@ using the ISO 8601 format. For example,
    -- 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
    -- 1:15:02 PM UTC.
    start :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AggregatedProfileTime' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'period', 'aggregatedProfileTime_period' - The aggregation period. This indicates the period during which an
-- aggregation profile collects posted agent profiles for a profiling
-- group. Use one of three valid durations that are specified using the ISO
-- 8601 format.
--
-- -   @P1D@ — 1 day
--
-- -   @PT1H@ — 1 hour
--
-- -   @PT5M@ — 5 minutes
--
-- 'start', 'aggregatedProfileTime_start' - The time that aggregation of posted agent profiles for a profiling group
-- starts. The aggregation profile contains profiles posted by the agent
-- starting at this time for an aggregation period specified by the
-- @period@ property of the @AggregatedProfileTime@ object.
--
-- Specify @start@ using the ISO 8601 format. For example,
-- 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
-- 1:15:02 PM UTC.
newAggregatedProfileTime ::
  AggregatedProfileTime
newAggregatedProfileTime =
  AggregatedProfileTime'
    { period = Prelude.Nothing,
      start = Prelude.Nothing
    }

-- | The aggregation period. This indicates the period during which an
-- aggregation profile collects posted agent profiles for a profiling
-- group. Use one of three valid durations that are specified using the ISO
-- 8601 format.
--
-- -   @P1D@ — 1 day
--
-- -   @PT1H@ — 1 hour
--
-- -   @PT5M@ — 5 minutes
aggregatedProfileTime_period :: Lens.Lens' AggregatedProfileTime (Prelude.Maybe AggregationPeriod)
aggregatedProfileTime_period = Lens.lens (\AggregatedProfileTime' {period} -> period) (\s@AggregatedProfileTime' {} a -> s {period = a} :: AggregatedProfileTime)

-- | The time that aggregation of posted agent profiles for a profiling group
-- starts. The aggregation profile contains profiles posted by the agent
-- starting at this time for an aggregation period specified by the
-- @period@ property of the @AggregatedProfileTime@ object.
--
-- Specify @start@ using the ISO 8601 format. For example,
-- 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
-- 1:15:02 PM UTC.
aggregatedProfileTime_start :: Lens.Lens' AggregatedProfileTime (Prelude.Maybe Prelude.UTCTime)
aggregatedProfileTime_start = Lens.lens (\AggregatedProfileTime' {start} -> start) (\s@AggregatedProfileTime' {} a -> s {start = a} :: AggregatedProfileTime) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON AggregatedProfileTime where
  parseJSON =
    Core.withObject
      "AggregatedProfileTime"
      ( \x ->
          AggregatedProfileTime'
            Prelude.<$> (x Core..:? "period")
            Prelude.<*> (x Core..:? "start")
      )

instance Prelude.Hashable AggregatedProfileTime

instance Prelude.NFData AggregatedProfileTime
