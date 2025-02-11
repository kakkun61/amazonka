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
-- Module      : Network.AWS.QuickSight.Types.BorderStyle
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.BorderStyle where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The display options for tile borders for visuals.
--
-- /See:/ 'newBorderStyle' smart constructor.
data BorderStyle = BorderStyle'
  { -- | The option to enable display of borders for visuals.
    show :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BorderStyle' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'show', 'borderStyle_show' - The option to enable display of borders for visuals.
newBorderStyle ::
  BorderStyle
newBorderStyle = BorderStyle' {show = Prelude.Nothing}

-- | The option to enable display of borders for visuals.
borderStyle_show :: Lens.Lens' BorderStyle (Prelude.Maybe Prelude.Bool)
borderStyle_show = Lens.lens (\BorderStyle' {show} -> show) (\s@BorderStyle' {} a -> s {show = a} :: BorderStyle)

instance Core.FromJSON BorderStyle where
  parseJSON =
    Core.withObject
      "BorderStyle"
      (\x -> BorderStyle' Prelude.<$> (x Core..:? "Show"))

instance Prelude.Hashable BorderStyle

instance Prelude.NFData BorderStyle

instance Core.ToJSON BorderStyle where
  toJSON BorderStyle' {..} =
    Core.object
      ( Prelude.catMaybes
          [("Show" Core..=) Prelude.<$> show]
      )
