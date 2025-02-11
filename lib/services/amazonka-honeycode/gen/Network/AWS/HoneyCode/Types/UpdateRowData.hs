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
-- Module      : Network.AWS.HoneyCode.Types.UpdateRowData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.HoneyCode.Types.UpdateRowData where

import qualified Network.AWS.Core as Core
import Network.AWS.HoneyCode.Types.CellInput
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Data needed to create a single row in a table as part of the
-- BatchCreateTableRows request.
--
-- /See:/ 'newUpdateRowData' smart constructor.
data UpdateRowData = UpdateRowData'
  { -- | The id of the row that needs to be updated.
    rowId :: Prelude.Text,
    -- | A map representing the cells to update in the given row. The key is the
    -- column id of the cell and the value is the CellInput object that
    -- represents the data to set in that cell.
    cellsToUpdate :: Prelude.HashMap Prelude.Text CellInput
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateRowData' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'rowId', 'updateRowData_rowId' - The id of the row that needs to be updated.
--
-- 'cellsToUpdate', 'updateRowData_cellsToUpdate' - A map representing the cells to update in the given row. The key is the
-- column id of the cell and the value is the CellInput object that
-- represents the data to set in that cell.
newUpdateRowData ::
  -- | 'rowId'
  Prelude.Text ->
  UpdateRowData
newUpdateRowData pRowId_ =
  UpdateRowData'
    { rowId = pRowId_,
      cellsToUpdate = Prelude.mempty
    }

-- | The id of the row that needs to be updated.
updateRowData_rowId :: Lens.Lens' UpdateRowData Prelude.Text
updateRowData_rowId = Lens.lens (\UpdateRowData' {rowId} -> rowId) (\s@UpdateRowData' {} a -> s {rowId = a} :: UpdateRowData)

-- | A map representing the cells to update in the given row. The key is the
-- column id of the cell and the value is the CellInput object that
-- represents the data to set in that cell.
updateRowData_cellsToUpdate :: Lens.Lens' UpdateRowData (Prelude.HashMap Prelude.Text CellInput)
updateRowData_cellsToUpdate = Lens.lens (\UpdateRowData' {cellsToUpdate} -> cellsToUpdate) (\s@UpdateRowData' {} a -> s {cellsToUpdate = a} :: UpdateRowData) Prelude.. Lens.coerced

instance Prelude.Hashable UpdateRowData

instance Prelude.NFData UpdateRowData

instance Core.ToJSON UpdateRowData where
  toJSON UpdateRowData' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("rowId" Core..= rowId),
            Prelude.Just
              ("cellsToUpdate" Core..= cellsToUpdate)
          ]
      )
