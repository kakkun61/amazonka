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
-- Module      : Network.AWS.DataSync.Types.LocationFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DataSync.Types.LocationFilter where

import qualified Network.AWS.Core as Core
import Network.AWS.DataSync.Types.LocationFilterName
import Network.AWS.DataSync.Types.Operator
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | You can use API filters to narrow down the list of resources returned by
-- @ListLocations@. For example, to retrieve all your Amazon S3 locations,
-- you can use @ListLocations@ with filter name @LocationType S3@ and
-- @Operator Equals@.
--
-- /See:/ 'newLocationFilter' smart constructor.
data LocationFilter = LocationFilter'
  { -- | The name of the filter being used. Each API call supports a list of
    -- filters that are available for it (for example, @LocationType@ for
    -- @ListLocations@).
    name :: LocationFilterName,
    -- | The values that you want to filter for. For example, you might want to
    -- display only Amazon S3 locations.
    values :: [Prelude.Text],
    -- | The operator that is used to compare filter values (for example,
    -- @Equals@ or @Contains@). For more about API filtering operators, see
    -- <https://docs.aws.amazon.com/datasync/latest/userguide/query-resources.html API filters for ListTasks and ListLocations>.
    operator :: Operator
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LocationFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'locationFilter_name' - The name of the filter being used. Each API call supports a list of
-- filters that are available for it (for example, @LocationType@ for
-- @ListLocations@).
--
-- 'values', 'locationFilter_values' - The values that you want to filter for. For example, you might want to
-- display only Amazon S3 locations.
--
-- 'operator', 'locationFilter_operator' - The operator that is used to compare filter values (for example,
-- @Equals@ or @Contains@). For more about API filtering operators, see
-- <https://docs.aws.amazon.com/datasync/latest/userguide/query-resources.html API filters for ListTasks and ListLocations>.
newLocationFilter ::
  -- | 'name'
  LocationFilterName ->
  -- | 'operator'
  Operator ->
  LocationFilter
newLocationFilter pName_ pOperator_ =
  LocationFilter'
    { name = pName_,
      values = Prelude.mempty,
      operator = pOperator_
    }

-- | The name of the filter being used. Each API call supports a list of
-- filters that are available for it (for example, @LocationType@ for
-- @ListLocations@).
locationFilter_name :: Lens.Lens' LocationFilter LocationFilterName
locationFilter_name = Lens.lens (\LocationFilter' {name} -> name) (\s@LocationFilter' {} a -> s {name = a} :: LocationFilter)

-- | The values that you want to filter for. For example, you might want to
-- display only Amazon S3 locations.
locationFilter_values :: Lens.Lens' LocationFilter [Prelude.Text]
locationFilter_values = Lens.lens (\LocationFilter' {values} -> values) (\s@LocationFilter' {} a -> s {values = a} :: LocationFilter) Prelude.. Lens.coerced

-- | The operator that is used to compare filter values (for example,
-- @Equals@ or @Contains@). For more about API filtering operators, see
-- <https://docs.aws.amazon.com/datasync/latest/userguide/query-resources.html API filters for ListTasks and ListLocations>.
locationFilter_operator :: Lens.Lens' LocationFilter Operator
locationFilter_operator = Lens.lens (\LocationFilter' {operator} -> operator) (\s@LocationFilter' {} a -> s {operator = a} :: LocationFilter)

instance Prelude.Hashable LocationFilter

instance Prelude.NFData LocationFilter

instance Core.ToJSON LocationFilter where
  toJSON LocationFilter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Name" Core..= name),
            Prelude.Just ("Values" Core..= values),
            Prelude.Just ("Operator" Core..= operator)
          ]
      )
