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
-- Module      : Network.AWS.GreengrassV2.Types.IoTJobExecutionFailureType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GreengrassV2.Types.IoTJobExecutionFailureType
  ( IoTJobExecutionFailureType
      ( ..,
        IoTJobExecutionFailureType_ALL,
        IoTJobExecutionFailureType_FAILED,
        IoTJobExecutionFailureType_REJECTED,
        IoTJobExecutionFailureType_TIMED_OUT
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype IoTJobExecutionFailureType = IoTJobExecutionFailureType'
  { fromIoTJobExecutionFailureType ::
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

pattern IoTJobExecutionFailureType_ALL :: IoTJobExecutionFailureType
pattern IoTJobExecutionFailureType_ALL = IoTJobExecutionFailureType' "ALL"

pattern IoTJobExecutionFailureType_FAILED :: IoTJobExecutionFailureType
pattern IoTJobExecutionFailureType_FAILED = IoTJobExecutionFailureType' "FAILED"

pattern IoTJobExecutionFailureType_REJECTED :: IoTJobExecutionFailureType
pattern IoTJobExecutionFailureType_REJECTED = IoTJobExecutionFailureType' "REJECTED"

pattern IoTJobExecutionFailureType_TIMED_OUT :: IoTJobExecutionFailureType
pattern IoTJobExecutionFailureType_TIMED_OUT = IoTJobExecutionFailureType' "TIMED_OUT"

{-# COMPLETE
  IoTJobExecutionFailureType_ALL,
  IoTJobExecutionFailureType_FAILED,
  IoTJobExecutionFailureType_REJECTED,
  IoTJobExecutionFailureType_TIMED_OUT,
  IoTJobExecutionFailureType'
  #-}
