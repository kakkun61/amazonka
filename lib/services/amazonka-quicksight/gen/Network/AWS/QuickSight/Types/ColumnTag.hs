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
-- Module      : Network.AWS.QuickSight.Types.ColumnTag
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.ColumnTag where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types.ColumnDescription
import Network.AWS.QuickSight.Types.GeoSpatialDataRole

-- | A tag for a column in a TagColumnOperation structure. This is a variant
-- type structure. For this structure to be valid, only one of the
-- attributes can be non-null.
--
-- /See:/ 'newColumnTag' smart constructor.
data ColumnTag = ColumnTag'
  { -- | A description for a column.
    columnDescription :: Prelude.Maybe ColumnDescription,
    -- | A geospatial role for a column.
    columnGeographicRole :: Prelude.Maybe GeoSpatialDataRole
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ColumnTag' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'columnDescription', 'columnTag_columnDescription' - A description for a column.
--
-- 'columnGeographicRole', 'columnTag_columnGeographicRole' - A geospatial role for a column.
newColumnTag ::
  ColumnTag
newColumnTag =
  ColumnTag'
    { columnDescription = Prelude.Nothing,
      columnGeographicRole = Prelude.Nothing
    }

-- | A description for a column.
columnTag_columnDescription :: Lens.Lens' ColumnTag (Prelude.Maybe ColumnDescription)
columnTag_columnDescription = Lens.lens (\ColumnTag' {columnDescription} -> columnDescription) (\s@ColumnTag' {} a -> s {columnDescription = a} :: ColumnTag)

-- | A geospatial role for a column.
columnTag_columnGeographicRole :: Lens.Lens' ColumnTag (Prelude.Maybe GeoSpatialDataRole)
columnTag_columnGeographicRole = Lens.lens (\ColumnTag' {columnGeographicRole} -> columnGeographicRole) (\s@ColumnTag' {} a -> s {columnGeographicRole = a} :: ColumnTag)

instance Core.FromJSON ColumnTag where
  parseJSON =
    Core.withObject
      "ColumnTag"
      ( \x ->
          ColumnTag'
            Prelude.<$> (x Core..:? "ColumnDescription")
            Prelude.<*> (x Core..:? "ColumnGeographicRole")
      )

instance Prelude.Hashable ColumnTag

instance Prelude.NFData ColumnTag

instance Core.ToJSON ColumnTag where
  toJSON ColumnTag' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ColumnDescription" Core..=)
              Prelude.<$> columnDescription,
            ("ColumnGeographicRole" Core..=)
              Prelude.<$> columnGeographicRole
          ]
      )
