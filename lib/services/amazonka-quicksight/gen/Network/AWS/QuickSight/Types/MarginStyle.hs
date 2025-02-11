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
-- Module      : Network.AWS.QuickSight.Types.MarginStyle
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.MarginStyle where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The display options for margins around the outside edge of sheets.
--
-- /See:/ 'newMarginStyle' smart constructor.
data MarginStyle = MarginStyle'
  { -- | This Boolean value controls whether to display sheet margins.
    show :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MarginStyle' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'show', 'marginStyle_show' - This Boolean value controls whether to display sheet margins.
newMarginStyle ::
  MarginStyle
newMarginStyle = MarginStyle' {show = Prelude.Nothing}

-- | This Boolean value controls whether to display sheet margins.
marginStyle_show :: Lens.Lens' MarginStyle (Prelude.Maybe Prelude.Bool)
marginStyle_show = Lens.lens (\MarginStyle' {show} -> show) (\s@MarginStyle' {} a -> s {show = a} :: MarginStyle)

instance Core.FromJSON MarginStyle where
  parseJSON =
    Core.withObject
      "MarginStyle"
      (\x -> MarginStyle' Prelude.<$> (x Core..:? "Show"))

instance Prelude.Hashable MarginStyle

instance Prelude.NFData MarginStyle

instance Core.ToJSON MarginStyle where
  toJSON MarginStyle' {..} =
    Core.object
      ( Prelude.catMaybes
          [("Show" Core..=) Prelude.<$> show]
      )
