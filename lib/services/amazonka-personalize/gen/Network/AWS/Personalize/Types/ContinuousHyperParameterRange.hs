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
-- Module      : Network.AWS.Personalize.Types.ContinuousHyperParameterRange
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Personalize.Types.ContinuousHyperParameterRange where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Provides the name and range of a continuous hyperparameter.
--
-- /See:/ 'newContinuousHyperParameterRange' smart constructor.
data ContinuousHyperParameterRange = ContinuousHyperParameterRange'
  { -- | The maximum allowable value for the hyperparameter.
    maxValue :: Prelude.Maybe Prelude.Double,
    -- | The name of the hyperparameter.
    name :: Prelude.Maybe Prelude.Text,
    -- | The minimum allowable value for the hyperparameter.
    minValue :: Prelude.Maybe Prelude.Double
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ContinuousHyperParameterRange' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'maxValue', 'continuousHyperParameterRange_maxValue' - The maximum allowable value for the hyperparameter.
--
-- 'name', 'continuousHyperParameterRange_name' - The name of the hyperparameter.
--
-- 'minValue', 'continuousHyperParameterRange_minValue' - The minimum allowable value for the hyperparameter.
newContinuousHyperParameterRange ::
  ContinuousHyperParameterRange
newContinuousHyperParameterRange =
  ContinuousHyperParameterRange'
    { maxValue =
        Prelude.Nothing,
      name = Prelude.Nothing,
      minValue = Prelude.Nothing
    }

-- | The maximum allowable value for the hyperparameter.
continuousHyperParameterRange_maxValue :: Lens.Lens' ContinuousHyperParameterRange (Prelude.Maybe Prelude.Double)
continuousHyperParameterRange_maxValue = Lens.lens (\ContinuousHyperParameterRange' {maxValue} -> maxValue) (\s@ContinuousHyperParameterRange' {} a -> s {maxValue = a} :: ContinuousHyperParameterRange)

-- | The name of the hyperparameter.
continuousHyperParameterRange_name :: Lens.Lens' ContinuousHyperParameterRange (Prelude.Maybe Prelude.Text)
continuousHyperParameterRange_name = Lens.lens (\ContinuousHyperParameterRange' {name} -> name) (\s@ContinuousHyperParameterRange' {} a -> s {name = a} :: ContinuousHyperParameterRange)

-- | The minimum allowable value for the hyperparameter.
continuousHyperParameterRange_minValue :: Lens.Lens' ContinuousHyperParameterRange (Prelude.Maybe Prelude.Double)
continuousHyperParameterRange_minValue = Lens.lens (\ContinuousHyperParameterRange' {minValue} -> minValue) (\s@ContinuousHyperParameterRange' {} a -> s {minValue = a} :: ContinuousHyperParameterRange)

instance Core.FromJSON ContinuousHyperParameterRange where
  parseJSON =
    Core.withObject
      "ContinuousHyperParameterRange"
      ( \x ->
          ContinuousHyperParameterRange'
            Prelude.<$> (x Core..:? "maxValue")
            Prelude.<*> (x Core..:? "name")
            Prelude.<*> (x Core..:? "minValue")
      )

instance
  Prelude.Hashable
    ContinuousHyperParameterRange

instance Prelude.NFData ContinuousHyperParameterRange

instance Core.ToJSON ContinuousHyperParameterRange where
  toJSON ContinuousHyperParameterRange' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("maxValue" Core..=) Prelude.<$> maxValue,
            ("name" Core..=) Prelude.<$> name,
            ("minValue" Core..=) Prelude.<$> minValue
          ]
      )
