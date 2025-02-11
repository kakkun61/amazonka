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
-- Module      : Network.AWS.RobOMaker.Types.WorldExportJobStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RobOMaker.Types.WorldExportJobStatus
  ( WorldExportJobStatus
      ( ..,
        WorldExportJobStatus_Canceled,
        WorldExportJobStatus_Canceling,
        WorldExportJobStatus_Completed,
        WorldExportJobStatus_Failed,
        WorldExportJobStatus_Pending,
        WorldExportJobStatus_Running
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype WorldExportJobStatus = WorldExportJobStatus'
  { fromWorldExportJobStatus ::
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

pattern WorldExportJobStatus_Canceled :: WorldExportJobStatus
pattern WorldExportJobStatus_Canceled = WorldExportJobStatus' "Canceled"

pattern WorldExportJobStatus_Canceling :: WorldExportJobStatus
pattern WorldExportJobStatus_Canceling = WorldExportJobStatus' "Canceling"

pattern WorldExportJobStatus_Completed :: WorldExportJobStatus
pattern WorldExportJobStatus_Completed = WorldExportJobStatus' "Completed"

pattern WorldExportJobStatus_Failed :: WorldExportJobStatus
pattern WorldExportJobStatus_Failed = WorldExportJobStatus' "Failed"

pattern WorldExportJobStatus_Pending :: WorldExportJobStatus
pattern WorldExportJobStatus_Pending = WorldExportJobStatus' "Pending"

pattern WorldExportJobStatus_Running :: WorldExportJobStatus
pattern WorldExportJobStatus_Running = WorldExportJobStatus' "Running"

{-# COMPLETE
  WorldExportJobStatus_Canceled,
  WorldExportJobStatus_Canceling,
  WorldExportJobStatus_Completed,
  WorldExportJobStatus_Failed,
  WorldExportJobStatus_Pending,
  WorldExportJobStatus_Running,
  WorldExportJobStatus'
  #-}
