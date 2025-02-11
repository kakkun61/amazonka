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
-- Module      : Network.AWS.LookoutEquipment.Types.TargetSamplingRate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LookoutEquipment.Types.TargetSamplingRate
  ( TargetSamplingRate
      ( ..,
        TargetSamplingRate_PT10M,
        TargetSamplingRate_PT10S,
        TargetSamplingRate_PT15M,
        TargetSamplingRate_PT15S,
        TargetSamplingRate_PT1H,
        TargetSamplingRate_PT1M,
        TargetSamplingRate_PT1S,
        TargetSamplingRate_PT30M,
        TargetSamplingRate_PT30S,
        TargetSamplingRate_PT5M,
        TargetSamplingRate_PT5S
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype TargetSamplingRate = TargetSamplingRate'
  { fromTargetSamplingRate ::
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

pattern TargetSamplingRate_PT10M :: TargetSamplingRate
pattern TargetSamplingRate_PT10M = TargetSamplingRate' "PT10M"

pattern TargetSamplingRate_PT10S :: TargetSamplingRate
pattern TargetSamplingRate_PT10S = TargetSamplingRate' "PT10S"

pattern TargetSamplingRate_PT15M :: TargetSamplingRate
pattern TargetSamplingRate_PT15M = TargetSamplingRate' "PT15M"

pattern TargetSamplingRate_PT15S :: TargetSamplingRate
pattern TargetSamplingRate_PT15S = TargetSamplingRate' "PT15S"

pattern TargetSamplingRate_PT1H :: TargetSamplingRate
pattern TargetSamplingRate_PT1H = TargetSamplingRate' "PT1H"

pattern TargetSamplingRate_PT1M :: TargetSamplingRate
pattern TargetSamplingRate_PT1M = TargetSamplingRate' "PT1M"

pattern TargetSamplingRate_PT1S :: TargetSamplingRate
pattern TargetSamplingRate_PT1S = TargetSamplingRate' "PT1S"

pattern TargetSamplingRate_PT30M :: TargetSamplingRate
pattern TargetSamplingRate_PT30M = TargetSamplingRate' "PT30M"

pattern TargetSamplingRate_PT30S :: TargetSamplingRate
pattern TargetSamplingRate_PT30S = TargetSamplingRate' "PT30S"

pattern TargetSamplingRate_PT5M :: TargetSamplingRate
pattern TargetSamplingRate_PT5M = TargetSamplingRate' "PT5M"

pattern TargetSamplingRate_PT5S :: TargetSamplingRate
pattern TargetSamplingRate_PT5S = TargetSamplingRate' "PT5S"

{-# COMPLETE
  TargetSamplingRate_PT10M,
  TargetSamplingRate_PT10S,
  TargetSamplingRate_PT15M,
  TargetSamplingRate_PT15S,
  TargetSamplingRate_PT1H,
  TargetSamplingRate_PT1M,
  TargetSamplingRate_PT1S,
  TargetSamplingRate_PT30M,
  TargetSamplingRate_PT30S,
  TargetSamplingRate_PT5M,
  TargetSamplingRate_PT5S,
  TargetSamplingRate'
  #-}
