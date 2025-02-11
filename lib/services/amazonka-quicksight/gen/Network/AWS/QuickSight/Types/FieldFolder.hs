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
-- Module      : Network.AWS.QuickSight.Types.FieldFolder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.FieldFolder where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A FieldFolder element is a folder that contains fields and nested
-- subfolders.
--
-- /See:/ 'newFieldFolder' smart constructor.
data FieldFolder = FieldFolder'
  { -- | A folder has a list of columns. A column can only be in one folder.
    columns :: Prelude.Maybe [Prelude.Text],
    -- | The description for a field folder.
    description :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FieldFolder' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'columns', 'fieldFolder_columns' - A folder has a list of columns. A column can only be in one folder.
--
-- 'description', 'fieldFolder_description' - The description for a field folder.
newFieldFolder ::
  FieldFolder
newFieldFolder =
  FieldFolder'
    { columns = Prelude.Nothing,
      description = Prelude.Nothing
    }

-- | A folder has a list of columns. A column can only be in one folder.
fieldFolder_columns :: Lens.Lens' FieldFolder (Prelude.Maybe [Prelude.Text])
fieldFolder_columns = Lens.lens (\FieldFolder' {columns} -> columns) (\s@FieldFolder' {} a -> s {columns = a} :: FieldFolder) Prelude.. Lens.mapping Lens.coerced

-- | The description for a field folder.
fieldFolder_description :: Lens.Lens' FieldFolder (Prelude.Maybe Prelude.Text)
fieldFolder_description = Lens.lens (\FieldFolder' {description} -> description) (\s@FieldFolder' {} a -> s {description = a} :: FieldFolder)

instance Core.FromJSON FieldFolder where
  parseJSON =
    Core.withObject
      "FieldFolder"
      ( \x ->
          FieldFolder'
            Prelude.<$> (x Core..:? "columns" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "description")
      )

instance Prelude.Hashable FieldFolder

instance Prelude.NFData FieldFolder

instance Core.ToJSON FieldFolder where
  toJSON FieldFolder' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("columns" Core..=) Prelude.<$> columns,
            ("description" Core..=) Prelude.<$> description
          ]
      )
