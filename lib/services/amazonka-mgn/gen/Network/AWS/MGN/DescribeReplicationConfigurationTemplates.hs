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
-- Module      : Network.AWS.MGN.DescribeReplicationConfigurationTemplates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all ReplicationConfigurationTemplates, filtered by Source Server
-- IDs.
--
-- This operation returns paginated results.
module Network.AWS.MGN.DescribeReplicationConfigurationTemplates
  ( -- * Creating a Request
    DescribeReplicationConfigurationTemplates (..),
    newDescribeReplicationConfigurationTemplates,

    -- * Request Lenses
    describeReplicationConfigurationTemplates_nextToken,
    describeReplicationConfigurationTemplates_maxResults,
    describeReplicationConfigurationTemplates_replicationConfigurationTemplateIDs,

    -- * Destructuring the Response
    DescribeReplicationConfigurationTemplatesResponse (..),
    newDescribeReplicationConfigurationTemplatesResponse,

    -- * Response Lenses
    describeReplicationConfigurationTemplatesResponse_items,
    describeReplicationConfigurationTemplatesResponse_nextToken,
    describeReplicationConfigurationTemplatesResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MGN.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeReplicationConfigurationTemplates' smart constructor.
data DescribeReplicationConfigurationTemplates = DescribeReplicationConfigurationTemplates'
  { -- | Request to describe Replication Configuration template by next token.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Request to describe Replication Configuration template by max results.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | Request to describe Replication Configuration template by template IDs.
    replicationConfigurationTemplateIDs :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeReplicationConfigurationTemplates' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeReplicationConfigurationTemplates_nextToken' - Request to describe Replication Configuration template by next token.
--
-- 'maxResults', 'describeReplicationConfigurationTemplates_maxResults' - Request to describe Replication Configuration template by max results.
--
-- 'replicationConfigurationTemplateIDs', 'describeReplicationConfigurationTemplates_replicationConfigurationTemplateIDs' - Request to describe Replication Configuration template by template IDs.
newDescribeReplicationConfigurationTemplates ::
  DescribeReplicationConfigurationTemplates
newDescribeReplicationConfigurationTemplates =
  DescribeReplicationConfigurationTemplates'
    { nextToken =
        Prelude.Nothing,
      maxResults = Prelude.Nothing,
      replicationConfigurationTemplateIDs =
        Prelude.mempty
    }

-- | Request to describe Replication Configuration template by next token.
describeReplicationConfigurationTemplates_nextToken :: Lens.Lens' DescribeReplicationConfigurationTemplates (Prelude.Maybe Prelude.Text)
describeReplicationConfigurationTemplates_nextToken = Lens.lens (\DescribeReplicationConfigurationTemplates' {nextToken} -> nextToken) (\s@DescribeReplicationConfigurationTemplates' {} a -> s {nextToken = a} :: DescribeReplicationConfigurationTemplates)

-- | Request to describe Replication Configuration template by max results.
describeReplicationConfigurationTemplates_maxResults :: Lens.Lens' DescribeReplicationConfigurationTemplates (Prelude.Maybe Prelude.Natural)
describeReplicationConfigurationTemplates_maxResults = Lens.lens (\DescribeReplicationConfigurationTemplates' {maxResults} -> maxResults) (\s@DescribeReplicationConfigurationTemplates' {} a -> s {maxResults = a} :: DescribeReplicationConfigurationTemplates)

-- | Request to describe Replication Configuration template by template IDs.
describeReplicationConfigurationTemplates_replicationConfigurationTemplateIDs :: Lens.Lens' DescribeReplicationConfigurationTemplates [Prelude.Text]
describeReplicationConfigurationTemplates_replicationConfigurationTemplateIDs = Lens.lens (\DescribeReplicationConfigurationTemplates' {replicationConfigurationTemplateIDs} -> replicationConfigurationTemplateIDs) (\s@DescribeReplicationConfigurationTemplates' {} a -> s {replicationConfigurationTemplateIDs = a} :: DescribeReplicationConfigurationTemplates) Prelude.. Lens.coerced

instance
  Core.AWSPager
    DescribeReplicationConfigurationTemplates
  where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeReplicationConfigurationTemplatesResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeReplicationConfigurationTemplatesResponse_items
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeReplicationConfigurationTemplates_nextToken
          Lens..~ rs
            Lens.^? describeReplicationConfigurationTemplatesResponse_nextToken
              Prelude.. Lens._Just

instance
  Core.AWSRequest
    DescribeReplicationConfigurationTemplates
  where
  type
    AWSResponse
      DescribeReplicationConfigurationTemplates =
      DescribeReplicationConfigurationTemplatesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeReplicationConfigurationTemplatesResponse'
            Prelude.<$> (x Core..?> "items" Core..!@ Prelude.mempty)
              Prelude.<*> (x Core..?> "nextToken")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeReplicationConfigurationTemplates

instance
  Prelude.NFData
    DescribeReplicationConfigurationTemplates

instance
  Core.ToHeaders
    DescribeReplicationConfigurationTemplates
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    DescribeReplicationConfigurationTemplates
  where
  toJSON DescribeReplicationConfigurationTemplates' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nextToken" Core..=) Prelude.<$> nextToken,
            ("maxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just
              ( "replicationConfigurationTemplateIDs"
                  Core..= replicationConfigurationTemplateIDs
              )
          ]
      )

instance
  Core.ToPath
    DescribeReplicationConfigurationTemplates
  where
  toPath =
    Prelude.const
      "/DescribeReplicationConfigurationTemplates"

instance
  Core.ToQuery
    DescribeReplicationConfigurationTemplates
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeReplicationConfigurationTemplatesResponse' smart constructor.
data DescribeReplicationConfigurationTemplatesResponse = DescribeReplicationConfigurationTemplatesResponse'
  { -- | Request to describe Replication Configuration template by items.
    items :: Prelude.Maybe [ReplicationConfigurationTemplate],
    -- | Request to describe Replication Configuration template by next token.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeReplicationConfigurationTemplatesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'items', 'describeReplicationConfigurationTemplatesResponse_items' - Request to describe Replication Configuration template by items.
--
-- 'nextToken', 'describeReplicationConfigurationTemplatesResponse_nextToken' - Request to describe Replication Configuration template by next token.
--
-- 'httpStatus', 'describeReplicationConfigurationTemplatesResponse_httpStatus' - The response's http status code.
newDescribeReplicationConfigurationTemplatesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeReplicationConfigurationTemplatesResponse
newDescribeReplicationConfigurationTemplatesResponse
  pHttpStatus_ =
    DescribeReplicationConfigurationTemplatesResponse'
      { items =
          Prelude.Nothing,
        nextToken =
          Prelude.Nothing,
        httpStatus =
          pHttpStatus_
      }

-- | Request to describe Replication Configuration template by items.
describeReplicationConfigurationTemplatesResponse_items :: Lens.Lens' DescribeReplicationConfigurationTemplatesResponse (Prelude.Maybe [ReplicationConfigurationTemplate])
describeReplicationConfigurationTemplatesResponse_items = Lens.lens (\DescribeReplicationConfigurationTemplatesResponse' {items} -> items) (\s@DescribeReplicationConfigurationTemplatesResponse' {} a -> s {items = a} :: DescribeReplicationConfigurationTemplatesResponse) Prelude.. Lens.mapping Lens.coerced

-- | Request to describe Replication Configuration template by next token.
describeReplicationConfigurationTemplatesResponse_nextToken :: Lens.Lens' DescribeReplicationConfigurationTemplatesResponse (Prelude.Maybe Prelude.Text)
describeReplicationConfigurationTemplatesResponse_nextToken = Lens.lens (\DescribeReplicationConfigurationTemplatesResponse' {nextToken} -> nextToken) (\s@DescribeReplicationConfigurationTemplatesResponse' {} a -> s {nextToken = a} :: DescribeReplicationConfigurationTemplatesResponse)

-- | The response's http status code.
describeReplicationConfigurationTemplatesResponse_httpStatus :: Lens.Lens' DescribeReplicationConfigurationTemplatesResponse Prelude.Int
describeReplicationConfigurationTemplatesResponse_httpStatus = Lens.lens (\DescribeReplicationConfigurationTemplatesResponse' {httpStatus} -> httpStatus) (\s@DescribeReplicationConfigurationTemplatesResponse' {} a -> s {httpStatus = a} :: DescribeReplicationConfigurationTemplatesResponse)

instance
  Prelude.NFData
    DescribeReplicationConfigurationTemplatesResponse
