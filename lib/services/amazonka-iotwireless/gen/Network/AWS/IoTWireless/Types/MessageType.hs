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
-- Module      : Network.AWS.IoTWireless.Types.MessageType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTWireless.Types.MessageType
  ( MessageType
      ( ..,
        MessageType_CUSTOM_COMMAND_ID_GET,
        MessageType_CUSTOM_COMMAND_ID_NOTIFY,
        MessageType_CUSTOM_COMMAND_ID_RESP,
        MessageType_CUSTOM_COMMAND_ID_SET
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

-- | Sidewalk device message type. Default value is
-- @CUSTOM_COMMAND_ID_NOTIFY@.
newtype MessageType = MessageType'
  { fromMessageType ::
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

pattern MessageType_CUSTOM_COMMAND_ID_GET :: MessageType
pattern MessageType_CUSTOM_COMMAND_ID_GET = MessageType' "CUSTOM_COMMAND_ID_GET"

pattern MessageType_CUSTOM_COMMAND_ID_NOTIFY :: MessageType
pattern MessageType_CUSTOM_COMMAND_ID_NOTIFY = MessageType' "CUSTOM_COMMAND_ID_NOTIFY"

pattern MessageType_CUSTOM_COMMAND_ID_RESP :: MessageType
pattern MessageType_CUSTOM_COMMAND_ID_RESP = MessageType' "CUSTOM_COMMAND_ID_RESP"

pattern MessageType_CUSTOM_COMMAND_ID_SET :: MessageType
pattern MessageType_CUSTOM_COMMAND_ID_SET = MessageType' "CUSTOM_COMMAND_ID_SET"

{-# COMPLETE
  MessageType_CUSTOM_COMMAND_ID_GET,
  MessageType_CUSTOM_COMMAND_ID_NOTIFY,
  MessageType_CUSTOM_COMMAND_ID_RESP,
  MessageType_CUSTOM_COMMAND_ID_SET,
  MessageType'
  #-}
