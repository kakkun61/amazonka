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
-- Module      : Network.AWS.ApplicationInsights.Types.ConfigurationEventStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ApplicationInsights.Types.ConfigurationEventStatus
  ( ConfigurationEventStatus
      ( ..,
        ConfigurationEventStatus_ERROR,
        ConfigurationEventStatus_INFO,
        ConfigurationEventStatus_WARN
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype ConfigurationEventStatus = ConfigurationEventStatus'
  { fromConfigurationEventStatus ::
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

pattern ConfigurationEventStatus_ERROR :: ConfigurationEventStatus
pattern ConfigurationEventStatus_ERROR = ConfigurationEventStatus' "ERROR"

pattern ConfigurationEventStatus_INFO :: ConfigurationEventStatus
pattern ConfigurationEventStatus_INFO = ConfigurationEventStatus' "INFO"

pattern ConfigurationEventStatus_WARN :: ConfigurationEventStatus
pattern ConfigurationEventStatus_WARN = ConfigurationEventStatus' "WARN"

{-# COMPLETE
  ConfigurationEventStatus_ERROR,
  ConfigurationEventStatus_INFO,
  ConfigurationEventStatus_WARN,
  ConfigurationEventStatus'
  #-}
