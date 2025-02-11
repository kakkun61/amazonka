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
-- Module      : Network.AWS.GreengrassV2.Types.DeploymentStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GreengrassV2.Types.DeploymentStatus
  ( DeploymentStatus
      ( ..,
        DeploymentStatus_ACTIVE,
        DeploymentStatus_CANCELED,
        DeploymentStatus_COMPLETED,
        DeploymentStatus_FAILED,
        DeploymentStatus_INACTIVE
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

pattern DeploymentStatus_ACTIVE :: DeploymentStatus
pattern DeploymentStatus_ACTIVE = DeploymentStatus' "ACTIVE"

pattern DeploymentStatus_CANCELED :: DeploymentStatus
pattern DeploymentStatus_CANCELED = DeploymentStatus' "CANCELED"

pattern DeploymentStatus_COMPLETED :: DeploymentStatus
pattern DeploymentStatus_COMPLETED = DeploymentStatus' "COMPLETED"

pattern DeploymentStatus_FAILED :: DeploymentStatus
pattern DeploymentStatus_FAILED = DeploymentStatus' "FAILED"

pattern DeploymentStatus_INACTIVE :: DeploymentStatus
pattern DeploymentStatus_INACTIVE = DeploymentStatus' "INACTIVE"

{-# COMPLETE
  DeploymentStatus_ACTIVE,
  DeploymentStatus_CANCELED,
  DeploymentStatus_COMPLETED,
  DeploymentStatus_FAILED,
  DeploymentStatus_INACTIVE,
  DeploymentStatus'
  #-}
