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
-- Module      : Network.AWS.SSMContacts.Types.ContactChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSMContacts.Types.ContactChannel where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SSMContacts.Types.ActivationStatus
import Network.AWS.SSMContacts.Types.ChannelType
import Network.AWS.SSMContacts.Types.ContactChannelAddress

-- | The method that Incident Manager uses to engage a contact.
--
-- /See:/ 'newContactChannel' smart constructor.
data ContactChannel = ContactChannel'
  { -- | The type of the contact channel. Incident Manager supports three contact
    -- methods:
    --
    -- -   SMS
    --
    -- -   VOICE
    --
    -- -   EMAIL
    type' :: Prelude.Maybe ChannelType,
    -- | The Amazon Resource Name (ARN) of the contact channel.
    contactChannelArn :: Prelude.Text,
    -- | The ARN of the contact that contains the contact channel.
    contactArn :: Prelude.Text,
    -- | The name of the contact channel.
    name :: Prelude.Text,
    -- | The details that Incident Manager uses when trying to engage the contact
    -- channel.
    deliveryAddress :: ContactChannelAddress,
    -- | A Boolean value describing if the contact channel has been activated or
    -- not. If the contact channel isn\'t activated, Incident Manager can\'t
    -- engage the contact through it.
    activationStatus :: ActivationStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ContactChannel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'contactChannel_type' - The type of the contact channel. Incident Manager supports three contact
-- methods:
--
-- -   SMS
--
-- -   VOICE
--
-- -   EMAIL
--
-- 'contactChannelArn', 'contactChannel_contactChannelArn' - The Amazon Resource Name (ARN) of the contact channel.
--
-- 'contactArn', 'contactChannel_contactArn' - The ARN of the contact that contains the contact channel.
--
-- 'name', 'contactChannel_name' - The name of the contact channel.
--
-- 'deliveryAddress', 'contactChannel_deliveryAddress' - The details that Incident Manager uses when trying to engage the contact
-- channel.
--
-- 'activationStatus', 'contactChannel_activationStatus' - A Boolean value describing if the contact channel has been activated or
-- not. If the contact channel isn\'t activated, Incident Manager can\'t
-- engage the contact through it.
newContactChannel ::
  -- | 'contactChannelArn'
  Prelude.Text ->
  -- | 'contactArn'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  -- | 'deliveryAddress'
  ContactChannelAddress ->
  -- | 'activationStatus'
  ActivationStatus ->
  ContactChannel
newContactChannel
  pContactChannelArn_
  pContactArn_
  pName_
  pDeliveryAddress_
  pActivationStatus_ =
    ContactChannel'
      { type' = Prelude.Nothing,
        contactChannelArn = pContactChannelArn_,
        contactArn = pContactArn_,
        name = pName_,
        deliveryAddress = pDeliveryAddress_,
        activationStatus = pActivationStatus_
      }

-- | The type of the contact channel. Incident Manager supports three contact
-- methods:
--
-- -   SMS
--
-- -   VOICE
--
-- -   EMAIL
contactChannel_type :: Lens.Lens' ContactChannel (Prelude.Maybe ChannelType)
contactChannel_type = Lens.lens (\ContactChannel' {type'} -> type') (\s@ContactChannel' {} a -> s {type' = a} :: ContactChannel)

-- | The Amazon Resource Name (ARN) of the contact channel.
contactChannel_contactChannelArn :: Lens.Lens' ContactChannel Prelude.Text
contactChannel_contactChannelArn = Lens.lens (\ContactChannel' {contactChannelArn} -> contactChannelArn) (\s@ContactChannel' {} a -> s {contactChannelArn = a} :: ContactChannel)

-- | The ARN of the contact that contains the contact channel.
contactChannel_contactArn :: Lens.Lens' ContactChannel Prelude.Text
contactChannel_contactArn = Lens.lens (\ContactChannel' {contactArn} -> contactArn) (\s@ContactChannel' {} a -> s {contactArn = a} :: ContactChannel)

-- | The name of the contact channel.
contactChannel_name :: Lens.Lens' ContactChannel Prelude.Text
contactChannel_name = Lens.lens (\ContactChannel' {name} -> name) (\s@ContactChannel' {} a -> s {name = a} :: ContactChannel)

-- | The details that Incident Manager uses when trying to engage the contact
-- channel.
contactChannel_deliveryAddress :: Lens.Lens' ContactChannel ContactChannelAddress
contactChannel_deliveryAddress = Lens.lens (\ContactChannel' {deliveryAddress} -> deliveryAddress) (\s@ContactChannel' {} a -> s {deliveryAddress = a} :: ContactChannel)

-- | A Boolean value describing if the contact channel has been activated or
-- not. If the contact channel isn\'t activated, Incident Manager can\'t
-- engage the contact through it.
contactChannel_activationStatus :: Lens.Lens' ContactChannel ActivationStatus
contactChannel_activationStatus = Lens.lens (\ContactChannel' {activationStatus} -> activationStatus) (\s@ContactChannel' {} a -> s {activationStatus = a} :: ContactChannel)

instance Core.FromJSON ContactChannel where
  parseJSON =
    Core.withObject
      "ContactChannel"
      ( \x ->
          ContactChannel'
            Prelude.<$> (x Core..:? "Type")
            Prelude.<*> (x Core..: "ContactChannelArn")
            Prelude.<*> (x Core..: "ContactArn")
            Prelude.<*> (x Core..: "Name")
            Prelude.<*> (x Core..: "DeliveryAddress")
            Prelude.<*> (x Core..: "ActivationStatus")
      )

instance Prelude.Hashable ContactChannel

instance Prelude.NFData ContactChannel
