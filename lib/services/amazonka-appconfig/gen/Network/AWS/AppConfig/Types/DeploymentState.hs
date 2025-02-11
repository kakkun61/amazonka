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
-- Module      : Network.AWS.AppConfig.Types.DeploymentState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppConfig.Types.DeploymentState
  ( DeploymentState
      ( ..,
        DeploymentState_BAKING,
        DeploymentState_COMPLETE,
        DeploymentState_DEPLOYING,
        DeploymentState_ROLLED_BACK,
        DeploymentState_ROLLING_BACK,
        DeploymentState_VALIDATING
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype DeploymentState = DeploymentState'
  { fromDeploymentState ::
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

pattern DeploymentState_BAKING :: DeploymentState
pattern DeploymentState_BAKING = DeploymentState' "BAKING"

pattern DeploymentState_COMPLETE :: DeploymentState
pattern DeploymentState_COMPLETE = DeploymentState' "COMPLETE"

pattern DeploymentState_DEPLOYING :: DeploymentState
pattern DeploymentState_DEPLOYING = DeploymentState' "DEPLOYING"

pattern DeploymentState_ROLLED_BACK :: DeploymentState
pattern DeploymentState_ROLLED_BACK = DeploymentState' "ROLLED_BACK"

pattern DeploymentState_ROLLING_BACK :: DeploymentState
pattern DeploymentState_ROLLING_BACK = DeploymentState' "ROLLING_BACK"

pattern DeploymentState_VALIDATING :: DeploymentState
pattern DeploymentState_VALIDATING = DeploymentState' "VALIDATING"

{-# COMPLETE
  DeploymentState_BAKING,
  DeploymentState_COMPLETE,
  DeploymentState_DEPLOYING,
  DeploymentState_ROLLED_BACK,
  DeploymentState_ROLLING_BACK,
  DeploymentState_VALIDATING,
  DeploymentState'
  #-}
