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
-- Module      : Network.AWS.HoneyCode.Types.UpsertRowData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.HoneyCode.Types.UpsertRowData where

import qualified Network.AWS.Core as Core
import Network.AWS.HoneyCode.Types.CellInput
import Network.AWS.HoneyCode.Types.Filter
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Data needed to upsert rows in a table as part of a single item in the
-- BatchUpsertTableRows request.
--
-- /See:/ 'newUpsertRowData' smart constructor.
data UpsertRowData = UpsertRowData'
  { -- | An external identifier that represents a single item in the request that
    -- is being upserted as part of the BatchUpsertTableRows request. This can
    -- be any string that you can use to identify the item in the request. The
    -- BatchUpsertTableRows API puts the batch item id in the results to allow
    -- you to link data in the request to data in the results.
    batchItemId :: Prelude.Text,
    -- | The filter formula to use to find existing matching rows to update. The
    -- formula needs to return zero or more rows. If the formula returns 0
    -- rows, then a new row will be appended in the target table. If the
    -- formula returns one or more rows, then the returned rows will be
    -- updated.
    --
    -- Note that the filter formula needs to return rows from the target table
    -- for the upsert operation to succeed. If the filter formula has a syntax
    -- error or it doesn\'t evaluate to zero or more rows in the target table
    -- for any one item in the input list, then the entire BatchUpsertTableRows
    -- request fails and no updates are made to the table.
    filter' :: Filter,
    -- | A map representing the cells to update for the matching rows or an
    -- appended row. The key is the column id of the cell and the value is the
    -- CellInput object that represents the data to set in that cell.
    cellsToUpdate :: Prelude.HashMap Prelude.Text CellInput
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpsertRowData' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'batchItemId', 'upsertRowData_batchItemId' - An external identifier that represents a single item in the request that
-- is being upserted as part of the BatchUpsertTableRows request. This can
-- be any string that you can use to identify the item in the request. The
-- BatchUpsertTableRows API puts the batch item id in the results to allow
-- you to link data in the request to data in the results.
--
-- 'filter'', 'upsertRowData_filter' - The filter formula to use to find existing matching rows to update. The
-- formula needs to return zero or more rows. If the formula returns 0
-- rows, then a new row will be appended in the target table. If the
-- formula returns one or more rows, then the returned rows will be
-- updated.
--
-- Note that the filter formula needs to return rows from the target table
-- for the upsert operation to succeed. If the filter formula has a syntax
-- error or it doesn\'t evaluate to zero or more rows in the target table
-- for any one item in the input list, then the entire BatchUpsertTableRows
-- request fails and no updates are made to the table.
--
-- 'cellsToUpdate', 'upsertRowData_cellsToUpdate' - A map representing the cells to update for the matching rows or an
-- appended row. The key is the column id of the cell and the value is the
-- CellInput object that represents the data to set in that cell.
newUpsertRowData ::
  -- | 'batchItemId'
  Prelude.Text ->
  -- | 'filter''
  Filter ->
  UpsertRowData
newUpsertRowData pBatchItemId_ pFilter_ =
  UpsertRowData'
    { batchItemId = pBatchItemId_,
      filter' = pFilter_,
      cellsToUpdate = Prelude.mempty
    }

-- | An external identifier that represents a single item in the request that
-- is being upserted as part of the BatchUpsertTableRows request. This can
-- be any string that you can use to identify the item in the request. The
-- BatchUpsertTableRows API puts the batch item id in the results to allow
-- you to link data in the request to data in the results.
upsertRowData_batchItemId :: Lens.Lens' UpsertRowData Prelude.Text
upsertRowData_batchItemId = Lens.lens (\UpsertRowData' {batchItemId} -> batchItemId) (\s@UpsertRowData' {} a -> s {batchItemId = a} :: UpsertRowData)

-- | The filter formula to use to find existing matching rows to update. The
-- formula needs to return zero or more rows. If the formula returns 0
-- rows, then a new row will be appended in the target table. If the
-- formula returns one or more rows, then the returned rows will be
-- updated.
--
-- Note that the filter formula needs to return rows from the target table
-- for the upsert operation to succeed. If the filter formula has a syntax
-- error or it doesn\'t evaluate to zero or more rows in the target table
-- for any one item in the input list, then the entire BatchUpsertTableRows
-- request fails and no updates are made to the table.
upsertRowData_filter :: Lens.Lens' UpsertRowData Filter
upsertRowData_filter = Lens.lens (\UpsertRowData' {filter'} -> filter') (\s@UpsertRowData' {} a -> s {filter' = a} :: UpsertRowData)

-- | A map representing the cells to update for the matching rows or an
-- appended row. The key is the column id of the cell and the value is the
-- CellInput object that represents the data to set in that cell.
upsertRowData_cellsToUpdate :: Lens.Lens' UpsertRowData (Prelude.HashMap Prelude.Text CellInput)
upsertRowData_cellsToUpdate = Lens.lens (\UpsertRowData' {cellsToUpdate} -> cellsToUpdate) (\s@UpsertRowData' {} a -> s {cellsToUpdate = a} :: UpsertRowData) Prelude.. Lens.coerced

instance Prelude.Hashable UpsertRowData

instance Prelude.NFData UpsertRowData

instance Core.ToJSON UpsertRowData where
  toJSON UpsertRowData' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("batchItemId" Core..= batchItemId),
            Prelude.Just ("filter" Core..= filter'),
            Prelude.Just
              ("cellsToUpdate" Core..= cellsToUpdate)
          ]
      )
