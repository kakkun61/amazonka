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
-- Module      : Network.AWS.Proton.Types.DeploymentStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Proton.Types.DeploymentStatus
  ( DeploymentStatus
      ( ..,
        DeploymentStatus_CANCELLED,
        DeploymentStatus_CANCELLING,
        DeploymentStatus_DELETE_COMPLETE,
        DeploymentStatus_DELETE_FAILED,
        DeploymentStatus_DELETE_IN_PROGRESS,
        DeploymentStatus_FAILED,
        DeploymentStatus_IN_PROGRESS,
        DeploymentStatus_SUCCEEDED
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype DeploymentStatus = DeploymentStatus'
  { fromDeploymentStatus ::
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

pattern DeploymentStatus_CANCELLED :: DeploymentStatus
pattern DeploymentStatus_CANCELLED = DeploymentStatus' "CANCELLED"

pattern DeploymentStatus_CANCELLING :: DeploymentStatus
pattern DeploymentStatus_CANCELLING = DeploymentStatus' "CANCELLING"

pattern DeploymentStatus_DELETE_COMPLETE :: DeploymentStatus
pattern DeploymentStatus_DELETE_COMPLETE = DeploymentStatus' "DELETE_COMPLETE"

pattern DeploymentStatus_DELETE_FAILED :: DeploymentStatus
pattern DeploymentStatus_DELETE_FAILED = DeploymentStatus' "DELETE_FAILED"

pattern DeploymentStatus_DELETE_IN_PROGRESS :: DeploymentStatus
pattern DeploymentStatus_DELETE_IN_PROGRESS = DeploymentStatus' "DELETE_IN_PROGRESS"

pattern DeploymentStatus_FAILED :: DeploymentStatus
pattern DeploymentStatus_FAILED = DeploymentStatus' "FAILED"

pattern DeploymentStatus_IN_PROGRESS :: DeploymentStatus
pattern DeploymentStatus_IN_PROGRESS = DeploymentStatus' "IN_PROGRESS"

pattern DeploymentStatus_SUCCEEDED :: DeploymentStatus
pattern DeploymentStatus_SUCCEEDED = DeploymentStatus' "SUCCEEDED"

{-# COMPLETE
  DeploymentStatus_CANCELLED,
  DeploymentStatus_CANCELLING,
  DeploymentStatus_DELETE_COMPLETE,
  DeploymentStatus_DELETE_FAILED,
  DeploymentStatus_DELETE_IN_PROGRESS,
  DeploymentStatus_FAILED,
  DeploymentStatus_IN_PROGRESS,
  DeploymentStatus_SUCCEEDED,
  DeploymentStatus'
  #-}
