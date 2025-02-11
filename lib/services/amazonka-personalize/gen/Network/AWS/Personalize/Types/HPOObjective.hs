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
-- Module      : Network.AWS.Personalize.Types.HPOObjective
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Personalize.Types.HPOObjective where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The metric to optimize during hyperparameter optimization (HPO).
--
-- Amazon Personalize doesn\'t support configuring the @hpoObjective@ at
-- this time.
--
-- /See:/ 'newHPOObjective' smart constructor.
data HPOObjective = HPOObjective'
  { -- | The name of the metric.
    metricName :: Prelude.Maybe Prelude.Text,
    -- | The type of the metric. Valid values are @Maximize@ and @Minimize@.
    type' :: Prelude.Maybe Prelude.Text,
    -- | A regular expression for finding the metric in the training job logs.
    metricRegex :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'HPOObjective' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'metricName', 'hPOObjective_metricName' - The name of the metric.
--
-- 'type'', 'hPOObjective_type' - The type of the metric. Valid values are @Maximize@ and @Minimize@.
--
-- 'metricRegex', 'hPOObjective_metricRegex' - A regular expression for finding the metric in the training job logs.
newHPOObjective ::
  HPOObjective
newHPOObjective =
  HPOObjective'
    { metricName = Prelude.Nothing,
      type' = Prelude.Nothing,
      metricRegex = Prelude.Nothing
    }

-- | The name of the metric.
hPOObjective_metricName :: Lens.Lens' HPOObjective (Prelude.Maybe Prelude.Text)
hPOObjective_metricName = Lens.lens (\HPOObjective' {metricName} -> metricName) (\s@HPOObjective' {} a -> s {metricName = a} :: HPOObjective)

-- | The type of the metric. Valid values are @Maximize@ and @Minimize@.
hPOObjective_type :: Lens.Lens' HPOObjective (Prelude.Maybe Prelude.Text)
hPOObjective_type = Lens.lens (\HPOObjective' {type'} -> type') (\s@HPOObjective' {} a -> s {type' = a} :: HPOObjective)

-- | A regular expression for finding the metric in the training job logs.
hPOObjective_metricRegex :: Lens.Lens' HPOObjective (Prelude.Maybe Prelude.Text)
hPOObjective_metricRegex = Lens.lens (\HPOObjective' {metricRegex} -> metricRegex) (\s@HPOObjective' {} a -> s {metricRegex = a} :: HPOObjective)

instance Core.FromJSON HPOObjective where
  parseJSON =
    Core.withObject
      "HPOObjective"
      ( \x ->
          HPOObjective'
            Prelude.<$> (x Core..:? "metricName")
            Prelude.<*> (x Core..:? "type")
            Prelude.<*> (x Core..:? "metricRegex")
      )

instance Prelude.Hashable HPOObjective

instance Prelude.NFData HPOObjective

instance Core.ToJSON HPOObjective where
  toJSON HPOObjective' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("metricName" Core..=) Prelude.<$> metricName,
            ("type" Core..=) Prelude.<$> type',
            ("metricRegex" Core..=) Prelude.<$> metricRegex
          ]
      )
