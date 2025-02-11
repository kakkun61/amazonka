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
-- Module      : Network.AWS.Location.Types.LegGeometry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Location.Types.LegGeometry where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains the geometry details for each path between a pair of positions.
-- Used in plotting a route leg on a map.
--
-- /See:/ 'newLegGeometry' smart constructor.
data LegGeometry = LegGeometry'
  { -- | An ordered list of positions used to plot a route on a map.
    --
    -- The first position is closest to the start position for the leg, and the
    -- last position is the closest to the end position for the leg.
    --
    -- -   For example,
    --     @[[-123.117, 49.284],[-123.115, 49.285],[-123.115, 49.285]]@
    lineString :: Prelude.Maybe (Prelude.NonEmpty (Core.Sensitive (Prelude.NonEmpty Prelude.Double)))
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LegGeometry' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lineString', 'legGeometry_lineString' - An ordered list of positions used to plot a route on a map.
--
-- The first position is closest to the start position for the leg, and the
-- last position is the closest to the end position for the leg.
--
-- -   For example,
--     @[[-123.117, 49.284],[-123.115, 49.285],[-123.115, 49.285]]@
newLegGeometry ::
  LegGeometry
newLegGeometry =
  LegGeometry' {lineString = Prelude.Nothing}

-- | An ordered list of positions used to plot a route on a map.
--
-- The first position is closest to the start position for the leg, and the
-- last position is the closest to the end position for the leg.
--
-- -   For example,
--     @[[-123.117, 49.284],[-123.115, 49.285],[-123.115, 49.285]]@
legGeometry_lineString :: Lens.Lens' LegGeometry (Prelude.Maybe (Prelude.NonEmpty (Prelude.NonEmpty Prelude.Double)))
legGeometry_lineString = Lens.lens (\LegGeometry' {lineString} -> lineString) (\s@LegGeometry' {} a -> s {lineString = a} :: LegGeometry) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON LegGeometry where
  parseJSON =
    Core.withObject
      "LegGeometry"
      ( \x ->
          LegGeometry' Prelude.<$> (x Core..:? "LineString")
      )

instance Prelude.Hashable LegGeometry

instance Prelude.NFData LegGeometry
