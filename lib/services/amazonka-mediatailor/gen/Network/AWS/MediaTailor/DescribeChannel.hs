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
-- Module      : Network.AWS.MediaTailor.DescribeChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the properties of a specific channel.
module Network.AWS.MediaTailor.DescribeChannel
  ( -- * Creating a Request
    DescribeChannel (..),
    newDescribeChannel,

    -- * Request Lenses
    describeChannel_channelName,

    -- * Destructuring the Response
    DescribeChannelResponse (..),
    newDescribeChannelResponse,

    -- * Response Lenses
    describeChannelResponse_creationTime,
    describeChannelResponse_arn,
    describeChannelResponse_lastModifiedTime,
    describeChannelResponse_playbackMode,
    describeChannelResponse_channelName,
    describeChannelResponse_outputs,
    describeChannelResponse_channelState,
    describeChannelResponse_fillerSlate,
    describeChannelResponse_tags,
    describeChannelResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaTailor.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeChannel' smart constructor.
data DescribeChannel = DescribeChannel'
  { -- | The identifier for the channel you are working on.
    channelName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeChannel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'channelName', 'describeChannel_channelName' - The identifier for the channel you are working on.
newDescribeChannel ::
  -- | 'channelName'
  Prelude.Text ->
  DescribeChannel
newDescribeChannel pChannelName_ =
  DescribeChannel' {channelName = pChannelName_}

-- | The identifier for the channel you are working on.
describeChannel_channelName :: Lens.Lens' DescribeChannel Prelude.Text
describeChannel_channelName = Lens.lens (\DescribeChannel' {channelName} -> channelName) (\s@DescribeChannel' {} a -> s {channelName = a} :: DescribeChannel)

instance Core.AWSRequest DescribeChannel where
  type
    AWSResponse DescribeChannel =
      DescribeChannelResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeChannelResponse'
            Prelude.<$> (x Core..?> "CreationTime")
            Prelude.<*> (x Core..?> "Arn")
            Prelude.<*> (x Core..?> "LastModifiedTime")
            Prelude.<*> (x Core..?> "PlaybackMode")
            Prelude.<*> (x Core..?> "ChannelName")
            Prelude.<*> (x Core..?> "Outputs" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "ChannelState")
            Prelude.<*> (x Core..?> "FillerSlate")
            Prelude.<*> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeChannel

instance Prelude.NFData DescribeChannel

instance Core.ToHeaders DescribeChannel where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeChannel where
  toPath DescribeChannel' {..} =
    Prelude.mconcat
      ["/channel/", Core.toBS channelName]

instance Core.ToQuery DescribeChannel where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeChannelResponse' smart constructor.
data DescribeChannelResponse = DescribeChannelResponse'
  { -- | The timestamp of when the channel was created.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The ARN of the channel.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The timestamp of when the channel was last modified.
    lastModifiedTime :: Prelude.Maybe Core.POSIX,
    -- | The channel\'s playback mode.
    playbackMode :: Prelude.Maybe Prelude.Text,
    -- | The name of the channel.
    channelName :: Prelude.Maybe Prelude.Text,
    -- | The channel\'s output properties.
    outputs :: Prelude.Maybe [ResponseOutputItem],
    -- | Indicates whether the channel is in a running state or not.
    channelState :: Prelude.Maybe ChannelState,
    -- | Contains information about the slate used to fill gaps between programs
    -- in the schedule.
    fillerSlate :: Prelude.Maybe SlateSource,
    -- | The tags assigned to the channel.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeChannelResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'creationTime', 'describeChannelResponse_creationTime' - The timestamp of when the channel was created.
--
-- 'arn', 'describeChannelResponse_arn' - The ARN of the channel.
--
-- 'lastModifiedTime', 'describeChannelResponse_lastModifiedTime' - The timestamp of when the channel was last modified.
--
-- 'playbackMode', 'describeChannelResponse_playbackMode' - The channel\'s playback mode.
--
-- 'channelName', 'describeChannelResponse_channelName' - The name of the channel.
--
-- 'outputs', 'describeChannelResponse_outputs' - The channel\'s output properties.
--
-- 'channelState', 'describeChannelResponse_channelState' - Indicates whether the channel is in a running state or not.
--
-- 'fillerSlate', 'describeChannelResponse_fillerSlate' - Contains information about the slate used to fill gaps between programs
-- in the schedule.
--
-- 'tags', 'describeChannelResponse_tags' - The tags assigned to the channel.
--
-- 'httpStatus', 'describeChannelResponse_httpStatus' - The response's http status code.
newDescribeChannelResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeChannelResponse
newDescribeChannelResponse pHttpStatus_ =
  DescribeChannelResponse'
    { creationTime =
        Prelude.Nothing,
      arn = Prelude.Nothing,
      lastModifiedTime = Prelude.Nothing,
      playbackMode = Prelude.Nothing,
      channelName = Prelude.Nothing,
      outputs = Prelude.Nothing,
      channelState = Prelude.Nothing,
      fillerSlate = Prelude.Nothing,
      tags = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The timestamp of when the channel was created.
describeChannelResponse_creationTime :: Lens.Lens' DescribeChannelResponse (Prelude.Maybe Prelude.UTCTime)
describeChannelResponse_creationTime = Lens.lens (\DescribeChannelResponse' {creationTime} -> creationTime) (\s@DescribeChannelResponse' {} a -> s {creationTime = a} :: DescribeChannelResponse) Prelude.. Lens.mapping Core._Time

-- | The ARN of the channel.
describeChannelResponse_arn :: Lens.Lens' DescribeChannelResponse (Prelude.Maybe Prelude.Text)
describeChannelResponse_arn = Lens.lens (\DescribeChannelResponse' {arn} -> arn) (\s@DescribeChannelResponse' {} a -> s {arn = a} :: DescribeChannelResponse)

-- | The timestamp of when the channel was last modified.
describeChannelResponse_lastModifiedTime :: Lens.Lens' DescribeChannelResponse (Prelude.Maybe Prelude.UTCTime)
describeChannelResponse_lastModifiedTime = Lens.lens (\DescribeChannelResponse' {lastModifiedTime} -> lastModifiedTime) (\s@DescribeChannelResponse' {} a -> s {lastModifiedTime = a} :: DescribeChannelResponse) Prelude.. Lens.mapping Core._Time

-- | The channel\'s playback mode.
describeChannelResponse_playbackMode :: Lens.Lens' DescribeChannelResponse (Prelude.Maybe Prelude.Text)
describeChannelResponse_playbackMode = Lens.lens (\DescribeChannelResponse' {playbackMode} -> playbackMode) (\s@DescribeChannelResponse' {} a -> s {playbackMode = a} :: DescribeChannelResponse)

-- | The name of the channel.
describeChannelResponse_channelName :: Lens.Lens' DescribeChannelResponse (Prelude.Maybe Prelude.Text)
describeChannelResponse_channelName = Lens.lens (\DescribeChannelResponse' {channelName} -> channelName) (\s@DescribeChannelResponse' {} a -> s {channelName = a} :: DescribeChannelResponse)

-- | The channel\'s output properties.
describeChannelResponse_outputs :: Lens.Lens' DescribeChannelResponse (Prelude.Maybe [ResponseOutputItem])
describeChannelResponse_outputs = Lens.lens (\DescribeChannelResponse' {outputs} -> outputs) (\s@DescribeChannelResponse' {} a -> s {outputs = a} :: DescribeChannelResponse) Prelude.. Lens.mapping Lens.coerced

-- | Indicates whether the channel is in a running state or not.
describeChannelResponse_channelState :: Lens.Lens' DescribeChannelResponse (Prelude.Maybe ChannelState)
describeChannelResponse_channelState = Lens.lens (\DescribeChannelResponse' {channelState} -> channelState) (\s@DescribeChannelResponse' {} a -> s {channelState = a} :: DescribeChannelResponse)

-- | Contains information about the slate used to fill gaps between programs
-- in the schedule.
describeChannelResponse_fillerSlate :: Lens.Lens' DescribeChannelResponse (Prelude.Maybe SlateSource)
describeChannelResponse_fillerSlate = Lens.lens (\DescribeChannelResponse' {fillerSlate} -> fillerSlate) (\s@DescribeChannelResponse' {} a -> s {fillerSlate = a} :: DescribeChannelResponse)

-- | The tags assigned to the channel.
describeChannelResponse_tags :: Lens.Lens' DescribeChannelResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
describeChannelResponse_tags = Lens.lens (\DescribeChannelResponse' {tags} -> tags) (\s@DescribeChannelResponse' {} a -> s {tags = a} :: DescribeChannelResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeChannelResponse_httpStatus :: Lens.Lens' DescribeChannelResponse Prelude.Int
describeChannelResponse_httpStatus = Lens.lens (\DescribeChannelResponse' {httpStatus} -> httpStatus) (\s@DescribeChannelResponse' {} a -> s {httpStatus = a} :: DescribeChannelResponse)

instance Prelude.NFData DescribeChannelResponse
