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
-- Module      : Network.AWS.LookoutEquipment.Types.InferenceSchedulerStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LookoutEquipment.Types.InferenceSchedulerStatus
  ( InferenceSchedulerStatus
      ( ..,
        InferenceSchedulerStatus_PENDING,
        InferenceSchedulerStatus_RUNNING,
        InferenceSchedulerStatus_STOPPED,
        InferenceSchedulerStatus_STOPPING
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype InferenceSchedulerStatus = InferenceSchedulerStatus'
  { fromInferenceSchedulerStatus ::
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

pattern InferenceSchedulerStatus_PENDING :: InferenceSchedulerStatus
pattern InferenceSchedulerStatus_PENDING = InferenceSchedulerStatus' "PENDING"

pattern InferenceSchedulerStatus_RUNNING :: InferenceSchedulerStatus
pattern InferenceSchedulerStatus_RUNNING = InferenceSchedulerStatus' "RUNNING"

pattern InferenceSchedulerStatus_STOPPED :: InferenceSchedulerStatus
pattern InferenceSchedulerStatus_STOPPED = InferenceSchedulerStatus' "STOPPED"

pattern InferenceSchedulerStatus_STOPPING :: InferenceSchedulerStatus
pattern InferenceSchedulerStatus_STOPPING = InferenceSchedulerStatus' "STOPPING"

{-# COMPLETE
  InferenceSchedulerStatus_PENDING,
  InferenceSchedulerStatus_RUNNING,
  InferenceSchedulerStatus_STOPPED,
  InferenceSchedulerStatus_STOPPING,
  InferenceSchedulerStatus'
  #-}
