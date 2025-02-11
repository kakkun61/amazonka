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
-- Module      : Network.AWS.CodeGuruProfiler.Types.FrameMetricDatum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeGuruProfiler.Types.FrameMetricDatum where

import Network.AWS.CodeGuruProfiler.Types.FrameMetric
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about a frame metric and its values.
--
-- /See:/ 'newFrameMetricDatum' smart constructor.
data FrameMetricDatum = FrameMetricDatum'
  { frameMetric :: FrameMetric,
    -- | A list of values that are associated with a frame metric.
    values :: [Prelude.Double]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FrameMetricDatum' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'frameMetric', 'frameMetricDatum_frameMetric' - Undocumented member.
--
-- 'values', 'frameMetricDatum_values' - A list of values that are associated with a frame metric.
newFrameMetricDatum ::
  -- | 'frameMetric'
  FrameMetric ->
  FrameMetricDatum
newFrameMetricDatum pFrameMetric_ =
  FrameMetricDatum'
    { frameMetric = pFrameMetric_,
      values = Prelude.mempty
    }

-- | Undocumented member.
frameMetricDatum_frameMetric :: Lens.Lens' FrameMetricDatum FrameMetric
frameMetricDatum_frameMetric = Lens.lens (\FrameMetricDatum' {frameMetric} -> frameMetric) (\s@FrameMetricDatum' {} a -> s {frameMetric = a} :: FrameMetricDatum)

-- | A list of values that are associated with a frame metric.
frameMetricDatum_values :: Lens.Lens' FrameMetricDatum [Prelude.Double]
frameMetricDatum_values = Lens.lens (\FrameMetricDatum' {values} -> values) (\s@FrameMetricDatum' {} a -> s {values = a} :: FrameMetricDatum) Prelude.. Lens.coerced

instance Core.FromJSON FrameMetricDatum where
  parseJSON =
    Core.withObject
      "FrameMetricDatum"
      ( \x ->
          FrameMetricDatum'
            Prelude.<$> (x Core..: "frameMetric")
            Prelude.<*> (x Core..:? "values" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable FrameMetricDatum

instance Prelude.NFData FrameMetricDatum
