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
-- Module      : Network.AWS.Grafana.Types.WorkspaceStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Grafana.Types.WorkspaceStatus
  ( WorkspaceStatus
      ( ..,
        WorkspaceStatus_ACTIVE,
        WorkspaceStatus_CREATING,
        WorkspaceStatus_CREATION_FAILED,
        WorkspaceStatus_DELETING,
        WorkspaceStatus_DELETION_FAILED,
        WorkspaceStatus_FAILED,
        WorkspaceStatus_LICENSE_REMOVAL_FAILED,
        WorkspaceStatus_UPDATE_FAILED,
        WorkspaceStatus_UPDATING,
        WorkspaceStatus_UPGRADE_FAILED,
        WorkspaceStatus_UPGRADING
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype WorkspaceStatus = WorkspaceStatus'
  { fromWorkspaceStatus ::
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

pattern WorkspaceStatus_ACTIVE :: WorkspaceStatus
pattern WorkspaceStatus_ACTIVE = WorkspaceStatus' "ACTIVE"

pattern WorkspaceStatus_CREATING :: WorkspaceStatus
pattern WorkspaceStatus_CREATING = WorkspaceStatus' "CREATING"

pattern WorkspaceStatus_CREATION_FAILED :: WorkspaceStatus
pattern WorkspaceStatus_CREATION_FAILED = WorkspaceStatus' "CREATION_FAILED"

pattern WorkspaceStatus_DELETING :: WorkspaceStatus
pattern WorkspaceStatus_DELETING = WorkspaceStatus' "DELETING"

pattern WorkspaceStatus_DELETION_FAILED :: WorkspaceStatus
pattern WorkspaceStatus_DELETION_FAILED = WorkspaceStatus' "DELETION_FAILED"

pattern WorkspaceStatus_FAILED :: WorkspaceStatus
pattern WorkspaceStatus_FAILED = WorkspaceStatus' "FAILED"

pattern WorkspaceStatus_LICENSE_REMOVAL_FAILED :: WorkspaceStatus
pattern WorkspaceStatus_LICENSE_REMOVAL_FAILED = WorkspaceStatus' "LICENSE_REMOVAL_FAILED"

pattern WorkspaceStatus_UPDATE_FAILED :: WorkspaceStatus
pattern WorkspaceStatus_UPDATE_FAILED = WorkspaceStatus' "UPDATE_FAILED"

pattern WorkspaceStatus_UPDATING :: WorkspaceStatus
pattern WorkspaceStatus_UPDATING = WorkspaceStatus' "UPDATING"

pattern WorkspaceStatus_UPGRADE_FAILED :: WorkspaceStatus
pattern WorkspaceStatus_UPGRADE_FAILED = WorkspaceStatus' "UPGRADE_FAILED"

pattern WorkspaceStatus_UPGRADING :: WorkspaceStatus
pattern WorkspaceStatus_UPGRADING = WorkspaceStatus' "UPGRADING"

{-# COMPLETE
  WorkspaceStatus_ACTIVE,
  WorkspaceStatus_CREATING,
  WorkspaceStatus_CREATION_FAILED,
  WorkspaceStatus_DELETING,
  WorkspaceStatus_DELETION_FAILED,
  WorkspaceStatus_FAILED,
  WorkspaceStatus_LICENSE_REMOVAL_FAILED,
  WorkspaceStatus_UPDATE_FAILED,
  WorkspaceStatus_UPDATING,
  WorkspaceStatus_UPGRADE_FAILED,
  WorkspaceStatus_UPGRADING,
  WorkspaceStatus'
  #-}
