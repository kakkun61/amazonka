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
-- Module      : Network.AWS.SSMContacts.UpdateContactChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a contact\'s contact channel.
module Network.AWS.SSMContacts.UpdateContactChannel
  ( -- * Creating a Request
    UpdateContactChannel (..),
    newUpdateContactChannel,

    -- * Request Lenses
    updateContactChannel_name,
    updateContactChannel_deliveryAddress,
    updateContactChannel_contactChannelId,

    -- * Destructuring the Response
    UpdateContactChannelResponse (..),
    newUpdateContactChannelResponse,

    -- * Response Lenses
    updateContactChannelResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SSMContacts.Types

-- | /See:/ 'newUpdateContactChannel' smart constructor.
data UpdateContactChannel = UpdateContactChannel'
  { -- | The name of the contact channel.
    name :: Prelude.Maybe Prelude.Text,
    -- | The details that Incident Manager uses when trying to engage the contact
    -- channel.
    deliveryAddress :: Prelude.Maybe ContactChannelAddress,
    -- | The Amazon Resource Name (ARN) of the contact channel you want to
    -- update.
    contactChannelId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateContactChannel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'updateContactChannel_name' - The name of the contact channel.
--
-- 'deliveryAddress', 'updateContactChannel_deliveryAddress' - The details that Incident Manager uses when trying to engage the contact
-- channel.
--
-- 'contactChannelId', 'updateContactChannel_contactChannelId' - The Amazon Resource Name (ARN) of the contact channel you want to
-- update.
newUpdateContactChannel ::
  -- | 'contactChannelId'
  Prelude.Text ->
  UpdateContactChannel
newUpdateContactChannel pContactChannelId_ =
  UpdateContactChannel'
    { name = Prelude.Nothing,
      deliveryAddress = Prelude.Nothing,
      contactChannelId = pContactChannelId_
    }

-- | The name of the contact channel.
updateContactChannel_name :: Lens.Lens' UpdateContactChannel (Prelude.Maybe Prelude.Text)
updateContactChannel_name = Lens.lens (\UpdateContactChannel' {name} -> name) (\s@UpdateContactChannel' {} a -> s {name = a} :: UpdateContactChannel)

-- | The details that Incident Manager uses when trying to engage the contact
-- channel.
updateContactChannel_deliveryAddress :: Lens.Lens' UpdateContactChannel (Prelude.Maybe ContactChannelAddress)
updateContactChannel_deliveryAddress = Lens.lens (\UpdateContactChannel' {deliveryAddress} -> deliveryAddress) (\s@UpdateContactChannel' {} a -> s {deliveryAddress = a} :: UpdateContactChannel)

-- | The Amazon Resource Name (ARN) of the contact channel you want to
-- update.
updateContactChannel_contactChannelId :: Lens.Lens' UpdateContactChannel Prelude.Text
updateContactChannel_contactChannelId = Lens.lens (\UpdateContactChannel' {contactChannelId} -> contactChannelId) (\s@UpdateContactChannel' {} a -> s {contactChannelId = a} :: UpdateContactChannel)

instance Core.AWSRequest UpdateContactChannel where
  type
    AWSResponse UpdateContactChannel =
      UpdateContactChannelResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateContactChannelResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateContactChannel

instance Prelude.NFData UpdateContactChannel

instance Core.ToHeaders UpdateContactChannel where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SSMContacts.UpdateContactChannel" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateContactChannel where
  toJSON UpdateContactChannel' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Name" Core..=) Prelude.<$> name,
            ("DeliveryAddress" Core..=)
              Prelude.<$> deliveryAddress,
            Prelude.Just
              ("ContactChannelId" Core..= contactChannelId)
          ]
      )

instance Core.ToPath UpdateContactChannel where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateContactChannel where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateContactChannelResponse' smart constructor.
data UpdateContactChannelResponse = UpdateContactChannelResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateContactChannelResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateContactChannelResponse_httpStatus' - The response's http status code.
newUpdateContactChannelResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateContactChannelResponse
newUpdateContactChannelResponse pHttpStatus_ =
  UpdateContactChannelResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
updateContactChannelResponse_httpStatus :: Lens.Lens' UpdateContactChannelResponse Prelude.Int
updateContactChannelResponse_httpStatus = Lens.lens (\UpdateContactChannelResponse' {httpStatus} -> httpStatus) (\s@UpdateContactChannelResponse' {} a -> s {httpStatus = a} :: UpdateContactChannelResponse)

instance Prelude.NFData UpdateContactChannelResponse
