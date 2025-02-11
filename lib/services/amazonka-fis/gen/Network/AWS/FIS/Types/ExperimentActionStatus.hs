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
-- Module      : Network.AWS.FIS.Types.ExperimentActionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FIS.Types.ExperimentActionStatus
  ( ExperimentActionStatus
      ( ..,
        ExperimentActionStatus_Cancelled,
        ExperimentActionStatus_Completed,
        ExperimentActionStatus_Failed,
        ExperimentActionStatus_Initiating,
        ExperimentActionStatus_Pending,
        ExperimentActionStatus_Running,
        ExperimentActionStatus_Stopped,
        ExperimentActionStatus_Stopping
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype ExperimentActionStatus = ExperimentActionStatus'
  { fromExperimentActionStatus ::
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

pattern ExperimentActionStatus_Cancelled :: ExperimentActionStatus
pattern ExperimentActionStatus_Cancelled = ExperimentActionStatus' "cancelled"

pattern ExperimentActionStatus_Completed :: ExperimentActionStatus
pattern ExperimentActionStatus_Completed = ExperimentActionStatus' "completed"

pattern ExperimentActionStatus_Failed :: ExperimentActionStatus
pattern ExperimentActionStatus_Failed = ExperimentActionStatus' "failed"

pattern ExperimentActionStatus_Initiating :: ExperimentActionStatus
pattern ExperimentActionStatus_Initiating = ExperimentActionStatus' "initiating"

pattern ExperimentActionStatus_Pending :: ExperimentActionStatus
pattern ExperimentActionStatus_Pending = ExperimentActionStatus' "pending"

pattern ExperimentActionStatus_Running :: ExperimentActionStatus
pattern ExperimentActionStatus_Running = ExperimentActionStatus' "running"

pattern ExperimentActionStatus_Stopped :: ExperimentActionStatus
pattern ExperimentActionStatus_Stopped = ExperimentActionStatus' "stopped"

pattern ExperimentActionStatus_Stopping :: ExperimentActionStatus
pattern ExperimentActionStatus_Stopping = ExperimentActionStatus' "stopping"

{-# COMPLETE
  ExperimentActionStatus_Cancelled,
  ExperimentActionStatus_Completed,
  ExperimentActionStatus_Failed,
  ExperimentActionStatus_Initiating,
  ExperimentActionStatus_Pending,
  ExperimentActionStatus_Running,
  ExperimentActionStatus_Stopped,
  ExperimentActionStatus_Stopping,
  ExperimentActionStatus'
  #-}
