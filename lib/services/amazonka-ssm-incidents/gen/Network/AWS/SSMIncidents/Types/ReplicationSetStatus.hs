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
-- Module      : Network.AWS.SSMIncidents.Types.ReplicationSetStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSMIncidents.Types.ReplicationSetStatus
  ( ReplicationSetStatus
      ( ..,
        ReplicationSetStatus_ACTIVE,
        ReplicationSetStatus_CREATING,
        ReplicationSetStatus_DELETING,
        ReplicationSetStatus_FAILED,
        ReplicationSetStatus_UPDATING
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype ReplicationSetStatus = ReplicationSetStatus'
  { fromReplicationSetStatus ::
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

pattern ReplicationSetStatus_ACTIVE :: ReplicationSetStatus
pattern ReplicationSetStatus_ACTIVE = ReplicationSetStatus' "ACTIVE"

pattern ReplicationSetStatus_CREATING :: ReplicationSetStatus
pattern ReplicationSetStatus_CREATING = ReplicationSetStatus' "CREATING"

pattern ReplicationSetStatus_DELETING :: ReplicationSetStatus
pattern ReplicationSetStatus_DELETING = ReplicationSetStatus' "DELETING"

pattern ReplicationSetStatus_FAILED :: ReplicationSetStatus
pattern ReplicationSetStatus_FAILED = ReplicationSetStatus' "FAILED"

pattern ReplicationSetStatus_UPDATING :: ReplicationSetStatus
pattern ReplicationSetStatus_UPDATING = ReplicationSetStatus' "UPDATING"

{-# COMPLETE
  ReplicationSetStatus_ACTIVE,
  ReplicationSetStatus_CREATING,
  ReplicationSetStatus_DELETING,
  ReplicationSetStatus_FAILED,
  ReplicationSetStatus_UPDATING,
  ReplicationSetStatus'
  #-}
