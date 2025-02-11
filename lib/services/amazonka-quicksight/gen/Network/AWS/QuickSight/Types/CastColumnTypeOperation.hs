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
-- Module      : Network.AWS.QuickSight.Types.CastColumnTypeOperation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.CastColumnTypeOperation where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types.ColumnDataType

-- | A transform operation that casts a column to a different type.
--
-- /See:/ 'newCastColumnTypeOperation' smart constructor.
data CastColumnTypeOperation = CastColumnTypeOperation'
  { -- | When casting a column from string to datetime type, you can supply a
    -- string in a format supported by Amazon QuickSight to denote the source
    -- data format.
    format :: Prelude.Maybe Prelude.Text,
    -- | Column name.
    columnName :: Prelude.Text,
    -- | New column data type.
    newColumnType' :: ColumnDataType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CastColumnTypeOperation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'format', 'castColumnTypeOperation_format' - When casting a column from string to datetime type, you can supply a
-- string in a format supported by Amazon QuickSight to denote the source
-- data format.
--
-- 'columnName', 'castColumnTypeOperation_columnName' - Column name.
--
-- 'newColumnType'', 'castColumnTypeOperation_newColumnType' - New column data type.
newCastColumnTypeOperation ::
  -- | 'columnName'
  Prelude.Text ->
  -- | 'newColumnType''
  ColumnDataType ->
  CastColumnTypeOperation
newCastColumnTypeOperation
  pColumnName_
  pNewColumnType_ =
    CastColumnTypeOperation'
      { format = Prelude.Nothing,
        columnName = pColumnName_,
        newColumnType' = pNewColumnType_
      }

-- | When casting a column from string to datetime type, you can supply a
-- string in a format supported by Amazon QuickSight to denote the source
-- data format.
castColumnTypeOperation_format :: Lens.Lens' CastColumnTypeOperation (Prelude.Maybe Prelude.Text)
castColumnTypeOperation_format = Lens.lens (\CastColumnTypeOperation' {format} -> format) (\s@CastColumnTypeOperation' {} a -> s {format = a} :: CastColumnTypeOperation)

-- | Column name.
castColumnTypeOperation_columnName :: Lens.Lens' CastColumnTypeOperation Prelude.Text
castColumnTypeOperation_columnName = Lens.lens (\CastColumnTypeOperation' {columnName} -> columnName) (\s@CastColumnTypeOperation' {} a -> s {columnName = a} :: CastColumnTypeOperation)

-- | New column data type.
castColumnTypeOperation_newColumnType :: Lens.Lens' CastColumnTypeOperation ColumnDataType
castColumnTypeOperation_newColumnType = Lens.lens (\CastColumnTypeOperation' {newColumnType'} -> newColumnType') (\s@CastColumnTypeOperation' {} a -> s {newColumnType' = a} :: CastColumnTypeOperation)

instance Core.FromJSON CastColumnTypeOperation where
  parseJSON =
    Core.withObject
      "CastColumnTypeOperation"
      ( \x ->
          CastColumnTypeOperation'
            Prelude.<$> (x Core..:? "Format")
            Prelude.<*> (x Core..: "ColumnName")
            Prelude.<*> (x Core..: "NewColumnType")
      )

instance Prelude.Hashable CastColumnTypeOperation

instance Prelude.NFData CastColumnTypeOperation

instance Core.ToJSON CastColumnTypeOperation where
  toJSON CastColumnTypeOperation' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Format" Core..=) Prelude.<$> format,
            Prelude.Just ("ColumnName" Core..= columnName),
            Prelude.Just
              ("NewColumnType" Core..= newColumnType')
          ]
      )
