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
-- Module      : Network.AWS.Route53RecoveryReadiness.Types.Readiness
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53RecoveryReadiness.Types.Readiness
  ( Readiness
      ( ..,
        Readiness_NOT_AUTHORIZED,
        Readiness_NOT_READY,
        Readiness_READY,
        Readiness_UNKNOWN
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

-- | The readiness of an entire ReadinessCheck or an individual resource ARN.
newtype Readiness = Readiness'
  { fromReadiness ::
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

pattern Readiness_NOT_AUTHORIZED :: Readiness
pattern Readiness_NOT_AUTHORIZED = Readiness' "NOT_AUTHORIZED"

pattern Readiness_NOT_READY :: Readiness
pattern Readiness_NOT_READY = Readiness' "NOT_READY"

pattern Readiness_READY :: Readiness
pattern Readiness_READY = Readiness' "READY"

pattern Readiness_UNKNOWN :: Readiness
pattern Readiness_UNKNOWN = Readiness' "UNKNOWN"

{-# COMPLETE
  Readiness_NOT_AUTHORIZED,
  Readiness_NOT_READY,
  Readiness_READY,
  Readiness_UNKNOWN,
  Readiness'
  #-}
