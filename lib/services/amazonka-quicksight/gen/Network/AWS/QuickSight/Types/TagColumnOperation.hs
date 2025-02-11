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
-- Module      : Network.AWS.QuickSight.Types.TagColumnOperation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.TagColumnOperation where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types.ColumnTag

-- | A transform operation that tags a column with additional information.
--
-- /See:/ 'newTagColumnOperation' smart constructor.
data TagColumnOperation = TagColumnOperation'
  { -- | The column that this operation acts on.
    columnName :: Prelude.Text,
    -- | The dataset column tag, currently only used for geospatial type tagging.
    --
    -- This is not tags for the Amazon Web Services tagging feature.
    tags :: Prelude.NonEmpty ColumnTag
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TagColumnOperation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'columnName', 'tagColumnOperation_columnName' - The column that this operation acts on.
--
-- 'tags', 'tagColumnOperation_tags' - The dataset column tag, currently only used for geospatial type tagging.
--
-- This is not tags for the Amazon Web Services tagging feature.
newTagColumnOperation ::
  -- | 'columnName'
  Prelude.Text ->
  -- | 'tags'
  Prelude.NonEmpty ColumnTag ->
  TagColumnOperation
newTagColumnOperation pColumnName_ pTags_ =
  TagColumnOperation'
    { columnName = pColumnName_,
      tags = Lens.coerced Lens.# pTags_
    }

-- | The column that this operation acts on.
tagColumnOperation_columnName :: Lens.Lens' TagColumnOperation Prelude.Text
tagColumnOperation_columnName = Lens.lens (\TagColumnOperation' {columnName} -> columnName) (\s@TagColumnOperation' {} a -> s {columnName = a} :: TagColumnOperation)

-- | The dataset column tag, currently only used for geospatial type tagging.
--
-- This is not tags for the Amazon Web Services tagging feature.
tagColumnOperation_tags :: Lens.Lens' TagColumnOperation (Prelude.NonEmpty ColumnTag)
tagColumnOperation_tags = Lens.lens (\TagColumnOperation' {tags} -> tags) (\s@TagColumnOperation' {} a -> s {tags = a} :: TagColumnOperation) Prelude.. Lens.coerced

instance Core.FromJSON TagColumnOperation where
  parseJSON =
    Core.withObject
      "TagColumnOperation"
      ( \x ->
          TagColumnOperation'
            Prelude.<$> (x Core..: "ColumnName")
            Prelude.<*> (x Core..: "Tags")
      )

instance Prelude.Hashable TagColumnOperation

instance Prelude.NFData TagColumnOperation

instance Core.ToJSON TagColumnOperation where
  toJSON TagColumnOperation' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("ColumnName" Core..= columnName),
            Prelude.Just ("Tags" Core..= tags)
          ]
      )
