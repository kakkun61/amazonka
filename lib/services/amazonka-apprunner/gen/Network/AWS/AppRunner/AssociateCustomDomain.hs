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
-- Module      : Network.AWS.AppRunner.AssociateCustomDomain
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associate your own domain name with the App Runner subdomain URL of your
-- App Runner service.
--
-- After you call @AssociateCustomDomain@ and receive a successful
-- response, use the information in the CustomDomain record that\'s
-- returned to add CNAME records to your Domain Name System (DNS). For each
-- mapped domain name, add a mapping to the target App Runner subdomain and
-- one or more certificate validation records. App Runner then performs DNS
-- validation to verify that you own or control the domain name that you
-- associated. App Runner tracks domain validity in a certificate stored in
-- <https://docs.aws.amazon.com/acm/latest/userguide AWS Certificate Manager (ACM)>.
module Network.AWS.AppRunner.AssociateCustomDomain
  ( -- * Creating a Request
    AssociateCustomDomain (..),
    newAssociateCustomDomain,

    -- * Request Lenses
    associateCustomDomain_enableWWWSubdomain,
    associateCustomDomain_serviceArn,
    associateCustomDomain_domainName,

    -- * Destructuring the Response
    AssociateCustomDomainResponse (..),
    newAssociateCustomDomainResponse,

    -- * Response Lenses
    associateCustomDomainResponse_httpStatus,
    associateCustomDomainResponse_dNSTarget,
    associateCustomDomainResponse_serviceArn,
    associateCustomDomainResponse_customDomain,
  )
where

import Network.AWS.AppRunner.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newAssociateCustomDomain' smart constructor.
data AssociateCustomDomain = AssociateCustomDomain'
  { -- | Set to @true@ to associate the subdomain @www.DomainName @ with the App
    -- Runner service in addition to the base domain.
    --
    -- Default: @true@
    enableWWWSubdomain :: Prelude.Maybe Prelude.Bool,
    -- | The Amazon Resource Name (ARN) of the App Runner service that you want
    -- to associate a custom domain name with.
    serviceArn :: Prelude.Text,
    -- | A custom domain endpoint to associate. Specify a root domain (for
    -- example, @example.com@), a subdomain (for example, @login.example.com@
    -- or @admin.login.example.com@), or a wildcard (for example,
    -- @*.example.com@).
    domainName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssociateCustomDomain' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'enableWWWSubdomain', 'associateCustomDomain_enableWWWSubdomain' - Set to @true@ to associate the subdomain @www.DomainName @ with the App
-- Runner service in addition to the base domain.
--
-- Default: @true@
--
-- 'serviceArn', 'associateCustomDomain_serviceArn' - The Amazon Resource Name (ARN) of the App Runner service that you want
-- to associate a custom domain name with.
--
-- 'domainName', 'associateCustomDomain_domainName' - A custom domain endpoint to associate. Specify a root domain (for
-- example, @example.com@), a subdomain (for example, @login.example.com@
-- or @admin.login.example.com@), or a wildcard (for example,
-- @*.example.com@).
newAssociateCustomDomain ::
  -- | 'serviceArn'
  Prelude.Text ->
  -- | 'domainName'
  Prelude.Text ->
  AssociateCustomDomain
newAssociateCustomDomain pServiceArn_ pDomainName_ =
  AssociateCustomDomain'
    { enableWWWSubdomain =
        Prelude.Nothing,
      serviceArn = pServiceArn_,
      domainName = pDomainName_
    }

-- | Set to @true@ to associate the subdomain @www.DomainName @ with the App
-- Runner service in addition to the base domain.
--
-- Default: @true@
associateCustomDomain_enableWWWSubdomain :: Lens.Lens' AssociateCustomDomain (Prelude.Maybe Prelude.Bool)
associateCustomDomain_enableWWWSubdomain = Lens.lens (\AssociateCustomDomain' {enableWWWSubdomain} -> enableWWWSubdomain) (\s@AssociateCustomDomain' {} a -> s {enableWWWSubdomain = a} :: AssociateCustomDomain)

-- | The Amazon Resource Name (ARN) of the App Runner service that you want
-- to associate a custom domain name with.
associateCustomDomain_serviceArn :: Lens.Lens' AssociateCustomDomain Prelude.Text
associateCustomDomain_serviceArn = Lens.lens (\AssociateCustomDomain' {serviceArn} -> serviceArn) (\s@AssociateCustomDomain' {} a -> s {serviceArn = a} :: AssociateCustomDomain)

-- | A custom domain endpoint to associate. Specify a root domain (for
-- example, @example.com@), a subdomain (for example, @login.example.com@
-- or @admin.login.example.com@), or a wildcard (for example,
-- @*.example.com@).
associateCustomDomain_domainName :: Lens.Lens' AssociateCustomDomain Prelude.Text
associateCustomDomain_domainName = Lens.lens (\AssociateCustomDomain' {domainName} -> domainName) (\s@AssociateCustomDomain' {} a -> s {domainName = a} :: AssociateCustomDomain)

instance Core.AWSRequest AssociateCustomDomain where
  type
    AWSResponse AssociateCustomDomain =
      AssociateCustomDomainResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          AssociateCustomDomainResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "DNSTarget")
            Prelude.<*> (x Core..:> "ServiceArn")
            Prelude.<*> (x Core..:> "CustomDomain")
      )

