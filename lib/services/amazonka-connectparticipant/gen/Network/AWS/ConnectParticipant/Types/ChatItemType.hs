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
-- Module      : Network.AWS.ConnectParticipant.Types.ChatItemType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ConnectParticipant.Types.ChatItemType
  ( ChatItemType
      ( ..,
        ChatItemType_ATTACHMENT,
        ChatItemType_CHAT_ENDED,
        ChatItemType_CONNECTION_ACK,
        ChatItemType_EVENT,
        ChatItemType_MESSAGE,
        ChatItemType_PARTICIPANT_JOINED,
        ChatItemType_PARTICIPANT_LEFT,
        ChatItemType_TRANSFER_FAILED,
        ChatItemType_TRANSFER_SUCCEEDED,
        ChatItemType_TYPING
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype ChatItemType = ChatItemType'
  { fromChatItemType ::
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

pattern ChatItemType_ATTACHMENT :: ChatItemType
pattern ChatItemType_ATTACHMENT = ChatItemType' "ATTACHMENT"

pattern ChatItemType_CHAT_ENDED :: ChatItemType
pattern ChatItemType_CHAT_ENDED = ChatItemType' "CHAT_ENDED"

pattern ChatItemType_CONNECTION_ACK :: ChatItemType
pattern ChatItemType_CONNECTION_ACK = ChatItemType' "CONNECTION_ACK"

pattern ChatItemType_EVENT :: ChatItemType
pattern ChatItemType_EVENT = ChatItemType' "EVENT"

pattern ChatItemType_MESSAGE :: ChatItemType
pattern ChatItemType_MESSAGE = ChatItemType' "MESSAGE"

pattern ChatItemType_PARTICIPANT_JOINED :: ChatItemType
pattern ChatItemType_PARTICIPANT_JOINED = ChatItemType' "PARTICIPANT_JOINED"

pattern ChatItemType_PARTICIPANT_LEFT :: ChatItemType
pattern ChatItemType_PARTICIPANT_LEFT = ChatItemType' "PARTICIPANT_LEFT"

pattern ChatItemType_TRANSFER_FAILED :: ChatItemType
pattern ChatItemType_TRANSFER_FAILED = ChatItemType' "TRANSFER_FAILED"

pattern ChatItemType_TRANSFER_SUCCEEDED :: ChatItemType
pattern ChatItemType_TRANSFER_SUCCEEDED = ChatItemType' "TRANSFER_SUCCEEDED"

pattern ChatItemType_TYPING :: ChatItemType
pattern ChatItemType_TYPING = ChatItemType' "TYPING"

{-# COMPLETE
  ChatItemType_ATTACHMENT,
  ChatItemType_CHAT_ENDED,
  ChatItemType_CONNECTION_ACK,
  ChatItemType_EVENT,
  ChatItemType_MESSAGE,
  ChatItemType_PARTICIPANT_JOINED,
  ChatItemType_PARTICIPANT_LEFT,
  ChatItemType_TRANSFER_FAILED,
  ChatItemType_TRANSFER_SUCCEEDED,
  ChatItemType_TYPING,
  ChatItemType'
  #-}
