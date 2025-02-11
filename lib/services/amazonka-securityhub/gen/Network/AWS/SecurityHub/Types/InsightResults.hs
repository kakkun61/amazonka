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
-- Module      : Network.AWS.SecurityHub.Types.InsightResults
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.InsightResults where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SecurityHub.Types.InsightResultValue

-- | The insight results returned by the @GetInsightResults@ operation.
--
-- /See:/ 'newInsightResults' smart constructor.
data InsightResults = InsightResults'
  { -- | The ARN of the insight whose results are returned by the
    -- @GetInsightResults@ operation.
    insightArn :: Prelude.Text,
    -- | The attribute that the findings are grouped by for the insight whose
    -- results are returned by the @GetInsightResults@ operation.
    groupByAttribute :: Prelude.Text,
    -- | The list of insight result values returned by the @GetInsightResults@
    -- operation.
    resultValues :: [InsightResultValue]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InsightResults' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'insightArn', 'insightResults_insightArn' - The ARN of the insight whose results are returned by the
-- @GetInsightResults@ operation.
--
-- 'groupByAttribute', 'insightResults_groupByAttribute' - The attribute that the findings are grouped by for the insight whose
-- results are returned by the @GetInsightResults@ operation.
--
-- 'resultValues', 'insightResults_resultValues' - The list of insight result values returned by the @GetInsightResults@
-- operation.
newInsightResults ::
  -- | 'insightArn'
  Prelude.Text ->
  -- | 'groupByAttribute'
  Prelude.Text ->
  InsightResults
newInsightResults pInsightArn_ pGroupByAttribute_ =
  InsightResults'
    { insightArn = pInsightArn_,
      groupByAttribute = pGroupByAttribute_,
      resultValues = Prelude.mempty
    }

-- | The ARN of the insight whose results are returned by the
-- @GetInsightResults@ operation.
insightResults_insightArn :: Lens.Lens' InsightResults Prelude.Text
insightResults_insightArn = Lens.lens (\InsightResults' {insightArn} -> insightArn) (\s@InsightResults' {} a -> s {insightArn = a} :: InsightResults)

-- | The attribute that the findings are grouped by for the insight whose
-- results are returned by the @GetInsightResults@ operation.
insightResults_groupByAttribute :: Lens.Lens' InsightResults Prelude.Text
insightResults_groupByAttribute = Lens.lens (\InsightResults' {groupByAttribute} -> groupByAttribute) (\s@InsightResults' {} a -> s {groupByAttribute = a} :: InsightResults)

-- | The list of insight result values returned by the @GetInsightResults@
-- operation.
insightResults_resultValues :: Lens.Lens' InsightResults [InsightResultValue]
insightResults_resultValues = Lens.lens (\InsightResults' {resultValues} -> resultValues) (\s@InsightResults' {} a -> s {resultValues = a} :: InsightResults) Prelude.. Lens.coerced

instance Core.FromJSON InsightResults where
  parseJSON =
    Core.withObject
      "InsightResults"
      ( \x ->
          InsightResults'
            Prelude.<$> (x Core..: "InsightArn")
            Prelude.<*> (x Core..: "GroupByAttribute")
            Prelude.<*> (x Core..:? "ResultValues" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable InsightResults

instance Prelude.NFData InsightResults
