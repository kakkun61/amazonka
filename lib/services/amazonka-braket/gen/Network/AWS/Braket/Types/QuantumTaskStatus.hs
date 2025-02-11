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
-- Module      : Network.AWS.Braket.Types.QuantumTaskStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Braket.Types.QuantumTaskStatus
  ( QuantumTaskStatus
      ( ..,
        QuantumTaskStatus_CANCELLED,
        QuantumTaskStatus_CANCELLING,
        QuantumTaskStatus_COMPLETED,
        QuantumTaskStatus_CREATED,
        QuantumTaskStatus_FAILED,
        QuantumTaskStatus_QUEUED,
        QuantumTaskStatus_RUNNING
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype QuantumTaskStatus = QuantumTaskStatus'
  { fromQuantumTaskStatus ::
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

pattern QuantumTaskStatus_CANCELLED :: QuantumTaskStatus
pattern QuantumTaskStatus_CANCELLED = QuantumTaskStatus' "CANCELLED"

pattern QuantumTaskStatus_CANCELLING :: QuantumTaskStatus
pattern QuantumTaskStatus_CANCELLING = QuantumTaskStatus' "CANCELLING"

pattern QuantumTaskStatus_COMPLETED :: QuantumTaskStatus
pattern QuantumTaskStatus_COMPLETED = QuantumTaskStatus' "COMPLETED"

pattern QuantumTaskStatus_CREATED :: QuantumTaskStatus
pattern QuantumTaskStatus_CREATED = QuantumTaskStatus' "CREATED"

pattern QuantumTaskStatus_FAILED :: QuantumTaskStatus
pattern QuantumTaskStatus_FAILED = QuantumTaskStatus' "FAILED"

pattern QuantumTaskStatus_QUEUED :: QuantumTaskStatus
pattern QuantumTaskStatus_QUEUED = QuantumTaskStatus' "QUEUED"

pattern QuantumTaskStatus_RUNNING :: QuantumTaskStatus
pattern QuantumTaskStatus_RUNNING = QuantumTaskStatus' "RUNNING"

{-# COMPLETE
  QuantumTaskStatus_CANCELLED,
  QuantumTaskStatus_CANCELLING,
  QuantumTaskStatus_COMPLETED,
  QuantumTaskStatus_CREATED,
  QuantumTaskStatus_FAILED,
  QuantumTaskStatus_QUEUED,
  QuantumTaskStatus_RUNNING,
  QuantumTaskStatus'
  #-}
