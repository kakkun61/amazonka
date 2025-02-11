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
-- Module      : Network.AWS.RobOMaker.Types.SimulationJobStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RobOMaker.Types.SimulationJobStatus
  ( SimulationJobStatus
      ( ..,
        SimulationJobStatus_Canceled,
        SimulationJobStatus_Completed,
        SimulationJobStatus_Failed,
        SimulationJobStatus_Pending,
        SimulationJobStatus_Preparing,
        SimulationJobStatus_Restarting,
        SimulationJobStatus_Running,
        SimulationJobStatus_RunningFailed,
        SimulationJobStatus_Terminated,
        SimulationJobStatus_Terminating
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype SimulationJobStatus = SimulationJobStatus'
  { fromSimulationJobStatus ::
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

pattern SimulationJobStatus_Canceled :: SimulationJobStatus
pattern SimulationJobStatus_Canceled = SimulationJobStatus' "Canceled"

pattern SimulationJobStatus_Completed :: SimulationJobStatus
pattern SimulationJobStatus_Completed = SimulationJobStatus' "Completed"

pattern SimulationJobStatus_Failed :: SimulationJobStatus
pattern SimulationJobStatus_Failed = SimulationJobStatus' "Failed"

pattern SimulationJobStatus_Pending :: SimulationJobStatus
pattern SimulationJobStatus_Pending = SimulationJobStatus' "Pending"

pattern SimulationJobStatus_Preparing :: SimulationJobStatus
pattern SimulationJobStatus_Preparing = SimulationJobStatus' "Preparing"

pattern SimulationJobStatus_Restarting :: SimulationJobStatus
pattern SimulationJobStatus_Restarting = SimulationJobStatus' "Restarting"

pattern SimulationJobStatus_Running :: SimulationJobStatus
pattern SimulationJobStatus_Running = SimulationJobStatus' "Running"

pattern SimulationJobStatus_RunningFailed :: SimulationJobStatus
pattern SimulationJobStatus_RunningFailed = SimulationJobStatus' "RunningFailed"

pattern SimulationJobStatus_Terminated :: SimulationJobStatus
pattern SimulationJobStatus_Terminated = SimulationJobStatus' "Terminated"

pattern SimulationJobStatus_Terminating :: SimulationJobStatus
pattern SimulationJobStatus_Terminating = SimulationJobStatus' "Terminating"

{-# COMPLETE
  SimulationJobStatus_Canceled,
  SimulationJobStatus_Completed,
  SimulationJobStatus_Failed,
  SimulationJobStatus_Pending,
  SimulationJobStatus_Preparing,
  SimulationJobStatus_Restarting,
  SimulationJobStatus_Running,
  SimulationJobStatus_RunningFailed,
  SimulationJobStatus_Terminated,
  SimulationJobStatus_Terminating,
  SimulationJobStatus'
  #-}
