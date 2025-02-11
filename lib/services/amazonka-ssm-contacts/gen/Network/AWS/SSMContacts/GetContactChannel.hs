{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSMContacts.GetContactChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List details about a specific contact channel.
module Network.AWS.SSMContacts.GetContactChannel
  ( -- * Creating a Request
    GetContactChannel (..),
    newGetContactChannel,

    -- * Request Lenses
    getContactChannel_contactChannelId,

    -- * Destructuring the Response
    GetContactChannelResponse (..),
    newGetContactChannelResponse,

    -- * Response Lenses
    getContactChannelResponse_activationStatus,
    getContactChannelResponse_httpStatus,
    getContactChannelResponse_contactArn,
    getContactChannelResponse_contactChannelArn,
    getContactChannelResponse_name,
    getContactChannelResponse_type,
    getContactChannelResponse_deliveryAddress,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SSMContacts.Types

-- | /See:/ 'newGetContactChannel' smart constructor.
data GetContactChannel = GetContactChannel'
  { -- | The Amazon Resource Name (ARN) of the contact channel you want
    -- information about.
    contactChannelId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetContactChannel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'contactChannelId', 'getContactChannel_contactChannelId' - The Amazon Resource Name (ARN) of the contact channel you want
-- information about.
newGetContactChannel ::
  -- | 'contactChannelId'
  Prelude.Text ->
  GetContactChannel
newGetContactChannel pContactChannelId_ =
  GetContactChannel'
    { contactChannelId =
        pContactChannelId_
    }

-- | The Amazon Resource Name (ARN) of the contact channel you want
-- information about.
getContactChannel_contactChannelId :: Lens.Lens' GetContactChannel Prelude.Text
getContactChannel_contactChannelId = Lens.lens (\GetContactChannel' {contactChannelId} -> contactChannelId) (\s@GetContactChannel' {} a -> s {contactChannelId = a} :: GetContactChannel)

instance Core.AWSRequest GetContactChannel where
  type
    AWSResponse GetContactChannel =
      GetContactChannelResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetContactChannelResponse'
            Prelude.<$> (x Core..?> "ActivationStatus")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "ContactArn")
            Prelude.<*> (x Core..:> "ContactChannelArn")
            Prelude.<*> (x Core..:> "Name")
            Prelude.<*> (x Core..:> "Type")
            Prelude.<*> (x Core..:> "DeliveryAddress")
      )

instance Prelude.Hashable GetContactChannel

instance Prelude.NFData GetContactChannel

instance Core.ToHeaders GetContactChannel where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SSMContacts.GetContactChannel" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetContactChannel where
  toJSON GetContactChannel' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("ContactChannelId" Core..= contactChannelId)
          ]
      )

instance Core.ToPath GetContactChannel where
  toPath = Prelude.const "/"

