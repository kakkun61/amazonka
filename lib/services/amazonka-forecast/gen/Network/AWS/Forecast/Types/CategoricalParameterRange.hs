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
-- Module      : Network.AWS.Forecast.Types.CategoricalParameterRange
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Forecast.Types.CategoricalParameterRange where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Specifies a categorical hyperparameter and it\'s range of tunable
-- values. This object is part of the ParameterRanges object.
--
-- /See:/ 'newCategoricalParameterRange' smart constructor.
data CategoricalParameterRange = CategoricalParameterRange'
  { -- | The name of the categorical hyperparameter to tune.
    name :: Prelude.Text,
    -- | A list of the tunable categories for the hyperparameter.
    values :: Prelude.NonEmpty Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CategoricalParameterRange' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'categoricalParameterRange_name' - The name of the categorical hyperparameter to tune.
--
-- 'values', 'categoricalParameterRange_values' - A list of the tunable categories for the hyperparameter.
newCategoricalParameterRange ::
  -- | 'name'
  Prelude.Text ->
  -- | 'values'
  Prelude.NonEmpty Prelude.Text ->
  CategoricalParameterRange
newCategoricalParameterRange pName_ pValues_ =
  CategoricalParameterRange'
    { name = pName_,
      values = Lens.coerced Lens.# pValues_
    }

-- | The name of the categorical hyperparameter to tune.
categoricalParameterRange_name :: Lens.Lens' CategoricalParameterRange Prelude.Text
categoricalParameterRange_name = Lens.lens (\CategoricalParameterRange' {name} -> name) (\s@CategoricalParameterRange' {} a -> s {name = a} :: CategoricalParameterRange)

-- | A list of the tunable categories for the hyperparameter.
categoricalParameterRange_values :: Lens.Lens' CategoricalParameterRange (Prelude.NonEmpty Prelude.Text)
categoricalParameterRange_values = Lens.lens (\CategoricalParameterRange' {values} -> values) (\s@CategoricalParameterRange' {} a -> s {values = a} :: CategoricalParameterRange) Prelude.. Lens.coerced

instance Core.FromJSON CategoricalParameterRange where
  parseJSON =
    Core.withObject
      "CategoricalParameterRange"
      ( \x ->
          CategoricalParameterRange'
            Prelude.<$> (x Core..: "Name") Prelude.<*> (x Core..: "Values")
      )

instance Prelude.Hashable CategoricalParameterRange

instance Prelude.NFData CategoricalParameterRange

instance Core.ToJSON CategoricalParameterRange where
  toJSON CategoricalParameterRange' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Name" Core..= name),
            Prelude.Just ("Values" Core..= values)
          ]
      )
