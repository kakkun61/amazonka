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
-- Module      : Network.AWS.FraudDetector.GetModels
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one or more models. Gets all models for the Amazon Web Services
-- account if no model type and no model id provided. Gets all models for
-- the Amazon Web Services account and model type, if the model type is
-- specified but model id is not provided. Gets a specific model if (model
-- type, model id) tuple is specified.
--
-- This is a paginated API. If you provide a null @maxResults@, this action
-- retrieves a maximum of 10 records per page. If you provide a
-- @maxResults@, the value must be between 1 and 10. To get the next page
-- results, provide the pagination token from the response as part of your
-- request. A null pagination token fetches the records from the beginning.
module Network.AWS.FraudDetector.GetModels
  ( -- * Creating a Request
    GetModels (..),
    newGetModels,

    -- * Request Lenses
    getModels_modelType,
    getModels_modelId,
    getModels_nextToken,
    getModels_maxResults,

    -- * Destructuring the Response
    GetModelsResponse (..),
    newGetModelsResponse,

    -- * Response Lenses
    getModelsResponse_models,
    getModelsResponse_nextToken,
    getModelsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.FraudDetector.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetModels' smart constructor.
data GetModels = GetModels'
  { -- | The model type.
    modelType :: Prelude.Maybe ModelTypeEnum,
    -- | The model ID.
    modelId :: Prelude.Maybe Prelude.Text,
    -- | The next token for the subsequent request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of objects to return for the request.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetModels' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'modelType', 'getModels_modelType' - The model type.
--
-- 'modelId', 'getModels_modelId' - The model ID.
--
-- 'nextToken', 'getModels_nextToken' - The next token for the subsequent request.
--
-- 'maxResults', 'getModels_maxResults' - The maximum number of objects to return for the request.
newGetModels ::
  GetModels
newGetModels =
  GetModels'
    { modelType = Prelude.Nothing,
      modelId = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The model type.
getModels_modelType :: Lens.Lens' GetModels (Prelude.Maybe ModelTypeEnum)
getModels_modelType = Lens.lens (\GetModels' {modelType} -> modelType) (\s@GetModels' {} a -> s {modelType = a} :: GetModels)

-- | The model ID.
getModels_modelId :: Lens.Lens' GetModels (Prelude.Maybe Prelude.Text)
getModels_modelId = Lens.lens (\GetModels' {modelId} -> modelId) (\s@GetModels' {} a -> s {modelId = a} :: GetModels)

-- | The next token for the subsequent request.
getModels_nextToken :: Lens.Lens' GetModels (Prelude.Maybe Prelude.Text)
getModels_nextToken = Lens.lens (\GetModels' {nextToken} -> nextToken) (\s@GetModels' {} a -> s {nextToken = a} :: GetModels)

-- | The maximum number of objects to return for the request.
getModels_maxResults :: Lens.Lens' GetModels (Prelude.Maybe Prelude.Natural)
getModels_maxResults = Lens.lens (\GetModels' {maxResults} -> maxResults) (\s@GetModels' {} a -> s {maxResults = a} :: GetModels)

instance Core.AWSRequest GetModels where
  type AWSResponse GetModels = GetModelsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetModelsResponse'
            Prelude.<$> (x Core..?> "models" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetModels

instance Prelude.NFData GetModels

instance Core.ToHeaders GetModels where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSHawksNestServiceFacade.GetModels" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetModels where
  toJSON GetModels' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("modelType" Core..=) Prelude.<$> modelType,
            ("modelId" Core..=) Prelude.<$> modelId,
            ("nextToken" Core..=) Prelude.<$> nextToken,
            ("maxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath GetModels where
  toPath = Prelude.const "/"

instance Core.ToQuery GetModels where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetModelsResponse' smart constructor.
data GetModelsResponse = GetModelsResponse'
  { -- | The array of models.
    models :: Prelude.Maybe [Model],
    -- | The next page token to be used in subsequent requests.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetModelsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'models', 'getModelsResponse_models' - The array of models.
--
-- 'nextToken', 'getModelsResponse_nextToken' - The next page token to be used in subsequent requests.
--
-- 'httpStatus', 'getModelsResponse_httpStatus' - The response's http status code.
newGetModelsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetModelsResponse
newGetModelsResponse pHttpStatus_ =
  GetModelsResponse'
    { models = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The array of models.
getModelsResponse_models :: Lens.Lens' GetModelsResponse (Prelude.Maybe [Model])
getModelsResponse_models = Lens.lens (\GetModelsResponse' {models} -> models) (\s@GetModelsResponse' {} a -> s {models = a} :: GetModelsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The next page token to be used in subsequent requests.
getModelsResponse_nextToken :: Lens.Lens' GetModelsResponse (Prelude.Maybe Prelude.Text)
getModelsResponse_nextToken = Lens.lens (\GetModelsResponse' {nextToken} -> nextToken) (\s@GetModelsResponse' {} a -> s {nextToken = a} :: GetModelsResponse)

-- | The response's http status code.
getModelsResponse_httpStatus :: Lens.Lens' GetModelsResponse Prelude.Int
getModelsResponse_httpStatus = Lens.lens (\GetModelsResponse' {httpStatus} -> httpStatus) (\s@GetModelsResponse' {} a -> s {httpStatus = a} :: GetModelsResponse)

instance Prelude.NFData GetModelsResponse
