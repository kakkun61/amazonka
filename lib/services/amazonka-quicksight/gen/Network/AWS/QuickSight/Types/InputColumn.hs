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
-- Module      : Network.AWS.QuickSight.Types.InputColumn
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.InputColumn where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types.InputColumnDataType

-- | Metadata for a column that is used as the input of a transform
-- operation.
--
-- /See:/ 'newInputColumn' smart constructor.
data InputColumn = InputColumn'
  { -- | The name of this column in the underlying data source.
    name :: Prelude.Text,
    -- | The data type of the column.
    type' :: InputColumnDataType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InputColumn' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'inputColumn_name' - The name of this column in the underlying data source.
--
-- 'type'', 'inputColumn_type' - The data type of the column.
newInputColumn ::
  -- | 'name'
  Prelude.Text ->
  -- | 'type''
  InputColumnDataType ->
  InputColumn
newInputColumn pName_ pType_ =
  InputColumn' {name = pName_, type' = pType_}

-- | The name of this column in the underlying data source.
inputColumn_name :: Lens.Lens' InputColumn Prelude.Text
inputColumn_name = Lens.lens (\InputColumn' {name} -> name) (\s@InputColumn' {} a -> s {name = a} :: InputColumn)

-- | The data type of the column.
inputColumn_type :: Lens.Lens' InputColumn InputColumnDataType
inputColumn_type = Lens.lens (\InputColumn' {type'} -> type') (\s@InputColumn' {} a -> s {type' = a} :: InputColumn)

instance Core.FromJSON InputColumn where
  parseJSON =
    Core.withObject
      "InputColumn"
      ( \x ->
          InputColumn'
            Prelude.<$> (x Core..: "Name") Prelude.<*> (x Core..: "Type")
      )

instance Prelude.Hashable InputColumn

instance Prelude.NFData InputColumn

instance Core.ToJSON InputColumn where
  toJSON InputColumn' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Name" Core..= name),
            Prelude.Just ("Type" Core..= type')
          ]
      )
