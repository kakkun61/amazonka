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
-- Module      : Network.AWS.AccessAnalyzer.Types.SortCriteria
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AccessAnalyzer.Types.SortCriteria where

import Network.AWS.AccessAnalyzer.Types.OrderBy
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The criteria used to sort.
--
-- /See:/ 'newSortCriteria' smart constructor.
data SortCriteria = SortCriteria'
  { -- | The sort order, ascending or descending.
    orderBy :: Prelude.Maybe OrderBy,
    -- | The name of the attribute to sort on.
    attributeName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SortCriteria' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'orderBy', 'sortCriteria_orderBy' - The sort order, ascending or descending.
--
-- 'attributeName', 'sortCriteria_attributeName' - The name of the attribute to sort on.
newSortCriteria ::
  SortCriteria
newSortCriteria =
  SortCriteria'
    { orderBy = Prelude.Nothing,
      attributeName = Prelude.Nothing
    }

-- | The sort order, ascending or descending.
sortCriteria_orderBy :: Lens.Lens' SortCriteria (Prelude.Maybe OrderBy)
sortCriteria_orderBy = Lens.lens (\SortCriteria' {orderBy} -> orderBy) (\s@SortCriteria' {} a -> s {orderBy = a} :: SortCriteria)

-- | The name of the attribute to sort on.
sortCriteria_attributeName :: Lens.Lens' SortCriteria (Prelude.Maybe Prelude.Text)
sortCriteria_attributeName = Lens.lens (\SortCriteria' {attributeName} -> attributeName) (\s@SortCriteria' {} a -> s {attributeName = a} :: SortCriteria)

instance Prelude.Hashable SortCriteria

instance Prelude.NFData SortCriteria

instance Core.ToJSON SortCriteria where
  toJSON SortCriteria' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("orderBy" Core..=) Prelude.<$> orderBy,
            ("attributeName" Core..=) Prelude.<$> attributeName
          ]
      )
