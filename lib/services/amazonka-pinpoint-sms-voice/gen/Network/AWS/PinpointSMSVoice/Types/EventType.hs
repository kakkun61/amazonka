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
-- Module      : Network.AWS.PinpointSMSVoice.Types.EventType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.PinpointSMSVoice.Types.EventType
  ( EventType
      ( ..,
        EventType_ANSWERED,
        EventType_BUSY,
        EventType_COMPLETED_CALL,
        EventType_FAILED,
        EventType_INITIATED_CALL,
        EventType_NO_ANSWER,
        EventType_RINGING
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

-- | The types of events that are sent to the event destination.
newtype EventType = EventType'
  { fromEventType ::
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

pattern EventType_ANSWERED :: EventType
pattern EventType_ANSWERED = EventType' "ANSWERED"

pattern EventType_BUSY :: EventType
pattern EventType_BUSY = EventType' "BUSY"

pattern EventType_COMPLETED_CALL :: EventType
pattern EventType_COMPLETED_CALL = EventType' "COMPLETED_CALL"

pattern EventType_FAILED :: EventType
pattern EventType_FAILED = EventType' "FAILED"

pattern EventType_INITIATED_CALL :: EventType
pattern EventType_INITIATED_CALL = EventType' "INITIATED_CALL"

pattern EventType_NO_ANSWER :: EventType
pattern EventType_NO_ANSWER = EventType' "NO_ANSWER"

pattern EventType_RINGING :: EventType
pattern EventType_RINGING = EventType' "RINGING"

{-# COMPLETE
  EventType_ANSWERED,
  EventType_BUSY,
  EventType_COMPLETED_CALL,
  EventType_FAILED,
  EventType_INITIATED_CALL,
  EventType_NO_ANSWER,
  EventType_RINGING,
  EventType'
  #-}
