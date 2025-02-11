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
-- Module      : Network.AWS.Chime.DeleteEventsConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the events configuration that allows a bot to receive outgoing
-- events.
module Network.AWS.Chime.DeleteEventsConfiguration
  ( -- * Creating a Request
    DeleteEventsConfiguration (..),
    newDeleteEventsConfiguration,

    -- * Request Lenses
    deleteEventsConfiguration_accountId,
    deleteEventsConfiguration_botId,

    -- * Destructuring the Response
    DeleteEventsConfigurationResponse (..),
    newDeleteEventsConfigurationResponse,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteEventsConfiguration' smart constructor.
data DeleteEventsConfiguration = DeleteEventsConfiguration'
  { -- | The Amazon Chime account ID.
    accountId :: Prelude.Text,
    -- | The bot ID.
    botId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteEventsConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountId', 'deleteEventsConfiguration_accountId' - The Amazon Chime account ID.
--
-- 'botId', 'deleteEventsConfiguration_botId' - The bot ID.
newDeleteEventsConfiguration ::
  -- | 'accountId'
  Prelude.Text ->
  -- | 'botId'
  Prelude.Text ->
  DeleteEventsConfiguration
newDeleteEventsConfiguration pAccountId_ pBotId_ =
  DeleteEventsConfiguration'
    { accountId = pAccountId_,
      botId = pBotId_
    }

-- | The Amazon Chime account ID.
deleteEventsConfiguration_accountId :: Lens.Lens' DeleteEventsConfiguration Prelude.Text
deleteEventsConfiguration_accountId = Lens.lens (\DeleteEventsConfiguration' {accountId} -> accountId) (\s@DeleteEventsConfiguration' {} a -> s {accountId = a} :: DeleteEventsConfiguration)

-- | The bot ID.
deleteEventsConfiguration_botId :: Lens.Lens' DeleteEventsConfiguration Prelude.Text
deleteEventsConfiguration_botId = Lens.lens (\DeleteEventsConfiguration' {botId} -> botId) (\s@DeleteEventsConfiguration' {} a -> s {botId = a} :: DeleteEventsConfiguration)

instance Core.AWSRequest DeleteEventsConfiguration where
  type
    AWSResponse DeleteEventsConfiguration =
      DeleteEventsConfigurationResponse
  request = Request.delete defaultService
  response =
    Response.receiveNull
      DeleteEventsConfigurationResponse'

instance Prelude.Hashable DeleteEventsConfiguration

instance Prelude.NFData DeleteEventsConfiguration

instance Core.ToHeaders DeleteEventsConfiguration where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DeleteEventsConfiguration where
  toPath DeleteEventsConfiguration' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS accountId,
        "/bots/",
        Core.toBS botId,
        "/events-configuration"
      ]

instance Core.ToQuery DeleteEventsConfiguration where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteEventsConfigurationResponse' smart constructor.
data DeleteEventsConfigurationResponse = DeleteEventsConfigurationResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteEventsConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteEventsConfigurationResponse ::
  DeleteEventsConfigurationResponse
newDeleteEventsConfigurationResponse =
  DeleteEventsConfigurationResponse'

instance
  Prelude.NFData
    DeleteEventsConfigurationResponse
