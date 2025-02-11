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
-- Module      : Network.AWS.QuickSight.Types.DecimalParameter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.DecimalParameter where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A decimal parameter.
--
-- /See:/ 'newDecimalParameter' smart constructor.
data DecimalParameter = DecimalParameter'
  { -- | A display name for the decimal parameter.
    name :: Prelude.Text,
    -- | The values for the decimal parameter.
    values :: [Prelude.Double]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DecimalParameter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'decimalParameter_name' - A display name for the decimal parameter.
--
-- 'values', 'decimalParameter_values' - The values for the decimal parameter.
newDecimalParameter ::
  -- | 'name'
  Prelude.Text ->
  DecimalParameter
newDecimalParameter pName_ =
  DecimalParameter'
    { name = pName_,
      values = Prelude.mempty
    }

-- | A display name for the decimal parameter.
decimalParameter_name :: Lens.Lens' DecimalParameter Prelude.Text
decimalParameter_name = Lens.lens (\DecimalParameter' {name} -> name) (\s@DecimalParameter' {} a -> s {name = a} :: DecimalParameter)

-- | The values for the decimal parameter.
decimalParameter_values :: Lens.Lens' DecimalParameter [Prelude.Double]
decimalParameter_values = Lens.lens (\DecimalParameter' {values} -> values) (\s@DecimalParameter' {} a -> s {values = a} :: DecimalParameter) Prelude.. Lens.coerced

instance Prelude.Hashable DecimalParameter

instance Prelude.NFData DecimalParameter

instance Core.ToJSON DecimalParameter where
  toJSON DecimalParameter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Name" Core..= name),
            Prelude.Just ("Values" Core..= values)
          ]
      )
