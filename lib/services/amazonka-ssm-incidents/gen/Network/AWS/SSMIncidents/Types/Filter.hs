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
-- Module      : Network.AWS.SSMIncidents.Types.Filter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSMIncidents.Types.Filter where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SSMIncidents.Types.Condition

-- | Filter the selection by using a condition.
--
-- /See:/ 'newFilter' smart constructor.
data Filter = Filter'
  { -- | The condition accepts before or after a specified time, equal to a
    -- string, or equal to an integer.
    condition :: Condition,
    -- | The key that you\'re filtering on.
    key :: Prelude.Text
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
-- 'condition', 'filter_condition' - The condition accepts before or after a specified time, equal to a
-- string, or equal to an integer.
--
-- 'key', 'filter_key' - The key that you\'re filtering on.
newFilter ::
  -- | 'condition'
  Condition ->
  -- | 'key'
  Prelude.Text ->
  Filter
newFilter pCondition_ pKey_ =
  Filter' {condition = pCondition_, key = pKey_}

-- | The condition accepts before or after a specified time, equal to a
-- string, or equal to an integer.
filter_condition :: Lens.Lens' Filter Condition
filter_condition = Lens.lens (\Filter' {condition} -> condition) (\s@Filter' {} a -> s {condition = a} :: Filter)

-- | The key that you\'re filtering on.
filter_key :: Lens.Lens' Filter Prelude.Text
filter_key = Lens.lens (\Filter' {key} -> key) (\s@Filter' {} a -> s {key = a} :: Filter)

instance Prelude.Hashable Filter

instance Prelude.NFData Filter

instance Core.ToJSON Filter where
  toJSON Filter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("condition" Core..= condition),
            Prelude.Just ("key" Core..= key)
          ]
      )
