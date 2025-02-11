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
-- Module      : Network.AWS.RobOMaker.Types.WorldGenerationJobStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RobOMaker.Types.WorldGenerationJobStatus
  ( WorldGenerationJobStatus
      ( ..,
        WorldGenerationJobStatus_Canceled,
        WorldGenerationJobStatus_Canceling,
        WorldGenerationJobStatus_Completed,
        WorldGenerationJobStatus_Failed,
        WorldGenerationJobStatus_PartialFailed,
        WorldGenerationJobStatus_Pending,
        WorldGenerationJobStatus_Running
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype WorldGenerationJobStatus = WorldGenerationJobStatus'
  { fromWorldGenerationJobStatus ::
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

pattern WorldGenerationJobStatus_Canceled :: WorldGenerationJobStatus
pattern WorldGenerationJobStatus_Canceled = WorldGenerationJobStatus' "Canceled"

pattern WorldGenerationJobStatus_Canceling :: WorldGenerationJobStatus
pattern WorldGenerationJobStatus_Canceling = WorldGenerationJobStatus' "Canceling"

pattern WorldGenerationJobStatus_Completed :: WorldGenerationJobStatus
pattern WorldGenerationJobStatus_Completed = WorldGenerationJobStatus' "Completed"

pattern WorldGenerationJobStatus_Failed :: WorldGenerationJobStatus
pattern WorldGenerationJobStatus_Failed = WorldGenerationJobStatus' "Failed"

pattern WorldGenerationJobStatus_PartialFailed :: WorldGenerationJobStatus
pattern WorldGenerationJobStatus_PartialFailed = WorldGenerationJobStatus' "PartialFailed"

pattern WorldGenerationJobStatus_Pending :: WorldGenerationJobStatus
pattern WorldGenerationJobStatus_Pending = WorldGenerationJobStatus' "Pending"

pattern WorldGenerationJobStatus_Running :: WorldGenerationJobStatus
pattern WorldGenerationJobStatus_Running = WorldGenerationJobStatus' "Running"

{-# COMPLETE
  WorldGenerationJobStatus_Canceled,
  WorldGenerationJobStatus_Canceling,
  WorldGenerationJobStatus_Completed,
  WorldGenerationJobStatus_Failed,
  WorldGenerationJobStatus_PartialFailed,
  WorldGenerationJobStatus_Pending,
  WorldGenerationJobStatus_Running,
  WorldGenerationJobStatus'
  #-}
