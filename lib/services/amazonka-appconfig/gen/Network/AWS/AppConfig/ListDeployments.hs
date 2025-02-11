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
-- Module      : Network.AWS.AppConfig.ListDeployments
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the deployments for an environment.
module Network.AWS.AppConfig.ListDeployments
  ( -- * Creating a Request
    ListDeployments (..),
    newListDeployments,

    -- * Request Lenses
    listDeployments_nextToken,
    listDeployments_maxResults,
    listDeployments_applicationId,
    listDeployments_environmentId,

    -- * Destructuring the Response
    ListDeploymentsResponse (..),
    newListDeploymentsResponse,

    -- * Response Lenses
    listDeploymentsResponse_items,
    listDeploymentsResponse_nextToken,
    listDeploymentsResponse_httpStatus,
  )
where

import Network.AWS.AppConfig.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListDeployments' smart constructor.
data ListDeployments = ListDeployments'
  { -- | A token to start the list. Use this token to get the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of items to return for this call. The call also
    -- returns a token that you can specify in a subsequent call to get the
    -- next set of results.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The application ID.
    applicationId :: Prelude.Text,
    -- | The environment ID.
    environmentId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListDeployments' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listDeployments_nextToken' - A token to start the list. Use this token to get the next set of
-- results.
--
-- 'maxResults', 'listDeployments_maxResults' - The maximum number of items to return for this call. The call also
-- returns a token that you can specify in a subsequent call to get the
-- next set of results.
--
-- 'applicationId', 'listDeployments_applicationId' - The application ID.
--
-- 'environmentId', 'listDeployments_environmentId' - The environment ID.
newListDeployments ::
  -- | 'applicationId'
  Prelude.Text ->
  -- | 'environmentId'
  Prelude.Text ->
  ListDeployments
newListDeployments pApplicationId_ pEnvironmentId_ =
  ListDeployments'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      applicationId = pApplicationId_,
      environmentId = pEnvironmentId_
    }

-- | A token to start the list. Use this token to get the next set of
-- results.
listDeployments_nextToken :: Lens.Lens' ListDeployments (Prelude.Maybe Prelude.Text)
listDeployments_nextToken = Lens.lens (\ListDeployments' {nextToken} -> nextToken) (\s@ListDeployments' {} a -> s {nextToken = a} :: ListDeployments)

-- | The maximum number of items to return for this call. The call also
-- returns a token that you can specify in a subsequent call to get the
-- next set of results.
listDeployments_maxResults :: Lens.Lens' ListDeployments (Prelude.Maybe Prelude.Natural)
listDeployments_maxResults = Lens.lens (\ListDeployments' {maxResults} -> maxResults) (\s@ListDeployments' {} a -> s {maxResults = a} :: ListDeployments)

-- | The application ID.
listDeployments_applicationId :: Lens.Lens' ListDeployments Prelude.Text
listDeployments_applicationId = Lens.lens (\ListDeployments' {applicationId} -> applicationId) (\s@ListDeployments' {} a -> s {applicationId = a} :: ListDeployments)

-- | The environment ID.
listDeployments_environmentId :: Lens.Lens' ListDeployments Prelude.Text
listDeployments_environmentId = Lens.lens (\ListDeployments' {environmentId} -> environmentId) (\s@ListDeployments' {} a -> s {environmentId = a} :: ListDeployments)

instance Core.AWSRequest ListDeployments where
  type
    AWSResponse ListDeployments =
      ListDeploymentsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListDeploymentsResponse'
            Prelude.<$> (x Core..?> "Items" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListDeployments

instance Prelude.NFData ListDeployments

instance Core.ToHeaders ListDeployments where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListDeployments where
  toPath ListDeployments' {..} =
    Prelude.mconcat
      [ "/applications/",
        Core.toBS applicationId,
        "/environments/",
        Core.toBS environmentId,
        "/deployments"
      ]

instance Core.ToQuery ListDeployments where
  toQuery ListDeployments' {..} =
    Prelude.mconcat
      [ "next_token" Core.=: nextToken,
        "max_results" Core.=: maxResults
      ]

-- | /See:/ 'newListDeploymentsResponse' smart constructor.
data ListDeploymentsResponse = ListDeploymentsResponse'
  { -- | The elements from this collection.
    items :: Prelude.Maybe [DeploymentSummary],
    -- | The token for the next set of items to return. Use this token to get the
    -- next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListDeploymentsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'items', 'listDeploymentsResponse_items' - The elements from this collection.
--
-- 'nextToken', 'listDeploymentsResponse_nextToken' - The token for the next set of items to return. Use this token to get the
-- next set of results.
--
-- 'httpStatus', 'listDeploymentsResponse_httpStatus' - The response's http status code.
newListDeploymentsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListDeploymentsResponse
newListDeploymentsResponse pHttpStatus_ =
  ListDeploymentsResponse'
    { items = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The elements from this collection.
listDeploymentsResponse_items :: Lens.Lens' ListDeploymentsResponse (Prelude.Maybe [DeploymentSummary])
listDeploymentsResponse_items = Lens.lens (\ListDeploymentsResponse' {items} -> items) (\s@ListDeploymentsResponse' {} a -> s {items = a} :: ListDeploymentsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The token for the next set of items to return. Use this token to get the
-- next set of results.
listDeploymentsResponse_nextToken :: Lens.Lens' ListDeploymentsResponse (Prelude.Maybe Prelude.Text)
listDeploymentsResponse_nextToken = Lens.lens (\ListDeploymentsResponse' {nextToken} -> nextToken) (\s@ListDeploymentsResponse' {} a -> s {nextToken = a} :: ListDeploymentsResponse)

-- | The response's http status code.
listDeploymentsResponse_httpStatus :: Lens.Lens' ListDeploymentsResponse Prelude.Int
listDeploymentsResponse_httpStatus = Lens.lens (\ListDeploymentsResponse' {httpStatus} -> httpStatus) (\s@ListDeploymentsResponse' {} a -> s {httpStatus = a} :: ListDeploymentsResponse)

instance Prelude.NFData ListDeploymentsResponse
