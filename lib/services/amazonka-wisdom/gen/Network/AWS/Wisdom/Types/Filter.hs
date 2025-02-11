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
-- Module      : Network.AWS.Wisdom.Types.Filter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Wisdom.Types.Filter where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Wisdom.Types.FilterField
import Network.AWS.Wisdom.Types.FilterOperator

-- | A search filter.
--
-- /See:/ 'newFilter' smart constructor.
data Filter = Filter'
  { -- | The field on which to filter.
    field :: FilterField,
    -- | The operator to use for comparing the field’s value with the provided
    -- value.
    operator :: FilterOperator,
    -- | The desired field value on which to filter.
    value :: Prelude.Text
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
-- 'field', 'filter_field' - The field on which to filter.
--
-- 'operator', 'filter_operator' - The operator to use for comparing the field’s value with the provided
-- value.
--
-- 'value', 'filter_value' - The desired field value on which to filter.
newFilter ::
  -- | 'field'
  FilterField ->
  -- | 'operator'
  FilterOperator ->
  -- | 'value'
  Prelude.Text ->
  Filter
newFilter pField_ pOperator_ pValue_ =
  Filter'
    { field = pField_,
      operator = pOperator_,
      value = pValue_
    }

-- | The field on which to filter.
filter_field :: Lens.Lens' Filter FilterField
filter_field = Lens.lens (\Filter' {field} -> field) (\s@Filter' {} a -> s {field = a} :: Filter)

-- | The operator to use for comparing the field’s value with the provided
-- value.
filter_operator :: Lens.Lens' Filter FilterOperator
filter_operator = Lens.lens (\Filter' {operator} -> operator) (\s@Filter' {} a -> s {operator = a} :: Filter)

-- | The desired field value on which to filter.
filter_value :: Lens.Lens' Filter Prelude.Text
filter_value = Lens.lens (\Filter' {value} -> value) (\s@Filter' {} a -> s {value = a} :: Filter)

instance Prelude.Hashable Filter

instance Prelude.NFData Filter

instance Core.ToJSON Filter where
  toJSON Filter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("field" Core..= field),
            Prelude.Just ("operator" Core..= operator),
            Prelude.Just ("value" Core..= value)
          ]
      )
