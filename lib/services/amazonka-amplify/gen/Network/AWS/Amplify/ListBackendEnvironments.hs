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
-- Module      : Network.AWS.Amplify.ListBackendEnvironments
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the backend environments for an Amplify app.
module Network.AWS.Amplify.ListBackendEnvironments
  ( -- * Creating a Request
    ListBackendEnvironments (..),
    newListBackendEnvironments,

    -- * Request Lenses
    listBackendEnvironments_nextToken,
    listBackendEnvironments_environmentName,
    listBackendEnvironments_maxResults,
    listBackendEnvironments_appId,

    -- * Destructuring the Response
    ListBackendEnvironmentsResponse (..),
    newListBackendEnvironmentsResponse,

    -- * Response Lenses
    listBackendEnvironmentsResponse_nextToken,
    listBackendEnvironmentsResponse_httpStatus,
    listBackendEnvironmentsResponse_backendEnvironments,
  )
where

import Network.AWS.Amplify.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The request structure for the list backend environments request.
--
-- /See:/ 'newListBackendEnvironments' smart constructor.
data ListBackendEnvironments = ListBackendEnvironments'
  { -- | A pagination token. Set to null to start listing backend environments
    -- from the start. If a non-null pagination token is returned in a result,
    -- pass its value in here to list more backend environments.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The name of the backend environment
    environmentName :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of records to list in a single response.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The unique ID for an Amplify app.
    appId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListBackendEnvironments' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listBackendEnvironments_nextToken' - A pagination token. Set to null to start listing backend environments
-- from the start. If a non-null pagination token is returned in a result,
-- pass its value in here to list more backend environments.
--
-- 'environmentName', 'listBackendEnvironments_environmentName' - The name of the backend environment
--
-- 'maxResults', 'listBackendEnvironments_maxResults' - The maximum number of records to list in a single response.
--
-- 'appId', 'listBackendEnvironments_appId' - The unique ID for an Amplify app.
newListBackendEnvironments ::
  -- | 'appId'
  Prelude.Text ->
  ListBackendEnvironments
newListBackendEnvironments pAppId_ =
  ListBackendEnvironments'
    { nextToken =
        Prelude.Nothing,
      environmentName = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      appId = pAppId_
    }

-- | A pagination token. Set to null to start listing backend environments
-- from the start. If a non-null pagination token is returned in a result,
-- pass its value in here to list more backend environments.
listBackendEnvironments_nextToken :: Lens.Lens' ListBackendEnvironments (Prelude.Maybe Prelude.Text)
listBackendEnvironments_nextToken = Lens.lens (\ListBackendEnvironments' {nextToken} -> nextToken) (\s@ListBackendEnvironments' {} a -> s {nextToken = a} :: ListBackendEnvironments)

-- | The name of the backend environment
listBackendEnvironments_environmentName :: Lens.Lens' ListBackendEnvironments (Prelude.Maybe Prelude.Text)
listBackendEnvironments_environmentName = Lens.lens (\ListBackendEnvironments' {environmentName} -> environmentName) (\s@ListBackendEnvironments' {} a -> s {environmentName = a} :: ListBackendEnvironments)

-- | The maximum number of records to list in a single response.
listBackendEnvironments_maxResults :: Lens.Lens' ListBackendEnvironments (Prelude.Maybe Prelude.Natural)
listBackendEnvironments_maxResults = Lens.lens (\ListBackendEnvironments' {maxResults} -> maxResults) (\s@ListBackendEnvironments' {} a -> s {maxResults = a} :: ListBackendEnvironments)

-- | The unique ID for an Amplify app.
listBackendEnvironments_appId :: Lens.Lens' ListBackendEnvironments Prelude.Text
listBackendEnvironments_appId = Lens.lens (\ListBackendEnvironments' {appId} -> appId) (\s@ListBackendEnvironments' {} a -> s {appId = a} :: ListBackendEnvironments)

instance Core.AWSRequest ListBackendEnvironments where
  type
    AWSResponse ListBackendEnvironments =
      ListBackendEnvironmentsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListBackendEnvironmentsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Core..?> "backendEnvironments"
                            Core..!@ Prelude.mempty
                        )
      )

instance Prelude.Hashable ListBackendEnvironments

instance Prelude.NFData ListBackendEnvironments

instance Core.ToHeaders ListBackendEnvironments where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListBackendEnvironments where
  toPath ListBackendEnvironments' {..} =
    Prelude.mconcat
      ["/apps/", Core.toBS appId, "/backendenvironments"]

instance Core.ToQuery ListBackendEnvironments where
  toQuery ListBackendEnvironments' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "environmentName" Core.=: environmentName,
        "maxResults" Core.=: maxResults
      ]

-- | The result structure for the list backend environments result.
--
-- /See:/ 'newListBackendEnvironmentsResponse' smart constructor.
data ListBackendEnvironmentsResponse = ListBackendEnvironmentsResponse'
  { -- | A pagination token. If a non-null pagination token is returned in a
    -- result, pass its value in another request to retrieve more entries.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The list of backend environments for an Amplify app.
    backendEnvironments :: [BackendEnvironment]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListBackendEnvironmentsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listBackendEnvironmentsResponse_nextToken' - A pagination token. If a non-null pagination token is returned in a
-- result, pass its value in another request to retrieve more entries.
--
-- 'httpStatus', 'listBackendEnvironmentsResponse_httpStatus' - The response's http status code.
--
-- 'backendEnvironments', 'listBackendEnvironmentsResponse_backendEnvironments' - The list of backend environments for an Amplify app.
newListBackendEnvironmentsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListBackendEnvironmentsResponse
newListBackendEnvironmentsResponse pHttpStatus_ =
  ListBackendEnvironmentsResponse'
    { nextToken =
        Prelude.Nothing,
      httpStatus = pHttpStatus_,
      backendEnvironments = Prelude.mempty
    }

-- | A pagination token. If a non-null pagination token is returned in a
-- result, pass its value in another request to retrieve more entries.
listBackendEnvironmentsResponse_nextToken :: Lens.Lens' ListBackendEnvironmentsResponse (Prelude.Maybe Prelude.Text)
listBackendEnvironmentsResponse_nextToken = Lens.lens (\ListBackendEnvironmentsResponse' {nextToken} -> nextToken) (\s@ListBackendEnvironmentsResponse' {} a -> s {nextToken = a} :: ListBackendEnvironmentsResponse)

-- | The response's http status code.
listBackendEnvironmentsResponse_httpStatus :: Lens.Lens' ListBackendEnvironmentsResponse Prelude.Int
listBackendEnvironmentsResponse_httpStatus = Lens.lens (\ListBackendEnvironmentsResponse' {httpStatus} -> httpStatus) (\s@ListBackendEnvironmentsResponse' {} a -> s {httpStatus = a} :: ListBackendEnvironmentsResponse)

-- | The list of backend environments for an Amplify app.
listBackendEnvironmentsResponse_backendEnvironments :: Lens.Lens' ListBackendEnvironmentsResponse [BackendEnvironment]
listBackendEnvironmentsResponse_backendEnvironments = Lens.lens (\ListBackendEnvironmentsResponse' {backendEnvironments} -> backendEnvironments) (\s@ListBackendEnvironmentsResponse' {} a -> s {backendEnvironments = a} :: ListBackendEnvironmentsResponse) Prelude.. Lens.coerced

instance
  Prelude.NFData
    ListBackendEnvironmentsResponse
