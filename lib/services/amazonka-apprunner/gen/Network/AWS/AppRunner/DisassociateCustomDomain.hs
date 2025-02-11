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
-- Module      : Network.AWS.AppRunner.DisassociateCustomDomain
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociate a custom domain name from an App Runner service.
--
-- Certificates tracking domain validity are associated with a custom
-- domain and are stored in
-- <https://docs.aws.amazon.com/acm/latest/userguide AWS Certificate Manager (ACM)>.
-- These certificates aren\'t deleted as part of this action. App Runner
-- delays certificate deletion for 30 days after a domain is disassociated
-- from your service.
module Network.AWS.AppRunner.DisassociateCustomDomain
  ( -- * Creating a Request
    DisassociateCustomDomain (..),
    newDisassociateCustomDomain,

    -- * Request Lenses
    disassociateCustomDomain_serviceArn,
    disassociateCustomDomain_domainName,

    -- * Destructuring the Response
    DisassociateCustomDomainResponse (..),
    newDisassociateCustomDomainResponse,

    -- * Response Lenses
    disassociateCustomDomainResponse_httpStatus,
    disassociateCustomDomainResponse_dNSTarget,
    disassociateCustomDomainResponse_serviceArn,
    disassociateCustomDomainResponse_customDomain,
  )
where

import Network.AWS.AppRunner.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDisassociateCustomDomain' smart constructor.
data DisassociateCustomDomain = DisassociateCustomDomain'
  { -- | The Amazon Resource Name (ARN) of the App Runner service that you want
    -- to disassociate a custom domain name from.
    serviceArn :: Prelude.Text,
    -- | The domain name that you want to disassociate from the App Runner
    -- service.
    domainName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateCustomDomain' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'serviceArn', 'disassociateCustomDomain_serviceArn' - The Amazon Resource Name (ARN) of the App Runner service that you want
-- to disassociate a custom domain name from.
--
-- 'domainName', 'disassociateCustomDomain_domainName' - The domain name that you want to disassociate from the App Runner
-- service.
newDisassociateCustomDomain ::
  -- | 'serviceArn'
  Prelude.Text ->
  -- | 'domainName'
  Prelude.Text ->
  DisassociateCustomDomain
newDisassociateCustomDomain pServiceArn_ pDomainName_ =
  DisassociateCustomDomain'
    { serviceArn =
        pServiceArn_,
      domainName = pDomainName_
    }

-- | The Amazon Resource Name (ARN) of the App Runner service that you want
-- to disassociate a custom domain name from.
disassociateCustomDomain_serviceArn :: Lens.Lens' DisassociateCustomDomain Prelude.Text
disassociateCustomDomain_serviceArn = Lens.lens (\DisassociateCustomDomain' {serviceArn} -> serviceArn) (\s@DisassociateCustomDomain' {} a -> s {serviceArn = a} :: DisassociateCustomDomain)

-- | The domain name that you want to disassociate from the App Runner
-- service.
disassociateCustomDomain_domainName :: Lens.Lens' DisassociateCustomDomain Prelude.Text
disassociateCustomDomain_domainName = Lens.lens (\DisassociateCustomDomain' {domainName} -> domainName) (\s@DisassociateCustomDomain' {} a -> s {domainName = a} :: DisassociateCustomDomain)

instance Core.AWSRequest DisassociateCustomDomain where
  type
    AWSResponse DisassociateCustomDomain =
      DisassociateCustomDomainResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DisassociateCustomDomainResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "DNSTarget")
            Prelude.<*> (x Core..:> "ServiceArn")
            Prelude.<*> (x Core..:> "CustomDomain")
      )

instance Prelude.Hashable DisassociateCustomDomain

instance Prelude.NFData DisassociateCustomDomain

instance Core.ToHeaders DisassociateCustomDomain where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AppRunner.DisassociateCustomDomain" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DisassociateCustomDomain where
  toJSON DisassociateCustomDomain' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("ServiceArn" Core..= serviceArn),
            Prelude.Just ("DomainName" Core..= domainName)
          ]
      )

