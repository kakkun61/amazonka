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
-- Module      : Network.AWS.MGN.DescribeSourceServers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves all SourceServers or multiple SourceServers by ID.
--
-- This operation returns paginated results.
module Network.AWS.MGN.DescribeSourceServers
  ( -- * Creating a Request
    DescribeSourceServers (..),
    newDescribeSourceServers,

    -- * Request Lenses
    describeSourceServers_nextToken,
    describeSourceServers_maxResults,
    describeSourceServers_filters,

    -- * Destructuring the Response
    DescribeSourceServersResponse (..),
    newDescribeSourceServersResponse,

    -- * Response Lenses
    describeSourceServersResponse_items,
    describeSourceServersResponse_nextToken,
    describeSourceServersResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MGN.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeSourceServers' smart constructor.
data DescribeSourceServers = DescribeSourceServers'
  { -- | Request to filter Source Servers list by next token.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Request to filter Source Servers list by maximum results.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | Request to filter Source Servers list.
    filters :: DescribeSourceServersRequestFilters
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeSourceServers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeSourceServers_nextToken' - Request to filter Source Servers list by next token.
--
-- 'maxResults', 'describeSourceServers_maxResults' - Request to filter Source Servers list by maximum results.
--
-- 'filters', 'describeSourceServers_filters' - Request to filter Source Servers list.
newDescribeSourceServers ::
  -- | 'filters'
  DescribeSourceServersRequestFilters ->
  DescribeSourceServers
newDescribeSourceServers pFilters_ =
  DescribeSourceServers'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      filters = pFilters_
    }

-- | Request to filter Source Servers list by next token.
describeSourceServers_nextToken :: Lens.Lens' DescribeSourceServers (Prelude.Maybe Prelude.Text)
describeSourceServers_nextToken = Lens.lens (\DescribeSourceServers' {nextToken} -> nextToken) (\s@DescribeSourceServers' {} a -> s {nextToken = a} :: DescribeSourceServers)

-- | Request to filter Source Servers list by maximum results.
describeSourceServers_maxResults :: Lens.Lens' DescribeSourceServers (Prelude.Maybe Prelude.Natural)
describeSourceServers_maxResults = Lens.lens (\DescribeSourceServers' {maxResults} -> maxResults) (\s@DescribeSourceServers' {} a -> s {maxResults = a} :: DescribeSourceServers)

-- | Request to filter Source Servers list.
describeSourceServers_filters :: Lens.Lens' DescribeSourceServers DescribeSourceServersRequestFilters
describeSourceServers_filters = Lens.lens (\DescribeSourceServers' {filters} -> filters) (\s@DescribeSourceServers' {} a -> s {filters = a} :: DescribeSourceServers)

instance Core.AWSPager DescribeSourceServers where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeSourceServersResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeSourceServersResponse_items
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeSourceServers_nextToken
          Lens..~ rs
          Lens.^? describeSourceServersResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest DescribeSourceServers where
  type
    AWSResponse DescribeSourceServers =
      DescribeSourceServersResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeSourceServersResponse'
            Prelude.<$> (x Core..?> "items" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeSourceServers

instance Prelude.NFData DescribeSourceServers

instance Core.ToHeaders DescribeSourceServers where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeSourceServers where
  toJSON DescribeSourceServers' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nextToken" Core..=) Prelude.<$> nextToken,
            ("maxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just ("filters" Core..= filters)
          ]
      )

instance Core.ToPath DescribeSourceServers where
  toPath = Prelude.const "/DescribeSourceServers"

instance Core.ToQuery DescribeSourceServers where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeSourceServersResponse' smart constructor.
data DescribeSourceServersResponse = DescribeSourceServersResponse'
  { -- | Request to filter Source Servers list by item.
    items :: Prelude.Maybe [SourceServer],
    -- | Request to filter Source Servers next token.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeSourceServersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'items', 'describeSourceServersResponse_items' - Request to filter Source Servers list by item.
--
-- 'nextToken', 'describeSourceServersResponse_nextToken' - Request to filter Source Servers next token.
--
-- 'httpStatus', 'describeSourceServersResponse_httpStatus' - The response's http status code.
newDescribeSourceServersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeSourceServersResponse
newDescribeSourceServersResponse pHttpStatus_ =
  DescribeSourceServersResponse'
    { items =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Request to filter Source Servers list by item.
describeSourceServersResponse_items :: Lens.Lens' DescribeSourceServersResponse (Prelude.Maybe [SourceServer])
describeSourceServersResponse_items = Lens.lens (\DescribeSourceServersResponse' {items} -> items) (\s@DescribeSourceServersResponse' {} a -> s {items = a} :: DescribeSourceServersResponse) Prelude.. Lens.mapping Lens.coerced

-- | Request to filter Source Servers next token.
describeSourceServersResponse_nextToken :: Lens.Lens' DescribeSourceServersResponse (Prelude.Maybe Prelude.Text)
describeSourceServersResponse_nextToken = Lens.lens (\DescribeSourceServersResponse' {nextToken} -> nextToken) (\s@DescribeSourceServersResponse' {} a -> s {nextToken = a} :: DescribeSourceServersResponse)

-- | The response's http status code.
describeSourceServersResponse_httpStatus :: Lens.Lens' DescribeSourceServersResponse Prelude.Int
describeSourceServersResponse_httpStatus = Lens.lens (\DescribeSourceServersResponse' {httpStatus} -> httpStatus) (\s@DescribeSourceServersResponse' {} a -> s {httpStatus = a} :: DescribeSourceServersResponse)

instance Prelude.NFData DescribeSourceServersResponse
