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
-- Module      : Network.AWS.MacieV2.Types.SearchResourcesBucketCriteria
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MacieV2.Types.SearchResourcesBucketCriteria where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MacieV2.Types.SearchResourcesCriteriaBlock
import qualified Network.AWS.Prelude as Prelude

-- | Specifies property- and tag-based conditions that define filter criteria
-- for including or excluding S3 buckets from the query results. Exclude
-- conditions take precedence over include conditions.
--
-- /See:/ 'newSearchResourcesBucketCriteria' smart constructor.
data SearchResourcesBucketCriteria = SearchResourcesBucketCriteria'
  { -- | The property- and tag-based conditions that determine which buckets to
    -- include in the results.
    includes :: Prelude.Maybe SearchResourcesCriteriaBlock,
    -- | The property- and tag-based conditions that determine which buckets to
    -- exclude from the results.
    excludes :: Prelude.Maybe SearchResourcesCriteriaBlock
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SearchResourcesBucketCriteria' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'includes', 'searchResourcesBucketCriteria_includes' - The property- and tag-based conditions that determine which buckets to
-- include in the results.
--
-- 'excludes', 'searchResourcesBucketCriteria_excludes' - The property- and tag-based conditions that determine which buckets to
-- exclude from the results.
newSearchResourcesBucketCriteria ::
  SearchResourcesBucketCriteria
newSearchResourcesBucketCriteria =
  SearchResourcesBucketCriteria'
    { includes =
        Prelude.Nothing,
      excludes = Prelude.Nothing
    }

-- | The property- and tag-based conditions that determine which buckets to
-- include in the results.
searchResourcesBucketCriteria_includes :: Lens.Lens' SearchResourcesBucketCriteria (Prelude.Maybe SearchResourcesCriteriaBlock)
searchResourcesBucketCriteria_includes = Lens.lens (\SearchResourcesBucketCriteria' {includes} -> includes) (\s@SearchResourcesBucketCriteria' {} a -> s {includes = a} :: SearchResourcesBucketCriteria)

-- | The property- and tag-based conditions that determine which buckets to
-- exclude from the results.
searchResourcesBucketCriteria_excludes :: Lens.Lens' SearchResourcesBucketCriteria (Prelude.Maybe SearchResourcesCriteriaBlock)
searchResourcesBucketCriteria_excludes = Lens.lens (\SearchResourcesBucketCriteria' {excludes} -> excludes) (\s@SearchResourcesBucketCriteria' {} a -> s {excludes = a} :: SearchResourcesBucketCriteria)

instance
  Prelude.Hashable
    SearchResourcesBucketCriteria

instance Prelude.NFData SearchResourcesBucketCriteria

instance Core.ToJSON SearchResourcesBucketCriteria where
  toJSON SearchResourcesBucketCriteria' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("includes" Core..=) Prelude.<$> includes,
            ("excludes" Core..=) Prelude.<$> excludes
          ]
      )
