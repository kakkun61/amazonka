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
-- Module      : Network.AWS.Chime.ListChannelsModeratedByAppInstanceUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- A list of the channels moderated by an @AppInstanceUser@.
--
-- The @x-amz-chime-bearer@ request header is mandatory. Use the
-- @AppInstanceUserArn@ of the user that makes the API call as the value in
-- the header.
module Network.AWS.Chime.ListChannelsModeratedByAppInstanceUser
  ( -- * Creating a Request
    ListChannelsModeratedByAppInstanceUser (..),
    newListChannelsModeratedByAppInstanceUser,

    -- * Request Lenses
    listChannelsModeratedByAppInstanceUser_appInstanceUserArn,
    listChannelsModeratedByAppInstanceUser_chimeBearer,
    listChannelsModeratedByAppInstanceUser_nextToken,
    listChannelsModeratedByAppInstanceUser_maxResults,

    -- * Destructuring the Response
    ListChannelsModeratedByAppInstanceUserResponse (..),
    newListChannelsModeratedByAppInstanceUserResponse,

    -- * Response Lenses
    listChannelsModeratedByAppInstanceUserResponse_channels,
    listChannelsModeratedByAppInstanceUserResponse_nextToken,
    listChannelsModeratedByAppInstanceUserResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListChannelsModeratedByAppInstanceUser' smart constructor.
data ListChannelsModeratedByAppInstanceUser = ListChannelsModeratedByAppInstanceUser'
  { -- | The ARN of the user in the moderated channel.
    appInstanceUserArn :: Prelude.Maybe Prelude.Text,
    -- | The @AppInstanceUserArn@ of the user that makes the API call.
    chimeBearer :: Prelude.Maybe Prelude.Text,
    -- | The token returned from previous API requests until the number of
    -- channels moderated by the user is reached.
    nextToken :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The maximum number of channels in the request.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListChannelsModeratedByAppInstanceUser' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appInstanceUserArn', 'listChannelsModeratedByAppInstanceUser_appInstanceUserArn' - The ARN of the user in the moderated channel.
--
-- 'chimeBearer', 'listChannelsModeratedByAppInstanceUser_chimeBearer' - The @AppInstanceUserArn@ of the user that makes the API call.
--
-- 'nextToken', 'listChannelsModeratedByAppInstanceUser_nextToken' - The token returned from previous API requests until the number of
-- channels moderated by the user is reached.
--
-- 'maxResults', 'listChannelsModeratedByAppInstanceUser_maxResults' - The maximum number of channels in the request.
newListChannelsModeratedByAppInstanceUser ::
  ListChannelsModeratedByAppInstanceUser
newListChannelsModeratedByAppInstanceUser =
  ListChannelsModeratedByAppInstanceUser'
    { appInstanceUserArn =
        Prelude.Nothing,
      chimeBearer = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The ARN of the user in the moderated channel.
listChannelsModeratedByAppInstanceUser_appInstanceUserArn :: Lens.Lens' ListChannelsModeratedByAppInstanceUser (Prelude.Maybe Prelude.Text)
listChannelsModeratedByAppInstanceUser_appInstanceUserArn = Lens.lens (\ListChannelsModeratedByAppInstanceUser' {appInstanceUserArn} -> appInstanceUserArn) (\s@ListChannelsModeratedByAppInstanceUser' {} a -> s {appInstanceUserArn = a} :: ListChannelsModeratedByAppInstanceUser)

-- | The @AppInstanceUserArn@ of the user that makes the API call.
listChannelsModeratedByAppInstanceUser_chimeBearer :: Lens.Lens' ListChannelsModeratedByAppInstanceUser (Prelude.Maybe Prelude.Text)
listChannelsModeratedByAppInstanceUser_chimeBearer = Lens.lens (\ListChannelsModeratedByAppInstanceUser' {chimeBearer} -> chimeBearer) (\s@ListChannelsModeratedByAppInstanceUser' {} a -> s {chimeBearer = a} :: ListChannelsModeratedByAppInstanceUser)

-- | The token returned from previous API requests until the number of
-- channels moderated by the user is reached.
listChannelsModeratedByAppInstanceUser_nextToken :: Lens.Lens' ListChannelsModeratedByAppInstanceUser (Prelude.Maybe Prelude.Text)
listChannelsModeratedByAppInstanceUser_nextToken = Lens.lens (\ListChannelsModeratedByAppInstanceUser' {nextToken} -> nextToken) (\s@ListChannelsModeratedByAppInstanceUser' {} a -> s {nextToken = a} :: ListChannelsModeratedByAppInstanceUser) Prelude.. Lens.mapping Core._Sensitive

-- | The maximum number of channels in the request.
listChannelsModeratedByAppInstanceUser_maxResults :: Lens.Lens' ListChannelsModeratedByAppInstanceUser (Prelude.Maybe Prelude.Natural)
listChannelsModeratedByAppInstanceUser_maxResults = Lens.lens (\ListChannelsModeratedByAppInstanceUser' {maxResults} -> maxResults) (\s@ListChannelsModeratedByAppInstanceUser' {} a -> s {maxResults = a} :: ListChannelsModeratedByAppInstanceUser)

instance
  Core.AWSRequest
    ListChannelsModeratedByAppInstanceUser
  where
  type
    AWSResponse
      ListChannelsModeratedByAppInstanceUser =
      ListChannelsModeratedByAppInstanceUserResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListChannelsModeratedByAppInstanceUserResponse'
            Prelude.<$> (x Core..?> "Channels" Core..!@ Prelude.mempty)
              Prelude.<*> (x Core..?> "NextToken")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    ListChannelsModeratedByAppInstanceUser

instance
  Prelude.NFData
    ListChannelsModeratedByAppInstanceUser

instance
  Core.ToHeaders
    ListChannelsModeratedByAppInstanceUser
  where
  toHeaders ListChannelsModeratedByAppInstanceUser' {..} =
    Prelude.mconcat
      ["x-amz-chime-bearer" Core.=# chimeBearer]

instance
  Core.ToPath
    ListChannelsModeratedByAppInstanceUser
  where
  toPath = Prelude.const "/channels"

instance
  Core.ToQuery
    ListChannelsModeratedByAppInstanceUser
  where
  toQuery ListChannelsModeratedByAppInstanceUser' {..} =
    Prelude.mconcat
      [ "app-instance-user-arn" Core.=: appInstanceUserArn,
        "next-token" Core.=: nextToken,
        "max-results" Core.=: maxResults,
        "scope=app-instance-user-moderated-channels"
      ]

-- | /See:/ 'newListChannelsModeratedByAppInstanceUserResponse' smart constructor.
data ListChannelsModeratedByAppInstanceUserResponse = ListChannelsModeratedByAppInstanceUserResponse'
  { -- | The moderated channels in the request.
    channels :: Prelude.Maybe [ChannelModeratedByAppInstanceUserSummary],
    -- | The token returned from previous API requests until the number of
    -- channels moderated by the user is reached.
    nextToken :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListChannelsModeratedByAppInstanceUserResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'channels', 'listChannelsModeratedByAppInstanceUserResponse_channels' - The moderated channels in the request.
--
-- 'nextToken', 'listChannelsModeratedByAppInstanceUserResponse_nextToken' - The token returned from previous API requests until the number of
-- channels moderated by the user is reached.
--
-- 'httpStatus', 'listChannelsModeratedByAppInstanceUserResponse_httpStatus' - The response's http status code.
newListChannelsModeratedByAppInstanceUserResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListChannelsModeratedByAppInstanceUserResponse
newListChannelsModeratedByAppInstanceUserResponse
  pHttpStatus_ =
    ListChannelsModeratedByAppInstanceUserResponse'
      { channels =
          Prelude.Nothing,
        nextToken = Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The moderated channels in the request.
listChannelsModeratedByAppInstanceUserResponse_channels :: Lens.Lens' ListChannelsModeratedByAppInstanceUserResponse (Prelude.Maybe [ChannelModeratedByAppInstanceUserSummary])
listChannelsModeratedByAppInstanceUserResponse_channels = Lens.lens (\ListChannelsModeratedByAppInstanceUserResponse' {channels} -> channels) (\s@ListChannelsModeratedByAppInstanceUserResponse' {} a -> s {channels = a} :: ListChannelsModeratedByAppInstanceUserResponse) Prelude.. Lens.mapping Lens.coerced

-- | The token returned from previous API requests until the number of
-- channels moderated by the user is reached.
listChannelsModeratedByAppInstanceUserResponse_nextToken :: Lens.Lens' ListChannelsModeratedByAppInstanceUserResponse (Prelude.Maybe Prelude.Text)
listChannelsModeratedByAppInstanceUserResponse_nextToken = Lens.lens (\ListChannelsModeratedByAppInstanceUserResponse' {nextToken} -> nextToken) (\s@ListChannelsModeratedByAppInstanceUserResponse' {} a -> s {nextToken = a} :: ListChannelsModeratedByAppInstanceUserResponse) Prelude.. Lens.mapping Core._Sensitive

-- | The response's http status code.
listChannelsModeratedByAppInstanceUserResponse_httpStatus :: Lens.Lens' ListChannelsModeratedByAppInstanceUserResponse Prelude.Int
listChannelsModeratedByAppInstanceUserResponse_httpStatus = Lens.lens (\ListChannelsModeratedByAppInstanceUserResponse' {httpStatus} -> httpStatus) (\s@ListChannelsModeratedByAppInstanceUserResponse' {} a -> s {httpStatus = a} :: ListChannelsModeratedByAppInstanceUserResponse)

instance
  Prelude.NFData
    ListChannelsModeratedByAppInstanceUserResponse
