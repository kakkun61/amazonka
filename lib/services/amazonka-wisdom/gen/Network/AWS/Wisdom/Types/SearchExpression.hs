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
-- Module      : Network.AWS.Wisdom.Types.SearchExpression
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Wisdom.Types.SearchExpression where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Wisdom.Types.Filter

-- | The search expression.
--
-- /See:/ 'newSearchExpression' smart constructor.
data SearchExpression = SearchExpression'
  { -- | The search expression filters.
    filters :: [Filter]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SearchExpression' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'filters', 'searchExpression_filters' - The search expression filters.
newSearchExpression ::
  SearchExpression
newSearchExpression =
  SearchExpression' {filters = Prelude.mempty}

-- | The search expression filters.
searchExpression_filters :: Lens.Lens' SearchExpression [Filter]
searchExpression_filters = Lens.lens (\SearchExpression' {filters} -> filters) (\s@SearchExpression' {} a -> s {filters = a} :: SearchExpression) Prelude.. Lens.coerced

instance Prelude.Hashable SearchExpression

instance Prelude.NFData SearchExpression

instance Core.ToJSON SearchExpression where
  toJSON SearchExpression' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("filters" Core..= filters)]
      )
