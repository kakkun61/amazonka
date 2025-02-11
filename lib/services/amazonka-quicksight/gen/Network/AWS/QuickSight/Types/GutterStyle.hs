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
-- Module      : Network.AWS.QuickSight.Types.GutterStyle
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.GutterStyle where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The display options for gutter spacing between tiles on a sheet.
--
-- /See:/ 'newGutterStyle' smart constructor.
data GutterStyle = GutterStyle'
  { -- | This Boolean value controls whether to display a gutter space between
    -- sheet tiles.
    show :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GutterStyle' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'show', 'gutterStyle_show' - This Boolean value controls whether to display a gutter space between
-- sheet tiles.
newGutterStyle ::
  GutterStyle
newGutterStyle = GutterStyle' {show = Prelude.Nothing}

-- | This Boolean value controls whether to display a gutter space between
-- sheet tiles.
gutterStyle_show :: Lens.Lens' GutterStyle (Prelude.Maybe Prelude.Bool)
gutterStyle_show = Lens.lens (\GutterStyle' {show} -> show) (\s@GutterStyle' {} a -> s {show = a} :: GutterStyle)

instance Core.FromJSON GutterStyle where
  parseJSON =
    Core.withObject
      "GutterStyle"
      (\x -> GutterStyle' Prelude.<$> (x Core..:? "Show"))

instance Prelude.Hashable GutterStyle

instance Prelude.NFData GutterStyle

instance Core.ToJSON GutterStyle where
  toJSON GutterStyle' {..} =
    Core.object
      ( Prelude.catMaybes
          [("Show" Core..=) Prelude.<$> show]
      )