instance Core.ToPath DisassociateCustomDomain where
  toPath = Prelude.const "/"

instance Core.ToQuery DisassociateCustomDomain where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDisassociateCustomDomainResponse' smart constructor.
data DisassociateCustomDomainResponse = DisassociateCustomDomainResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The App Runner subdomain of the App Runner service. The disassociated
    -- custom domain name was mapped to this target name.
    dNSTarget :: Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the App Runner service that a custom
    -- domain name is disassociated from.
    serviceArn :: Prelude.Text,
    -- | A description of the domain name that\'s being disassociated.
    customDomain :: CustomDomain
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateCustomDomainResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'disassociateCustomDomainResponse_httpStatus' - The response's http status code.
--
-- 'dNSTarget', 'disassociateCustomDomainResponse_dNSTarget' - The App Runner subdomain of the App Runner service. The disassociated
-- custom domain name was mapped to this target name.
--
-- 'serviceArn', 'disassociateCustomDomainResponse_serviceArn' - The Amazon Resource Name (ARN) of the App Runner service that a custom
-- domain name is disassociated from.
--
-- 'customDomain', 'disassociateCustomDomainResponse_customDomain' - A description of the domain name that\'s being disassociated.
newDisassociateCustomDomainResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'dNSTarget'
  Prelude.Text ->
  -- | 'serviceArn'
  Prelude.Text ->
  -- | 'customDomain'
  CustomDomain ->
  DisassociateCustomDomainResponse
newDisassociateCustomDomainResponse
  pHttpStatus_
  pDNSTarget_
  pServiceArn_
  pCustomDomain_ =
    DisassociateCustomDomainResponse'
      { httpStatus =
          pHttpStatus_,
        dNSTarget = pDNSTarget_,
        serviceArn = pServiceArn_,
        customDomain = pCustomDomain_
      }

-- | The response's http status code.
disassociateCustomDomainResponse_httpStatus :: Lens.Lens' DisassociateCustomDomainResponse Prelude.Int
disassociateCustomDomainResponse_httpStatus = Lens.lens (\DisassociateCustomDomainResponse' {httpStatus} -> httpStatus) (\s@DisassociateCustomDomainResponse' {} a -> s {httpStatus = a} :: DisassociateCustomDomainResponse)

-- | The App Runner subdomain of the App Runner service. The disassociated
-- custom domain name was mapped to this target name.
disassociateCustomDomainResponse_dNSTarget :: Lens.Lens' DisassociateCustomDomainResponse Prelude.Text
disassociateCustomDomainResponse_dNSTarget = Lens.lens (\DisassociateCustomDomainResponse' {dNSTarget} -> dNSTarget) (\s@DisassociateCustomDomainResponse' {} a -> s {dNSTarget = a} :: DisassociateCustomDomainResponse)

-- | The Amazon Resource Name (ARN) of the App Runner service that a custom
-- domain name is disassociated from.
disassociateCustomDomainResponse_serviceArn :: Lens.Lens' DisassociateCustomDomainResponse Prelude.Text
disassociateCustomDomainResponse_serviceArn = Lens.lens (\DisassociateCustomDomainResponse' {serviceArn} -> serviceArn) (\s@DisassociateCustomDomainResponse' {} a -> s {serviceArn = a} :: DisassociateCustomDomainResponse)

-- | A description of the domain name that\'s being disassociated.
disassociateCustomDomainResponse_customDomain :: Lens.Lens' DisassociateCustomDomainResponse CustomDomain
disassociateCustomDomainResponse_customDomain = Lens.lens (\DisassociateCustomDomainResponse' {customDomain} -> customDomain) (\s@DisassociateCustomDomainResponse' {} a -> s {customDomain = a} :: DisassociateCustomDomainResponse)

instance
  Prelude.NFData
    DisassociateCustomDomainResponse
