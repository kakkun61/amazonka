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
-- Module      : Network.AWS.QuickSight.Types.UntagColumnOperation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.UntagColumnOperation where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types.ColumnTagName

-- | A transform operation that removes tags associated with a column.
--
-- /See:/ 'newUntagColumnOperation' smart constructor.
data UntagColumnOperation = UntagColumnOperation'
  { -- | The column that this operation acts on.
    columnName :: Prelude.Text,
    -- | The column tags to remove from this column.
    tagNames :: [ColumnTagName]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UntagColumnOperation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'columnName', 'untagColumnOperation_columnName' - The column that this operation acts on.
--
-- 'tagNames', 'untagColumnOperation_tagNames' - The column tags to remove from this column.
newUntagColumnOperation ::
  -- | 'columnName'
  Prelude.Text ->
  UntagColumnOperation
newUntagColumnOperation pColumnName_ =
  UntagColumnOperation'
    { columnName = pColumnName_,
      tagNames = Prelude.mempty
    }

-- | The column that this operation acts on.
untagColumnOperation_columnName :: Lens.Lens' UntagColumnOperation Prelude.Text
untagColumnOperation_columnName = Lens.lens (\UntagColumnOperation' {columnName} -> columnName) (\s@UntagColumnOperation' {} a -> s {columnName = a} :: UntagColumnOperation)

-- | The column tags to remove from this column.
untagColumnOperation_tagNames :: Lens.Lens' UntagColumnOperation [ColumnTagName]
untagColumnOperation_tagNames = Lens.lens (\UntagColumnOperation' {tagNames} -> tagNames) (\s@UntagColumnOperation' {} a -> s {tagNames = a} :: UntagColumnOperation) Prelude.. Lens.coerced

instance Core.FromJSON UntagColumnOperation where
  parseJSON =
    Core.withObject
      "UntagColumnOperation"
      ( \x ->
          UntagColumnOperation'
            Prelude.<$> (x Core..: "ColumnName")
            Prelude.<*> (x Core..:? "TagNames" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable UntagColumnOperation

instance Prelude.NFData UntagColumnOperation

instance Core.ToJSON UntagColumnOperation where
  toJSON UntagColumnOperation' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("ColumnName" Core..= columnName),
            Prelude.Just ("TagNames" Core..= tagNames)
          ]
      )
