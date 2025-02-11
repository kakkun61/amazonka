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
-- Module      : Network.AWS.DataSync.Types.FilterRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DataSync.Types.FilterRule where

import qualified Network.AWS.Core as Core
import Network.AWS.DataSync.Types.FilterType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Specifies which files, folders, and objects to include or exclude when
-- transferring files from source to destination.
--
-- /See:/ 'newFilterRule' smart constructor.
data FilterRule = FilterRule'
  { -- | The type of filter rule to apply. DataSync only supports the
    -- SIMPLE_PATTERN rule type.
    filterType :: Prelude.Maybe FilterType,
    -- | A single filter string that consists of the patterns to include or
    -- exclude. The patterns are delimited by \"|\" (that is, a pipe), for
    -- example: @\/folder1|\/folder2@
    value :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FilterRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'filterType', 'filterRule_filterType' - The type of filter rule to apply. DataSync only supports the
-- SIMPLE_PATTERN rule type.
--
-- 'value', 'filterRule_value' - A single filter string that consists of the patterns to include or
-- exclude. The patterns are delimited by \"|\" (that is, a pipe), for
-- example: @\/folder1|\/folder2@
newFilterRule ::
  FilterRule
newFilterRule =
  FilterRule'
    { filterType = Prelude.Nothing,
      value = Prelude.Nothing
    }

-- | The type of filter rule to apply. DataSync only supports the
-- SIMPLE_PATTERN rule type.
filterRule_filterType :: Lens.Lens' FilterRule (Prelude.Maybe FilterType)
filterRule_filterType = Lens.lens (\FilterRule' {filterType} -> filterType) (\s@FilterRule' {} a -> s {filterType = a} :: FilterRule)

-- | A single filter string that consists of the patterns to include or
-- exclude. The patterns are delimited by \"|\" (that is, a pipe), for
-- example: @\/folder1|\/folder2@
filterRule_value :: Lens.Lens' FilterRule (Prelude.Maybe Prelude.Text)
filterRule_value = Lens.lens (\FilterRule' {value} -> value) (\s@FilterRule' {} a -> s {value = a} :: FilterRule)

instance Core.FromJSON FilterRule where
  parseJSON =
    Core.withObject
      "FilterRule"
      ( \x ->
          FilterRule'
            Prelude.<$> (x Core..:? "FilterType")
            Prelude.<*> (x Core..:? "Value")
      )

instance Prelude.Hashable FilterRule

instance Prelude.NFData FilterRule

instance Core.ToJSON FilterRule where
  toJSON FilterRule' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("FilterType" Core..=) Prelude.<$> filterType,
            ("Value" Core..=) Prelude.<$> value
          ]
      )
