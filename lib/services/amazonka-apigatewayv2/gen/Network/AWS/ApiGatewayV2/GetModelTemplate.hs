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
-- Module      : Network.AWS.ApiGatewayV2.GetModelTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a model template.
module Network.AWS.ApiGatewayV2.GetModelTemplate
  ( -- * Creating a Request
    GetModelTemplate (..),
    newGetModelTemplate,

    -- * Request Lenses
    getModelTemplate_modelId,
    getModelTemplate_apiId,

    -- * Destructuring the Response
    GetModelTemplateResponse (..),
    newGetModelTemplateResponse,

    -- * Response Lenses
    getModelTemplateResponse_value,
    getModelTemplateResponse_httpStatus,
  )
where

import Network.AWS.ApiGatewayV2.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetModelTemplate' smart constructor.
data GetModelTemplate = GetModelTemplate'
  { -- | The model ID.
    modelId :: Prelude.Text,
    -- | The API identifier.
    apiId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetModelTemplate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'modelId', 'getModelTemplate_modelId' - The model ID.
--
-- 'apiId', 'getModelTemplate_apiId' - The API identifier.
newGetModelTemplate ::
  -- | 'modelId'
  Prelude.Text ->
  -- | 'apiId'
  Prelude.Text ->
  GetModelTemplate
newGetModelTemplate pModelId_ pApiId_ =
  GetModelTemplate'
    { modelId = pModelId_,
      apiId = pApiId_
    }

-- | The model ID.
getModelTemplate_modelId :: Lens.Lens' GetModelTemplate Prelude.Text
getModelTemplate_modelId = Lens.lens (\GetModelTemplate' {modelId} -> modelId) (\s@GetModelTemplate' {} a -> s {modelId = a} :: GetModelTemplate)

-- | The API identifier.
getModelTemplate_apiId :: Lens.Lens' GetModelTemplate Prelude.Text
getModelTemplate_apiId = Lens.lens (\GetModelTemplate' {apiId} -> apiId) (\s@GetModelTemplate' {} a -> s {apiId = a} :: GetModelTemplate)

instance Core.AWSRequest GetModelTemplate where
  type
    AWSResponse GetModelTemplate =
      GetModelTemplateResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetModelTemplateResponse'
            Prelude.<$> (x Core..?> "value")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetModelTemplate

instance Prelude.NFData GetModelTemplate

instance Core.ToHeaders GetModelTemplate where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetModelTemplate where
  toPath GetModelTemplate' {..} =
    Prelude.mconcat
      [ "/v2/apis/",
        Core.toBS apiId,
        "/models/",
        Core.toBS modelId,
        "/template"
      ]

instance Core.ToQuery GetModelTemplate where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetModelTemplateResponse' smart constructor.
data GetModelTemplateResponse = GetModelTemplateResponse'
  { -- | The template value.
    value :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetModelTemplateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'value', 'getModelTemplateResponse_value' - The template value.
--
-- 'httpStatus', 'getModelTemplateResponse_httpStatus' - The response's http status code.
newGetModelTemplateResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetModelTemplateResponse
newGetModelTemplateResponse pHttpStatus_ =
  GetModelTemplateResponse'
    { value = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The template value.
getModelTemplateResponse_value :: Lens.Lens' GetModelTemplateResponse (Prelude.Maybe Prelude.Text)
getModelTemplateResponse_value = Lens.lens (\GetModelTemplateResponse' {value} -> value) (\s@GetModelTemplateResponse' {} a -> s {value = a} :: GetModelTemplateResponse)

-- | The response's http status code.
getModelTemplateResponse_httpStatus :: Lens.Lens' GetModelTemplateResponse Prelude.Int
getModelTemplateResponse_httpStatus = Lens.lens (\GetModelTemplateResponse' {httpStatus} -> httpStatus) (\s@GetModelTemplateResponse' {} a -> s {httpStatus = a} :: GetModelTemplateResponse)

instance Prelude.NFData GetModelTemplateResponse
