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
-- Module      : Network.AWS.MwAA.Types.EnvironmentStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MwAA.Types.EnvironmentStatus
  ( EnvironmentStatus
      ( ..,
        EnvironmentStatus_AVAILABLE,
        EnvironmentStatus_CREATE_FAILED,
        EnvironmentStatus_CREATING,
        EnvironmentStatus_DELETED,
        EnvironmentStatus_DELETING,
        EnvironmentStatus_UNAVAILABLE,
        EnvironmentStatus_UPDATE_FAILED,
        EnvironmentStatus_UPDATING
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype EnvironmentStatus = EnvironmentStatus'
  { fromEnvironmentStatus ::
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

pattern EnvironmentStatus_AVAILABLE :: EnvironmentStatus
pattern EnvironmentStatus_AVAILABLE = EnvironmentStatus' "AVAILABLE"

pattern EnvironmentStatus_CREATE_FAILED :: EnvironmentStatus
pattern EnvironmentStatus_CREATE_FAILED = EnvironmentStatus' "CREATE_FAILED"

pattern EnvironmentStatus_CREATING :: EnvironmentStatus
pattern EnvironmentStatus_CREATING = EnvironmentStatus' "CREATING"

pattern EnvironmentStatus_DELETED :: EnvironmentStatus
pattern EnvironmentStatus_DELETED = EnvironmentStatus' "DELETED"

pattern EnvironmentStatus_DELETING :: EnvironmentStatus
pattern EnvironmentStatus_DELETING = EnvironmentStatus' "DELETING"

pattern EnvironmentStatus_UNAVAILABLE :: EnvironmentStatus
pattern EnvironmentStatus_UNAVAILABLE = EnvironmentStatus' "UNAVAILABLE"

pattern EnvironmentStatus_UPDATE_FAILED :: EnvironmentStatus
pattern EnvironmentStatus_UPDATE_FAILED = EnvironmentStatus' "UPDATE_FAILED"

pattern EnvironmentStatus_UPDATING :: EnvironmentStatus
pattern EnvironmentStatus_UPDATING = EnvironmentStatus' "UPDATING"

{-# COMPLETE
  EnvironmentStatus_AVAILABLE,
  EnvironmentStatus_CREATE_FAILED,
  EnvironmentStatus_CREATING,
  EnvironmentStatus_DELETED,
  EnvironmentStatus_DELETING,
  EnvironmentStatus_UNAVAILABLE,
  EnvironmentStatus_UPDATE_FAILED,
  EnvironmentStatus_UPDATING,
  EnvironmentStatus'
  #-}
