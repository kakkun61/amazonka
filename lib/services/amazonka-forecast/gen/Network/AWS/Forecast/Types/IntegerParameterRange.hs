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
-- Module      : Network.AWS.Forecast.Types.IntegerParameterRange
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Forecast.Types.IntegerParameterRange where

import qualified Network.AWS.Core as Core
import Network.AWS.Forecast.Types.ScalingType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Specifies an integer hyperparameter and it\'s range of tunable values.
-- This object is part of the ParameterRanges object.
--
-- /See:/ 'newIntegerParameterRange' smart constructor.
data IntegerParameterRange = IntegerParameterRange'
  { -- | The scale that hyperparameter tuning uses to search the hyperparameter
    -- range. Valid values:
    --
    -- [Auto]
    --     Amazon Forecast hyperparameter tuning chooses the best scale for the
    --     hyperparameter.
    --
    -- [Linear]
    --     Hyperparameter tuning searches the values in the hyperparameter
    --     range by using a linear scale.
    --
    -- [Logarithmic]
    --     Hyperparameter tuning searches the values in the hyperparameter
    --     range by using a logarithmic scale.
    --
    --     Logarithmic scaling works only for ranges that have values greater
    --     than 0.
    --
    -- [ReverseLogarithmic]
    --     Not supported for @IntegerParameterRange@.
    --
    --     Reverse logarithmic scaling works only for ranges that are entirely
    --     within the range 0 \<= x \< 1.0.
    --
    -- For information about choosing a hyperparameter scale, see
    -- <http://docs.aws.amazon.com/sagemaker/latest/dg/automatic-model-tuning-define-ranges.html#scaling-type Hyperparameter Scaling>.
    -- One of the following values:
    scalingType :: Prelude.Maybe ScalingType,
    -- | The name of the hyperparameter to tune.
    name :: Prelude.Text,
    -- | The maximum tunable value of the hyperparameter.
    maxValue :: Prelude.Int,
    -- | The minimum tunable value of the hyperparameter.
    minValue :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'IntegerParameterRange' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'scalingType', 'integerParameterRange_scalingType' - The scale that hyperparameter tuning uses to search the hyperparameter
-- range. Valid values:
--
-- [Auto]
--     Amazon Forecast hyperparameter tuning chooses the best scale for the
--     hyperparameter.
--
-- [Linear]
--     Hyperparameter tuning searches the values in the hyperparameter
--     range by using a linear scale.
--
-- [Logarithmic]
--     Hyperparameter tuning searches the values in the hyperparameter
--     range by using a logarithmic scale.
--
--     Logarithmic scaling works only for ranges that have values greater
--     than 0.
--
-- [ReverseLogarithmic]
--     Not supported for @IntegerParameterRange@.
--
--     Reverse logarithmic scaling works only for ranges that are entirely
--     within the range 0 \<= x \< 1.0.
--
-- For information about choosing a hyperparameter scale, see
-- <http://docs.aws.amazon.com/sagemaker/latest/dg/automatic-model-tuning-define-ranges.html#scaling-type Hyperparameter Scaling>.
-- One of the following values:
--
-- 'name', 'integerParameterRange_name' - The name of the hyperparameter to tune.
--
-- 'maxValue', 'integerParameterRange_maxValue' - The maximum tunable value of the hyperparameter.
--
-- 'minValue', 'integerParameterRange_minValue' - The minimum tunable value of the hyperparameter.
newIntegerParameterRange ::
  -- | 'name'
  Prelude.Text ->
  -- | 'maxValue'
  Prelude.Int ->
  -- | 'minValue'
  Prelude.Int ->
  IntegerParameterRange
newIntegerParameterRange pName_ pMaxValue_ pMinValue_ =
  IntegerParameterRange'
    { scalingType =
        Prelude.Nothing,
      name = pName_,
      maxValue = pMaxValue_,
      minValue = pMinValue_
    }

-- | The scale that hyperparameter tuning uses to search the hyperparameter
-- range. Valid values:
--
-- [Auto]
--     Amazon Forecast hyperparameter tuning chooses the best scale for the
--     hyperparameter.
--
-- [Linear]
--     Hyperparameter tuning searches the values in the hyperparameter
--     range by using a linear scale.
--
-- [Logarithmic]
--     Hyperparameter tuning searches the values in the hyperparameter
--     range by using a logarithmic scale.
--
--     Logarithmic scaling works only for ranges that have values greater
--     than 0.
--
-- [ReverseLogarithmic]
--     Not supported for @IntegerParameterRange@.
--
--     Reverse logarithmic scaling works only for ranges that are entirely
--     within the range 0 \<= x \< 1.0.
--
-- For information about choosing a hyperparameter scale, see
-- <http://docs.aws.amazon.com/sagemaker/latest/dg/automatic-model-tuning-define-ranges.html#scaling-type Hyperparameter Scaling>.
-- One of the following values:
integerParameterRange_scalingType :: Lens.Lens' IntegerParameterRange (Prelude.Maybe ScalingType)
integerParameterRange_scalingType = Lens.lens (\IntegerParameterRange' {scalingType} -> scalingType) (\s@IntegerParameterRange' {} a -> s {scalingType = a} :: IntegerParameterRange)

-- | The name of the hyperparameter to tune.
integerParameterRange_name :: Lens.Lens' IntegerParameterRange Prelude.Text
integerParameterRange_name = Lens.lens (\IntegerParameterRange' {name} -> name) (\s@IntegerParameterRange' {} a -> s {name = a} :: IntegerParameterRange)

-- | The maximum tunable value of the hyperparameter.
integerParameterRange_maxValue :: Lens.Lens' IntegerParameterRange Prelude.Int
integerParameterRange_maxValue = Lens.lens (\IntegerParameterRange' {maxValue} -> maxValue) (\s@IntegerParameterRange' {} a -> s {maxValue = a} :: IntegerParameterRange)

-- | The minimum tunable value of the hyperparameter.
integerParameterRange_minValue :: Lens.Lens' IntegerParameterRange Prelude.Int
integerParameterRange_minValue = Lens.lens (\IntegerParameterRange' {minValue} -> minValue) (\s@IntegerParameterRange' {} a -> s {minValue = a} :: IntegerParameterRange)

instance Core.FromJSON IntegerParameterRange where
  parseJSON =
    Core.withObject
      "IntegerParameterRange"
      ( \x ->
          IntegerParameterRange'
            Prelude.<$> (x Core..:? "ScalingType")
            Prelude.<*> (x Core..: "Name")
            Prelude.<*> (x Core..: "MaxValue")
            Prelude.<*> (x Core..: "MinValue")
      )

instance Prelude.Hashable IntegerParameterRange

instance Prelude.NFData IntegerParameterRange

instance Core.ToJSON IntegerParameterRange where
  toJSON IntegerParameterRange' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ScalingType" Core..=) Prelude.<$> scalingType,
            Prelude.Just ("Name" Core..= name),
            Prelude.Just ("MaxValue" Core..= maxValue),
            Prelude.Just ("MinValue" Core..= minValue)
          ]
      )
