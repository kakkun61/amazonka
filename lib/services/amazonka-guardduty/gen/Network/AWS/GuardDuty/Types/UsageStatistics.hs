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
-- Module      : Network.AWS.GuardDuty.Types.UsageStatistics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.UsageStatistics where

import qualified Network.AWS.Core as Core
import Network.AWS.GuardDuty.Types.UsageAccountResult
import Network.AWS.GuardDuty.Types.UsageDataSourceResult
import Network.AWS.GuardDuty.Types.UsageResourceResult
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains the result of GuardDuty usage. If a UsageStatisticType is
-- provided the result for other types will be null.
--
-- /See:/ 'newUsageStatistics' smart constructor.
data UsageStatistics = UsageStatistics'
  { -- | Lists the top 50 resources that have generated the most GuardDuty usage,
    -- in order from most to least expensive.
    topResources :: Prelude.Maybe [UsageResourceResult],
    -- | The usage statistic sum organized by resource.
    sumByResource :: Prelude.Maybe [UsageResourceResult],
    -- | The usage statistic sum organized by on data source.
    sumByDataSource :: Prelude.Maybe [UsageDataSourceResult],
    -- | The usage statistic sum organized by account ID.
    sumByAccount :: Prelude.Maybe [UsageAccountResult]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UsageStatistics' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'topResources', 'usageStatistics_topResources' - Lists the top 50 resources that have generated the most GuardDuty usage,
-- in order from most to least expensive.
--
-- 'sumByResource', 'usageStatistics_sumByResource' - The usage statistic sum organized by resource.
--
-- 'sumByDataSource', 'usageStatistics_sumByDataSource' - The usage statistic sum organized by on data source.
--
-- 'sumByAccount', 'usageStatistics_sumByAccount' - The usage statistic sum organized by account ID.
newUsageStatistics ::
  UsageStatistics
newUsageStatistics =
  UsageStatistics'
    { topResources = Prelude.Nothing,
      sumByResource = Prelude.Nothing,
      sumByDataSource = Prelude.Nothing,
      sumByAccount = Prelude.Nothing
    }

-- | Lists the top 50 resources that have generated the most GuardDuty usage,
-- in order from most to least expensive.
usageStatistics_topResources :: Lens.Lens' UsageStatistics (Prelude.Maybe [UsageResourceResult])
usageStatistics_topResources = Lens.lens (\UsageStatistics' {topResources} -> topResources) (\s@UsageStatistics' {} a -> s {topResources = a} :: UsageStatistics) Prelude.. Lens.mapping Lens.coerced

-- | The usage statistic sum organized by resource.
usageStatistics_sumByResource :: Lens.Lens' UsageStatistics (Prelude.Maybe [UsageResourceResult])
usageStatistics_sumByResource = Lens.lens (\UsageStatistics' {sumByResource} -> sumByResource) (\s@UsageStatistics' {} a -> s {sumByResource = a} :: UsageStatistics) Prelude.. Lens.mapping Lens.coerced

-- | The usage statistic sum organized by on data source.
usageStatistics_sumByDataSource :: Lens.Lens' UsageStatistics (Prelude.Maybe [UsageDataSourceResult])
usageStatistics_sumByDataSource = Lens.lens (\UsageStatistics' {sumByDataSource} -> sumByDataSource) (\s@UsageStatistics' {} a -> s {sumByDataSource = a} :: UsageStatistics) Prelude.. Lens.mapping Lens.coerced

-- | The usage statistic sum organized by account ID.
usageStatistics_sumByAccount :: Lens.Lens' UsageStatistics (Prelude.Maybe [UsageAccountResult])
usageStatistics_sumByAccount = Lens.lens (\UsageStatistics' {sumByAccount} -> sumByAccount) (\s@UsageStatistics' {} a -> s {sumByAccount = a} :: UsageStatistics) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON UsageStatistics where
  parseJSON =
    Core.withObject
      "UsageStatistics"
      ( \x ->
          UsageStatistics'
            Prelude.<$> (x Core..:? "topResources" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "sumByResource" Core..!= Prelude.mempty)
            Prelude.<*> ( x Core..:? "sumByDataSource"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "sumByAccount" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable UsageStatistics

instance Prelude.NFData UsageStatistics
