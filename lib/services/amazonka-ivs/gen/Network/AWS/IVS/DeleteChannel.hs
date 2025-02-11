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
-- Module      : Network.AWS.IVS.DeleteChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified channel and its associated stream keys.
--
-- If you try to delete a live channel, you will get an error (409
-- ConflictException). To delete a channel that is live, call StopStream,
-- wait for the Amazon EventBridge \"Stream End\" event (to verify that the
-- stream\'s state was changed from Live to Offline), then call
-- DeleteChannel. (See
-- <https://docs.aws.amazon.com/ivs/latest/userguide/eventbridge.html Using EventBridge with Amazon IVS>.)
module Network.AWS.IVS.DeleteChannel
  ( -- * Creating a Request
    DeleteChannel (..),
    newDeleteChannel,

    -- * Request Lenses
    deleteChannel_arn,

    -- * Destructuring the Response
    DeleteChannelResponse (..),
    newDeleteChannelResponse,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IVS.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteChannel' smart constructor.
data DeleteChannel = DeleteChannel'
  { -- | ARN of the channel to be deleted.
    arn :: Prelude.Text
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
-- 'arn', 'deleteChannel_arn' - ARN of the channel to be deleted.
newDeleteChannel ::
  -- | 'arn'
  Prelude.Text ->
  DeleteChannel
newDeleteChannel pArn_ = DeleteChannel' {arn = pArn_}

-- | ARN of the channel to be deleted.
deleteChannel_arn :: Lens.Lens' DeleteChannel Prelude.Text
deleteChannel_arn = Lens.lens (\DeleteChannel' {arn} -> arn) (\s@DeleteChannel' {} a -> s {arn = a} :: DeleteChannel)

instance Core.AWSRequest DeleteChannel where
  type
    AWSResponse DeleteChannel =
      DeleteChannelResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull DeleteChannelResponse'

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

instance Core.ToJSON DeleteChannel where
  toJSON DeleteChannel' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("arn" Core..= arn)]
      )

instance Core.ToPath DeleteChannel where
  toPath = Prelude.const "/DeleteChannel"

instance Core.ToQuery DeleteChannel where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteChannelResponse' smart constructor.
data DeleteChannelResponse = DeleteChannelResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteChannelResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteChannelResponse ::
  DeleteChannelResponse
newDeleteChannelResponse = DeleteChannelResponse'

instance Prelude.NFData DeleteChannelResponse
