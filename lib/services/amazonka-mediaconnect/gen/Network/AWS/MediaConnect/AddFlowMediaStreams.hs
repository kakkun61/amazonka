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
-- Module      : Network.AWS.MediaConnect.AddFlowMediaStreams
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds media streams to an existing flow. After you add a media stream to
-- a flow, you can associate it with a source and\/or an output that uses
-- the ST 2110 JPEG XS or CDI protocol.
module Network.AWS.MediaConnect.AddFlowMediaStreams
  ( -- * Creating a Request
    AddFlowMediaStreams (..),
    newAddFlowMediaStreams,

    -- * Request Lenses
    addFlowMediaStreams_flowArn,
    addFlowMediaStreams_mediaStreams,

    -- * Destructuring the Response
    AddFlowMediaStreamsResponse (..),
    newAddFlowMediaStreamsResponse,

    -- * Response Lenses
    addFlowMediaStreamsResponse_flowArn,
    addFlowMediaStreamsResponse_mediaStreams,
    addFlowMediaStreamsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaConnect.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | A request to add media streams to the flow.
--
-- /See:/ 'newAddFlowMediaStreams' smart constructor.
data AddFlowMediaStreams = AddFlowMediaStreams'
  { -- | The Amazon Resource Name (ARN) of the flow.
    flowArn :: Prelude.Text,
    -- | The media streams that you want to add to the flow.
    mediaStreams :: [AddMediaStreamRequest]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AddFlowMediaStreams' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'flowArn', 'addFlowMediaStreams_flowArn' - The Amazon Resource Name (ARN) of the flow.
--
-- 'mediaStreams', 'addFlowMediaStreams_mediaStreams' - The media streams that you want to add to the flow.
newAddFlowMediaStreams ::
  -- | 'flowArn'
  Prelude.Text ->
  AddFlowMediaStreams
newAddFlowMediaStreams pFlowArn_ =
  AddFlowMediaStreams'
    { flowArn = pFlowArn_,
      mediaStreams = Prelude.mempty
    }

-- | The Amazon Resource Name (ARN) of the flow.
addFlowMediaStreams_flowArn :: Lens.Lens' AddFlowMediaStreams Prelude.Text
addFlowMediaStreams_flowArn = Lens.lens (\AddFlowMediaStreams' {flowArn} -> flowArn) (\s@AddFlowMediaStreams' {} a -> s {flowArn = a} :: AddFlowMediaStreams)

-- | The media streams that you want to add to the flow.
addFlowMediaStreams_mediaStreams :: Lens.Lens' AddFlowMediaStreams [AddMediaStreamRequest]
addFlowMediaStreams_mediaStreams = Lens.lens (\AddFlowMediaStreams' {mediaStreams} -> mediaStreams) (\s@AddFlowMediaStreams' {} a -> s {mediaStreams = a} :: AddFlowMediaStreams) Prelude.. Lens.coerced

instance Core.AWSRequest AddFlowMediaStreams where
  type
    AWSResponse AddFlowMediaStreams =
      AddFlowMediaStreamsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          AddFlowMediaStreamsResponse'
            Prelude.<$> (x Core..?> "flowArn")
            Prelude.<*> (x Core..?> "mediaStreams" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable AddFlowMediaStreams

instance Prelude.NFData AddFlowMediaStreams

instance Core.ToHeaders AddFlowMediaStreams where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON AddFlowMediaStreams where
  toJSON AddFlowMediaStreams' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("mediaStreams" Core..= mediaStreams)]
      )

instance Core.ToPath AddFlowMediaStreams where
  toPath AddFlowMediaStreams' {..} =
    Prelude.mconcat
      ["/v1/flows/", Core.toBS flowArn, "/mediaStreams"]

instance Core.ToQuery AddFlowMediaStreams where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newAddFlowMediaStreamsResponse' smart constructor.
data AddFlowMediaStreamsResponse = AddFlowMediaStreamsResponse'
  { -- | The ARN of the flow that you added media streams to.
    flowArn :: Prelude.Maybe Prelude.Text,
    -- | The media streams that you added to the flow.
    mediaStreams :: Prelude.Maybe [MediaStream],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AddFlowMediaStreamsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'flowArn', 'addFlowMediaStreamsResponse_flowArn' - The ARN of the flow that you added media streams to.
--
-- 'mediaStreams', 'addFlowMediaStreamsResponse_mediaStreams' - The media streams that you added to the flow.
--
-- 'httpStatus', 'addFlowMediaStreamsResponse_httpStatus' - The response's http status code.
newAddFlowMediaStreamsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  AddFlowMediaStreamsResponse
newAddFlowMediaStreamsResponse pHttpStatus_ =
  AddFlowMediaStreamsResponse'
    { flowArn =
        Prelude.Nothing,
      mediaStreams = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ARN of the flow that you added media streams to.
addFlowMediaStreamsResponse_flowArn :: Lens.Lens' AddFlowMediaStreamsResponse (Prelude.Maybe Prelude.Text)
addFlowMediaStreamsResponse_flowArn = Lens.lens (\AddFlowMediaStreamsResponse' {flowArn} -> flowArn) (\s@AddFlowMediaStreamsResponse' {} a -> s {flowArn = a} :: AddFlowMediaStreamsResponse)

-- | The media streams that you added to the flow.
addFlowMediaStreamsResponse_mediaStreams :: Lens.Lens' AddFlowMediaStreamsResponse (Prelude.Maybe [MediaStream])
addFlowMediaStreamsResponse_mediaStreams = Lens.lens (\AddFlowMediaStreamsResponse' {mediaStreams} -> mediaStreams) (\s@AddFlowMediaStreamsResponse' {} a -> s {mediaStreams = a} :: AddFlowMediaStreamsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
addFlowMediaStreamsResponse_httpStatus :: Lens.Lens' AddFlowMediaStreamsResponse Prelude.Int
addFlowMediaStreamsResponse_httpStatus = Lens.lens (\AddFlowMediaStreamsResponse' {httpStatus} -> httpStatus) (\s@AddFlowMediaStreamsResponse' {} a -> s {httpStatus = a} :: AddFlowMediaStreamsResponse)

instance Prelude.NFData AddFlowMediaStreamsResponse
