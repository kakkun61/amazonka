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
-- Module      : Network.AWS.MediaConnect.RemoveFlowMediaStream
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a media stream from a flow. This action is only available if the
-- media stream is not associated with a source or output.
module Network.AWS.MediaConnect.RemoveFlowMediaStream
  ( -- * Creating a Request
    RemoveFlowMediaStream (..),
    newRemoveFlowMediaStream,

    -- * Request Lenses
    removeFlowMediaStream_flowArn,
    removeFlowMediaStream_mediaStreamName,

    -- * Destructuring the Response
    RemoveFlowMediaStreamResponse (..),
    newRemoveFlowMediaStreamResponse,

    -- * Response Lenses
    removeFlowMediaStreamResponse_mediaStreamName,
    removeFlowMediaStreamResponse_flowArn,
    removeFlowMediaStreamResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaConnect.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newRemoveFlowMediaStream' smart constructor.
data RemoveFlowMediaStream = RemoveFlowMediaStream'
  { -- | The Amazon Resource Name (ARN) of the flow.
    flowArn :: Prelude.Text,
    -- | The name of the media stream that you want to remove.
    mediaStreamName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RemoveFlowMediaStream' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'flowArn', 'removeFlowMediaStream_flowArn' - The Amazon Resource Name (ARN) of the flow.
--
-- 'mediaStreamName', 'removeFlowMediaStream_mediaStreamName' - The name of the media stream that you want to remove.
newRemoveFlowMediaStream ::
  -- | 'flowArn'
  Prelude.Text ->
  -- | 'mediaStreamName'
  Prelude.Text ->
  RemoveFlowMediaStream
newRemoveFlowMediaStream pFlowArn_ pMediaStreamName_ =
  RemoveFlowMediaStream'
    { flowArn = pFlowArn_,
      mediaStreamName = pMediaStreamName_
    }

-- | The Amazon Resource Name (ARN) of the flow.
removeFlowMediaStream_flowArn :: Lens.Lens' RemoveFlowMediaStream Prelude.Text
removeFlowMediaStream_flowArn = Lens.lens (\RemoveFlowMediaStream' {flowArn} -> flowArn) (\s@RemoveFlowMediaStream' {} a -> s {flowArn = a} :: RemoveFlowMediaStream)

-- | The name of the media stream that you want to remove.
removeFlowMediaStream_mediaStreamName :: Lens.Lens' RemoveFlowMediaStream Prelude.Text
removeFlowMediaStream_mediaStreamName = Lens.lens (\RemoveFlowMediaStream' {mediaStreamName} -> mediaStreamName) (\s@RemoveFlowMediaStream' {} a -> s {mediaStreamName = a} :: RemoveFlowMediaStream)

instance Core.AWSRequest RemoveFlowMediaStream where
  type
    AWSResponse RemoveFlowMediaStream =
      RemoveFlowMediaStreamResponse
  request = Request.delete defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          RemoveFlowMediaStreamResponse'
            Prelude.<$> (x Core..?> "mediaStreamName")
            Prelude.<*> (x Core..?> "flowArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable RemoveFlowMediaStream

instance Prelude.NFData RemoveFlowMediaStream

instance Core.ToHeaders RemoveFlowMediaStream where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath RemoveFlowMediaStream where
  toPath RemoveFlowMediaStream' {..} =
    Prelude.mconcat
      [ "/v1/flows/",
        Core.toBS flowArn,
        "/mediaStreams/",
        Core.toBS mediaStreamName
      ]

instance Core.ToQuery RemoveFlowMediaStream where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newRemoveFlowMediaStreamResponse' smart constructor.
data RemoveFlowMediaStreamResponse = RemoveFlowMediaStreamResponse'
  { -- | The name of the media stream that was removed.
    mediaStreamName :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the flow.
    flowArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RemoveFlowMediaStreamResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'mediaStreamName', 'removeFlowMediaStreamResponse_mediaStreamName' - The name of the media stream that was removed.
--
-- 'flowArn', 'removeFlowMediaStreamResponse_flowArn' - The Amazon Resource Name (ARN) of the flow.
--
-- 'httpStatus', 'removeFlowMediaStreamResponse_httpStatus' - The response's http status code.
newRemoveFlowMediaStreamResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  RemoveFlowMediaStreamResponse
newRemoveFlowMediaStreamResponse pHttpStatus_ =
  RemoveFlowMediaStreamResponse'
    { mediaStreamName =
        Prelude.Nothing,
      flowArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the media stream that was removed.
removeFlowMediaStreamResponse_mediaStreamName :: Lens.Lens' RemoveFlowMediaStreamResponse (Prelude.Maybe Prelude.Text)
removeFlowMediaStreamResponse_mediaStreamName = Lens.lens (\RemoveFlowMediaStreamResponse' {mediaStreamName} -> mediaStreamName) (\s@RemoveFlowMediaStreamResponse' {} a -> s {mediaStreamName = a} :: RemoveFlowMediaStreamResponse)

-- | The Amazon Resource Name (ARN) of the flow.
removeFlowMediaStreamResponse_flowArn :: Lens.Lens' RemoveFlowMediaStreamResponse (Prelude.Maybe Prelude.Text)
removeFlowMediaStreamResponse_flowArn = Lens.lens (\RemoveFlowMediaStreamResponse' {flowArn} -> flowArn) (\s@RemoveFlowMediaStreamResponse' {} a -> s {flowArn = a} :: RemoveFlowMediaStreamResponse)

-- | The response's http status code.
removeFlowMediaStreamResponse_httpStatus :: Lens.Lens' RemoveFlowMediaStreamResponse Prelude.Int
removeFlowMediaStreamResponse_httpStatus = Lens.lens (\RemoveFlowMediaStreamResponse' {httpStatus} -> httpStatus) (\s@RemoveFlowMediaStreamResponse' {} a -> s {httpStatus = a} :: RemoveFlowMediaStreamResponse)

instance Prelude.NFData RemoveFlowMediaStreamResponse
