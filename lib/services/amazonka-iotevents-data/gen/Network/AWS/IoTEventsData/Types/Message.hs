{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTEventsData.Types.Message
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTEventsData.Types.Message where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTEventsData.Types.TimestampValue
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about a message.
--
-- /See:/ 'newMessage' smart constructor.
data Message = Message'
  { -- | The timestamp associated with the message.
    timestamp :: Prelude.Maybe TimestampValue,
    -- | The ID to assign to the message. Within each batch sent, each
    -- @\"messageId\"@ must be unique.
    messageId :: Prelude.Text,
    -- | The name of the input into which the message payload is transformed.
    inputName :: Prelude.Text,
    -- | The payload of the message. This can be a JSON string or a
    -- Base-64-encoded string representing binary data (in which case you must
    -- decode it).
    payload :: Core.Base64
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Message' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'timestamp', 'message_timestamp' - The timestamp associated with the message.
--
-- 'messageId', 'message_messageId' - The ID to assign to the message. Within each batch sent, each
-- @\"messageId\"@ must be unique.
--
-- 'inputName', 'message_inputName' - The name of the input into which the message payload is transformed.
--
-- 'payload', 'message_payload' - The payload of the message. This can be a JSON string or a
-- Base-64-encoded string representing binary data (in which case you must
-- decode it).--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
newMessage ::
  -- | 'messageId'
  Prelude.Text ->
  -- | 'inputName'
  Prelude.Text ->
  -- | 'payload'
  Prelude.ByteString ->
  Message
newMessage pMessageId_ pInputName_ pPayload_ =
  Message'
    { timestamp = Prelude.Nothing,
      messageId = pMessageId_,
      inputName = pInputName_,
      payload = Core._Base64 Lens.# pPayload_
    }

-- | The timestamp associated with the message.
message_timestamp :: Lens.Lens' Message (Prelude.Maybe TimestampValue)
message_timestamp = Lens.lens (\Message' {timestamp} -> timestamp) (\s@Message' {} a -> s {timestamp = a} :: Message)

-- | The ID to assign to the message. Within each batch sent, each
-- @\"messageId\"@ must be unique.
message_messageId :: Lens.Lens' Message Prelude.Text
message_messageId = Lens.lens (\Message' {messageId} -> messageId) (\s@Message' {} a -> s {messageId = a} :: Message)

-- | The name of the input into which the message payload is transformed.
message_inputName :: Lens.Lens' Message Prelude.Text
message_inputName = Lens.lens (\Message' {inputName} -> inputName) (\s@Message' {} a -> s {inputName = a} :: Message)

-- | The payload of the message. This can be a JSON string or a
-- Base-64-encoded string representing binary data (in which case you must
-- decode it).--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
message_payload :: Lens.Lens' Message Prelude.ByteString
message_payload = Lens.lens (\Message' {payload} -> payload) (\s@Message' {} a -> s {payload = a} :: Message) Prelude.. Core._Base64

instance Prelude.Hashable Message

instance Prelude.NFData Message

instance Core.ToJSON Message where
  toJSON Message' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("timestamp" Core..=) Prelude.<$> timestamp,
            Prelude.Just ("messageId" Core..= messageId),
            Prelude.Just ("inputName" Core..= inputName),
            Prelude.Just ("payload" Core..= payload)
          ]
      )
