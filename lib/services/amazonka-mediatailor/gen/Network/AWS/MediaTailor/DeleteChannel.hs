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
-- Module      : Network.AWS.MediaTailor.DeleteChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a channel. You must stop the channel before it can be deleted.
module Network.AWS.MediaTailor.DeleteChannel
  ( -- * Creating a Request
    DeleteChannel (..),
    newDeleteChannel,

    -- * Request Lenses
    deleteChannel_channelName,

    -- * Destructuring the Response
    DeleteChannelResponse (..),
    newDeleteChannelResponse,

    -- * Response Lenses
    deleteChannelResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaTailor.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteChannel' smart constructor.
data DeleteChannel = DeleteChannel'
  { -- | The identifier for the channel you are working on.
    channelName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteChannel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'channelName', 'deleteChannel_channelName' - The identifier for the channel you are working on.
newDeleteChannel ::
  -- | 'channelName'
  Prelude.Text ->
  DeleteChannel
newDeleteChannel pChannelName_ =
  DeleteChannel' {channelName = pChannelName_}

-- | The identifier for the channel you are working on.
deleteChannel_channelName :: Lens.Lens' DeleteChannel Prelude.Text
deleteChannel_channelName = Lens.lens (\DeleteChannel' {channelName} -> channelName) (\s@DeleteChannel' {} a -> s {channelName = a} :: DeleteChannel)

instance Core.AWSRequest DeleteChannel where
  type
    AWSResponse DeleteChannel =
      DeleteChannelResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteChannelResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteChannel

instance Prelude.NFData DeleteChannel

instance Core.ToHeaders DeleteChannel where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteChannel where
  toPath DeleteChannel' {..} =
    Prelude.mconcat
      ["/channel/", Core.toBS channelName]

instance Core.ToQuery DeleteChannel where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteChannelResponse' smart constructor.
data DeleteChannelResponse = DeleteChannelResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteChannelResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteChannelResponse_httpStatus' - The response's http status code.
newDeleteChannelResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteChannelResponse
newDeleteChannelResponse pHttpStatus_ =
  DeleteChannelResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
deleteChannelResponse_httpStatus :: Lens.Lens' DeleteChannelResponse Prelude.Int
deleteChannelResponse_httpStatus = Lens.lens (\DeleteChannelResponse' {httpStatus} -> httpStatus) (\s@DeleteChannelResponse' {} a -> s {httpStatus = a} :: DeleteChannelResponse)

instance Prelude.NFData DeleteChannelResponse
