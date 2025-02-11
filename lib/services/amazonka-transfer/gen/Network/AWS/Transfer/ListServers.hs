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
-- Module      : Network.AWS.Transfer.ListServers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the file transfer protocol-enabled servers that are associated
-- with your Amazon Web Services account.
--
-- This operation returns paginated results.
module Network.AWS.Transfer.ListServers
  ( -- * Creating a Request
    ListServers (..),
    newListServers,

    -- * Request Lenses
    listServers_nextToken,
    listServers_maxResults,

    -- * Destructuring the Response
    ListServersResponse (..),
    newListServersResponse,

    -- * Response Lenses
    listServersResponse_nextToken,
    listServersResponse_httpStatus,
    listServersResponse_servers,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Transfer.Types

-- | /See:/ 'newListServers' smart constructor.
data ListServers = ListServers'
  { -- | When additional results are obtained from the @ListServers@ command, a
    -- @NextToken@ parameter is returned in the output. You can then pass the
    -- @NextToken@ parameter in a subsequent command to continue listing
    -- additional servers.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Specifies the number of servers to return as a response to the
    -- @ListServers@ query.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListServers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listServers_nextToken' - When additional results are obtained from the @ListServers@ command, a
-- @NextToken@ parameter is returned in the output. You can then pass the
-- @NextToken@ parameter in a subsequent command to continue listing
-- additional servers.
--
-- 'maxResults', 'listServers_maxResults' - Specifies the number of servers to return as a response to the
-- @ListServers@ query.
newListServers ::
  ListServers
newListServers =
  ListServers'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | When additional results are obtained from the @ListServers@ command, a
-- @NextToken@ parameter is returned in the output. You can then pass the
-- @NextToken@ parameter in a subsequent command to continue listing
-- additional servers.
listServers_nextToken :: Lens.Lens' ListServers (Prelude.Maybe Prelude.Text)
listServers_nextToken = Lens.lens (\ListServers' {nextToken} -> nextToken) (\s@ListServers' {} a -> s {nextToken = a} :: ListServers)

-- | Specifies the number of servers to return as a response to the
-- @ListServers@ query.
listServers_maxResults :: Lens.Lens' ListServers (Prelude.Maybe Prelude.Natural)
listServers_maxResults = Lens.lens (\ListServers' {maxResults} -> maxResults) (\s@ListServers' {} a -> s {maxResults = a} :: ListServers)

instance Core.AWSPager ListServers where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listServersResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop (rs Lens.^. listServersResponse_servers) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listServers_nextToken
          Lens..~ rs
          Lens.^? listServersResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListServers where
  type AWSResponse ListServers = ListServersResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListServersResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "Servers" Core..!@ Prelude.mempty)
      )

instance Prelude.Hashable ListServers

instance Prelude.NFData ListServers

instance Core.ToHeaders ListServers where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "TransferService.ListServers" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListServers where
  toJSON ListServers' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListServers where
  toPath = Prelude.const "/"

instance Core.ToQuery ListServers where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListServersResponse' smart constructor.
data ListServersResponse = ListServersResponse'
  { -- | When you can get additional results from the @ListServers@ operation, a
    -- @NextToken@ parameter is returned in the output. In a following command,
    -- you can pass in the @NextToken@ parameter to continue listing additional
    -- servers.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | An array of servers that were listed.
    servers :: [ListedServer]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListServersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listServersResponse_nextToken' - When you can get additional results from the @ListServers@ operation, a
-- @NextToken@ parameter is returned in the output. In a following command,
-- you can pass in the @NextToken@ parameter to continue listing additional
-- servers.
--
-- 'httpStatus', 'listServersResponse_httpStatus' - The response's http status code.
--
-- 'servers', 'listServersResponse_servers' - An array of servers that were listed.
newListServersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListServersResponse
newListServersResponse pHttpStatus_ =
  ListServersResponse'
    { nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_,
      servers = Prelude.mempty
    }

-- | When you can get additional results from the @ListServers@ operation, a
-- @NextToken@ parameter is returned in the output. In a following command,
-- you can pass in the @NextToken@ parameter to continue listing additional
-- servers.
listServersResponse_nextToken :: Lens.Lens' ListServersResponse (Prelude.Maybe Prelude.Text)
listServersResponse_nextToken = Lens.lens (\ListServersResponse' {nextToken} -> nextToken) (\s@ListServersResponse' {} a -> s {nextToken = a} :: ListServersResponse)

-- | The response's http status code.
listServersResponse_httpStatus :: Lens.Lens' ListServersResponse Prelude.Int
listServersResponse_httpStatus = Lens.lens (\ListServersResponse' {httpStatus} -> httpStatus) (\s@ListServersResponse' {} a -> s {httpStatus = a} :: ListServersResponse)

-- | An array of servers that were listed.
listServersResponse_servers :: Lens.Lens' ListServersResponse [ListedServer]
listServersResponse_servers = Lens.lens (\ListServersResponse' {servers} -> servers) (\s@ListServersResponse' {} a -> s {servers = a} :: ListServersResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListServersResponse
