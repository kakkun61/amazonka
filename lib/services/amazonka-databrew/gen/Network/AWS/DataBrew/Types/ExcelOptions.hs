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
-- Module      : Network.AWS.DataBrew.Types.ExcelOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DataBrew.Types.ExcelOptions where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Represents a set of options that define how DataBrew will interpret a
-- Microsoft Excel file when creating a dataset from that file.
--
-- /See:/ 'newExcelOptions' smart constructor.
data ExcelOptions = ExcelOptions'
  { -- | One or more sheet numbers in the Excel file that will be included in the
    -- dataset.
    sheetIndexes :: Prelude.Maybe (Prelude.NonEmpty Prelude.Natural),
    -- | One or more named sheets in the Excel file that will be included in the
    -- dataset.
    sheetNames :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | A variable that specifies whether the first row in the file is parsed as
    -- the header. If this value is false, column names are auto-generated.
    headerRow :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ExcelOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sheetIndexes', 'excelOptions_sheetIndexes' - One or more sheet numbers in the Excel file that will be included in the
-- dataset.
--
-- 'sheetNames', 'excelOptions_sheetNames' - One or more named sheets in the Excel file that will be included in the
-- dataset.
--
-- 'headerRow', 'excelOptions_headerRow' - A variable that specifies whether the first row in the file is parsed as
-- the header. If this value is false, column names are auto-generated.
newExcelOptions ::
  ExcelOptions
newExcelOptions =
  ExcelOptions'
    { sheetIndexes = Prelude.Nothing,
      sheetNames = Prelude.Nothing,
      headerRow = Prelude.Nothing
    }

-- | One or more sheet numbers in the Excel file that will be included in the
-- dataset.
excelOptions_sheetIndexes :: Lens.Lens' ExcelOptions (Prelude.Maybe (Prelude.NonEmpty Prelude.Natural))
excelOptions_sheetIndexes = Lens.lens (\ExcelOptions' {sheetIndexes} -> sheetIndexes) (\s@ExcelOptions' {} a -> s {sheetIndexes = a} :: ExcelOptions) Prelude.. Lens.mapping Lens.coerced

-- | One or more named sheets in the Excel file that will be included in the
-- dataset.
excelOptions_sheetNames :: Lens.Lens' ExcelOptions (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
excelOptions_sheetNames = Lens.lens (\ExcelOptions' {sheetNames} -> sheetNames) (\s@ExcelOptions' {} a -> s {sheetNames = a} :: ExcelOptions) Prelude.. Lens.mapping Lens.coerced

-- | A variable that specifies whether the first row in the file is parsed as
-- the header. If this value is false, column names are auto-generated.
excelOptions_headerRow :: Lens.Lens' ExcelOptions (Prelude.Maybe Prelude.Bool)
excelOptions_headerRow = Lens.lens (\ExcelOptions' {headerRow} -> headerRow) (\s@ExcelOptions' {} a -> s {headerRow = a} :: ExcelOptions)

instance Core.FromJSON ExcelOptions where
  parseJSON =
    Core.withObject
      "ExcelOptions"
      ( \x ->
          ExcelOptions'
            Prelude.<$> (x Core..:? "SheetIndexes")
            Prelude.<*> (x Core..:? "SheetNames")
            Prelude.<*> (x Core..:? "HeaderRow")
      )

instance Prelude.Hashable ExcelOptions

instance Prelude.NFData ExcelOptions

instance Core.ToJSON ExcelOptions where
  toJSON ExcelOptions' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SheetIndexes" Core..=) Prelude.<$> sheetIndexes,
            ("SheetNames" Core..=) Prelude.<$> sheetNames,
            ("HeaderRow" Core..=) Prelude.<$> headerRow
          ]
      )
