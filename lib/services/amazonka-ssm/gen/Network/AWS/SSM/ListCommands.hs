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
-- Module      : Network.AWS.SSM.ListCommands
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the commands requested by users of the Amazon Web Services
-- account.
--
-- This operation returns paginated results.
module Network.AWS.SSM.ListCommands
  ( -- * Creating a Request
    ListCommands (..),
    newListCommands,

    -- * Request Lenses
    listCommands_instanceId,
    listCommands_filters,
    listCommands_nextToken,
    listCommands_commandId,
    listCommands_maxResults,

    -- * Destructuring the Response
    ListCommandsResponse (..),
    newListCommandsResponse,

    -- * Response Lenses
    listCommandsResponse_commands,
    listCommandsResponse_nextToken,
    listCommandsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SSM.Types

-- | /See:/ 'newListCommands' smart constructor.
data ListCommands = ListCommands'
  { -- | (Optional) Lists commands issued against this instance ID.
    --
    -- You can\'t specify an instance ID in the same command that you specify
    -- @Status@ = @Pending@. This is because the command hasn\'t reached the
    -- instance yet.
    instanceId :: Prelude.Maybe Prelude.Text,
    -- | (Optional) One or more filters. Use a filter to return a more specific
    -- list of results.
    filters :: Prelude.Maybe (Prelude.NonEmpty CommandFilter),
    -- | (Optional) The token for the next set of items to return. (You received
    -- this token from a previous call.)
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | (Optional) If provided, lists only the specified command.
    commandId :: Prelude.Maybe Prelude.Text,
    -- | (Optional) The maximum number of items to return for this call. The call
    -- also returns a token that you can specify in a subsequent call to get
    -- the next set of results.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListCommands' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceId', 'listCommands_instanceId' - (Optional) Lists commands issued against this instance ID.
--
-- You can\'t specify an instance ID in the same command that you specify
-- @Status@ = @Pending@. This is because the command hasn\'t reached the
-- instance yet.
--
-- 'filters', 'listCommands_filters' - (Optional) One or more filters. Use a filter to return a more specific
-- list of results.
--
-- 'nextToken', 'listCommands_nextToken' - (Optional) The token for the next set of items to return. (You received
-- this token from a previous call.)
--
-- 'commandId', 'listCommands_commandId' - (Optional) If provided, lists only the specified command.
--
-- 'maxResults', 'listCommands_maxResults' - (Optional) The maximum number of items to return for this call. The call
-- also returns a token that you can specify in a subsequent call to get
-- the next set of results.
newListCommands ::
  ListCommands
newListCommands =
  ListCommands'
    { instanceId = Prelude.Nothing,
      filters = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      commandId = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | (Optional) Lists commands issued against this instance ID.
--
-- You can\'t specify an instance ID in the same command that you specify
-- @Status@ = @Pending@. This is because the command hasn\'t reached the
-- instance yet.
listCommands_instanceId :: Lens.Lens' ListCommands (Prelude.Maybe Prelude.Text)
listCommands_instanceId = Lens.lens (\ListCommands' {instanceId} -> instanceId) (\s@ListCommands' {} a -> s {instanceId = a} :: ListCommands)

-- | (Optional) One or more filters. Use a filter to return a more specific
-- list of results.
listCommands_filters :: Lens.Lens' ListCommands (Prelude.Maybe (Prelude.NonEmpty CommandFilter))
listCommands_filters = Lens.lens (\ListCommands' {filters} -> filters) (\s@ListCommands' {} a -> s {filters = a} :: ListCommands) Prelude.. Lens.mapping Lens.coerced

-- | (Optional) The token for the next set of items to return. (You received
-- this token from a previous call.)
listCommands_nextToken :: Lens.Lens' ListCommands (Prelude.Maybe Prelude.Text)
listCommands_nextToken = Lens.lens (\ListCommands' {nextToken} -> nextToken) (\s@ListCommands' {} a -> s {nextToken = a} :: ListCommands)

-- | (Optional) If provided, lists only the specified command.
listCommands_commandId :: Lens.Lens' ListCommands (Prelude.Maybe Prelude.Text)
listCommands_commandId = Lens.lens (\ListCommands' {commandId} -> commandId) (\s@ListCommands' {} a -> s {commandId = a} :: ListCommands)

-- | (Optional) The maximum number of items to return for this call. The call
-- also returns a token that you can specify in a subsequent call to get
-- the next set of results.
listCommands_maxResults :: Lens.Lens' ListCommands (Prelude.Maybe Prelude.Natural)
listCommands_maxResults = Lens.lens (\ListCommands' {maxResults} -> maxResults) (\s@ListCommands' {} a -> s {maxResults = a} :: ListCommands)

instance Core.AWSPager ListCommands where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listCommandsResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listCommandsResponse_commands Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listCommands_nextToken
          Lens..~ rs
          Lens.^? listCommandsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListCommands where
  type AWSResponse ListCommands = ListCommandsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListCommandsResponse'
            Prelude.<$> (x Core..?> "Commands" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListCommands

instance Prelude.NFData ListCommands

instance Core.ToHeaders ListCommands where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("AmazonSSM.ListCommands" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListCommands where
  toJSON ListCommands' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("InstanceId" Core..=) Prelude.<$> instanceId,
            ("Filters" Core..=) Prelude.<$> filters,
            ("NextToken" Core..=) Prelude.<$> nextToken,
            ("CommandId" Core..=) Prelude.<$> commandId,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListCommands where
  toPath = Prelude.const "/"

instance Core.ToQuery ListCommands where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListCommandsResponse' smart constructor.
data ListCommandsResponse = ListCommandsResponse'
  { -- | (Optional) The list of commands requested by the user.
    commands :: Prelude.Maybe [Command],
    -- | (Optional) The token for the next set of items to return. (You received
    -- this token from a previous call.)
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListCommandsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'commands', 'listCommandsResponse_commands' - (Optional) The list of commands requested by the user.
--
-- 'nextToken', 'listCommandsResponse_nextToken' - (Optional) The token for the next set of items to return. (You received
-- this token from a previous call.)
--
-- 'httpStatus', 'listCommandsResponse_httpStatus' - The response's http status code.
newListCommandsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListCommandsResponse
newListCommandsResponse pHttpStatus_ =
  ListCommandsResponse'
    { commands = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | (Optional) The list of commands requested by the user.
listCommandsResponse_commands :: Lens.Lens' ListCommandsResponse (Prelude.Maybe [Command])
listCommandsResponse_commands = Lens.lens (\ListCommandsResponse' {commands} -> commands) (\s@ListCommandsResponse' {} a -> s {commands = a} :: ListCommandsResponse) Prelude.. Lens.mapping Lens.coerced

-- | (Optional) The token for the next set of items to return. (You received
-- this token from a previous call.)
listCommandsResponse_nextToken :: Lens.Lens' ListCommandsResponse (Prelude.Maybe Prelude.Text)
listCommandsResponse_nextToken = Lens.lens (\ListCommandsResponse' {nextToken} -> nextToken) (\s@ListCommandsResponse' {} a -> s {nextToken = a} :: ListCommandsResponse)

-- | The response's http status code.
listCommandsResponse_httpStatus :: Lens.Lens' ListCommandsResponse Prelude.Int
listCommandsResponse_httpStatus = Lens.lens (\ListCommandsResponse' {httpStatus} -> httpStatus) (\s@ListCommandsResponse' {} a -> s {httpStatus = a} :: ListCommandsResponse)

instance Prelude.NFData ListCommandsResponse
