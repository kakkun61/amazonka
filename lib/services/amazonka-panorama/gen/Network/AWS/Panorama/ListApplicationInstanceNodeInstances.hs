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
-- Module      : Network.AWS.Panorama.ListApplicationInstanceNodeInstances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of application node instances.
module Network.AWS.Panorama.ListApplicationInstanceNodeInstances
  ( -- * Creating a Request
    ListApplicationInstanceNodeInstances (..),
    newListApplicationInstanceNodeInstances,

    -- * Request Lenses
    listApplicationInstanceNodeInstances_nextToken,
    listApplicationInstanceNodeInstances_maxResults,
    listApplicationInstanceNodeInstances_applicationInstanceId,

    -- * Destructuring the Response
    ListApplicationInstanceNodeInstancesResponse (..),
    newListApplicationInstanceNodeInstancesResponse,

    -- * Response Lenses
    listApplicationInstanceNodeInstancesResponse_nextToken,
    listApplicationInstanceNodeInstancesResponse_nodeInstances,
    listApplicationInstanceNodeInstancesResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Panorama.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListApplicationInstanceNodeInstances' smart constructor.
data ListApplicationInstanceNodeInstances = ListApplicationInstanceNodeInstances'
  { -- | Specify the pagination token from a previous request to retrieve the
    -- next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of node instances to return in one page of results.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The node instances\' application instance ID.
    applicationInstanceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListApplicationInstanceNodeInstances' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listApplicationInstanceNodeInstances_nextToken' - Specify the pagination token from a previous request to retrieve the
-- next page of results.
--
-- 'maxResults', 'listApplicationInstanceNodeInstances_maxResults' - The maximum number of node instances to return in one page of results.
--
-- 'applicationInstanceId', 'listApplicationInstanceNodeInstances_applicationInstanceId' - The node instances\' application instance ID.
newListApplicationInstanceNodeInstances ::
  -- | 'applicationInstanceId'
  Prelude.Text ->
  ListApplicationInstanceNodeInstances
newListApplicationInstanceNodeInstances
  pApplicationInstanceId_ =
    ListApplicationInstanceNodeInstances'
      { nextToken =
          Prelude.Nothing,
        maxResults = Prelude.Nothing,
        applicationInstanceId =
          pApplicationInstanceId_
      }

-- | Specify the pagination token from a previous request to retrieve the
-- next page of results.
listApplicationInstanceNodeInstances_nextToken :: Lens.Lens' ListApplicationInstanceNodeInstances (Prelude.Maybe Prelude.Text)
listApplicationInstanceNodeInstances_nextToken = Lens.lens (\ListApplicationInstanceNodeInstances' {nextToken} -> nextToken) (\s@ListApplicationInstanceNodeInstances' {} a -> s {nextToken = a} :: ListApplicationInstanceNodeInstances)

-- | The maximum number of node instances to return in one page of results.
listApplicationInstanceNodeInstances_maxResults :: Lens.Lens' ListApplicationInstanceNodeInstances (Prelude.Maybe Prelude.Natural)
listApplicationInstanceNodeInstances_maxResults = Lens.lens (\ListApplicationInstanceNodeInstances' {maxResults} -> maxResults) (\s@ListApplicationInstanceNodeInstances' {} a -> s {maxResults = a} :: ListApplicationInstanceNodeInstances)

-- | The node instances\' application instance ID.
listApplicationInstanceNodeInstances_applicationInstanceId :: Lens.Lens' ListApplicationInstanceNodeInstances Prelude.Text
listApplicationInstanceNodeInstances_applicationInstanceId = Lens.lens (\ListApplicationInstanceNodeInstances' {applicationInstanceId} -> applicationInstanceId) (\s@ListApplicationInstanceNodeInstances' {} a -> s {applicationInstanceId = a} :: ListApplicationInstanceNodeInstances)

instance
  Core.AWSRequest
    ListApplicationInstanceNodeInstances
  where
  type
    AWSResponse ListApplicationInstanceNodeInstances =
      ListApplicationInstanceNodeInstancesResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListApplicationInstanceNodeInstancesResponse'
            Prelude.<$> (x Core..?> "NextToken")
              Prelude.<*> (x Core..?> "NodeInstances" Core..!@ Prelude.mempty)
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    ListApplicationInstanceNodeInstances

instance
  Prelude.NFData
    ListApplicationInstanceNodeInstances

instance
  Core.ToHeaders
    ListApplicationInstanceNodeInstances
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
  Core.ToPath
    ListApplicationInstanceNodeInstances
  where
  toPath ListApplicationInstanceNodeInstances' {..} =
    Prelude.mconcat
      [ "/application-instances/",
        Core.toBS applicationInstanceId,
        "/node-instances"
      ]

instance
  Core.ToQuery
    ListApplicationInstanceNodeInstances
  where
  toQuery ListApplicationInstanceNodeInstances' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListApplicationInstanceNodeInstancesResponse' smart constructor.
data ListApplicationInstanceNodeInstancesResponse = ListApplicationInstanceNodeInstancesResponse'
  { -- | A pagination token that\'s included if more results are available.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of node instances.
    nodeInstances :: Prelude.Maybe [NodeInstance],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListApplicationInstanceNodeInstancesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listApplicationInstanceNodeInstancesResponse_nextToken' - A pagination token that\'s included if more results are available.
--
-- 'nodeInstances', 'listApplicationInstanceNodeInstancesResponse_nodeInstances' - A list of node instances.
--
-- 'httpStatus', 'listApplicationInstanceNodeInstancesResponse_httpStatus' - The response's http status code.
newListApplicationInstanceNodeInstancesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListApplicationInstanceNodeInstancesResponse
newListApplicationInstanceNodeInstancesResponse
  pHttpStatus_ =
    ListApplicationInstanceNodeInstancesResponse'
      { nextToken =
          Prelude.Nothing,
        nodeInstances =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | A pagination token that\'s included if more results are available.
listApplicationInstanceNodeInstancesResponse_nextToken :: Lens.Lens' ListApplicationInstanceNodeInstancesResponse (Prelude.Maybe Prelude.Text)
listApplicationInstanceNodeInstancesResponse_nextToken = Lens.lens (\ListApplicationInstanceNodeInstancesResponse' {nextToken} -> nextToken) (\s@ListApplicationInstanceNodeInstancesResponse' {} a -> s {nextToken = a} :: ListApplicationInstanceNodeInstancesResponse)

-- | A list of node instances.
listApplicationInstanceNodeInstancesResponse_nodeInstances :: Lens.Lens' ListApplicationInstanceNodeInstancesResponse (Prelude.Maybe [NodeInstance])
listApplicationInstanceNodeInstancesResponse_nodeInstances = Lens.lens (\ListApplicationInstanceNodeInstancesResponse' {nodeInstances} -> nodeInstances) (\s@ListApplicationInstanceNodeInstancesResponse' {} a -> s {nodeInstances = a} :: ListApplicationInstanceNodeInstancesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listApplicationInstanceNodeInstancesResponse_httpStatus :: Lens.Lens' ListApplicationInstanceNodeInstancesResponse Prelude.Int
listApplicationInstanceNodeInstancesResponse_httpStatus = Lens.lens (\ListApplicationInstanceNodeInstancesResponse' {httpStatus} -> httpStatus) (\s@ListApplicationInstanceNodeInstancesResponse' {} a -> s {httpStatus = a} :: ListApplicationInstanceNodeInstancesResponse)

instance
  Prelude.NFData
    ListApplicationInstanceNodeInstancesResponse
