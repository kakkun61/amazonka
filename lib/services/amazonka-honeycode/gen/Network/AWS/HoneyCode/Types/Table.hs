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
-- Module      : Network.AWS.HoneyCode.Types.Table
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.HoneyCode.Types.Table where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object representing the properties of a table in a workbook.
--
-- /See:/ 'newTable' smart constructor.
data Table = Table'
  { -- | The id of the table.
    tableId :: Prelude.Maybe Prelude.Text,
    -- | The name of the table.
    tableName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Table' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tableId', 'table_tableId' - The id of the table.
--
-- 'tableName', 'table_tableName' - The name of the table.
newTable ::
  Table
newTable =
  Table'
    { tableId = Prelude.Nothing,
      tableName = Prelude.Nothing
    }

-- | The id of the table.
table_tableId :: Lens.Lens' Table (Prelude.Maybe Prelude.Text)
table_tableId = Lens.lens (\Table' {tableId} -> tableId) (\s@Table' {} a -> s {tableId = a} :: Table)

-- | The name of the table.
table_tableName :: Lens.Lens' Table (Prelude.Maybe Prelude.Text)
table_tableName = Lens.lens (\Table' {tableName} -> tableName) (\s@Table' {} a -> s {tableName = a} :: Table)

instance Core.FromJSON Table where
  parseJSON =
    Core.withObject
      "Table"
      ( \x ->
          Table'
            Prelude.<$> (x Core..:? "tableId")
            Prelude.<*> (x Core..:? "tableName")
      )

instance Prelude.Hashable Table

instance Prelude.NFData Table
