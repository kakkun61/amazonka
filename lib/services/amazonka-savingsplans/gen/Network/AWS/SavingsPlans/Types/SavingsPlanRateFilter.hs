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
-- Module      : Network.AWS.SavingsPlans.Types.SavingsPlanRateFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SavingsPlans.Types.SavingsPlanRateFilter where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SavingsPlans.Types.SavingsPlanRateFilterName

-- | Information about a filter.
--
-- /See:/ 'newSavingsPlanRateFilter' smart constructor.
data SavingsPlanRateFilter = SavingsPlanRateFilter'
  { -- | The filter values.
    values :: Prelude.Maybe [Prelude.Text],
    -- | The filter name.
    name :: Prelude.Maybe SavingsPlanRateFilterName
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SavingsPlanRateFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'values', 'savingsPlanRateFilter_values' - The filter values.
--
-- 'name', 'savingsPlanRateFilter_name' - The filter name.
newSavingsPlanRateFilter ::
  SavingsPlanRateFilter
newSavingsPlanRateFilter =
  SavingsPlanRateFilter'
    { values = Prelude.Nothing,
      name = Prelude.Nothing
    }

-- | The filter values.
savingsPlanRateFilter_values :: Lens.Lens' SavingsPlanRateFilter (Prelude.Maybe [Prelude.Text])
savingsPlanRateFilter_values = Lens.lens (\SavingsPlanRateFilter' {values} -> values) (\s@SavingsPlanRateFilter' {} a -> s {values = a} :: SavingsPlanRateFilter) Prelude.. Lens.mapping Lens.coerced

-- | The filter name.
savingsPlanRateFilter_name :: Lens.Lens' SavingsPlanRateFilter (Prelude.Maybe SavingsPlanRateFilterName)
savingsPlanRateFilter_name = Lens.lens (\SavingsPlanRateFilter' {name} -> name) (\s@SavingsPlanRateFilter' {} a -> s {name = a} :: SavingsPlanRateFilter)

instance Prelude.Hashable SavingsPlanRateFilter

instance Prelude.NFData SavingsPlanRateFilter

instance Core.ToJSON SavingsPlanRateFilter where
  toJSON SavingsPlanRateFilter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("values" Core..=) Prelude.<$> values,
            ("name" Core..=) Prelude.<$> name
          ]
      )
