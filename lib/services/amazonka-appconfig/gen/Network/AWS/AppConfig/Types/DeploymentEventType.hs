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
-- Module      : Network.AWS.AppConfig.Types.DeploymentEventType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppConfig.Types.DeploymentEventType
  ( DeploymentEventType
      ( ..,
        DeploymentEventType_BAKE_TIME_STARTED,
        DeploymentEventType_DEPLOYMENT_COMPLETED,
        DeploymentEventType_DEPLOYMENT_STARTED,
        DeploymentEventType_PERCENTAGE_UPDATED,
        DeploymentEventType_ROLLBACK_COMPLETED,
        DeploymentEventType_ROLLBACK_STARTED
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype DeploymentEventType = DeploymentEventType'
  { fromDeploymentEventType ::
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

pattern DeploymentEventType_BAKE_TIME_STARTED :: DeploymentEventType
pattern DeploymentEventType_BAKE_TIME_STARTED = DeploymentEventType' "BAKE_TIME_STARTED"

pattern DeploymentEventType_DEPLOYMENT_COMPLETED :: DeploymentEventType
pattern DeploymentEventType_DEPLOYMENT_COMPLETED = DeploymentEventType' "DEPLOYMENT_COMPLETED"

pattern DeploymentEventType_DEPLOYMENT_STARTED :: DeploymentEventType
pattern DeploymentEventType_DEPLOYMENT_STARTED = DeploymentEventType' "DEPLOYMENT_STARTED"

pattern DeploymentEventType_PERCENTAGE_UPDATED :: DeploymentEventType
pattern DeploymentEventType_PERCENTAGE_UPDATED = DeploymentEventType' "PERCENTAGE_UPDATED"

pattern DeploymentEventType_ROLLBACK_COMPLETED :: DeploymentEventType
pattern DeploymentEventType_ROLLBACK_COMPLETED = DeploymentEventType' "ROLLBACK_COMPLETED"

pattern DeploymentEventType_ROLLBACK_STARTED :: DeploymentEventType
pattern DeploymentEventType_ROLLBACK_STARTED = DeploymentEventType' "ROLLBACK_STARTED"

{-# COMPLETE
  DeploymentEventType_BAKE_TIME_STARTED,
  DeploymentEventType_DEPLOYMENT_COMPLETED,
  DeploymentEventType_DEPLOYMENT_STARTED,
  DeploymentEventType_PERCENTAGE_UPDATED,
  DeploymentEventType_ROLLBACK_COMPLETED,
  DeploymentEventType_ROLLBACK_STARTED,
  DeploymentEventType'
  #-}
