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
-- Module      : Network.AWS.LicenseManager.Types.InventoryFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LicenseManager.Types.InventoryFilter where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LicenseManager.Types.InventoryFilterCondition
import qualified Network.AWS.Prelude as Prelude

-- | An inventory filter.
--
-- /See:/ 'newInventoryFilter' smart constructor.
data InventoryFilter = InventoryFilter'
  { -- | Value of the filter.
    value :: Prelude.Maybe Prelude.Text,
    -- | Name of the filter.
    name :: Prelude.Text,
    -- | Condition of the filter.
    condition :: InventoryFilterCondition
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InventoryFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'value', 'inventoryFilter_value' - Value of the filter.
--
-- 'name', 'inventoryFilter_name' - Name of the filter.
--
-- 'condition', 'inventoryFilter_condition' - Condition of the filter.
newInventoryFilter ::
  -- | 'name'
  Prelude.Text ->
  -- | 'condition'
  InventoryFilterCondition ->
  InventoryFilter
newInventoryFilter pName_ pCondition_ =
  InventoryFilter'
    { value = Prelude.Nothing,
      name = pName_,
      condition = pCondition_
    }

-- | Value of the filter.
inventoryFilter_value :: Lens.Lens' InventoryFilter (Prelude.Maybe Prelude.Text)
inventoryFilter_value = Lens.lens (\InventoryFilter' {value} -> value) (\s@InventoryFilter' {} a -> s {value = a} :: InventoryFilter)

-- | Name of the filter.
inventoryFilter_name :: Lens.Lens' InventoryFilter Prelude.Text
inventoryFilter_name = Lens.lens (\InventoryFilter' {name} -> name) (\s@InventoryFilter' {} a -> s {name = a} :: InventoryFilter)

-- | Condition of the filter.
inventoryFilter_condition :: Lens.Lens' InventoryFilter InventoryFilterCondition
inventoryFilter_condition = Lens.lens (\InventoryFilter' {condition} -> condition) (\s@InventoryFilter' {} a -> s {condition = a} :: InventoryFilter)

instance Prelude.Hashable InventoryFilter

instance Prelude.NFData InventoryFilter

instance Core.ToJSON InventoryFilter where
  toJSON InventoryFilter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Value" Core..=) Prelude.<$> value,
            Prelude.Just ("Name" Core..= name),
            Prelude.Just ("Condition" Core..= condition)
          ]
      )
