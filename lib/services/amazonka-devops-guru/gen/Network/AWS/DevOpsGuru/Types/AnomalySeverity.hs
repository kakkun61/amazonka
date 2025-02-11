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
-- Module      : Network.AWS.DevOpsGuru.Types.AnomalySeverity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DevOpsGuru.Types.AnomalySeverity
  ( AnomalySeverity
      ( ..,
        AnomalySeverity_HIGH,
        AnomalySeverity_LOW,
        AnomalySeverity_MEDIUM
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype AnomalySeverity = AnomalySeverity'
  { fromAnomalySeverity ::
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

pattern AnomalySeverity_HIGH :: AnomalySeverity
pattern AnomalySeverity_HIGH = AnomalySeverity' "HIGH"

pattern AnomalySeverity_LOW :: AnomalySeverity
pattern AnomalySeverity_LOW = AnomalySeverity' "LOW"

pattern AnomalySeverity_MEDIUM :: AnomalySeverity
pattern AnomalySeverity_MEDIUM = AnomalySeverity' "MEDIUM"

{-# COMPLETE
  AnomalySeverity_HIGH,
  AnomalySeverity_LOW,
  AnomalySeverity_MEDIUM,
  AnomalySeverity'
  #-}
