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
-- Module      : Network.AWS.LookoutMetrics.Types.TimestampColumn
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LookoutMetrics.Types.TimestampColumn where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information about the column used to track time in a source
-- data file.
--
-- /See:/ 'newTimestampColumn' smart constructor.
data TimestampColumn = TimestampColumn'
  { -- | The format of the timestamp column.
    columnFormat :: Prelude.Maybe Prelude.Text,
    -- | The name of the timestamp column.
    columnName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TimestampColumn' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'columnFormat', 'timestampColumn_columnFormat' - The format of the timestamp column.
--
-- 'columnName', 'timestampColumn_columnName' - The name of the timestamp column.
newTimestampColumn ::
  TimestampColumn
newTimestampColumn =
  TimestampColumn'
    { columnFormat = Prelude.Nothing,
      columnName = Prelude.Nothing
    }

-- | The format of the timestamp column.
timestampColumn_columnFormat :: Lens.Lens' TimestampColumn (Prelude.Maybe Prelude.Text)
timestampColumn_columnFormat = Lens.lens (\TimestampColumn' {columnFormat} -> columnFormat) (\s@TimestampColumn' {} a -> s {columnFormat = a} :: TimestampColumn)

-- | The name of the timestamp column.
timestampColumn_columnName :: Lens.Lens' TimestampColumn (Prelude.Maybe Prelude.Text)
timestampColumn_columnName = Lens.lens (\TimestampColumn' {columnName} -> columnName) (\s@TimestampColumn' {} a -> s {columnName = a} :: TimestampColumn)

instance Core.FromJSON TimestampColumn where
  parseJSON =
    Core.withObject
      "TimestampColumn"
      ( \x ->
          TimestampColumn'
            Prelude.<$> (x Core..:? "ColumnFormat")
            Prelude.<*> (x Core..:? "ColumnName")
      )

instance Prelude.Hashable TimestampColumn

instance Prelude.NFData TimestampColumn

instance Core.ToJSON TimestampColumn where
  toJSON TimestampColumn' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ColumnFormat" Core..=) Prelude.<$> columnFormat,
            ("ColumnName" Core..=) Prelude.<$> columnName
          ]
      )
