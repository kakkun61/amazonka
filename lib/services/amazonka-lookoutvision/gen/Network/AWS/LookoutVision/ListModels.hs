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
-- Module      : Network.AWS.LookoutVision.ListModels
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the versions of a model in an Amazon Lookout for Vision project.
--
-- This operation requires permissions to perform the
-- @lookoutvision:ListModels@ operation.
--
-- This operation returns paginated results.
module Network.AWS.LookoutVision.ListModels
  ( -- * Creating a Request
    ListModels (..),
    newListModels,

    -- * Request Lenses
    listModels_nextToken,
    listModels_maxResults,
    listModels_projectName,

    -- * Destructuring the Response
    ListModelsResponse (..),
    newListModelsResponse,

    -- * Response Lenses
    listModelsResponse_nextToken,
    listModelsResponse_models,
    listModelsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LookoutVision.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListModels' smart constructor.
data ListModels = ListModels'
  { -- | If the previous response was incomplete (because there is more data to
    -- retrieve), Amazon Lookout for Vision returns a pagination token in the
    -- response. You can use this pagination token to retrieve the next set of
    -- models.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return per paginated call. The largest
    -- value you can specify is 100. If you specify a value greater than 100, a
    -- ValidationException error occurs. The default value is 100.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The name of the project that contains the model versions that you want
    -- to list.
    projectName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListModels' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listModels_nextToken' - If the previous response was incomplete (because there is more data to
-- retrieve), Amazon Lookout for Vision returns a pagination token in the
-- response. You can use this pagination token to retrieve the next set of
-- models.
--
-- 'maxResults', 'listModels_maxResults' - The maximum number of results to return per paginated call. The largest
-- value you can specify is 100. If you specify a value greater than 100, a
-- ValidationException error occurs. The default value is 100.
--
-- 'projectName', 'listModels_projectName' - The name of the project that contains the model versions that you want
-- to list.
newListModels ::
  -- | 'projectName'
  Prelude.Text ->
  ListModels
newListModels pProjectName_ =
  ListModels'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      projectName = pProjectName_
    }

-- | If the previous response was incomplete (because there is more data to
-- retrieve), Amazon Lookout for Vision returns a pagination token in the
-- response. You can use this pagination token to retrieve the next set of
-- models.
listModels_nextToken :: Lens.Lens' ListModels (Prelude.Maybe Prelude.Text)
listModels_nextToken = Lens.lens (\ListModels' {nextToken} -> nextToken) (\s@ListModels' {} a -> s {nextToken = a} :: ListModels)

-- | The maximum number of results to return per paginated call. The largest
-- value you can specify is 100. If you specify a value greater than 100, a
-- ValidationException error occurs. The default value is 100.
listModels_maxResults :: Lens.Lens' ListModels (Prelude.Maybe Prelude.Natural)
listModels_maxResults = Lens.lens (\ListModels' {maxResults} -> maxResults) (\s@ListModels' {} a -> s {maxResults = a} :: ListModels)

-- | The name of the project that contains the model versions that you want
-- to list.
listModels_projectName :: Lens.Lens' ListModels Prelude.Text
listModels_projectName = Lens.lens (\ListModels' {projectName} -> projectName) (\s@ListModels' {} a -> s {projectName = a} :: ListModels)

instance Core.AWSPager ListModels where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listModelsResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listModelsResponse_models Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listModels_nextToken
          Lens..~ rs
          Lens.^? listModelsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListModels where
  type AWSResponse ListModels = ListModelsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListModelsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Models" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListModels

instance Prelude.NFData ListModels

instance Core.ToHeaders ListModels where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListModels where
  toPath ListModels' {..} =
    Prelude.mconcat
      [ "/2020-11-20/projects/",
        Core.toBS projectName,
        "/models"
      ]

instance Core.ToQuery ListModels where
  toQuery ListModels' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListModelsResponse' smart constructor.
data ListModelsResponse = ListModelsResponse'
  { -- | If the response is truncated, Amazon Lookout for Vision returns this
    -- token that you can use in the subsequent request to retrieve the next
    -- set of models.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of model versions in the specified project.
    models :: Prelude.Maybe [ModelMetadata],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListModelsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listModelsResponse_nextToken' - If the response is truncated, Amazon Lookout for Vision returns this
-- token that you can use in the subsequent request to retrieve the next
-- set of models.
--
-- 'models', 'listModelsResponse_models' - A list of model versions in the specified project.
--
-- 'httpStatus', 'listModelsResponse_httpStatus' - The response's http status code.
newListModelsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListModelsResponse
newListModelsResponse pHttpStatus_ =
  ListModelsResponse'
    { nextToken = Prelude.Nothing,
      models = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If the response is truncated, Amazon Lookout for Vision returns this
-- token that you can use in the subsequent request to retrieve the next
-- set of models.
listModelsResponse_nextToken :: Lens.Lens' ListModelsResponse (Prelude.Maybe Prelude.Text)
listModelsResponse_nextToken = Lens.lens (\ListModelsResponse' {nextToken} -> nextToken) (\s@ListModelsResponse' {} a -> s {nextToken = a} :: ListModelsResponse)

-- | A list of model versions in the specified project.
listModelsResponse_models :: Lens.Lens' ListModelsResponse (Prelude.Maybe [ModelMetadata])
listModelsResponse_models = Lens.lens (\ListModelsResponse' {models} -> models) (\s@ListModelsResponse' {} a -> s {models = a} :: ListModelsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listModelsResponse_httpStatus :: Lens.Lens' ListModelsResponse Prelude.Int
listModelsResponse_httpStatus = Lens.lens (\ListModelsResponse' {httpStatus} -> httpStatus) (\s@ListModelsResponse' {} a -> s {httpStatus = a} :: ListModelsResponse)

instance Prelude.NFData ListModelsResponse