instance Core.ToQuery GetContactChannel where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetContactChannelResponse' smart constructor.
data GetContactChannelResponse = GetContactChannelResponse'
  { -- | A Boolean value indicating if the contact channel has been activated or
    -- not.
    activationStatus :: Prelude.Maybe ActivationStatus,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The ARN of the contact that the channel belongs to.
    contactArn :: Prelude.Text,
    -- | The ARN of the contact channel.
    contactChannelArn :: Prelude.Text,
    -- | The name of the contact channel
    name :: Prelude.Text,
    -- | The type of contact channel. The type is @SMS@, @VOICE@, or @EMAIL@.
    type' :: ChannelType,
    -- | The details that Incident Manager uses when trying to engage the contact
    -- channel.
    deliveryAddress :: ContactChannelAddress
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetContactChannelResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'activationStatus', 'getContactChannelResponse_activationStatus' - A Boolean value indicating if the contact channel has been activated or
-- not.
--
-- 'httpStatus', 'getContactChannelResponse_httpStatus' - The response's http status code.
--
-- 'contactArn', 'getContactChannelResponse_contactArn' - The ARN of the contact that the channel belongs to.
--
-- 'contactChannelArn', 'getContactChannelResponse_contactChannelArn' - The ARN of the contact channel.
--
-- 'name', 'getContactChannelResponse_name' - The name of the contact channel
--
-- 'type'', 'getContactChannelResponse_type' - The type of contact channel. The type is @SMS@, @VOICE@, or @EMAIL@.
--
-- 'deliveryAddress', 'getContactChannelResponse_deliveryAddress' - The details that Incident Manager uses when trying to engage the contact
-- channel.
newGetContactChannelResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'contactArn'
  Prelude.Text ->
  -- | 'contactChannelArn'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  -- | 'type''
  ChannelType ->
  -- | 'deliveryAddress'
  ContactChannelAddress ->
  GetContactChannelResponse
newGetContactChannelResponse
  pHttpStatus_
  pContactArn_
  pContactChannelArn_
  pName_
  pType_
  pDeliveryAddress_ =
    GetContactChannelResponse'
      { activationStatus =
          Prelude.Nothing,
        httpStatus = pHttpStatus_,
        contactArn = pContactArn_,
        contactChannelArn = pContactChannelArn_,
        name = pName_,
        type' = pType_,
        deliveryAddress = pDeliveryAddress_
      }

-- | A Boolean value indicating if the contact channel has been activated or
-- not.
getContactChannelResponse_activationStatus :: Lens.Lens' GetContactChannelResponse (Prelude.Maybe ActivationStatus)
getContactChannelResponse_activationStatus = Lens.lens (\GetContactChannelResponse' {activationStatus} -> activationStatus) (\s@GetContactChannelResponse' {} a -> s {activationStatus = a} :: GetContactChannelResponse)

-- | The response's http status code.
getContactChannelResponse_httpStatus :: Lens.Lens' GetContactChannelResponse Prelude.Int
getContactChannelResponse_httpStatus = Lens.lens (\GetContactChannelResponse' {httpStatus} -> httpStatus) (\s@GetContactChannelResponse' {} a -> s {httpStatus = a} :: GetContactChannelResponse)

-- | The ARN of the contact that the channel belongs to.
getContactChannelResponse_contactArn :: Lens.Lens' GetContactChannelResponse Prelude.Text
getContactChannelResponse_contactArn = Lens.lens (\GetContactChannelResponse' {contactArn} -> contactArn) (\s@GetContactChannelResponse' {} a -> s {contactArn = a} :: GetContactChannelResponse)

-- | The ARN of the contact channel.
getContactChannelResponse_contactChannelArn :: Lens.Lens' GetContactChannelResponse Prelude.Text
getContactChannelResponse_contactChannelArn = Lens.lens (\GetContactChannelResponse' {contactChannelArn} -> contactChannelArn) (\s@GetContactChannelResponse' {} a -> s {contactChannelArn = a} :: GetContactChannelResponse)

-- | The name of the contact channel
getContactChannelResponse_name :: Lens.Lens' GetContactChannelResponse Prelude.Text
getContactChannelResponse_name = Lens.lens (\GetContactChannelResponse' {name} -> name) (\s@GetContactChannelResponse' {} a -> s {name = a} :: GetContactChannelResponse)

-- | The type of contact channel. The type is @SMS@, @VOICE@, or @EMAIL@.
getContactChannelResponse_type :: Lens.Lens' GetContactChannelResponse ChannelType
getContactChannelResponse_type = Lens.lens (\GetContactChannelResponse' {type'} -> type') (\s@GetContactChannelResponse' {} a -> s {type' = a} :: GetContactChannelResponse)

-- | The details that Incident Manager uses when trying to engage the contact
-- channel.
getContactChannelResponse_deliveryAddress :: Lens.Lens' GetContactChannelResponse ContactChannelAddress
getContactChannelResponse_deliveryAddress = Lens.lens (\GetContactChannelResponse' {deliveryAddress} -> deliveryAddress) (\s@GetContactChannelResponse' {} a -> s {deliveryAddress = a} :: GetContactChannelResponse)

instance Prelude.NFData GetContactChannelResponse
