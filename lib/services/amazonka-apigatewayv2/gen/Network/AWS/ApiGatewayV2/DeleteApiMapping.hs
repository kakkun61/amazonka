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
-- Module      : Network.AWS.ApiGatewayV2.DeleteApiMapping
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an API mapping.
module Network.AWS.ApiGatewayV2.DeleteApiMapping
  ( -- * Creating a Request
    DeleteApiMapping (..),
    newDeleteApiMapping,

    -- * Request Lenses
    deleteApiMapping_apiMappingId,
    deleteApiMapping_domainName,

    -- * Destructuring the Response
    DeleteApiMappingResponse (..),
    newDeleteApiMappingResponse,
  )
where

import Network.AWS.ApiGatewayV2.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteApiMapping' smart constructor.
data DeleteApiMapping = DeleteApiMapping'
  { -- | The API mapping identifier.
    apiMappingId :: Prelude.Text,
    -- | The domain name.
    domainName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteApiMapping' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'apiMappingId', 'deleteApiMapping_apiMappingId' - The API mapping identifier.
--
-- 'domainName', 'deleteApiMapping_domainName' - The domain name.
newDeleteApiMapping ::
  -- | 'apiMappingId'
  Prelude.Text ->
  -- | 'domainName'
  Prelude.Text ->
  DeleteApiMapping
newDeleteApiMapping pApiMappingId_ pDomainName_ =
  DeleteApiMapping'
    { apiMappingId = pApiMappingId_,
      domainName = pDomainName_
    }

-- | The API mapping identifier.
deleteApiMapping_apiMappingId :: Lens.Lens' DeleteApiMapping Prelude.Text
deleteApiMapping_apiMappingId = Lens.lens (\DeleteApiMapping' {apiMappingId} -> apiMappingId) (\s@DeleteApiMapping' {} a -> s {apiMappingId = a} :: DeleteApiMapping)

-- | The domain name.
deleteApiMapping_domainName :: Lens.Lens' DeleteApiMapping Prelude.Text
deleteApiMapping_domainName = Lens.lens (\DeleteApiMapping' {domainName} -> domainName) (\s@DeleteApiMapping' {} a -> s {domainName = a} :: DeleteApiMapping)

instance Core.AWSRequest DeleteApiMapping where
  type
    AWSResponse DeleteApiMapping =
      DeleteApiMappingResponse
  request = Request.delete defaultService
  response =
    Response.receiveNull DeleteApiMappingResponse'

instance Prelude.Hashable DeleteApiMapping

instance Prelude.NFData DeleteApiMapping

instance Core.ToHeaders DeleteApiMapping where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteApiMapping where
  toPath DeleteApiMapping' {..} =
    Prelude.mconcat
      [ "/v2/domainnames/",
        Core.toBS domainName,
        "/apimappings/",
        Core.toBS apiMappingId
      ]

instance Core.ToQuery DeleteApiMapping where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteApiMappingResponse' smart constructor.
data DeleteApiMappingResponse = DeleteApiMappingResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteApiMappingResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteApiMappingResponse ::
  DeleteApiMappingResponse
newDeleteApiMappingResponse =
  DeleteApiMappingResponse'

instance Prelude.NFData DeleteApiMappingResponse
