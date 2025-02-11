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
-- Module      : Network.AWS.MacieV2.Types.JobStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MacieV2.Types.JobStatus
  ( JobStatus
      ( ..,
        JobStatus_CANCELLED,
        JobStatus_COMPLETE,
        JobStatus_IDLE,
        JobStatus_PAUSED,
        JobStatus_RUNNING,
        JobStatus_USER_PAUSED
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

-- | The status of a classification job. Possible values are:
newtype JobStatus = JobStatus'
  { fromJobStatus ::
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

pattern JobStatus_CANCELLED :: JobStatus
pattern JobStatus_CANCELLED = JobStatus' "CANCELLED"

pattern JobStatus_COMPLETE :: JobStatus
pattern JobStatus_COMPLETE = JobStatus' "COMPLETE"

pattern JobStatus_IDLE :: JobStatus
pattern JobStatus_IDLE = JobStatus' "IDLE"

pattern JobStatus_PAUSED :: JobStatus
pattern JobStatus_PAUSED = JobStatus' "PAUSED"

pattern JobStatus_RUNNING :: JobStatus
pattern JobStatus_RUNNING = JobStatus' "RUNNING"

pattern JobStatus_USER_PAUSED :: JobStatus
pattern JobStatus_USER_PAUSED = JobStatus' "USER_PAUSED"

{-# COMPLETE
  JobStatus_CANCELLED,
  JobStatus_COMPLETE,
  JobStatus_IDLE,
  JobStatus_PAUSED,
  JobStatus_RUNNING,
  JobStatus_USER_PAUSED,
  JobStatus'
  #-}
