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
-- Module      : Network.AWS.LicenseManager.Types.EntitlementData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LicenseManager.Types.EntitlementData where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LicenseManager.Types.EntitlementDataUnit
import qualified Network.AWS.Prelude as Prelude

-- | Data associated with an entitlement resource.
--
-- /See:/ 'newEntitlementData' smart constructor.
data EntitlementData = EntitlementData'
  { -- | Entitlement data value.
    value :: Prelude.Maybe Prelude.Text,
    -- | Entitlement data name.
    name :: Prelude.Text,
    -- | Entitlement data unit.
    unit :: EntitlementDataUnit
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EntitlementData' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'value', 'entitlementData_value' - Entitlement data value.
--
-- 'name', 'entitlementData_name' - Entitlement data name.
--
-- 'unit', 'entitlementData_unit' - Entitlement data unit.
newEntitlementData ::
  -- | 'name'
  Prelude.Text ->
  -- | 'unit'
  EntitlementDataUnit ->
  EntitlementData
newEntitlementData pName_ pUnit_ =
  EntitlementData'
    { value = Prelude.Nothing,
      name = pName_,
      unit = pUnit_
    }

-- | Entitlement data value.
entitlementData_value :: Lens.Lens' EntitlementData (Prelude.Maybe Prelude.Text)
entitlementData_value = Lens.lens (\EntitlementData' {value} -> value) (\s@EntitlementData' {} a -> s {value = a} :: EntitlementData)

-- | Entitlement data name.
entitlementData_name :: Lens.Lens' EntitlementData Prelude.Text
entitlementData_name = Lens.lens (\EntitlementData' {name} -> name) (\s@EntitlementData' {} a -> s {name = a} :: EntitlementData)

-- | Entitlement data unit.
entitlementData_unit :: Lens.Lens' EntitlementData EntitlementDataUnit
entitlementData_unit = Lens.lens (\EntitlementData' {unit} -> unit) (\s@EntitlementData' {} a -> s {unit = a} :: EntitlementData)

instance Core.FromJSON EntitlementData where
  parseJSON =
    Core.withObject
      "EntitlementData"
      ( \x ->
          EntitlementData'
            Prelude.<$> (x Core..:? "Value")
            Prelude.<*> (x Core..: "Name")
            Prelude.<*> (x Core..: "Unit")
      )

instance Prelude.Hashable EntitlementData

instance Prelude.NFData EntitlementData

instance Core.ToJSON EntitlementData where
  toJSON EntitlementData' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Value" Core..=) Prelude.<$> value,
            Prelude.Just ("Name" Core..= name),
            Prelude.Just ("Unit" Core..= unit)
          ]
      )
