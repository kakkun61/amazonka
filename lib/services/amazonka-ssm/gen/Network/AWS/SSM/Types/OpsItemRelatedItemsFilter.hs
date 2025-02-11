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
-- Module      : Network.AWS.SSM.Types.OpsItemRelatedItemsFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.OpsItemRelatedItemsFilter where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SSM.Types.OpsItemRelatedItemsFilterKey
import Network.AWS.SSM.Types.OpsItemRelatedItemsFilterOperator

-- | Describes a filter for a specific list of related-item resources.
--
-- /See:/ 'newOpsItemRelatedItemsFilter' smart constructor.
data OpsItemRelatedItemsFilter = OpsItemRelatedItemsFilter'
  { -- | The name of the filter key. Supported values include @ResourceUri@,
    -- @ResourceType@, or @AssociationId@.
    key :: OpsItemRelatedItemsFilterKey,
    -- | The values for the filter.
    values :: [Prelude.Text],
    -- | The operator used by the filter call. The only supported operator is
    -- @EQUAL@.
    operator :: OpsItemRelatedItemsFilterOperator
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'OpsItemRelatedItemsFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'key', 'opsItemRelatedItemsFilter_key' - The name of the filter key. Supported values include @ResourceUri@,
-- @ResourceType@, or @AssociationId@.
--
-- 'values', 'opsItemRelatedItemsFilter_values' - The values for the filter.
--
-- 'operator', 'opsItemRelatedItemsFilter_operator' - The operator used by the filter call. The only supported operator is
-- @EQUAL@.
newOpsItemRelatedItemsFilter ::
  -- | 'key'
  OpsItemRelatedItemsFilterKey ->
  -- | 'operator'
  OpsItemRelatedItemsFilterOperator ->
  OpsItemRelatedItemsFilter
newOpsItemRelatedItemsFilter pKey_ pOperator_ =
  OpsItemRelatedItemsFilter'
    { key = pKey_,
      values = Prelude.mempty,
      operator = pOperator_
    }

-- | The name of the filter key. Supported values include @ResourceUri@,
-- @ResourceType@, or @AssociationId@.
opsItemRelatedItemsFilter_key :: Lens.Lens' OpsItemRelatedItemsFilter OpsItemRelatedItemsFilterKey
opsItemRelatedItemsFilter_key = Lens.lens (\OpsItemRelatedItemsFilter' {key} -> key) (\s@OpsItemRelatedItemsFilter' {} a -> s {key = a} :: OpsItemRelatedItemsFilter)

-- | The values for the filter.
opsItemRelatedItemsFilter_values :: Lens.Lens' OpsItemRelatedItemsFilter [Prelude.Text]
opsItemRelatedItemsFilter_values = Lens.lens (\OpsItemRelatedItemsFilter' {values} -> values) (\s@OpsItemRelatedItemsFilter' {} a -> s {values = a} :: OpsItemRelatedItemsFilter) Prelude.. Lens.coerced

-- | The operator used by the filter call. The only supported operator is
-- @EQUAL@.
opsItemRelatedItemsFilter_operator :: Lens.Lens' OpsItemRelatedItemsFilter OpsItemRelatedItemsFilterOperator
opsItemRelatedItemsFilter_operator = Lens.lens (\OpsItemRelatedItemsFilter' {operator} -> operator) (\s@OpsItemRelatedItemsFilter' {} a -> s {operator = a} :: OpsItemRelatedItemsFilter)

instance Prelude.Hashable OpsItemRelatedItemsFilter

instance Prelude.NFData OpsItemRelatedItemsFilter

instance Core.ToJSON OpsItemRelatedItemsFilter where
  toJSON OpsItemRelatedItemsFilter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Key" Core..= key),
            Prelude.Just ("Values" Core..= values),
            Prelude.Just ("Operator" Core..= operator)
          ]
      )
