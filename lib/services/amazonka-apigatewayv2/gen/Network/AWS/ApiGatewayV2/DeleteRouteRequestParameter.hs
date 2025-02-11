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
-- Module      : Network.AWS.ApiGatewayV2.DeleteRouteRequestParameter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a route request parameter.
module Network.AWS.ApiGatewayV2.DeleteRouteRequestParameter
  ( -- * Creating a Request
    DeleteRouteRequestParameter (..),
    newDeleteRouteRequestParameter,

    -- * Request Lenses
    deleteRouteRequestParameter_requestParameterKey,
    deleteRouteRequestParameter_apiId,
    deleteRouteRequestParameter_routeId,

    -- * Destructuring the Response
    DeleteRouteRequestParameterResponse (..),
    newDeleteRouteRequestParameterResponse,
  )
where

import Network.AWS.ApiGatewayV2.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteRouteRequestParameter' smart constructor.
data DeleteRouteRequestParameter = DeleteRouteRequestParameter'
  { -- | The route request parameter key.
    requestParameterKey :: Prelude.Text,
    -- | The API identifier.
    apiId :: Prelude.Text,
    -- | The route ID.
    routeId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteRouteRequestParameter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestParameterKey', 'deleteRouteRequestParameter_requestParameterKey' - The route request parameter key.
--
-- 'apiId', 'deleteRouteRequestParameter_apiId' - The API identifier.
--
-- 'routeId', 'deleteRouteRequestParameter_routeId' - The route ID.
newDeleteRouteRequestParameter ::
  -- | 'requestParameterKey'
  Prelude.Text ->
  -- | 'apiId'
  Prelude.Text ->
  -- | 'routeId'
  Prelude.Text ->
  DeleteRouteRequestParameter
newDeleteRouteRequestParameter
  pRequestParameterKey_
  pApiId_
  pRouteId_ =
    DeleteRouteRequestParameter'
      { requestParameterKey =
          pRequestParameterKey_,
        apiId = pApiId_,
        routeId = pRouteId_
      }

-- | The route request parameter key.
deleteRouteRequestParameter_requestParameterKey :: Lens.Lens' DeleteRouteRequestParameter Prelude.Text
deleteRouteRequestParameter_requestParameterKey = Lens.lens (\DeleteRouteRequestParameter' {requestParameterKey} -> requestParameterKey) (\s@DeleteRouteRequestParameter' {} a -> s {requestParameterKey = a} :: DeleteRouteRequestParameter)

-- | The API identifier.
deleteRouteRequestParameter_apiId :: Lens.Lens' DeleteRouteRequestParameter Prelude.Text
deleteRouteRequestParameter_apiId = Lens.lens (\DeleteRouteRequestParameter' {apiId} -> apiId) (\s@DeleteRouteRequestParameter' {} a -> s {apiId = a} :: DeleteRouteRequestParameter)

-- | The route ID.
deleteRouteRequestParameter_routeId :: Lens.Lens' DeleteRouteRequestParameter Prelude.Text
deleteRouteRequestParameter_routeId = Lens.lens (\DeleteRouteRequestParameter' {routeId} -> routeId) (\s@DeleteRouteRequestParameter' {} a -> s {routeId = a} :: DeleteRouteRequestParameter)

instance Core.AWSRequest DeleteRouteRequestParameter where
  type
    AWSResponse DeleteRouteRequestParameter =
      DeleteRouteRequestParameterResponse
  request = Request.delete defaultService
  response =
    Response.receiveNull
      DeleteRouteRequestParameterResponse'

instance Prelude.Hashable DeleteRouteRequestParameter

instance Prelude.NFData DeleteRouteRequestParameter

instance Core.ToHeaders DeleteRouteRequestParameter where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteRouteRequestParameter where
  toPath DeleteRouteRequestParameter' {..} =
    Prelude.mconcat
      [ "/v2/apis/",
        Core.toBS apiId,
        "/routes/",
        Core.toBS routeId,
        "/requestparameters/",
        Core.toBS requestParameterKey
      ]

instance Core.ToQuery DeleteRouteRequestParameter where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteRouteRequestParameterResponse' smart constructor.
data DeleteRouteRequestParameterResponse = DeleteRouteRequestParameterResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteRouteRequestParameterResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteRouteRequestParameterResponse ::
  DeleteRouteRequestParameterResponse
newDeleteRouteRequestParameterResponse =
  DeleteRouteRequestParameterResponse'

instance
  Prelude.NFData
    DeleteRouteRequestParameterResponse
