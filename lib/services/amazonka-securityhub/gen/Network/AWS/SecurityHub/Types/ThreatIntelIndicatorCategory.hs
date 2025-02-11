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
-- Module      : Network.AWS.SecurityHub.Types.ThreatIntelIndicatorCategory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.ThreatIntelIndicatorCategory
  ( ThreatIntelIndicatorCategory
      ( ..,
        ThreatIntelIndicatorCategory_BACKDOOR,
        ThreatIntelIndicatorCategory_CARD_STEALER,
        ThreatIntelIndicatorCategory_COMMAND_AND_CONTROL,
        ThreatIntelIndicatorCategory_DROP_SITE,
        ThreatIntelIndicatorCategory_EXPLOIT_SITE,
        ThreatIntelIndicatorCategory_KEYLOGGER
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype ThreatIntelIndicatorCategory = ThreatIntelIndicatorCategory'
  { fromThreatIntelIndicatorCategory ::
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

pattern ThreatIntelIndicatorCategory_BACKDOOR :: ThreatIntelIndicatorCategory
pattern ThreatIntelIndicatorCategory_BACKDOOR = ThreatIntelIndicatorCategory' "BACKDOOR"

pattern ThreatIntelIndicatorCategory_CARD_STEALER :: ThreatIntelIndicatorCategory
pattern ThreatIntelIndicatorCategory_CARD_STEALER = ThreatIntelIndicatorCategory' "CARD_STEALER"

pattern ThreatIntelIndicatorCategory_COMMAND_AND_CONTROL :: ThreatIntelIndicatorCategory
pattern ThreatIntelIndicatorCategory_COMMAND_AND_CONTROL = ThreatIntelIndicatorCategory' "COMMAND_AND_CONTROL"

pattern ThreatIntelIndicatorCategory_DROP_SITE :: ThreatIntelIndicatorCategory
pattern ThreatIntelIndicatorCategory_DROP_SITE = ThreatIntelIndicatorCategory' "DROP_SITE"

pattern ThreatIntelIndicatorCategory_EXPLOIT_SITE :: ThreatIntelIndicatorCategory
pattern ThreatIntelIndicatorCategory_EXPLOIT_SITE = ThreatIntelIndicatorCategory' "EXPLOIT_SITE"

pattern ThreatIntelIndicatorCategory_KEYLOGGER :: ThreatIntelIndicatorCategory
pattern ThreatIntelIndicatorCategory_KEYLOGGER = ThreatIntelIndicatorCategory' "KEYLOGGER"

{-# COMPLETE
  ThreatIntelIndicatorCategory_BACKDOOR,
  ThreatIntelIndicatorCategory_CARD_STEALER,
  ThreatIntelIndicatorCategory_COMMAND_AND_CONTROL,
  ThreatIntelIndicatorCategory_DROP_SITE,
  ThreatIntelIndicatorCategory_EXPLOIT_SITE,
  ThreatIntelIndicatorCategory_KEYLOGGER,
  ThreatIntelIndicatorCategory'
  #-}
