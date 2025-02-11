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
-- Module      : Network.AWS.DevOpsGuru.Types.EventClass
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DevOpsGuru.Types.EventClass
  ( EventClass
      ( ..,
        EventClass_CONFIG_CHANGE,
        EventClass_DEPLOYMENT,
        EventClass_INFRASTRUCTURE,
        EventClass_SCHEMA_CHANGE,
        EventClass_SECURITY_CHANGE
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype EventClass = EventClass'
  { fromEventClass ::
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

pattern EventClass_CONFIG_CHANGE :: EventClass
pattern EventClass_CONFIG_CHANGE = EventClass' "CONFIG_CHANGE"

pattern EventClass_DEPLOYMENT :: EventClass
pattern EventClass_DEPLOYMENT = EventClass' "DEPLOYMENT"

pattern EventClass_INFRASTRUCTURE :: EventClass
pattern EventClass_INFRASTRUCTURE = EventClass' "INFRASTRUCTURE"

pattern EventClass_SCHEMA_CHANGE :: EventClass
pattern EventClass_SCHEMA_CHANGE = EventClass' "SCHEMA_CHANGE"

pattern EventClass_SECURITY_CHANGE :: EventClass
pattern EventClass_SECURITY_CHANGE = EventClass' "SECURITY_CHANGE"

{-# COMPLETE
  EventClass_CONFIG_CHANGE,
  EventClass_DEPLOYMENT,
  EventClass_INFRASTRUCTURE,
  EventClass_SCHEMA_CHANGE,
  EventClass_SECURITY_CHANGE,
  EventClass'
  #-}
