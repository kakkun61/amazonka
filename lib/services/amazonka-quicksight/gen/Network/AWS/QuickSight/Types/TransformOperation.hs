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
-- Module      : Network.AWS.QuickSight.Types.TransformOperation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.TransformOperation where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types.CastColumnTypeOperation
import Network.AWS.QuickSight.Types.CreateColumnsOperation
import Network.AWS.QuickSight.Types.FilterOperation
import Network.AWS.QuickSight.Types.ProjectOperation
import Network.AWS.QuickSight.Types.RenameColumnOperation
import Network.AWS.QuickSight.Types.TagColumnOperation
import Network.AWS.QuickSight.Types.UntagColumnOperation

-- | A data transformation on a logical table. This is a variant type
-- structure. For this structure to be valid, only one of the attributes
-- can be non-null.
--
-- /See:/ 'newTransformOperation' smart constructor.
data TransformOperation = TransformOperation'
  { -- | A transform operation that casts a column to a different type.
    castColumnTypeOperation :: Prelude.Maybe CastColumnTypeOperation,
    -- | An operation that tags a column with additional information.
    tagColumnOperation :: Prelude.Maybe TagColumnOperation,
    -- | An operation that creates calculated columns. Columns created in one
    -- such operation form a lexical closure.
    createColumnsOperation :: Prelude.Maybe CreateColumnsOperation,
    untagColumnOperation :: Prelude.Maybe UntagColumnOperation,
    -- | An operation that filters rows based on some condition.
    filterOperation :: Prelude.Maybe FilterOperation,
    -- | An operation that projects columns. Operations that come after a
    -- projection can only refer to projected columns.
    projectOperation :: Prelude.Maybe ProjectOperation,
    -- | An operation that renames a column.
    renameColumnOperation :: Prelude.Maybe RenameColumnOperation
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TransformOperation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'castColumnTypeOperation', 'transformOperation_castColumnTypeOperation' - A transform operation that casts a column to a different type.
--
-- 'tagColumnOperation', 'transformOperation_tagColumnOperation' - An operation that tags a column with additional information.
--
-- 'createColumnsOperation', 'transformOperation_createColumnsOperation' - An operation that creates calculated columns. Columns created in one
-- such operation form a lexical closure.
--
-- 'untagColumnOperation', 'transformOperation_untagColumnOperation' - Undocumented member.
--
-- 'filterOperation', 'transformOperation_filterOperation' - An operation that filters rows based on some condition.
--
-- 'projectOperation', 'transformOperation_projectOperation' - An operation that projects columns. Operations that come after a
-- projection can only refer to projected columns.
--
-- 'renameColumnOperation', 'transformOperation_renameColumnOperation' - An operation that renames a column.
newTransformOperation ::
  TransformOperation
newTransformOperation =
  TransformOperation'
    { castColumnTypeOperation =
        Prelude.Nothing,
      tagColumnOperation = Prelude.Nothing,
      createColumnsOperation = Prelude.Nothing,
      untagColumnOperation = Prelude.Nothing,
      filterOperation = Prelude.Nothing,
      projectOperation = Prelude.Nothing,
      renameColumnOperation = Prelude.Nothing
    }

-- | A transform operation that casts a column to a different type.
transformOperation_castColumnTypeOperation :: Lens.Lens' TransformOperation (Prelude.Maybe CastColumnTypeOperation)
transformOperation_castColumnTypeOperation = Lens.lens (\TransformOperation' {castColumnTypeOperation} -> castColumnTypeOperation) (\s@TransformOperation' {} a -> s {castColumnTypeOperation = a} :: TransformOperation)

-- | An operation that tags a column with additional information.
transformOperation_tagColumnOperation :: Lens.Lens' TransformOperation (Prelude.Maybe TagColumnOperation)
transformOperation_tagColumnOperation = Lens.lens (\TransformOperation' {tagColumnOperation} -> tagColumnOperation) (\s@TransformOperation' {} a -> s {tagColumnOperation = a} :: TransformOperation)

-- | An operation that creates calculated columns. Columns created in one
-- such operation form a lexical closure.
transformOperation_createColumnsOperation :: Lens.Lens' TransformOperation (Prelude.Maybe CreateColumnsOperation)
transformOperation_createColumnsOperation = Lens.lens (\TransformOperation' {createColumnsOperation} -> createColumnsOperation) (\s@TransformOperation' {} a -> s {createColumnsOperation = a} :: TransformOperation)

-- | Undocumented member.
transformOperation_untagColumnOperation :: Lens.Lens' TransformOperation (Prelude.Maybe UntagColumnOperation)
transformOperation_untagColumnOperation = Lens.lens (\TransformOperation' {untagColumnOperation} -> untagColumnOperation) (\s@TransformOperation' {} a -> s {untagColumnOperation = a} :: TransformOperation)

-- | An operation that filters rows based on some condition.
transformOperation_filterOperation :: Lens.Lens' TransformOperation (Prelude.Maybe FilterOperation)
transformOperation_filterOperation = Lens.lens (\TransformOperation' {filterOperation} -> filterOperation) (\s@TransformOperation' {} a -> s {filterOperation = a} :: TransformOperation)

-- | An operation that projects columns. Operations that come after a
-- projection can only refer to projected columns.
transformOperation_projectOperation :: Lens.Lens' TransformOperation (Prelude.Maybe ProjectOperation)
transformOperation_projectOperation = Lens.lens (\TransformOperation' {projectOperation} -> projectOperation) (\s@TransformOperation' {} a -> s {projectOperation = a} :: TransformOperation)

-- | An operation that renames a column.
transformOperation_renameColumnOperation :: Lens.Lens' TransformOperation (Prelude.Maybe RenameColumnOperation)
transformOperation_renameColumnOperation = Lens.lens (\TransformOperation' {renameColumnOperation} -> renameColumnOperation) (\s@TransformOperation' {} a -> s {renameColumnOperation = a} :: TransformOperation)

instance Core.FromJSON TransformOperation where
  parseJSON =
    Core.withObject
      "TransformOperation"
      ( \x ->
          TransformOperation'
            Prelude.<$> (x Core..:? "CastColumnTypeOperation")
            Prelude.<*> (x Core..:? "TagColumnOperation")
            Prelude.<*> (x Core..:? "CreateColumnsOperation")
            Prelude.<*> (x Core..:? "UntagColumnOperation")
            Prelude.<*> (x Core..:? "FilterOperation")
            Prelude.<*> (x Core..:? "ProjectOperation")
            Prelude.<*> (x Core..:? "RenameColumnOperation")
      )

instance Prelude.Hashable TransformOperation

instance Prelude.NFData TransformOperation

instance Core.ToJSON TransformOperation where
  toJSON TransformOperation' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("CastColumnTypeOperation" Core..=)
              Prelude.<$> castColumnTypeOperation,
            ("TagColumnOperation" Core..=)
              Prelude.<$> tagColumnOperation,
            ("CreateColumnsOperation" Core..=)
              Prelude.<$> createColumnsOperation,
            ("UntagColumnOperation" Core..=)
              Prelude.<$> untagColumnOperation,
            ("FilterOperation" Core..=)
              Prelude.<$> filterOperation,
            ("ProjectOperation" Core..=)
              Prelude.<$> projectOperation,
            ("RenameColumnOperation" Core..=)
              Prelude.<$> renameColumnOperation
          ]
      )
