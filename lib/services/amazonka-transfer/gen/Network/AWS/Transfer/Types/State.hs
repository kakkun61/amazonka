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
-- Module      : Network.AWS.Transfer.Types.State
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transfer.Types.State
  ( State
      ( ..,
        State_OFFLINE,
        State_ONLINE,
        State_STARTING,
        State_START_FAILED,
        State_STOPPING,
        State_STOP_FAILED
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

-- | Describes the condition of a file transfer protocol-enabled server with
-- respect to its ability to perform file operations. There are six
-- possible states: @OFFLINE@, @ONLINE@, @STARTING@, @STOPPING@,
-- @START_FAILED@, and @STOP_FAILED@.
--
-- @OFFLINE@ indicates that the server exists, but that it is not available
-- for file operations. @ONLINE@ indicates that the server is available to
-- perform file operations. @STARTING@ indicates that the server\'s was
-- instantiated, but the server is not yet available to perform file
-- operations. Under normal conditions, it can take a couple of minutes for
-- the server to be completely operational. Both @START_FAILED@ and
-- @STOP_FAILED@ are error conditions.
newtype State = State' {fromState :: Core.Text}
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

pattern State_OFFLINE :: State
pattern State_OFFLINE = State' "OFFLINE"

pattern State_ONLINE :: State
pattern State_ONLINE = State' "ONLINE"

pattern State_STARTING :: State
pattern State_STARTING = State' "STARTING"

pattern State_START_FAILED :: State
pattern State_START_FAILED = State' "START_FAILED"

pattern State_STOPPING :: State
pattern State_STOPPING = State' "STOPPING"

pattern State_STOP_FAILED :: State
pattern State_STOP_FAILED = State' "STOP_FAILED"

{-# COMPLETE
  State_OFFLINE,
  State_ONLINE,
  State_STARTING,
  State_START_FAILED,
  State_STOPPING,
  State_STOP_FAILED,
  State'
  #-}
