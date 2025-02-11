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
-- Module      : Network.AWS.IoTEventsData.Types.VariableDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTEventsData.Types.VariableDefinition where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The new value of the variable.
--
-- /See:/ 'newVariableDefinition' smart constructor.
data VariableDefinition = VariableDefinition'
  { -- | The name of the variable.
    name :: Prelude.Text,
    -- | The new value of the variable.
    value :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VariableDefinition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'variableDefinition_name' - The name of the variable.
--
-- 'value', 'variableDefinition_value' - The new value of the variable.
newVariableDefinition ::
  -- | 'name'
  Prelude.Text ->
  -- | 'value'
  Prelude.Text ->
  VariableDefinition
newVariableDefinition pName_ pValue_ =
  VariableDefinition' {name = pName_, value = pValue_}

-- | The name of the variable.
variableDefinition_name :: Lens.Lens' VariableDefinition Prelude.Text
variableDefinition_name = Lens.lens (\VariableDefinition' {name} -> name) (\s@VariableDefinition' {} a -> s {name = a} :: VariableDefinition)

-- | The new value of the variable.
variableDefinition_value :: Lens.Lens' VariableDefinition Prelude.Text
variableDefinition_value = Lens.lens (\VariableDefinition' {value} -> value) (\s@VariableDefinition' {} a -> s {value = a} :: VariableDefinition)

instance Prelude.Hashable VariableDefinition

instance Prelude.NFData VariableDefinition

instance Core.ToJSON VariableDefinition where
  toJSON VariableDefinition' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("name" Core..= name),
            Prelude.Just ("value" Core..= value)
          ]
      )
