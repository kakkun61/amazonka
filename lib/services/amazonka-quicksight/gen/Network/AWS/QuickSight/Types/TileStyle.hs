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
-- Module      : Network.AWS.QuickSight.Types.TileStyle
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.TileStyle where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types.BorderStyle

-- | Display options related to tiles on a sheet.
--
-- /See:/ 'newTileStyle' smart constructor.
data TileStyle = TileStyle'
  { -- | The border around a tile.
    border :: Prelude.Maybe BorderStyle
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TileStyle' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'border', 'tileStyle_border' - The border around a tile.
newTileStyle ::
  TileStyle
newTileStyle = TileStyle' {border = Prelude.Nothing}

-- | The border around a tile.
tileStyle_border :: Lens.Lens' TileStyle (Prelude.Maybe BorderStyle)
tileStyle_border = Lens.lens (\TileStyle' {border} -> border) (\s@TileStyle' {} a -> s {border = a} :: TileStyle)

instance Core.FromJSON TileStyle where
  parseJSON =
    Core.withObject
      "TileStyle"
      (\x -> TileStyle' Prelude.<$> (x Core..:? "Border"))

instance Prelude.Hashable TileStyle

instance Prelude.NFData TileStyle

instance Core.ToJSON TileStyle where
  toJSON TileStyle' {..} =
    Core.object
      ( Prelude.catMaybes
          [("Border" Core..=) Prelude.<$> border]
      )
