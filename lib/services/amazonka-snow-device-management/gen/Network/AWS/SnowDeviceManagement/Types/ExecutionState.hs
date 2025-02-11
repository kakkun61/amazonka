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
-- Module      : Network.AWS.SnowDeviceManagement.Types.ExecutionState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SnowDeviceManagement.Types.ExecutionState
  ( ExecutionState
      ( ..,
        ExecutionState_CANCELED,
        ExecutionState_FAILED,
        ExecutionState_IN_PROGRESS,
        ExecutionState_QUEUED,
        ExecutionState_REJECTED,
        ExecutionState_SUCCEEDED,
        ExecutionState_TIMED_OUT
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype ExecutionState = ExecutionState'
  { fromExecutionState ::
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

pattern ExecutionState_CANCELED :: ExecutionState
pattern ExecutionState_CANCELED = ExecutionState' "CANCELED"

pattern ExecutionState_FAILED :: ExecutionState
pattern ExecutionState_FAILED = ExecutionState' "FAILED"

pattern ExecutionState_IN_PROGRESS :: ExecutionState
pattern ExecutionState_IN_PROGRESS = ExecutionState' "IN_PROGRESS"

pattern ExecutionState_QUEUED :: ExecutionState
pattern ExecutionState_QUEUED = ExecutionState' "QUEUED"

pattern ExecutionState_REJECTED :: ExecutionState
pattern ExecutionState_REJECTED = ExecutionState' "REJECTED"

pattern ExecutionState_SUCCEEDED :: ExecutionState
pattern ExecutionState_SUCCEEDED = ExecutionState' "SUCCEEDED"

pattern ExecutionState_TIMED_OUT :: ExecutionState
pattern ExecutionState_TIMED_OUT = ExecutionState' "TIMED_OUT"

{-# COMPLETE
  ExecutionState_CANCELED,
  ExecutionState_FAILED,
  ExecutionState_IN_PROGRESS,
  ExecutionState_QUEUED,
  ExecutionState_REJECTED,
  ExecutionState_SUCCEEDED,
  ExecutionState_TIMED_OUT,
  ExecutionState'
  #-}
