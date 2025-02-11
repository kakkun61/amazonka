{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Forecast.Types.OptimizationMetric
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Forecast.Types.OptimizationMetric
  ( OptimizationMetric
      ( ..,
        OptimizationMetric_AverageWeightedQuantileLoss,
        OptimizationMetric_MAPE,
        OptimizationMetric_MASE,
        OptimizationMetric_RMSE,
        OptimizationMetric_WAPE
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype OptimizationMetric = OptimizationMetric'
  { fromOptimizationMetric ::
      Core.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Core.FromText,
      Core.ToText,
      Core.ToByteString,
      Core.ToLog,
      Core.ToHeader,
      Core.ToQuery,
      Core.FromJSON,
      Core.FromJSONKey,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromXML,
      Core.ToXML
    )

pattern OptimizationMetric_AverageWeightedQuantileLoss :: OptimizationMetric
pattern OptimizationMetric_AverageWeightedQuantileLoss = OptimizationMetric' "AverageWeightedQuantileLoss"

pattern OptimizationMetric_MAPE :: OptimizationMetric
pattern OptimizationMetric_MAPE = OptimizationMetric' "MAPE"

pattern OptimizationMetric_MASE :: OptimizationMetric
pattern OptimizationMetric_MASE = OptimizationMetric' "MASE"

pattern OptimizationMetric_RMSE :: OptimizationMetric
pattern OptimizationMetric_RMSE = OptimizationMetric' "RMSE"

pattern OptimizationMetric_WAPE :: OptimizationMetric
pattern OptimizationMetric_WAPE = OptimizationMetric' "WAPE"

{-# COMPLETE
  OptimizationMetric_AverageWeightedQuantileLoss,
  OptimizationMetric_MAPE,
  OptimizationMetric_MASE,
  OptimizationMetric_RMSE,
  OptimizationMetric_WAPE,
  OptimizationMetric'
  #-}
