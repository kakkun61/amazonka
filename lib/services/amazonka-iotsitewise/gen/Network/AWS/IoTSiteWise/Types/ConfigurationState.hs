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
-- Module      : Network.AWS.IoTSiteWise.Types.ConfigurationState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTSiteWise.Types.ConfigurationState
  ( ConfigurationState
      ( ..,
        ConfigurationState_ACTIVE,
        ConfigurationState_UPDATE_FAILED,
        ConfigurationState_UPDATE_IN_PROGRESS
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype ConfigurationState = ConfigurationState'
  { fromConfigurationState ::
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

pattern ConfigurationState_ACTIVE :: ConfigurationState
pattern ConfigurationState_ACTIVE = ConfigurationState' "ACTIVE"

pattern ConfigurationState_UPDATE_FAILED :: ConfigurationState
pattern ConfigurationState_UPDATE_FAILED = ConfigurationState' "UPDATE_FAILED"

pattern ConfigurationState_UPDATE_IN_PROGRESS :: ConfigurationState
pattern ConfigurationState_UPDATE_IN_PROGRESS = ConfigurationState' "UPDATE_IN_PROGRESS"

{-# COMPLETE
  ConfigurationState_ACTIVE,
  ConfigurationState_UPDATE_FAILED,
  ConfigurationState_UPDATE_IN_PROGRESS,
  ConfigurationState'
  #-}
