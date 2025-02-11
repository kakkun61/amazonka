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
-- Module      : Network.AWS.QuickSight.Types.ColumnGroupSchema
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.ColumnGroupSchema where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types.ColumnGroupColumnSchema

-- | The column group schema.
--
-- /See:/ 'newColumnGroupSchema' smart constructor.
data ColumnGroupSchema = ColumnGroupSchema'
  { -- | A structure containing the list of schemas for column group columns.
    columnGroupColumnSchemaList :: Prelude.Maybe [ColumnGroupColumnSchema],
    -- | The name of the column group schema.
    name :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ColumnGroupSchema' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'columnGroupColumnSchemaList', 'columnGroupSchema_columnGroupColumnSchemaList' - A structure containing the list of schemas for column group columns.
--
-- 'name', 'columnGroupSchema_name' - The name of the column group schema.
newColumnGroupSchema ::
  ColumnGroupSchema
newColumnGroupSchema =
  ColumnGroupSchema'
    { columnGroupColumnSchemaList =
        Prelude.Nothing,
      name = Prelude.Nothing
    }

-- | A structure containing the list of schemas for column group columns.
columnGroupSchema_columnGroupColumnSchemaList :: Lens.Lens' ColumnGroupSchema (Prelude.Maybe [ColumnGroupColumnSchema])
columnGroupSchema_columnGroupColumnSchemaList = Lens.lens (\ColumnGroupSchema' {columnGroupColumnSchemaList} -> columnGroupColumnSchemaList) (\s@ColumnGroupSchema' {} a -> s {columnGroupColumnSchemaList = a} :: ColumnGroupSchema) Prelude.. Lens.mapping Lens.coerced

-- | The name of the column group schema.
columnGroupSchema_name :: Lens.Lens' ColumnGroupSchema (Prelude.Maybe Prelude.Text)
columnGroupSchema_name = Lens.lens (\ColumnGroupSchema' {name} -> name) (\s@ColumnGroupSchema' {} a -> s {name = a} :: ColumnGroupSchema)

instance Core.FromJSON ColumnGroupSchema where
  parseJSON =
    Core.withObject
      "ColumnGroupSchema"
      ( \x ->
          ColumnGroupSchema'
            Prelude.<$> ( x Core..:? "ColumnGroupColumnSchemaList"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "Name")
      )

instance Prelude.Hashable ColumnGroupSchema

instance Prelude.NFData ColumnGroupSchema
