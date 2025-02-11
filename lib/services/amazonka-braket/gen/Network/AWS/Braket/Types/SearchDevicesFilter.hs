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
-- Module      : Network.AWS.Braket.Types.SearchDevicesFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Braket.Types.SearchDevicesFilter where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The filter to use for searching devices.
--
-- /See:/ 'newSearchDevicesFilter' smart constructor.
data SearchDevicesFilter = SearchDevicesFilter'
  { -- | The name to use to filter results.
    name :: Prelude.Text,
    -- | The values to use to filter results.
    values :: Prelude.NonEmpty Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SearchDevicesFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'searchDevicesFilter_name' - The name to use to filter results.
--
-- 'values', 'searchDevicesFilter_values' - The values to use to filter results.
newSearchDevicesFilter ::
  -- | 'name'
  Prelude.Text ->
  -- | 'values'
  Prelude.NonEmpty Prelude.Text ->
  SearchDevicesFilter
newSearchDevicesFilter pName_ pValues_ =
  SearchDevicesFilter'
    { name = pName_,
      values = Lens.coerced Lens.# pValues_
    }

-- | The name to use to filter results.
searchDevicesFilter_name :: Lens.Lens' SearchDevicesFilter Prelude.Text
searchDevicesFilter_name = Lens.lens (\SearchDevicesFilter' {name} -> name) (\s@SearchDevicesFilter' {} a -> s {name = a} :: SearchDevicesFilter)

-- | The values to use to filter results.
searchDevicesFilter_values :: Lens.Lens' SearchDevicesFilter (Prelude.NonEmpty Prelude.Text)
searchDevicesFilter_values = Lens.lens (\SearchDevicesFilter' {values} -> values) (\s@SearchDevicesFilter' {} a -> s {values = a} :: SearchDevicesFilter) Prelude.. Lens.coerced

instance Prelude.Hashable SearchDevicesFilter

instance Prelude.NFData SearchDevicesFilter

instance Core.ToJSON SearchDevicesFilter where
  toJSON SearchDevicesFilter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("name" Core..= name),
            Prelude.Just ("values" Core..= values)
          ]
      )
