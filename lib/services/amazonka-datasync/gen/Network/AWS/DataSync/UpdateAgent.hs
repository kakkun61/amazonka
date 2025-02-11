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
-- Module      : Network.AWS.DataSync.UpdateAgent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the name of an agent.
module Network.AWS.DataSync.UpdateAgent
  ( -- * Creating a Request
    UpdateAgent (..),
    newUpdateAgent,

    -- * Request Lenses
    updateAgent_name,
    updateAgent_agentArn,

    -- * Destructuring the Response
    UpdateAgentResponse (..),
    newUpdateAgentResponse,

    -- * Response Lenses
    updateAgentResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DataSync.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | UpdateAgentRequest
--
-- /See:/ 'newUpdateAgent' smart constructor.
data UpdateAgent = UpdateAgent'
  { -- | The name that you want to use to configure the agent.
    name :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the agent to update.
    agentArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateAgent' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'updateAgent_name' - The name that you want to use to configure the agent.
--
-- 'agentArn', 'updateAgent_agentArn' - The Amazon Resource Name (ARN) of the agent to update.
newUpdateAgent ::
  -- | 'agentArn'
  Prelude.Text ->
  UpdateAgent
newUpdateAgent pAgentArn_ =
  UpdateAgent'
    { name = Prelude.Nothing,
      agentArn = pAgentArn_
    }

-- | The name that you want to use to configure the agent.
updateAgent_name :: Lens.Lens' UpdateAgent (Prelude.Maybe Prelude.Text)
updateAgent_name = Lens.lens (\UpdateAgent' {name} -> name) (\s@UpdateAgent' {} a -> s {name = a} :: UpdateAgent)

-- | The Amazon Resource Name (ARN) of the agent to update.
updateAgent_agentArn :: Lens.Lens' UpdateAgent Prelude.Text
updateAgent_agentArn = Lens.lens (\UpdateAgent' {agentArn} -> agentArn) (\s@UpdateAgent' {} a -> s {agentArn = a} :: UpdateAgent)

instance Core.AWSRequest UpdateAgent where
  type AWSResponse UpdateAgent = UpdateAgentResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateAgentResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateAgent

instance Prelude.NFData UpdateAgent

instance Core.ToHeaders UpdateAgent where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("FmrsService.UpdateAgent" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateAgent where
  toJSON UpdateAgent' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Name" Core..=) Prelude.<$> name,
            Prelude.Just ("AgentArn" Core..= agentArn)
          ]
      )

instance Core.ToPath UpdateAgent where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateAgent where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateAgentResponse' smart constructor.
data UpdateAgentResponse = UpdateAgentResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateAgentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateAgentResponse_httpStatus' - The response's http status code.
newUpdateAgentResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateAgentResponse
newUpdateAgentResponse pHttpStatus_ =
  UpdateAgentResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
updateAgentResponse_httpStatus :: Lens.Lens' UpdateAgentResponse Prelude.Int
updateAgentResponse_httpStatus = Lens.lens (\UpdateAgentResponse' {httpStatus} -> httpStatus) (\s@UpdateAgentResponse' {} a -> s {httpStatus = a} :: UpdateAgentResponse)

instance Prelude.NFData UpdateAgentResponse
