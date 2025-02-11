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
-- Module      : Network.AWS.SecurityHub.Types.SortCriterion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.SortCriterion where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SecurityHub.Types.SortOrder

-- | A collection of finding attributes used to sort findings.
--
-- /See:/ 'newSortCriterion' smart constructor.
data SortCriterion = SortCriterion'
  { -- | The finding attribute used to sort findings.
    field :: Prelude.Maybe Prelude.Text,
    -- | The order used to sort findings.
    sortOrder :: Prelude.Maybe SortOrder
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SortCriterion' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'field', 'sortCriterion_field' - The finding attribute used to sort findings.
--
-- 'sortOrder', 'sortCriterion_sortOrder' - The order used to sort findings.
newSortCriterion ::
  SortCriterion
newSortCriterion =
  SortCriterion'
    { field = Prelude.Nothing,
      sortOrder = Prelude.Nothing
    }

-- | The finding attribute used to sort findings.
sortCriterion_field :: Lens.Lens' SortCriterion (Prelude.Maybe Prelude.Text)
sortCriterion_field = Lens.lens (\SortCriterion' {field} -> field) (\s@SortCriterion' {} a -> s {field = a} :: SortCriterion)

-- | The order used to sort findings.
sortCriterion_sortOrder :: Lens.Lens' SortCriterion (Prelude.Maybe SortOrder)
sortCriterion_sortOrder = Lens.lens (\SortCriterion' {sortOrder} -> sortOrder) (\s@SortCriterion' {} a -> s {sortOrder = a} :: SortCriterion)

instance Prelude.Hashable SortCriterion

instance Prelude.NFData SortCriterion

instance Core.ToJSON SortCriterion where
  toJSON SortCriterion' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Field" Core..=) Prelude.<$> field,
            ("SortOrder" Core..=) Prelude.<$> sortOrder
          ]
      )
