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
-- Module      : Network.AWS.DataSync.Types.TaskFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DataSync.Types.TaskFilter where

import qualified Network.AWS.Core as Core
import Network.AWS.DataSync.Types.Operator
import Network.AWS.DataSync.Types.TaskFilterName
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | You can use API filters to narrow down the list of resources returned by
-- @ListTasks@. For example, to retrieve all tasks on a source location,
-- you can use @ListTasks@ with filter name @LocationId@ and
-- @Operator Equals@ with the ARN for the location.
--
-- /See:/ 'newTaskFilter' smart constructor.
data TaskFilter = TaskFilter'
  { -- | The name of the filter being used. Each API call supports a list of
    -- filters that are available for it. For example, @LocationId@ for
    -- @ListTasks@.
    name :: TaskFilterName,
    -- | The values that you want to filter for. For example, you might want to
    -- display only tasks for a specific destination location.
    values :: [Prelude.Text],
    -- | The operator that is used to compare filter values (for example,
    -- @Equals@ or @Contains@). For more about API filtering operators, see
    -- <https://docs.aws.amazon.com/datasync/latest/userguide/query-resources.html API filters for ListTasks and ListLocations>.
    operator :: Operator
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TaskFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'taskFilter_name' - The name of the filter being used. Each API call supports a list of
-- filters that are available for it. For example, @LocationId@ for
-- @ListTasks@.
--
-- 'values', 'taskFilter_values' - The values that you want to filter for. For example, you might want to
-- display only tasks for a specific destination location.
--
-- 'operator', 'taskFilter_operator' - The operator that is used to compare filter values (for example,
-- @Equals@ or @Contains@). For more about API filtering operators, see
-- <https://docs.aws.amazon.com/datasync/latest/userguide/query-resources.html API filters for ListTasks and ListLocations>.
newTaskFilter ::
  -- | 'name'
  TaskFilterName ->
  -- | 'operator'
  Operator ->
  TaskFilter
newTaskFilter pName_ pOperator_ =
  TaskFilter'
    { name = pName_,
      values = Prelude.mempty,
      operator = pOperator_
    }

-- | The name of the filter being used. Each API call supports a list of
-- filters that are available for it. For example, @LocationId@ for
-- @ListTasks@.
taskFilter_name :: Lens.Lens' TaskFilter TaskFilterName
taskFilter_name = Lens.lens (\TaskFilter' {name} -> name) (\s@TaskFilter' {} a -> s {name = a} :: TaskFilter)

-- | The values that you want to filter for. For example, you might want to
-- display only tasks for a specific destination location.
taskFilter_values :: Lens.Lens' TaskFilter [Prelude.Text]
taskFilter_values = Lens.lens (\TaskFilter' {values} -> values) (\s@TaskFilter' {} a -> s {values = a} :: TaskFilter) Prelude.. Lens.coerced

-- | The operator that is used to compare filter values (for example,
-- @Equals@ or @Contains@). For more about API filtering operators, see
-- <https://docs.aws.amazon.com/datasync/latest/userguide/query-resources.html API filters for ListTasks and ListLocations>.
taskFilter_operator :: Lens.Lens' TaskFilter Operator
taskFilter_operator = Lens.lens (\TaskFilter' {operator} -> operator) (\s@TaskFilter' {} a -> s {operator = a} :: TaskFilter)

instance Prelude.Hashable TaskFilter

instance Prelude.NFData TaskFilter

instance Core.ToJSON TaskFilter where
  toJSON TaskFilter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Name" Core..= name),
            Prelude.Just ("Values" Core..= values),
            Prelude.Just ("Operator" Core..= operator)
          ]
      )
