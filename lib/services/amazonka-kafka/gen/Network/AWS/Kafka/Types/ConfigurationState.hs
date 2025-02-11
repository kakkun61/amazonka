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
-- Module      : Network.AWS.Kafka.Types.ConfigurationState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Kafka.Types.ConfigurationState
  ( ConfigurationState
      ( ..,
        ConfigurationState_ACTIVE,
        ConfigurationState_DELETE_FAILED,
        ConfigurationState_DELETING
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

-- | The state of a configuration.
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

pattern ConfigurationState_DELETE_FAILED :: ConfigurationState
pattern ConfigurationState_DELETE_FAILED = ConfigurationState' "DELETE_FAILED"

pattern ConfigurationState_DELETING :: ConfigurationState
pattern ConfigurationState_DELETING = ConfigurationState' "DELETING"

{-# COMPLETE
  ConfigurationState_ACTIVE,
  ConfigurationState_DELETE_FAILED,
  ConfigurationState_DELETING,
  ConfigurationState'
  #-}
