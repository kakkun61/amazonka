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
-- Module      : Network.AWS.LakeFormation.Types.TableResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LakeFormation.Types.TableResource where

import qualified Network.AWS.Core as Core
import Network.AWS.LakeFormation.Types.TableWildcard
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A structure for the table object. A table is a metadata definition that
-- represents your data. You can Grant and Revoke table privileges to a
-- principal.
--
-- /See:/ 'newTableResource' smart constructor.
data TableResource = TableResource'
  { -- | The identifier for the Data Catalog. By default, it is the account ID of
    -- the caller.
    catalogId :: Prelude.Maybe Prelude.Text,
    -- | A wildcard object representing every table under a database.
    --
    -- At least one of @TableResource$Name@ or @TableResource$TableWildcard@ is
    -- required.
    tableWildcard :: Prelude.Maybe TableWildcard,
    -- | The name of the table.
    name :: Prelude.Maybe Prelude.Text,
    -- | The name of the database for the table. Unique to a Data Catalog. A
    -- database is a set of associated table definitions organized into a
    -- logical group. You can Grant and Revoke database privileges to a
    -- principal.
    databaseName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TableResource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'catalogId', 'tableResource_catalogId' - The identifier for the Data Catalog. By default, it is the account ID of
-- the caller.
--
-- 'tableWildcard', 'tableResource_tableWildcard' - A wildcard object representing every table under a database.
--
-- At least one of @TableResource$Name@ or @TableResource$TableWildcard@ is
-- required.
--
-- 'name', 'tableResource_name' - The name of the table.
--
-- 'databaseName', 'tableResource_databaseName' - The name of the database for the table. Unique to a Data Catalog. A
-- database is a set of associated table definitions organized into a
-- logical group. You can Grant and Revoke database privileges to a
-- principal.
newTableResource ::
  -- | 'databaseName'
  Prelude.Text ->
  TableResource
newTableResource pDatabaseName_ =
  TableResource'
    { catalogId = Prelude.Nothing,
      tableWildcard = Prelude.Nothing,
      name = Prelude.Nothing,
      databaseName = pDatabaseName_
    }

-- | The identifier for the Data Catalog. By default, it is the account ID of
-- the caller.
tableResource_catalogId :: Lens.Lens' TableResource (Prelude.Maybe Prelude.Text)
tableResource_catalogId = Lens.lens (\TableResource' {catalogId} -> catalogId) (\s@TableResource' {} a -> s {catalogId = a} :: TableResource)

-- | A wildcard object representing every table under a database.
--
-- At least one of @TableResource$Name@ or @TableResource$TableWildcard@ is
-- required.
tableResource_tableWildcard :: Lens.Lens' TableResource (Prelude.Maybe TableWildcard)
tableResource_tableWildcard = Lens.lens (\TableResource' {tableWildcard} -> tableWildcard) (\s@TableResource' {} a -> s {tableWildcard = a} :: TableResource)

-- | The name of the table.
tableResource_name :: Lens.Lens' TableResource (Prelude.Maybe Prelude.Text)
tableResource_name = Lens.lens (\TableResource' {name} -> name) (\s@TableResource' {} a -> s {name = a} :: TableResource)

-- | The name of the database for the table. Unique to a Data Catalog. A
-- database is a set of associated table definitions organized into a
-- logical group. You can Grant and Revoke database privileges to a
-- principal.
tableResource_databaseName :: Lens.Lens' TableResource Prelude.Text
tableResource_databaseName = Lens.lens (\TableResource' {databaseName} -> databaseName) (\s@TableResource' {} a -> s {databaseName = a} :: TableResource)

instance Core.FromJSON TableResource where
  parseJSON =
    Core.withObject
      "TableResource"
      ( \x ->
          TableResource'
            Prelude.<$> (x Core..:? "CatalogId")
            Prelude.<*> (x Core..:? "TableWildcard")
            Prelude.<*> (x Core..:? "Name")
            Prelude.<*> (x Core..: "DatabaseName")
      )

instance Prelude.Hashable TableResource

instance Prelude.NFData TableResource

instance Core.ToJSON TableResource where
  toJSON TableResource' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("CatalogId" Core..=) Prelude.<$> catalogId,
            ("TableWildcard" Core..=) Prelude.<$> tableWildcard,
            ("Name" Core..=) Prelude.<$> name,
            Prelude.Just ("DatabaseName" Core..= databaseName)
          ]
      )
