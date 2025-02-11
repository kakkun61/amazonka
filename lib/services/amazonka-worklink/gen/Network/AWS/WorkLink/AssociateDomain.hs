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
-- Module      : Network.AWS.WorkLink.AssociateDomain
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Specifies a domain to be associated to Amazon WorkLink.
module Network.AWS.WorkLink.AssociateDomain
  ( -- * Creating a Request
    AssociateDomain (..),
    newAssociateDomain,

    -- * Request Lenses
    associateDomain_displayName,
    associateDomain_fleetArn,
    associateDomain_domainName,
    associateDomain_acmCertificateArn,

    -- * Destructuring the Response
    AssociateDomainResponse (..),
    newAssociateDomainResponse,

    -- * Response Lenses
    associateDomainResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.WorkLink.Types

-- | /See:/ 'newAssociateDomain' smart constructor.
data AssociateDomain = AssociateDomain'
  { -- | The name to display.
    displayName :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the fleet.
    fleetArn :: Prelude.Text,
    -- | The fully qualified domain name (FQDN).
    domainName :: Prelude.Text,
    -- | The ARN of an issued ACM certificate that is valid for the domain being
    -- associated.
    acmCertificateArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssociateDomain' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'displayName', 'associateDomain_displayName' - The name to display.
--
-- 'fleetArn', 'associateDomain_fleetArn' - The Amazon Resource Name (ARN) of the fleet.
--
-- 'domainName', 'associateDomain_domainName' - The fully qualified domain name (FQDN).
--
-- 'acmCertificateArn', 'associateDomain_acmCertificateArn' - The ARN of an issued ACM certificate that is valid for the domain being
-- associated.
newAssociateDomain ::
  -- | 'fleetArn'
  Prelude.Text ->
  -- | 'domainName'
  Prelude.Text ->
  -- | 'acmCertificateArn'
  Prelude.Text ->
  AssociateDomain
newAssociateDomain
  pFleetArn_
  pDomainName_
  pAcmCertificateArn_ =
    AssociateDomain'
      { displayName = Prelude.Nothing,
        fleetArn = pFleetArn_,
        domainName = pDomainName_,
        acmCertificateArn = pAcmCertificateArn_
      }

-- | The name to display.
associateDomain_displayName :: Lens.Lens' AssociateDomain (Prelude.Maybe Prelude.Text)
associateDomain_displayName = Lens.lens (\AssociateDomain' {displayName} -> displayName) (\s@AssociateDomain' {} a -> s {displayName = a} :: AssociateDomain)

-- | The Amazon Resource Name (ARN) of the fleet.
associateDomain_fleetArn :: Lens.Lens' AssociateDomain Prelude.Text
associateDomain_fleetArn = Lens.lens (\AssociateDomain' {fleetArn} -> fleetArn) (\s@AssociateDomain' {} a -> s {fleetArn = a} :: AssociateDomain)

-- | The fully qualified domain name (FQDN).
associateDomain_domainName :: Lens.Lens' AssociateDomain Prelude.Text
associateDomain_domainName = Lens.lens (\AssociateDomain' {domainName} -> domainName) (\s@AssociateDomain' {} a -> s {domainName = a} :: AssociateDomain)

-- | The ARN of an issued ACM certificate that is valid for the domain being
-- associated.
associateDomain_acmCertificateArn :: Lens.Lens' AssociateDomain Prelude.Text
associateDomain_acmCertificateArn = Lens.lens (\AssociateDomain' {acmCertificateArn} -> acmCertificateArn) (\s@AssociateDomain' {} a -> s {acmCertificateArn = a} :: AssociateDomain)

instance Core.AWSRequest AssociateDomain where
  type
    AWSResponse AssociateDomain =
      AssociateDomainResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          AssociateDomainResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable AssociateDomain

instance Prelude.NFData AssociateDomain

instance Core.ToHeaders AssociateDomain where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON AssociateDomain where
  toJSON AssociateDomain' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("DisplayName" Core..=) Prelude.<$> displayName,
            Prelude.Just ("FleetArn" Core..= fleetArn),
            Prelude.Just ("DomainName" Core..= domainName),
            Prelude.Just
              ("AcmCertificateArn" Core..= acmCertificateArn)
          ]
      )

instance Core.ToPath AssociateDomain where
  toPath = Prelude.const "/associateDomain"

instance Core.ToQuery AssociateDomain where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newAssociateDomainResponse' smart constructor.
data AssociateDomainResponse = AssociateDomainResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssociateDomainResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'associateDomainResponse_httpStatus' - The response's http status code.
newAssociateDomainResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  AssociateDomainResponse
newAssociateDomainResponse pHttpStatus_ =
  AssociateDomainResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
associateDomainResponse_httpStatus :: Lens.Lens' AssociateDomainResponse Prelude.Int
associateDomainResponse_httpStatus = Lens.lens (\AssociateDomainResponse' {httpStatus} -> httpStatus) (\s@AssociateDomainResponse' {} a -> s {httpStatus = a} :: AssociateDomainResponse)

instance Prelude.NFData AssociateDomainResponse
