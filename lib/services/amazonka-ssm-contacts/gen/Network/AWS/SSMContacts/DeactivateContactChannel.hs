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
-- Module      : Network.AWS.SSMContacts.DeactivateContactChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- To no longer receive Incident Manager engagements to a contact channel,
-- you can deactivate the channel.
module Network.AWS.SSMContacts.DeactivateContactChannel
  ( -- * Creating a Request
    DeactivateContactChannel (..),
    newDeactivateContactChannel,

    -- * Request Lenses
    deactivateContactChannel_contactChannelId,

    -- * Destructuring the Response
    DeactivateContactChannelResponse (..),
    newDeactivateContactChannelResponse,

    -- * Response Lenses
    deactivateContactChannelResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SSMContacts.Types

-- | /See:/ 'newDeactivateContactChannel' smart constructor.
data DeactivateContactChannel = DeactivateContactChannel'
  { -- | The Amazon Resource Name (ARN) of the contact channel you\'re
    -- deactivating.
    contactChannelId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeactivateContactChannel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'contactChannelId', 'deactivateContactChannel_contactChannelId' - The Amazon Resource Name (ARN) of the contact channel you\'re
-- deactivating.
newDeactivateContactChannel ::
  -- | 'contactChannelId'
  Prelude.Text ->
  DeactivateContactChannel
newDeactivateContactChannel pContactChannelId_ =
  DeactivateContactChannel'
    { contactChannelId =
        pContactChannelId_
    }

-- | The Amazon Resource Name (ARN) of the contact channel you\'re
-- deactivating.
deactivateContactChannel_contactChannelId :: Lens.Lens' DeactivateContactChannel Prelude.Text
deactivateContactChannel_contactChannelId = Lens.lens (\DeactivateContactChannel' {contactChannelId} -> contactChannelId) (\s@DeactivateContactChannel' {} a -> s {contactChannelId = a} :: DeactivateContactChannel)

instance Core.AWSRequest DeactivateContactChannel where
  type
    AWSResponse DeactivateContactChannel =
      DeactivateContactChannelResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeactivateContactChannelResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeactivateContactChannel

instance Prelude.NFData DeactivateContactChannel

instance Core.ToHeaders DeactivateContactChannel where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SSMContacts.DeactivateContactChannel" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeactivateContactChannel where
  toJSON DeactivateContactChannel' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("ContactChannelId" Core..= contactChannelId)
          ]
      )

instance Core.ToPath DeactivateContactChannel where
  toPath = Prelude.const "/"

instance Core.ToQuery DeactivateContactChannel where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeactivateContactChannelResponse' smart constructor.
data DeactivateContactChannelResponse = DeactivateContactChannelResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeactivateContactChannelResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deactivateContactChannelResponse_httpStatus' - The response's http status code.
newDeactivateContactChannelResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeactivateContactChannelResponse
newDeactivateContactChannelResponse pHttpStatus_ =
  DeactivateContactChannelResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deactivateContactChannelResponse_httpStatus :: Lens.Lens' DeactivateContactChannelResponse Prelude.Int
deactivateContactChannelResponse_httpStatus = Lens.lens (\DeactivateContactChannelResponse' {httpStatus} -> httpStatus) (\s@DeactivateContactChannelResponse' {} a -> s {httpStatus = a} :: DeactivateContactChannelResponse)

instance
  Prelude.NFData
    DeactivateContactChannelResponse
