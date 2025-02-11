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
-- Module      : Network.AWS.IoT1ClickProjects.Types.PlacementSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT1ClickProjects.Types.PlacementSummary where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object providing summary information for a particular placement.
--
-- /See:/ 'newPlacementSummary' smart constructor.
data PlacementSummary = PlacementSummary'
  { -- | The name of the project containing the placement.
    projectName :: Prelude.Text,
    -- | The name of the placement being summarized.
    placementName :: Prelude.Text,
    -- | The date when the placement was originally created, in UNIX epoch time
    -- format.
    createdDate :: Core.POSIX,
    -- | The date when the placement was last updated, in UNIX epoch time format.
    -- If the placement was not updated, then @createdDate@ and @updatedDate@
    -- are the same.
    updatedDate :: Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PlacementSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'projectName', 'placementSummary_projectName' - The name of the project containing the placement.
--
-- 'placementName', 'placementSummary_placementName' - The name of the placement being summarized.
--
-- 'createdDate', 'placementSummary_createdDate' - The date when the placement was originally created, in UNIX epoch time
-- format.
--
-- 'updatedDate', 'placementSummary_updatedDate' - The date when the placement was last updated, in UNIX epoch time format.
-- If the placement was not updated, then @createdDate@ and @updatedDate@
-- are the same.
newPlacementSummary ::
  -- | 'projectName'
  Prelude.Text ->
  -- | 'placementName'
  Prelude.Text ->
  -- | 'createdDate'
  Prelude.UTCTime ->
  -- | 'updatedDate'
  Prelude.UTCTime ->
  PlacementSummary
newPlacementSummary
  pProjectName_
  pPlacementName_
  pCreatedDate_
  pUpdatedDate_ =
    PlacementSummary'
      { projectName = pProjectName_,
        placementName = pPlacementName_,
        createdDate = Core._Time Lens.# pCreatedDate_,
        updatedDate = Core._Time Lens.# pUpdatedDate_
      }

-- | The name of the project containing the placement.
placementSummary_projectName :: Lens.Lens' PlacementSummary Prelude.Text
placementSummary_projectName = Lens.lens (\PlacementSummary' {projectName} -> projectName) (\s@PlacementSummary' {} a -> s {projectName = a} :: PlacementSummary)

-- | The name of the placement being summarized.
placementSummary_placementName :: Lens.Lens' PlacementSummary Prelude.Text
placementSummary_placementName = Lens.lens (\PlacementSummary' {placementName} -> placementName) (\s@PlacementSummary' {} a -> s {placementName = a} :: PlacementSummary)

-- | The date when the placement was originally created, in UNIX epoch time
-- format.
placementSummary_createdDate :: Lens.Lens' PlacementSummary Prelude.UTCTime
placementSummary_createdDate = Lens.lens (\PlacementSummary' {createdDate} -> createdDate) (\s@PlacementSummary' {} a -> s {createdDate = a} :: PlacementSummary) Prelude.. Core._Time

-- | The date when the placement was last updated, in UNIX epoch time format.
-- If the placement was not updated, then @createdDate@ and @updatedDate@
-- are the same.
placementSummary_updatedDate :: Lens.Lens' PlacementSummary Prelude.UTCTime
placementSummary_updatedDate = Lens.lens (\PlacementSummary' {updatedDate} -> updatedDate) (\s@PlacementSummary' {} a -> s {updatedDate = a} :: PlacementSummary) Prelude.. Core._Time

instance Core.FromJSON PlacementSummary where
  parseJSON =
    Core.withObject
      "PlacementSummary"
      ( \x ->
          PlacementSummary'
            Prelude.<$> (x Core..: "projectName")
            Prelude.<*> (x Core..: "placementName")
            Prelude.<*> (x Core..: "createdDate")
            Prelude.<*> (x Core..: "updatedDate")
      )

instance Prelude.Hashable PlacementSummary

instance Prelude.NFData PlacementSummary
