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
-- Module      : Network.AWS.QuickSight.Types.ColumnDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.ColumnDescription where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Metadata that contains a description for a column.
--
-- /See:/ 'newColumnDescription' smart constructor.
data ColumnDescription = ColumnDescription'
  { -- | The text of a description for a column.
    text :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ColumnDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'text', 'columnDescription_text' - The text of a description for a column.
newColumnDescription ::
  ColumnDescription
newColumnDescription =
  ColumnDescription' {text = Prelude.Nothing}

-- | The text of a description for a column.
columnDescription_text :: Lens.Lens' ColumnDescription (Prelude.Maybe Prelude.Text)
columnDescription_text = Lens.lens (\ColumnDescription' {text} -> text) (\s@ColumnDescription' {} a -> s {text = a} :: ColumnDescription)

instance Core.FromJSON ColumnDescription where
  parseJSON =
    Core.withObject
      "ColumnDescription"
      ( \x ->
          ColumnDescription' Prelude.<$> (x Core..:? "Text")
      )

instance Prelude.Hashable ColumnDescription

instance Prelude.NFData ColumnDescription

instance Core.ToJSON ColumnDescription where
  toJSON ColumnDescription' {..} =
    Core.object
      ( Prelude.catMaybes
          [("Text" Core..=) Prelude.<$> text]
      )
