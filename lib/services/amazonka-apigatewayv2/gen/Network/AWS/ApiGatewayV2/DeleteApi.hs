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
-- Module      : Network.AWS.ApiGatewayV2.DeleteApi
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an Api resource.
module Network.AWS.ApiGatewayV2.DeleteApi
  ( -- * Creating a Request
    DeleteApi (..),
    newDeleteApi,

    -- * Request Lenses
    deleteApi_apiId,

    -- * Destructuring the Response
    DeleteApiResponse (..),
    newDeleteApiResponse,
  )
where

import Network.AWS.ApiGatewayV2.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteApi' smart constructor.
data DeleteApi = DeleteApi'
  { -- | The API identifier.
    apiId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteApi' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'apiId', 'deleteApi_apiId' - The API identifier.
newDeleteApi ::
  -- | 'apiId'
  Prelude.Text ->
  DeleteApi
newDeleteApi pApiId_ = DeleteApi' {apiId = pApiId_}

-- | The API identifier.
deleteApi_apiId :: Lens.Lens' DeleteApi Prelude.Text
deleteApi_apiId = Lens.lens (\DeleteApi' {apiId} -> apiId) (\s@DeleteApi' {} a -> s {apiId = a} :: DeleteApi)

instance Core.AWSRequest DeleteApi where
  type AWSResponse DeleteApi = DeleteApiResponse
  request = Request.delete defaultService
  response = Response.receiveNull DeleteApiResponse'

instance Prelude.Hashable DeleteApi

instance Prelude.NFData DeleteApi

instance Core.ToHeaders DeleteApi where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteApi where
  toPath DeleteApi' {..} =
    Prelude.mconcat ["/v2/apis/", Core.toBS apiId]

instance Core.ToQuery DeleteApi where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteApiResponse' smart constructor.
data DeleteApiResponse = DeleteApiResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteApiResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteApiResponse ::
  DeleteApiResponse
newDeleteApiResponse = DeleteApiResponse'

instance Prelude.NFData DeleteApiResponse
