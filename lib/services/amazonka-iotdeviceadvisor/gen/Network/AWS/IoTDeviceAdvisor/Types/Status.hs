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
-- Module      : Network.AWS.IoTDeviceAdvisor.Types.Status
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTDeviceAdvisor.Types.Status
  ( Status
      ( ..,
        Status_CANCELED,
        Status_ERROR,
        Status_FAIL,
        Status_PASS,
        Status_PASS_WITH_WARNINGS,
        Status_PENDING,
        Status_RUNNING,
        Status_STOPPED,
        Status_STOPPING
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype Status = Status' {fromStatus :: Core.Text}
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

pattern Status_CANCELED :: Status
pattern Status_CANCELED = Status' "CANCELED"

pattern Status_ERROR :: Status
pattern Status_ERROR = Status' "ERROR"

pattern Status_FAIL :: Status
pattern Status_FAIL = Status' "FAIL"

pattern Status_PASS :: Status
pattern Status_PASS = Status' "PASS"

pattern Status_PASS_WITH_WARNINGS :: Status
pattern Status_PASS_WITH_WARNINGS = Status' "PASS_WITH_WARNINGS"

pattern Status_PENDING :: Status
pattern Status_PENDING = Status' "PENDING"

pattern Status_RUNNING :: Status
pattern Status_RUNNING = Status' "RUNNING"

pattern Status_STOPPED :: Status
pattern Status_STOPPED = Status' "STOPPED"

pattern Status_STOPPING :: Status
pattern Status_STOPPING = Status' "STOPPING"

{-# COMPLETE
  Status_CANCELED,
  Status_ERROR,
  Status_FAIL,
  Status_PASS,
  Status_PASS_WITH_WARNINGS,
  Status_PENDING,
  Status_RUNNING,
  Status_STOPPED,
  Status_STOPPING,
  Status'
  #-}
