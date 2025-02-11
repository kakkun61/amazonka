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
-- Module      : Network.AWS.DataBrew.Types.StatisticOverride
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DataBrew.Types.StatisticOverride where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Override of a particular evaluation for a profile job.
--
-- /See:/ 'newStatisticOverride' smart constructor.
data StatisticOverride = StatisticOverride'
  { -- | The name of an evaluation
    statistic :: Prelude.Text,
    -- | A map that includes overrides of an evaluation’s parameters.
    parameters :: Prelude.HashMap Prelude.Text Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StatisticOverride' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'statistic', 'statisticOverride_statistic' - The name of an evaluation
--
-- 'parameters', 'statisticOverride_parameters' - A map that includes overrides of an evaluation’s parameters.
newStatisticOverride ::
  -- | 'statistic'
  Prelude.Text ->
  StatisticOverride
newStatisticOverride pStatistic_ =
  StatisticOverride'
    { statistic = pStatistic_,
      parameters = Prelude.mempty
    }

-- | The name of an evaluation
statisticOverride_statistic :: Lens.Lens' StatisticOverride Prelude.Text
statisticOverride_statistic = Lens.lens (\StatisticOverride' {statistic} -> statistic) (\s@StatisticOverride' {} a -> s {statistic = a} :: StatisticOverride)

-- | A map that includes overrides of an evaluation’s parameters.
statisticOverride_parameters :: Lens.Lens' StatisticOverride (Prelude.HashMap Prelude.Text Prelude.Text)
statisticOverride_parameters = Lens.lens (\StatisticOverride' {parameters} -> parameters) (\s@StatisticOverride' {} a -> s {parameters = a} :: StatisticOverride) Prelude.. Lens.coerced

instance Core.FromJSON StatisticOverride where
  parseJSON =
    Core.withObject
      "StatisticOverride"
      ( \x ->
          StatisticOverride'
            Prelude.<$> (x Core..: "Statistic")
            Prelude.<*> (x Core..:? "Parameters" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable StatisticOverride

instance Prelude.NFData StatisticOverride

instance Core.ToJSON StatisticOverride where
  toJSON StatisticOverride' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Statistic" Core..= statistic),
            Prelude.Just ("Parameters" Core..= parameters)
          ]
      )