instance Prelude.Hashable AssociateCustomDomain

instance Prelude.NFData AssociateCustomDomain

instance Core.ToHeaders AssociateCustomDomain where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AppRunner.AssociateCustomDomain" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON AssociateCustomDomain where
  toJSON AssociateCustomDomain' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("EnableWWWSubdomain" Core..=)
              Prelude.<$> enableWWWSubdomain,
            Prelude.Just ("ServiceArn" Core..= serviceArn),
            Prelude.Just ("DomainName" Core..= domainName)
          ]
      )

instance Core.ToPath AssociateCustomDomain where
  toPath = Prelude.const "/"

instance Core.ToQuery AssociateCustomDomain where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newAssociateCustomDomainResponse' smart constructor.
data AssociateCustomDomainResponse = AssociateCustomDomainResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The App Runner subdomain of the App Runner service. The custom domain
    -- name is mapped to this target name.
    dNSTarget :: Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the App Runner service with which a
    -- custom domain name is associated.
    serviceArn :: Prelude.Text,
    -- | A description of the domain name that\'s being associated.
    customDomain :: CustomDomain
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssociateCustomDomainResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'associateCustomDomainResponse_httpStatus' - The response's http status code.
--
-- 'dNSTarget', 'associateCustomDomainResponse_dNSTarget' - The App Runner subdomain of the App Runner service. The custom domain
-- name is mapped to this target name.
--
-- 'serviceArn', 'associateCustomDomainResponse_serviceArn' - The Amazon Resource Name (ARN) of the App Runner service with which a
-- custom domain name is associated.
--
-- 'customDomain', 'associateCustomDomainResponse_customDomain' - A description of the domain name that\'s being associated.
newAssociateCustomDomainResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'dNSTarget'
  Prelude.Text ->
  -- | 'serviceArn'
  Prelude.Text ->
  -- | 'customDomain'
  CustomDomain ->
  AssociateCustomDomainResponse
newAssociateCustomDomainResponse
  pHttpStatus_
  pDNSTarget_
  pServiceArn_
  pCustomDomain_ =
    AssociateCustomDomainResponse'
      { httpStatus =
          pHttpStatus_,
        dNSTarget = pDNSTarget_,
        serviceArn = pServiceArn_,
        customDomain = pCustomDomain_
      }

-- | The response's http status code.
associateCustomDomainResponse_httpStatus :: Lens.Lens' AssociateCustomDomainResponse Prelude.Int
associateCustomDomainResponse_httpStatus = Lens.lens (\AssociateCustomDomainResponse' {httpStatus} -> httpStatus) (\s@AssociateCustomDomainResponse' {} a -> s {httpStatus = a} :: AssociateCustomDomainResponse)

-- | The App Runner subdomain of the App Runner service. The custom domain
-- name is mapped to this target name.
associateCustomDomainResponse_dNSTarget :: Lens.Lens' AssociateCustomDomainResponse Prelude.Text
associateCustomDomainResponse_dNSTarget = Lens.lens (\AssociateCustomDomainResponse' {dNSTarget} -> dNSTarget) (\s@AssociateCustomDomainResponse' {} a -> s {dNSTarget = a} :: AssociateCustomDomainResponse)

-- | The Amazon Resource Name (ARN) of the App Runner service with which a
-- custom domain name is associated.
associateCustomDomainResponse_serviceArn :: Lens.Lens' AssociateCustomDomainResponse Prelude.Text
associateCustomDomainResponse_serviceArn = Lens.lens (\AssociateCustomDomainResponse' {serviceArn} -> serviceArn) (\s@AssociateCustomDomainResponse' {} a -> s {serviceArn = a} :: AssociateCustomDomainResponse)

-- | A description of the domain name that\'s being associated.
associateCustomDomainResponse_customDomain :: Lens.Lens' AssociateCustomDomainResponse CustomDomain
associateCustomDomainResponse_customDomain = Lens.lens (\AssociateCustomDomainResponse' {customDomain} -> customDomain) (\s@AssociateCustomDomainResponse' {} a -> s {customDomain = a} :: AssociateCustomDomainResponse)

instance Prelude.NFData AssociateCustomDomainResponse
