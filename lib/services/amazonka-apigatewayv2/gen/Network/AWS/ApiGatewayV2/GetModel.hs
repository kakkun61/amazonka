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
-- Module      : Network.AWS.ApiGatewayV2.GetModel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a Model.
module Network.AWS.ApiGatewayV2.GetModel
  ( -- * Creating a Request
    GetModel (..),
    newGetModel,

    -- * Request Lenses
    getModel_modelId,
    getModel_apiId,

    -- * Destructuring the Response
    GetModelResponse (..),
    newGetModelResponse,

    -- * Response Lenses
    getModelResponse_modelId,
    getModelResponse_schema,
    getModelResponse_name,
    getModelResponse_description,
    getModelResponse_contentType,
    getModelResponse_httpStatus,
  )
where

import Network.AWS.ApiGatewayV2.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetModel' smart constructor.
data GetModel = GetModel'
  { -- | The model ID.
    modelId :: Prelude.Text,
    -- | The API identifier.
    apiId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetModel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'modelId', 'getModel_modelId' - The model ID.
--
-- 'apiId', 'getModel_apiId' - The API identifier.
newGetModel ::
  -- | 'modelId'
  Prelude.Text ->
  -- | 'apiId'
  Prelude.Text ->
  GetModel
newGetModel pModelId_ pApiId_ =
  GetModel' {modelId = pModelId_, apiId = pApiId_}

-- | The model ID.
getModel_modelId :: Lens.Lens' GetModel Prelude.Text
getModel_modelId = Lens.lens (\GetModel' {modelId} -> modelId) (\s@GetModel' {} a -> s {modelId = a} :: GetModel)

-- | The API identifier.
getModel_apiId :: Lens.Lens' GetModel Prelude.Text
getModel_apiId = Lens.lens (\GetModel' {apiId} -> apiId) (\s@GetModel' {} a -> s {apiId = a} :: GetModel)

instance Core.AWSRequest GetModel where
  type AWSResponse GetModel = GetModelResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetModelResponse'
            Prelude.<$> (x Core..?> "modelId")
            Prelude.<*> (x Core..?> "schema")
            Prelude.<*> (x Core..?> "name")
            Prelude.<*> (x Core..?> "description")
            Prelude.<*> (x Core..?> "contentType")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetModel

instance Prelude.NFData GetModel

instance Core.ToHeaders GetModel where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetModel where
  toPath GetModel' {..} =
    Prelude.mconcat
      [ "/v2/apis/",
        Core.toBS apiId,
        "/models/",
        Core.toBS modelId
      ]

instance Core.ToQuery GetModel where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetModelResponse' smart constructor.
data GetModelResponse = GetModelResponse'
  { -- | The model identifier.
    modelId :: Prelude.Maybe Prelude.Text,
    -- | The schema for the model. For application\/json models, this should be
    -- JSON schema draft 4 model.
    schema :: Prelude.Maybe Prelude.Text,
    -- | The name of the model. Must be alphanumeric.
    name :: Prelude.Maybe Prelude.Text,
    -- | The description of the model.
    description :: Prelude.Maybe Prelude.Text,
    -- | The content-type for the model, for example, \"application\/json\".
    contentType :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetModelResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'modelId', 'getModelResponse_modelId' - The model identifier.
--
-- 'schema', 'getModelResponse_schema' - The schema for the model. For application\/json models, this should be
-- JSON schema draft 4 model.
--
-- 'name', 'getModelResponse_name' - The name of the model. Must be alphanumeric.
--
-- 'description', 'getModelResponse_description' - The description of the model.
--
-- 'contentType', 'getModelResponse_contentType' - The content-type for the model, for example, \"application\/json\".
--
-- 'httpStatus', 'getModelResponse_httpStatus' - The response's http status code.
newGetModelResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetModelResponse
newGetModelResponse pHttpStatus_ =
  GetModelResponse'
    { modelId = Prelude.Nothing,
      schema = Prelude.Nothing,
      name = Prelude.Nothing,
      description = Prelude.Nothing,
      contentType = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The model identifier.
getModelResponse_modelId :: Lens.Lens' GetModelResponse (Prelude.Maybe Prelude.Text)
getModelResponse_modelId = Lens.lens (\GetModelResponse' {modelId} -> modelId) (\s@GetModelResponse' {} a -> s {modelId = a} :: GetModelResponse)

-- | The schema for the model. For application\/json models, this should be
-- JSON schema draft 4 model.
getModelResponse_schema :: Lens.Lens' GetModelResponse (Prelude.Maybe Prelude.Text)
getModelResponse_schema = Lens.lens (\GetModelResponse' {schema} -> schema) (\s@GetModelResponse' {} a -> s {schema = a} :: GetModelResponse)

-- | The name of the model. Must be alphanumeric.
getModelResponse_name :: Lens.Lens' GetModelResponse (Prelude.Maybe Prelude.Text)
getModelResponse_name = Lens.lens (\GetModelResponse' {name} -> name) (\s@GetModelResponse' {} a -> s {name = a} :: GetModelResponse)

-- | The description of the model.
getModelResponse_description :: Lens.Lens' GetModelResponse (Prelude.Maybe Prelude.Text)
getModelResponse_description = Lens.lens (\GetModelResponse' {description} -> description) (\s@GetModelResponse' {} a -> s {description = a} :: GetModelResponse)

-- | The content-type for the model, for example, \"application\/json\".
getModelResponse_contentType :: Lens.Lens' GetModelResponse (Prelude.Maybe Prelude.Text)
getModelResponse_contentType = Lens.lens (\GetModelResponse' {contentType} -> contentType) (\s@GetModelResponse' {} a -> s {contentType = a} :: GetModelResponse)

-- | The response's http status code.
getModelResponse_httpStatus :: Lens.Lens' GetModelResponse Prelude.Int
getModelResponse_httpStatus = Lens.lens (\GetModelResponse' {httpStatus} -> httpStatus) (\s@GetModelResponse' {} a -> s {httpStatus = a} :: GetModelResponse)

instance Prelude.NFData GetModelResponse
