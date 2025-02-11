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
-- Module      : Network.AWS.Transfer.Types.ExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transfer.Types.ExecutionStatus
  ( ExecutionStatus
      ( ..,
        ExecutionStatus_COMPLETED,
        ExecutionStatus_EXCEPTION,
        ExecutionStatus_HANDLING_EXCEPTION,
        ExecutionStatus_IN_PROGRESS
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype ExecutionStatus = ExecutionStatus'
  { fromExecutionStatus ::
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

pattern ExecutionStatus_COMPLETED :: ExecutionStatus
pattern ExecutionStatus_COMPLETED = ExecutionStatus' "COMPLETED"

pattern ExecutionStatus_EXCEPTION :: ExecutionStatus
pattern ExecutionStatus_EXCEPTION = ExecutionStatus' "EXCEPTION"

pattern ExecutionStatus_HANDLING_EXCEPTION :: ExecutionStatus
pattern ExecutionStatus_HANDLING_EXCEPTION = ExecutionStatus' "HANDLING_EXCEPTION"

pattern ExecutionStatus_IN_PROGRESS :: ExecutionStatus
pattern ExecutionStatus_IN_PROGRESS = ExecutionStatus' "IN_PROGRESS"

{-# COMPLETE
  ExecutionStatus_COMPLETED,
  ExecutionStatus_EXCEPTION,
  ExecutionStatus_HANDLING_EXCEPTION,
  ExecutionStatus_IN_PROGRESS,
  ExecutionStatus'
  #-}
