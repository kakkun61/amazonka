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
-- Module      : Network.AWS.SnowDeviceManagement.Types.InstanceStateName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SnowDeviceManagement.Types.InstanceStateName
  ( InstanceStateName
      ( ..,
        InstanceStateName_PENDING,
        InstanceStateName_RUNNING,
        InstanceStateName_SHUTTING_DOWN,
        InstanceStateName_STOPPED,
        InstanceStateName_STOPPING,
        InstanceStateName_TERMINATED
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype InstanceStateName = InstanceStateName'
  { fromInstanceStateName ::
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

pattern InstanceStateName_PENDING :: InstanceStateName
pattern InstanceStateName_PENDING = InstanceStateName' "PENDING"

pattern InstanceStateName_RUNNING :: InstanceStateName
pattern InstanceStateName_RUNNING = InstanceStateName' "RUNNING"

pattern InstanceStateName_SHUTTING_DOWN :: InstanceStateName
pattern InstanceStateName_SHUTTING_DOWN = InstanceStateName' "SHUTTING_DOWN"

pattern InstanceStateName_STOPPED :: InstanceStateName
pattern InstanceStateName_STOPPED = InstanceStateName' "STOPPED"

pattern InstanceStateName_STOPPING :: InstanceStateName
pattern InstanceStateName_STOPPING = InstanceStateName' "STOPPING"

pattern InstanceStateName_TERMINATED :: InstanceStateName
pattern InstanceStateName_TERMINATED = InstanceStateName' "TERMINATED"

{-# COMPLETE
  InstanceStateName_PENDING,
  InstanceStateName_RUNNING,
  InstanceStateName_SHUTTING_DOWN,
  InstanceStateName_STOPPED,
  InstanceStateName_STOPPING,
  InstanceStateName_TERMINATED,
  InstanceStateName'
  #-}
