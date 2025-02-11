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
-- Module      : Network.AWS.IoTEvents.Types.SMSConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTEvents.Types.SMSConfiguration where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTEvents.Types.RecipientDetail
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains the configuration information of SMS notifications.
--
-- /See:/ 'newSMSConfiguration' smart constructor.
data SMSConfiguration = SMSConfiguration'
  { -- | The message that you want to send. The message can be up to 200
    -- characters.
    additionalMessage :: Prelude.Maybe Prelude.Text,
    -- | The sender ID.
    senderId :: Prelude.Maybe Prelude.Text,
    -- | Specifies one or more recipients who receive the message.
    --
    -- You must
    -- <https://docs.aws.amazon.com/singlesignon/latest/userguide/addusers.html add the users that receive SMS messages to your AWS SSO store>.
    recipients :: Prelude.NonEmpty RecipientDetail
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SMSConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'additionalMessage', 'sMSConfiguration_additionalMessage' - The message that you want to send. The message can be up to 200
-- characters.
--
-- 'senderId', 'sMSConfiguration_senderId' - The sender ID.
--
-- 'recipients', 'sMSConfiguration_recipients' - Specifies one or more recipients who receive the message.
--
-- You must
-- <https://docs.aws.amazon.com/singlesignon/latest/userguide/addusers.html add the users that receive SMS messages to your AWS SSO store>.
newSMSConfiguration ::
  -- | 'recipients'
  Prelude.NonEmpty RecipientDetail ->
  SMSConfiguration
newSMSConfiguration pRecipients_ =
  SMSConfiguration'
    { additionalMessage =
        Prelude.Nothing,
      senderId = Prelude.Nothing,
      recipients = Lens.coerced Lens.# pRecipients_
    }

-- | The message that you want to send. The message can be up to 200
-- characters.
sMSConfiguration_additionalMessage :: Lens.Lens' SMSConfiguration (Prelude.Maybe Prelude.Text)
sMSConfiguration_additionalMessage = Lens.lens (\SMSConfiguration' {additionalMessage} -> additionalMessage) (\s@SMSConfiguration' {} a -> s {additionalMessage = a} :: SMSConfiguration)

-- | The sender ID.
sMSConfiguration_senderId :: Lens.Lens' SMSConfiguration (Prelude.Maybe Prelude.Text)
sMSConfiguration_senderId = Lens.lens (\SMSConfiguration' {senderId} -> senderId) (\s@SMSConfiguration' {} a -> s {senderId = a} :: SMSConfiguration)

-- | Specifies one or more recipients who receive the message.
--
-- You must
-- <https://docs.aws.amazon.com/singlesignon/latest/userguide/addusers.html add the users that receive SMS messages to your AWS SSO store>.
sMSConfiguration_recipients :: Lens.Lens' SMSConfiguration (Prelude.NonEmpty RecipientDetail)
sMSConfiguration_recipients = Lens.lens (\SMSConfiguration' {recipients} -> recipients) (\s@SMSConfiguration' {} a -> s {recipients = a} :: SMSConfiguration) Prelude.. Lens.coerced

instance Core.FromJSON SMSConfiguration where
  parseJSON =
    Core.withObject
      "SMSConfiguration"
      ( \x ->
          SMSConfiguration'
            Prelude.<$> (x Core..:? "additionalMessage")
            Prelude.<*> (x Core..:? "senderId")
            Prelude.<*> (x Core..: "recipients")
      )

instance Prelude.Hashable SMSConfiguration

instance Prelude.NFData SMSConfiguration

instance Core.ToJSON SMSConfiguration where
  toJSON SMSConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("additionalMessage" Core..=)
              Prelude.<$> additionalMessage,
            ("senderId" Core..=) Prelude.<$> senderId,
            Prelude.Just ("recipients" Core..= recipients)
          ]
      )
