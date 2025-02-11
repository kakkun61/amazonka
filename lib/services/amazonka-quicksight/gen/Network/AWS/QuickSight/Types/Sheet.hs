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
-- Module      : Network.AWS.QuickSight.Types.Sheet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.Sheet where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A /sheet/, which is an object that contains a set of visuals that are
-- viewed together on one page in Amazon QuickSight. Every analysis and
-- dashboard contains at least one sheet. Each sheet contains at least one
-- visualization widget, for example a chart, pivot table, or narrative
-- insight. Sheets can be associated with other components, such as
-- controls, filters, and so on.
--
-- /See:/ 'newSheet' smart constructor.
data Sheet = Sheet'
  { -- | The name of a sheet. This name is displayed on the sheet\'s tab in the
    -- Amazon QuickSight console.
    name :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier associated with a sheet.
    sheetId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Sheet' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'sheet_name' - The name of a sheet. This name is displayed on the sheet\'s tab in the
-- Amazon QuickSight console.
--
-- 'sheetId', 'sheet_sheetId' - The unique identifier associated with a sheet.
newSheet ::
  Sheet
newSheet =
  Sheet'
    { name = Prelude.Nothing,
      sheetId = Prelude.Nothing
    }

-- | The name of a sheet. This name is displayed on the sheet\'s tab in the
-- Amazon QuickSight console.
sheet_name :: Lens.Lens' Sheet (Prelude.Maybe Prelude.Text)
sheet_name = Lens.lens (\Sheet' {name} -> name) (\s@Sheet' {} a -> s {name = a} :: Sheet)

-- | The unique identifier associated with a sheet.
sheet_sheetId :: Lens.Lens' Sheet (Prelude.Maybe Prelude.Text)
sheet_sheetId = Lens.lens (\Sheet' {sheetId} -> sheetId) (\s@Sheet' {} a -> s {sheetId = a} :: Sheet)

instance Core.FromJSON Sheet where
  parseJSON =
    Core.withObject
      "Sheet"
      ( \x ->
          Sheet'
            Prelude.<$> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "SheetId")
      )

instance Prelude.Hashable Sheet

instance Prelude.NFData Sheet
