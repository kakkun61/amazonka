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
-- Module      : Network.AWS.ApiGatewayV2.GetRouteResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a RouteResponse.
module Network.AWS.ApiGatewayV2.GetRouteResponse
  ( -- * Creating a Request
    GetRouteResponse (..),
    newGetRouteResponse,

    -- * Request Lenses
    getRouteResponse_routeResponseId,
    getRouteResponse_apiId,
    getRouteResponse_routeId,

    -- * Destructuring the Response
    GetRouteResponseResponse (..),
    newGetRouteResponseResponse,

    -- * Response Lenses
    getRouteResponseResponse_modelSelectionExpression,
    getRouteResponseResponse_responseModels,
    getRouteResponseResponse_routeResponseId,
    getRouteResponseResponse_routeResponseKey,
    getRouteResponseResponse_responseParameters,
    getRouteResponseResponse_httpStatus,
  )
where

import Network.AWS.ApiGatewayV2.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetRouteResponse' smart constructor.
data GetRouteResponse = GetRouteResponse'
  { -- | The route response ID.
    routeResponseId :: Prelude.Text,
    -- | The API identifier.
    apiId :: Prelude.Text,
    -- | The route ID.
    routeId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetRouteResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'routeResponseId', 'getRouteResponse_routeResponseId' - The route response ID.
--
-- 'apiId', 'getRouteResponse_apiId' - The API identifier.
--
-- 'routeId', 'getRouteResponse_routeId' - The route ID.
newGetRouteResponse ::
  -- | 'routeResponseId'
  Prelude.Text ->
  -- | 'apiId'
  Prelude.Text ->
  -- | 'routeId'
  Prelude.Text ->
  GetRouteResponse
newGetRouteResponse
  pRouteResponseId_
  pApiId_
  pRouteId_ =
    GetRouteResponse'
      { routeResponseId =
          pRouteResponseId_,
        apiId = pApiId_,
        routeId = pRouteId_
      }

-- | The route response ID.
getRouteResponse_routeResponseId :: Lens.Lens' GetRouteResponse Prelude.Text
getRouteResponse_routeResponseId = Lens.lens (\GetRouteResponse' {routeResponseId} -> routeResponseId) (\s@GetRouteResponse' {} a -> s {routeResponseId = a} :: GetRouteResponse)

-- | The API identifier.
getRouteResponse_apiId :: Lens.Lens' GetRouteResponse Prelude.Text
getRouteResponse_apiId = Lens.lens (\GetRouteResponse' {apiId} -> apiId) (\s@GetRouteResponse' {} a -> s {apiId = a} :: GetRouteResponse)

-- | The route ID.
getRouteResponse_routeId :: Lens.Lens' GetRouteResponse Prelude.Text
getRouteResponse_routeId = Lens.lens (\GetRouteResponse' {routeId} -> routeId) (\s@GetRouteResponse' {} a -> s {routeId = a} :: GetRouteResponse)

instance Core.AWSRequest GetRouteResponse where
  type
    AWSResponse GetRouteResponse =
      GetRouteResponseResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetRouteResponseResponse'
            Prelude.<$> (x Core..?> "modelSelectionExpression")
            Prelude.<*> (x Core..?> "responseModels" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "routeResponseId")
            Prelude.<*> (x Core..?> "routeResponseKey")
            Prelude.<*> ( x Core..?> "responseParameters"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetRouteResponse

instance Prelude.NFData GetRouteResponse

instance Core.ToHeaders GetRouteResponse where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetRouteResponse where
  toPath GetRouteResponse' {..} =
    Prelude.mconcat
      [ "/v2/apis/",
        Core.toBS apiId,
        "/routes/",
        Core.toBS routeId,
        "/routeresponses/",
        Core.toBS routeResponseId
      ]

instance Core.ToQuery GetRouteResponse where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetRouteResponseResponse' smart constructor.
data GetRouteResponseResponse = GetRouteResponseResponse'
  { -- | Represents the model selection expression of a route response. Supported
    -- only for WebSocket APIs.
    modelSelectionExpression :: Prelude.Maybe Prelude.Text,
    -- | Represents the response models of a route response.
    responseModels :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Represents the identifier of a route response.
    routeResponseId :: Prelude.Maybe Prelude.Text,
    -- | Represents the route response key of a route response.
    routeResponseKey :: Prelude.Maybe Prelude.Text,
    -- | Represents the response parameters of a route response.
    responseParameters :: Prelude.Maybe (Prelude.HashMap Prelude.Text ParameterConstraints),
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetRouteResponseResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'modelSelectionExpression', 'getRouteResponseResponse_modelSelectionExpression' - Represents the model selection expression of a route response. Supported
-- only for WebSocket APIs.
--
-- 'responseModels', 'getRouteResponseResponse_responseModels' - Represents the response models of a route response.
--
-- 'routeResponseId', 'getRouteResponseResponse_routeResponseId' - Represents the identifier of a route response.
--
-- 'routeResponseKey', 'getRouteResponseResponse_routeResponseKey' - Represents the route response key of a route response.
--
-- 'responseParameters', 'getRouteResponseResponse_responseParameters' - Represents the response parameters of a route response.
--
-- 'httpStatus', 'getRouteResponseResponse_httpStatus' - The response's http status code.
newGetRouteResponseResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetRouteResponseResponse
newGetRouteResponseResponse pHttpStatus_ =
  GetRouteResponseResponse'
    { modelSelectionExpression =
        Prelude.Nothing,
      responseModels = Prelude.Nothing,
      routeResponseId = Prelude.Nothing,
      routeResponseKey = Prelude.Nothing,
      responseParameters = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Represents the model selection expression of a route response. Supported
-- only for WebSocket APIs.
getRouteResponseResponse_modelSelectionExpression :: Lens.Lens' GetRouteResponseResponse (Prelude.Maybe Prelude.Text)
getRouteResponseResponse_modelSelectionExpression = Lens.lens (\GetRouteResponseResponse' {modelSelectionExpression} -> modelSelectionExpression) (\s@GetRouteResponseResponse' {} a -> s {modelSelectionExpression = a} :: GetRouteResponseResponse)

-- | Represents the response models of a route response.
getRouteResponseResponse_responseModels :: Lens.Lens' GetRouteResponseResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
getRouteResponseResponse_responseModels = Lens.lens (\GetRouteResponseResponse' {responseModels} -> responseModels) (\s@GetRouteResponseResponse' {} a -> s {responseModels = a} :: GetRouteResponseResponse) Prelude.. Lens.mapping Lens.coerced

-- | Represents the identifier of a route response.
getRouteResponseResponse_routeResponseId :: Lens.Lens' GetRouteResponseResponse (Prelude.Maybe Prelude.Text)
getRouteResponseResponse_routeResponseId = Lens.lens (\GetRouteResponseResponse' {routeResponseId} -> routeResponseId) (\s@GetRouteResponseResponse' {} a -> s {routeResponseId = a} :: GetRouteResponseResponse)

-- | Represents the route response key of a route response.
getRouteResponseResponse_routeResponseKey :: Lens.Lens' GetRouteResponseResponse (Prelude.Maybe Prelude.Text)
getRouteResponseResponse_routeResponseKey = Lens.lens (\GetRouteResponseResponse' {routeResponseKey} -> routeResponseKey) (\s@GetRouteResponseResponse' {} a -> s {routeResponseKey = a} :: GetRouteResponseResponse)

-- | Represents the response parameters of a route response.
getRouteResponseResponse_responseParameters :: Lens.Lens' GetRouteResponseResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text ParameterConstraints))
getRouteResponseResponse_responseParameters = Lens.lens (\GetRouteResponseResponse' {responseParameters} -> responseParameters) (\s@GetRouteResponseResponse' {} a -> s {responseParameters = a} :: GetRouteResponseResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getRouteResponseResponse_httpStatus :: Lens.Lens' GetRouteResponseResponse Prelude.Int
getRouteResponseResponse_httpStatus = Lens.lens (\GetRouteResponseResponse' {httpStatus} -> httpStatus) (\s@GetRouteResponseResponse' {} a -> s {httpStatus = a} :: GetRouteResponseResponse)

instance Prelude.NFData GetRouteResponseResponse
