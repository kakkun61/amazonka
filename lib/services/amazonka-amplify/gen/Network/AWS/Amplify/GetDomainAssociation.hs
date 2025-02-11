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
-- Module      : Network.AWS.Amplify.GetDomainAssociation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the domain information for an Amplify app.
module Network.AWS.Amplify.GetDomainAssociation
  ( -- * Creating a Request
    GetDomainAssociation (..),
    newGetDomainAssociation,

    -- * Request Lenses
    getDomainAssociation_appId,
    getDomainAssociation_domainName,

    -- * Destructuring the Response
    GetDomainAssociationResponse (..),
    newGetDomainAssociationResponse,

    -- * Response Lenses
    getDomainAssociationResponse_httpStatus,
    getDomainAssociationResponse_domainAssociation,
  )
where

import Network.AWS.Amplify.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The request structure for the get domain association request.
--
-- /See:/ 'newGetDomainAssociation' smart constructor.
data GetDomainAssociation = GetDomainAssociation'
  { -- | The unique id for an Amplify app.
    appId :: Prelude.Text,
    -- | The name of the domain.
    domainName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetDomainAssociation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appId', 'getDomainAssociation_appId' - The unique id for an Amplify app.
--
-- 'domainName', 'getDomainAssociation_domainName' - The name of the domain.
newGetDomainAssociation ::
  -- | 'appId'
  Prelude.Text ->
  -- | 'domainName'
  Prelude.Text ->
  GetDomainAssociation
newGetDomainAssociation pAppId_ pDomainName_ =
  GetDomainAssociation'
    { appId = pAppId_,
      domainName = pDomainName_
    }

-- | The unique id for an Amplify app.
getDomainAssociation_appId :: Lens.Lens' GetDomainAssociation Prelude.Text
getDomainAssociation_appId = Lens.lens (\GetDomainAssociation' {appId} -> appId) (\s@GetDomainAssociation' {} a -> s {appId = a} :: GetDomainAssociation)

-- | The name of the domain.
getDomainAssociation_domainName :: Lens.Lens' GetDomainAssociation Prelude.Text
getDomainAssociation_domainName = Lens.lens (\GetDomainAssociation' {domainName} -> domainName) (\s@GetDomainAssociation' {} a -> s {domainName = a} :: GetDomainAssociation)

instance Core.AWSRequest GetDomainAssociation where
  type
    AWSResponse GetDomainAssociation =
      GetDomainAssociationResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetDomainAssociationResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "domainAssociation")
      )

instance Prelude.Hashable GetDomainAssociation

instance Prelude.NFData GetDomainAssociation

instance Core.ToHeaders GetDomainAssociation where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetDomainAssociation where
  toPath GetDomainAssociation' {..} =
    Prelude.mconcat
      [ "/apps/",
        Core.toBS appId,
        "/domains/",
        Core.toBS domainName
      ]

instance Core.ToQuery GetDomainAssociation where
  toQuery = Prelude.const Prelude.mempty

-- | The result structure for the get domain association request.
--
-- /See:/ 'newGetDomainAssociationResponse' smart constructor.
data GetDomainAssociationResponse = GetDomainAssociationResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | Describes the structure of a domain association, which associates a
    -- custom domain with an Amplify app.
    domainAssociation :: DomainAssociation
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetDomainAssociationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'getDomainAssociationResponse_httpStatus' - The response's http status code.
--
-- 'domainAssociation', 'getDomainAssociationResponse_domainAssociation' - Describes the structure of a domain association, which associates a
-- custom domain with an Amplify app.
newGetDomainAssociationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'domainAssociation'
  DomainAssociation ->
  GetDomainAssociationResponse
newGetDomainAssociationResponse
  pHttpStatus_
  pDomainAssociation_ =
    GetDomainAssociationResponse'
      { httpStatus =
          pHttpStatus_,
        domainAssociation = pDomainAssociation_
      }

-- | The response's http status code.
getDomainAssociationResponse_httpStatus :: Lens.Lens' GetDomainAssociationResponse Prelude.Int
getDomainAssociationResponse_httpStatus = Lens.lens (\GetDomainAssociationResponse' {httpStatus} -> httpStatus) (\s@GetDomainAssociationResponse' {} a -> s {httpStatus = a} :: GetDomainAssociationResponse)

-- | Describes the structure of a domain association, which associates a
-- custom domain with an Amplify app.
getDomainAssociationResponse_domainAssociation :: Lens.Lens' GetDomainAssociationResponse DomainAssociation
getDomainAssociationResponse_domainAssociation = Lens.lens (\GetDomainAssociationResponse' {domainAssociation} -> domainAssociation) (\s@GetDomainAssociationResponse' {} a -> s {domainAssociation = a} :: GetDomainAssociationResponse)

instance Prelude.NFData GetDomainAssociationResponse
