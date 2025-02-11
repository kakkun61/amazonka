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
-- Module      : Network.AWS.IoTDeviceAdvisor.Types.SuiteRunStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTDeviceAdvisor.Types.SuiteRunStatus
  ( SuiteRunStatus
      ( ..,
        SuiteRunStatus_CANCELED,
        SuiteRunStatus_ERROR,
        SuiteRunStatus_FAIL,
        SuiteRunStatus_PASS,
        SuiteRunStatus_PASS_WITH_WARNINGS,
        SuiteRunStatus_PENDING,
        SuiteRunStatus_RUNNING,
        SuiteRunStatus_STOPPED,
        SuiteRunStatus_STOPPING
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype SuiteRunStatus = SuiteRunStatus'
  { fromSuiteRunStatus ::
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

pattern SuiteRunStatus_CANCELED :: SuiteRunStatus
pattern SuiteRunStatus_CANCELED = SuiteRunStatus' "CANCELED"

pattern SuiteRunStatus_ERROR :: SuiteRunStatus
pattern SuiteRunStatus_ERROR = SuiteRunStatus' "ERROR"

pattern SuiteRunStatus_FAIL :: SuiteRunStatus
pattern SuiteRunStatus_FAIL = SuiteRunStatus' "FAIL"

pattern SuiteRunStatus_PASS :: SuiteRunStatus
pattern SuiteRunStatus_PASS = SuiteRunStatus' "PASS"

pattern SuiteRunStatus_PASS_WITH_WARNINGS :: SuiteRunStatus
pattern SuiteRunStatus_PASS_WITH_WARNINGS = SuiteRunStatus' "PASS_WITH_WARNINGS"

pattern SuiteRunStatus_PENDING :: SuiteRunStatus
pattern SuiteRunStatus_PENDING = SuiteRunStatus' "PENDING"

pattern SuiteRunStatus_RUNNING :: SuiteRunStatus
pattern SuiteRunStatus_RUNNING = SuiteRunStatus' "RUNNING"

pattern SuiteRunStatus_STOPPED :: SuiteRunStatus
pattern SuiteRunStatus_STOPPED = SuiteRunStatus' "STOPPED"

pattern SuiteRunStatus_STOPPING :: SuiteRunStatus
pattern SuiteRunStatus_STOPPING = SuiteRunStatus' "STOPPING"

{-# COMPLETE
  SuiteRunStatus_CANCELED,
  SuiteRunStatus_ERROR,
  SuiteRunStatus_FAIL,
  SuiteRunStatus_PASS,
  SuiteRunStatus_PASS_WITH_WARNINGS,
  SuiteRunStatus_PENDING,
  SuiteRunStatus_RUNNING,
  SuiteRunStatus_STOPPED,
  SuiteRunStatus_STOPPING,
  SuiteRunStatus'
  #-}
