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
-- Module      : Network.AWS.Amplify.DeleteDomainAssociation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a domain association for an Amplify app.
module Network.AWS.Amplify.DeleteDomainAssociation
  ( -- * Creating a Request
    DeleteDomainAssociation (..),
    newDeleteDomainAssociation,

    -- * Request Lenses
    deleteDomainAssociation_appId,
    deleteDomainAssociation_domainName,

    -- * Destructuring the Response
    DeleteDomainAssociationResponse (..),
    newDeleteDomainAssociationResponse,

    -- * Response Lenses
    deleteDomainAssociationResponse_httpStatus,
    deleteDomainAssociationResponse_domainAssociation,
  )
where

import Network.AWS.Amplify.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The request structure for the delete domain association request.
--
-- /See:/ 'newDeleteDomainAssociation' smart constructor.
data DeleteDomainAssociation = DeleteDomainAssociation'
  { -- | The unique id for an Amplify app.
    appId :: Prelude.Text,
    -- | The name of the domain.
    domainName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDomainAssociation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appId', 'deleteDomainAssociation_appId' - The unique id for an Amplify app.
--
-- 'domainName', 'deleteDomainAssociation_domainName' - The name of the domain.
newDeleteDomainAssociation ::
  -- | 'appId'
  Prelude.Text ->
  -- | 'domainName'
  Prelude.Text ->
  DeleteDomainAssociation
newDeleteDomainAssociation pAppId_ pDomainName_ =
  DeleteDomainAssociation'
    { appId = pAppId_,
      domainName = pDomainName_
    }

-- | The unique id for an Amplify app.
deleteDomainAssociation_appId :: Lens.Lens' DeleteDomainAssociation Prelude.Text
deleteDomainAssociation_appId = Lens.lens (\DeleteDomainAssociation' {appId} -> appId) (\s@DeleteDomainAssociation' {} a -> s {appId = a} :: DeleteDomainAssociation)

-- | The name of the domain.
deleteDomainAssociation_domainName :: Lens.Lens' DeleteDomainAssociation Prelude.Text
deleteDomainAssociation_domainName = Lens.lens (\DeleteDomainAssociation' {domainName} -> domainName) (\s@DeleteDomainAssociation' {} a -> s {domainName = a} :: DeleteDomainAssociation)

instance Core.AWSRequest DeleteDomainAssociation where
  type
    AWSResponse DeleteDomainAssociation =
      DeleteDomainAssociationResponse
  request = Request.delete defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteDomainAssociationResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "domainAssociation")
      )

instance Prelude.Hashable DeleteDomainAssociation

instance Prelude.NFData DeleteDomainAssociation

instance Core.ToHeaders DeleteDomainAssociation where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteDomainAssociation where
  toPath DeleteDomainAssociation' {..} =
    Prelude.mconcat
      [ "/apps/",
        Core.toBS appId,
        "/domains/",
        Core.toBS domainName
      ]

instance Core.ToQuery DeleteDomainAssociation where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteDomainAssociationResponse' smart constructor.
data DeleteDomainAssociationResponse = DeleteDomainAssociationResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    domainAssociation :: DomainAssociation
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDomainAssociationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteDomainAssociationResponse_httpStatus' - The response's http status code.
--
-- 'domainAssociation', 'deleteDomainAssociationResponse_domainAssociation' - Undocumented member.
newDeleteDomainAssociationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'domainAssociation'
  DomainAssociation ->
  DeleteDomainAssociationResponse
newDeleteDomainAssociationResponse
  pHttpStatus_
  pDomainAssociation_ =
    DeleteDomainAssociationResponse'
      { httpStatus =
          pHttpStatus_,
        domainAssociation = pDomainAssociation_
      }

-- | The response's http status code.
deleteDomainAssociationResponse_httpStatus :: Lens.Lens' DeleteDomainAssociationResponse Prelude.Int
deleteDomainAssociationResponse_httpStatus = Lens.lens (\DeleteDomainAssociationResponse' {httpStatus} -> httpStatus) (\s@DeleteDomainAssociationResponse' {} a -> s {httpStatus = a} :: DeleteDomainAssociationResponse)

-- | Undocumented member.
deleteDomainAssociationResponse_domainAssociation :: Lens.Lens' DeleteDomainAssociationResponse DomainAssociation
deleteDomainAssociationResponse_domainAssociation = Lens.lens (\DeleteDomainAssociationResponse' {domainAssociation} -> domainAssociation) (\s@DeleteDomainAssociationResponse' {} a -> s {domainAssociation = a} :: DeleteDomainAssociationResponse)

instance
  Prelude.NFData
    DeleteDomainAssociationResponse
