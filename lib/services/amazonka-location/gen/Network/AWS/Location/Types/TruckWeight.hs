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
-- Module      : Network.AWS.Location.Types.TruckWeight
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Location.Types.TruckWeight where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Location.Types.VehicleWeightUnit
import qualified Network.AWS.Prelude as Prelude

-- | Contains details about the truck\'s weight specifications. Used to avoid
-- roads that can\'t support or allow the total weight for requests that
-- specify @TravelMode@ as @Truck@.
--
-- /See:/ 'newTruckWeight' smart constructor.
data TruckWeight = TruckWeight'
  { -- | The total weight of the truck.
    --
    -- -   For example, @3500@.
    total :: Prelude.Maybe Prelude.Double,
    -- | The unit of measurement to use for the truck weight.
    --
    -- Default Value: @Kilograms@
    unit :: Prelude.Maybe VehicleWeightUnit
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TruckWeight' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'total', 'truckWeight_total' - The total weight of the truck.
--
-- -   For example, @3500@.
--
-- 'unit', 'truckWeight_unit' - The unit of measurement to use for the truck weight.
--
-- Default Value: @Kilograms@
newTruckWeight ::
  TruckWeight
newTruckWeight =
  TruckWeight'
    { total = Prelude.Nothing,
      unit = Prelude.Nothing
    }

-- | The total weight of the truck.
--
-- -   For example, @3500@.
truckWeight_total :: Lens.Lens' TruckWeight (Prelude.Maybe Prelude.Double)
truckWeight_total = Lens.lens (\TruckWeight' {total} -> total) (\s@TruckWeight' {} a -> s {total = a} :: TruckWeight)

-- | The unit of measurement to use for the truck weight.
--
-- Default Value: @Kilograms@
truckWeight_unit :: Lens.Lens' TruckWeight (Prelude.Maybe VehicleWeightUnit)
truckWeight_unit = Lens.lens (\TruckWeight' {unit} -> unit) (\s@TruckWeight' {} a -> s {unit = a} :: TruckWeight)

instance Prelude.Hashable TruckWeight

instance Prelude.NFData TruckWeight

instance Core.ToJSON TruckWeight where
  toJSON TruckWeight' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Total" Core..=) Prelude.<$> total,
            ("Unit" Core..=) Prelude.<$> unit
          ]
      )
