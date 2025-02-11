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
-- Module      : Network.AWS.CustomerProfiles.DeleteIntegration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes an integration from a specific domain.
module Network.AWS.CustomerProfiles.DeleteIntegration
  ( -- * Creating a Request
    DeleteIntegration (..),
    newDeleteIntegration,

    -- * Request Lenses
    deleteIntegration_domainName,
    deleteIntegration_uri,

    -- * Destructuring the Response
    DeleteIntegrationResponse (..),
    newDeleteIntegrationResponse,

    -- * Response Lenses
    deleteIntegrationResponse_httpStatus,
    deleteIntegrationResponse_message,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.CustomerProfiles.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteIntegration' smart constructor.
data DeleteIntegration = DeleteIntegration'
  { -- | The unique name of the domain.
    domainName :: Prelude.Text,
    -- | The URI of the S3 bucket or any other type of data source.
    uri :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteIntegration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domainName', 'deleteIntegration_domainName' - The unique name of the domain.
--
-- 'uri', 'deleteIntegration_uri' - The URI of the S3 bucket or any other type of data source.
newDeleteIntegration ::
  -- | 'domainName'
  Prelude.Text ->
  -- | 'uri'
  Prelude.Text ->
  DeleteIntegration
newDeleteIntegration pDomainName_ pUri_ =
  DeleteIntegration'
    { domainName = pDomainName_,
      uri = pUri_
    }

-- | The unique name of the domain.
deleteIntegration_domainName :: Lens.Lens' DeleteIntegration Prelude.Text
deleteIntegration_domainName = Lens.lens (\DeleteIntegration' {domainName} -> domainName) (\s@DeleteIntegration' {} a -> s {domainName = a} :: DeleteIntegration)

-- | The URI of the S3 bucket or any other type of data source.
deleteIntegration_uri :: Lens.Lens' DeleteIntegration Prelude.Text
deleteIntegration_uri = Lens.lens (\DeleteIntegration' {uri} -> uri) (\s@DeleteIntegration' {} a -> s {uri = a} :: DeleteIntegration)

instance Core.AWSRequest DeleteIntegration where
  type
    AWSResponse DeleteIntegration =
      DeleteIntegrationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteIntegrationResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "Message")
      )

instance Prelude.Hashable DeleteIntegration

instance Prelude.NFData DeleteIntegration

instance Core.ToHeaders DeleteIntegration where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteIntegration where
  toJSON DeleteIntegration' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("Uri" Core..= uri)]
      )

instance Core.ToPath DeleteIntegration where
  toPath DeleteIntegration' {..} =
    Prelude.mconcat
      [ "/domains/",
        Core.toBS domainName,
        "/integrations/delete"
      ]

instance Core.ToQuery DeleteIntegration where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteIntegrationResponse' smart constructor.
data DeleteIntegrationResponse = DeleteIntegrationResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A message that indicates the delete request is done.
    message :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteIntegrationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteIntegrationResponse_httpStatus' - The response's http status code.
--
-- 'message', 'deleteIntegrationResponse_message' - A message that indicates the delete request is done.
newDeleteIntegrationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'message'
  Prelude.Text ->
  DeleteIntegrationResponse
newDeleteIntegrationResponse pHttpStatus_ pMessage_ =
  DeleteIntegrationResponse'
    { httpStatus =
        pHttpStatus_,
      message = pMessage_
    }

-- | The response's http status code.
deleteIntegrationResponse_httpStatus :: Lens.Lens' DeleteIntegrationResponse Prelude.Int
deleteIntegrationResponse_httpStatus = Lens.lens (\DeleteIntegrationResponse' {httpStatus} -> httpStatus) (\s@DeleteIntegrationResponse' {} a -> s {httpStatus = a} :: DeleteIntegrationResponse)

-- | A message that indicates the delete request is done.
deleteIntegrationResponse_message :: Lens.Lens' DeleteIntegrationResponse Prelude.Text
deleteIntegrationResponse_message = Lens.lens (\DeleteIntegrationResponse' {message} -> message) (\s@DeleteIntegrationResponse' {} a -> s {message = a} :: DeleteIntegrationResponse)

instance Prelude.NFData DeleteIntegrationResponse
