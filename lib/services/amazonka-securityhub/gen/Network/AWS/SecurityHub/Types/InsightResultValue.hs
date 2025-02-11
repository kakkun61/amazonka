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
-- Module      : Network.AWS.SecurityHub.Types.InsightResultValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.InsightResultValue where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The insight result values returned by the @GetInsightResults@ operation.
--
-- /See:/ 'newInsightResultValue' smart constructor.
data InsightResultValue = InsightResultValue'
  { -- | The value of the attribute that the findings are grouped by for the
    -- insight whose results are returned by the @GetInsightResults@ operation.
    groupByAttributeValue :: Prelude.Text,
    -- | The number of findings returned for each @GroupByAttributeValue@.
    count :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InsightResultValue' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'groupByAttributeValue', 'insightResultValue_groupByAttributeValue' - The value of the attribute that the findings are grouped by for the
-- insight whose results are returned by the @GetInsightResults@ operation.
--
-- 'count', 'insightResultValue_count' - The number of findings returned for each @GroupByAttributeValue@.
newInsightResultValue ::
  -- | 'groupByAttributeValue'
  Prelude.Text ->
  -- | 'count'
  Prelude.Int ->
  InsightResultValue
newInsightResultValue pGroupByAttributeValue_ pCount_ =
  InsightResultValue'
    { groupByAttributeValue =
        pGroupByAttributeValue_,
      count = pCount_
    }

-- | The value of the attribute that the findings are grouped by for the
-- insight whose results are returned by the @GetInsightResults@ operation.
insightResultValue_groupByAttributeValue :: Lens.Lens' InsightResultValue Prelude.Text
insightResultValue_groupByAttributeValue = Lens.lens (\InsightResultValue' {groupByAttributeValue} -> groupByAttributeValue) (\s@InsightResultValue' {} a -> s {groupByAttributeValue = a} :: InsightResultValue)

-- | The number of findings returned for each @GroupByAttributeValue@.
insightResultValue_count :: Lens.Lens' InsightResultValue Prelude.Int
insightResultValue_count = Lens.lens (\InsightResultValue' {count} -> count) (\s@InsightResultValue' {} a -> s {count = a} :: InsightResultValue)

instance Core.FromJSON InsightResultValue where
  parseJSON =
    Core.withObject
      "InsightResultValue"
      ( \x ->
          InsightResultValue'
            Prelude.<$> (x Core..: "GroupByAttributeValue")
            Prelude.<*> (x Core..: "Count")
      )

instance Prelude.Hashable InsightResultValue

instance Prelude.NFData InsightResultValue
