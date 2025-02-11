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
-- Module      : Network.AWS.LookoutEquipment.Types.DataUploadFrequency
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LookoutEquipment.Types.DataUploadFrequency
  ( DataUploadFrequency
      ( ..,
        DataUploadFrequency_PT10M,
        DataUploadFrequency_PT15M,
        DataUploadFrequency_PT1H,
        DataUploadFrequency_PT30M,
        DataUploadFrequency_PT5M
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype DataUploadFrequency = DataUploadFrequency'
  { fromDataUploadFrequency ::
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

pattern DataUploadFrequency_PT10M :: DataUploadFrequency
pattern DataUploadFrequency_PT10M = DataUploadFrequency' "PT10M"

pattern DataUploadFrequency_PT15M :: DataUploadFrequency
pattern DataUploadFrequency_PT15M = DataUploadFrequency' "PT15M"

pattern DataUploadFrequency_PT1H :: DataUploadFrequency
pattern DataUploadFrequency_PT1H = DataUploadFrequency' "PT1H"

pattern DataUploadFrequency_PT30M :: DataUploadFrequency
pattern DataUploadFrequency_PT30M = DataUploadFrequency' "PT30M"

pattern DataUploadFrequency_PT5M :: DataUploadFrequency
pattern DataUploadFrequency_PT5M = DataUploadFrequency' "PT5M"

{-# COMPLETE
  DataUploadFrequency_PT10M,
  DataUploadFrequency_PT15M,
  DataUploadFrequency_PT1H,
  DataUploadFrequency_PT30M,
  DataUploadFrequency_PT5M,
  DataUploadFrequency'
  #-}
