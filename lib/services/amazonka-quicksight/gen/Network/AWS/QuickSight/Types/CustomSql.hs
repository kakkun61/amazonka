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
-- Module      : Network.AWS.QuickSight.Types.CustomSql
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.CustomSql where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types.InputColumn

-- | A physical table type built from the results of the custom SQL query.
--
-- /See:/ 'newCustomSql' smart constructor.
data CustomSql = CustomSql'
  { -- | The column schema from the SQL query result set.
    columns :: Prelude.Maybe (Prelude.NonEmpty InputColumn),
    -- | The Amazon Resource Name (ARN) of the data source.
    dataSourceArn :: Prelude.Text,
    -- | A display name for the SQL query result.
    name :: Prelude.Text,
    -- | The SQL query.
    sqlQuery :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CustomSql' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'columns', 'customSql_columns' - The column schema from the SQL query result set.
--
-- 'dataSourceArn', 'customSql_dataSourceArn' - The Amazon Resource Name (ARN) of the data source.
--
-- 'name', 'customSql_name' - A display name for the SQL query result.
--
-- 'sqlQuery', 'customSql_sqlQuery' - The SQL query.
newCustomSql ::
  -- | 'dataSourceArn'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  -- | 'sqlQuery'
  Prelude.Text ->
  CustomSql
newCustomSql pDataSourceArn_ pName_ pSqlQuery_ =
  CustomSql'
    { columns = Prelude.Nothing,
      dataSourceArn = pDataSourceArn_,
      name = pName_,
      sqlQuery = pSqlQuery_
    }

-- | The column schema from the SQL query result set.
customSql_columns :: Lens.Lens' CustomSql (Prelude.Maybe (Prelude.NonEmpty InputColumn))
customSql_columns = Lens.lens (\CustomSql' {columns} -> columns) (\s@CustomSql' {} a -> s {columns = a} :: CustomSql) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name (ARN) of the data source.
customSql_dataSourceArn :: Lens.Lens' CustomSql Prelude.Text
customSql_dataSourceArn = Lens.lens (\CustomSql' {dataSourceArn} -> dataSourceArn) (\s@CustomSql' {} a -> s {dataSourceArn = a} :: CustomSql)

-- | A display name for the SQL query result.
customSql_name :: Lens.Lens' CustomSql Prelude.Text
customSql_name = Lens.lens (\CustomSql' {name} -> name) (\s@CustomSql' {} a -> s {name = a} :: CustomSql)

-- | The SQL query.
customSql_sqlQuery :: Lens.Lens' CustomSql Prelude.Text
customSql_sqlQuery = Lens.lens (\CustomSql' {sqlQuery} -> sqlQuery) (\s@CustomSql' {} a -> s {sqlQuery = a} :: CustomSql)

instance Core.FromJSON CustomSql where
  parseJSON =
    Core.withObject
      "CustomSql"
      ( \x ->
          CustomSql'
            Prelude.<$> (x Core..:? "Columns")
            Prelude.<*> (x Core..: "DataSourceArn")
            Prelude.<*> (x Core..: "Name")
            Prelude.<*> (x Core..: "SqlQuery")
      )

instance Prelude.Hashable CustomSql

instance Prelude.NFData CustomSql

instance Core.ToJSON CustomSql where
  toJSON CustomSql' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Columns" Core..=) Prelude.<$> columns,
            Prelude.Just ("DataSourceArn" Core..= dataSourceArn),
            Prelude.Just ("Name" Core..= name),
            Prelude.Just ("SqlQuery" Core..= sqlQuery)
          ]
      )
