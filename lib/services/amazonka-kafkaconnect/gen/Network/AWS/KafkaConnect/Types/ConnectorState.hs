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
-- Module      : Network.AWS.KafkaConnect.Types.ConnectorState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KafkaConnect.Types.ConnectorState
  ( ConnectorState
      ( ..,
        ConnectorState_CREATING,
        ConnectorState_DELETING,
        ConnectorState_FAILED,
        ConnectorState_RUNNING,
        ConnectorState_UPDATING
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype ConnectorState = ConnectorState'
  { fromConnectorState ::
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

pattern ConnectorState_CREATING :: ConnectorState
pattern ConnectorState_CREATING = ConnectorState' "CREATING"

pattern ConnectorState_DELETING :: ConnectorState
pattern ConnectorState_DELETING = ConnectorState' "DELETING"

pattern ConnectorState_FAILED :: ConnectorState
pattern ConnectorState_FAILED = ConnectorState' "FAILED"

pattern ConnectorState_RUNNING :: ConnectorState
pattern ConnectorState_RUNNING = ConnectorState' "RUNNING"

pattern ConnectorState_UPDATING :: ConnectorState
pattern ConnectorState_UPDATING = ConnectorState' "UPDATING"

{-# COMPLETE
  ConnectorState_CREATING,
  ConnectorState_DELETING,
  ConnectorState_FAILED,
  ConnectorState_RUNNING,
  ConnectorState_UPDATING,
  ConnectorState'
  #-}
