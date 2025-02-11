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
-- Module      : Network.AWS.MGN.Types.ChangeServerLifeCycleStateSourceServerLifecycleState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MGN.Types.ChangeServerLifeCycleStateSourceServerLifecycleState
  ( ChangeServerLifeCycleStateSourceServerLifecycleState
      ( ..,
        ChangeServerLifeCycleStateSourceServerLifecycleState_CUTOVER,
        ChangeServerLifeCycleStateSourceServerLifecycleState_READY_FOR_CUTOVER,
        ChangeServerLifeCycleStateSourceServerLifecycleState_READY_FOR_TEST
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype ChangeServerLifeCycleStateSourceServerLifecycleState = ChangeServerLifeCycleStateSourceServerLifecycleState'
  { fromChangeServerLifeCycleStateSourceServerLifecycleState ::
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

pattern ChangeServerLifeCycleStateSourceServerLifecycleState_CUTOVER :: ChangeServerLifeCycleStateSourceServerLifecycleState
pattern ChangeServerLifeCycleStateSourceServerLifecycleState_CUTOVER = ChangeServerLifeCycleStateSourceServerLifecycleState' "CUTOVER"

pattern ChangeServerLifeCycleStateSourceServerLifecycleState_READY_FOR_CUTOVER :: ChangeServerLifeCycleStateSourceServerLifecycleState
pattern ChangeServerLifeCycleStateSourceServerLifecycleState_READY_FOR_CUTOVER = ChangeServerLifeCycleStateSourceServerLifecycleState' "READY_FOR_CUTOVER"

pattern ChangeServerLifeCycleStateSourceServerLifecycleState_READY_FOR_TEST :: ChangeServerLifeCycleStateSourceServerLifecycleState
pattern ChangeServerLifeCycleStateSourceServerLifecycleState_READY_FOR_TEST = ChangeServerLifeCycleStateSourceServerLifecycleState' "READY_FOR_TEST"

{-# COMPLETE
  ChangeServerLifeCycleStateSourceServerLifecycleState_CUTOVER,
  ChangeServerLifeCycleStateSourceServerLifecycleState_READY_FOR_CUTOVER,
  ChangeServerLifeCycleStateSourceServerLifecycleState_READY_FOR_TEST,
  ChangeServerLifeCycleStateSourceServerLifecycleState'
  #-}
