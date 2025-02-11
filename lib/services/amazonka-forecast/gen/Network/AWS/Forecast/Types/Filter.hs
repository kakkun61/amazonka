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
-- Module      : Network.AWS.Forecast.Types.Filter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Forecast.Types.Filter where

import qualified Network.AWS.Core as Core
import Network.AWS.Forecast.Types.FilterConditionString
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes a filter for choosing a subset of objects. Each filter
-- consists of a condition and a match statement. The condition is either
-- @IS@ or @IS_NOT@, which specifies whether to include or exclude the
-- objects that match the statement, respectively. The match statement
-- consists of a key and a value.
--
-- /See:/ 'newFilter' smart constructor.
data Filter = Filter'
  { -- | The name of the parameter to filter on.
    key :: Prelude.Text,
    -- | The value to match.
    value :: Prelude.Text,
    -- | The condition to apply. To include the objects that match the statement,
    -- specify @IS@. To exclude matching objects, specify @IS_NOT@.
    condition :: FilterConditionString
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Filter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'key', 'filter_key' - The name of the parameter to filter on.
--
-- 'value', 'filter_value' - The value to match.
--
-- 'condition', 'filter_condition' - The condition to apply. To include the objects that match the statement,
-- specify @IS@. To exclude matching objects, specify @IS_NOT@.
newFilter ::
  -- | 'key'
  Prelude.Text ->
  -- | 'value'
  Prelude.Text ->
  -- | 'condition'
  FilterConditionString ->
  Filter
newFilter pKey_ pValue_ pCondition_ =
  Filter'
    { key = pKey_,
      value = pValue_,
      condition = pCondition_
    }

-- | The name of the parameter to filter on.
filter_key :: Lens.Lens' Filter Prelude.Text
filter_key = Lens.lens (\Filter' {key} -> key) (\s@Filter' {} a -> s {key = a} :: Filter)

-- | The value to match.
filter_value :: Lens.Lens' Filter Prelude.Text
filter_value = Lens.lens (\Filter' {value} -> value) (\s@Filter' {} a -> s {value = a} :: Filter)

-- | The condition to apply. To include the objects that match the statement,
-- specify @IS@. To exclude matching objects, specify @IS_NOT@.
filter_condition :: Lens.Lens' Filter FilterConditionString
filter_condition = Lens.lens (\Filter' {condition} -> condition) (\s@Filter' {} a -> s {condition = a} :: Filter)

instance Prelude.Hashable Filter

instance Prelude.NFData Filter

instance Core.ToJSON Filter where
  toJSON Filter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Key" Core..= key),
            Prelude.Just ("Value" Core..= value),
            Prelude.Just ("Condition" Core..= condition)
          ]
      )
