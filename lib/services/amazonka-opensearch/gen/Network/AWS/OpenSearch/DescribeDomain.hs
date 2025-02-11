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
-- Module      : Network.AWS.OpenSearch.DescribeDomain
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns domain configuration information about the specified domain,
-- including the domain ID, domain endpoint, and domain ARN.
module Network.AWS.OpenSearch.DescribeDomain
  ( -- * Creating a Request
    DescribeDomain (..),
    newDescribeDomain,

    -- * Request Lenses
    describeDomain_domainName,

    -- * Destructuring the Response
    DescribeDomainResponse (..),
    newDescribeDomainResponse,

    -- * Response Lenses
    describeDomainResponse_httpStatus,
    describeDomainResponse_domainStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.OpenSearch.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Container for the parameters to the @ DescribeDomain @ operation.
--
-- /See:/ 'newDescribeDomain' smart constructor.
data DescribeDomain = DescribeDomain'
  { -- | The name of the domain for which you want information.
    domainName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDomain' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domainName', 'describeDomain_domainName' - The name of the domain for which you want information.
newDescribeDomain ::
  -- | 'domainName'
  Prelude.Text ->
  DescribeDomain
newDescribeDomain pDomainName_ =
  DescribeDomain' {domainName = pDomainName_}

-- | The name of the domain for which you want information.
describeDomain_domainName :: Lens.Lens' DescribeDomain Prelude.Text
describeDomain_domainName = Lens.lens (\DescribeDomain' {domainName} -> domainName) (\s@DescribeDomain' {} a -> s {domainName = a} :: DescribeDomain)

instance Core.AWSRequest DescribeDomain where
  type
    AWSResponse DescribeDomain =
      DescribeDomainResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeDomainResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "DomainStatus")
      )

instance Prelude.Hashable DescribeDomain

instance Prelude.NFData DescribeDomain

instance Core.ToHeaders DescribeDomain where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeDomain where
  toPath DescribeDomain' {..} =
    Prelude.mconcat
      [ "/2021-01-01/opensearch/domain/",
        Core.toBS domainName
      ]

instance Core.ToQuery DescribeDomain where
  toQuery = Prelude.const Prelude.mempty

-- | The result of a @DescribeDomain@ request. Contains the status of the
-- domain specified in the request.
--
-- /See:/ 'newDescribeDomainResponse' smart constructor.
data DescribeDomainResponse = DescribeDomainResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The current status of the domain.
    domainStatus :: DomainStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDomainResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'describeDomainResponse_httpStatus' - The response's http status code.
--
-- 'domainStatus', 'describeDomainResponse_domainStatus' - The current status of the domain.
newDescribeDomainResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'domainStatus'
  DomainStatus ->
  DescribeDomainResponse
newDescribeDomainResponse pHttpStatus_ pDomainStatus_ =
  DescribeDomainResponse'
    { httpStatus = pHttpStatus_,
      domainStatus = pDomainStatus_
    }

-- | The response's http status code.
describeDomainResponse_httpStatus :: Lens.Lens' DescribeDomainResponse Prelude.Int
describeDomainResponse_httpStatus = Lens.lens (\DescribeDomainResponse' {httpStatus} -> httpStatus) (\s@DescribeDomainResponse' {} a -> s {httpStatus = a} :: DescribeDomainResponse)

-- | The current status of the domain.
describeDomainResponse_domainStatus :: Lens.Lens' DescribeDomainResponse DomainStatus
describeDomainResponse_domainStatus = Lens.lens (\DescribeDomainResponse' {domainStatus} -> domainStatus) (\s@DescribeDomainResponse' {} a -> s {domainStatus = a} :: DescribeDomainResponse)

instance Prelude.NFData DescribeDomainResponse
