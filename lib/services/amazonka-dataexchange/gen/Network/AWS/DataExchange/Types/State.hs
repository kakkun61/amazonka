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
-- Module      : Network.AWS.DataExchange.Types.State
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DataExchange.Types.State
  ( State
      ( ..,
        State_CANCELLED,
        State_COMPLETED,
        State_ERROR,
        State_IN_PROGRESS,
        State_TIMED_OUT,
        State_WAITING
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

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

pattern State_CANCELLED :: State
pattern State_CANCELLED = State' "CANCELLED"

pattern State_COMPLETED :: State
pattern State_COMPLETED = State' "COMPLETED"

pattern State_ERROR :: State
pattern State_ERROR = State' "ERROR"

pattern State_IN_PROGRESS :: State
pattern State_IN_PROGRESS = State' "IN_PROGRESS"

pattern State_TIMED_OUT :: State
pattern State_TIMED_OUT = State' "TIMED_OUT"

pattern State_WAITING :: State
pattern State_WAITING = State' "WAITING"

{-# COMPLETE
  State_CANCELLED,
  State_COMPLETED,
  State_ERROR,
  State_IN_PROGRESS,
  State_TIMED_OUT,
  State_WAITING,
  State'
  #-}
