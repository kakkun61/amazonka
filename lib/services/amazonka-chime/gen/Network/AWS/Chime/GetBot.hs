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
-- Module      : Network.AWS.Chime.GetBot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details for the specified bot, such as bot email address, bot
-- type, status, and display name.
module Network.AWS.Chime.GetBot
  ( -- * Creating a Request
    GetBot (..),
    newGetBot,

    -- * Request Lenses
    getBot_accountId,
    getBot_botId,

    -- * Destructuring the Response
    GetBotResponse (..),
    newGetBotResponse,

    -- * Response Lenses
    getBotResponse_bot,
    getBotResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetBot' smart constructor.
data GetBot = GetBot'
  { -- | The Amazon Chime account ID.
    accountId :: Prelude.Text,
    -- | The bot ID.
    botId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetBot' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountId', 'getBot_accountId' - The Amazon Chime account ID.
--
-- 'botId', 'getBot_botId' - The bot ID.
newGetBot ::
  -- | 'accountId'
  Prelude.Text ->
  -- | 'botId'
  Prelude.Text ->
  GetBot
newGetBot pAccountId_ pBotId_ =
  GetBot' {accountId = pAccountId_, botId = pBotId_}

-- | The Amazon Chime account ID.
getBot_accountId :: Lens.Lens' GetBot Prelude.Text
getBot_accountId = Lens.lens (\GetBot' {accountId} -> accountId) (\s@GetBot' {} a -> s {accountId = a} :: GetBot)

-- | The bot ID.
getBot_botId :: Lens.Lens' GetBot Prelude.Text
getBot_botId = Lens.lens (\GetBot' {botId} -> botId) (\s@GetBot' {} a -> s {botId = a} :: GetBot)

instance Core.AWSRequest GetBot where
  type AWSResponse GetBot = GetBotResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetBotResponse'
            Prelude.<$> (x Core..?> "Bot")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetBot

instance Prelude.NFData GetBot

instance Core.ToHeaders GetBot where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath GetBot where
  toPath GetBot' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS accountId,
        "/bots/",
        Core.toBS botId
      ]

instance Core.ToQuery GetBot where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetBotResponse' smart constructor.
data GetBotResponse = GetBotResponse'
  { -- | The chat bot details.
    bot :: Prelude.Maybe Bot,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetBotResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'bot', 'getBotResponse_bot' - The chat bot details.
--
-- 'httpStatus', 'getBotResponse_httpStatus' - The response's http status code.
newGetBotResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetBotResponse
newGetBotResponse pHttpStatus_ =
  GetBotResponse'
    { bot = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The chat bot details.
getBotResponse_bot :: Lens.Lens' GetBotResponse (Prelude.Maybe Bot)
getBotResponse_bot = Lens.lens (\GetBotResponse' {bot} -> bot) (\s@GetBotResponse' {} a -> s {bot = a} :: GetBotResponse)

-- | The response's http status code.
getBotResponse_httpStatus :: Lens.Lens' GetBotResponse Prelude.Int
getBotResponse_httpStatus = Lens.lens (\GetBotResponse' {httpStatus} -> httpStatus) (\s@GetBotResponse' {} a -> s {httpStatus = a} :: GetBotResponse)

instance Prelude.NFData GetBotResponse
