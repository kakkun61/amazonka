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
-- Module      : Network.AWS.VoiceId.DescribeDomain
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified domain.
module Network.AWS.VoiceId.DescribeDomain
  ( -- * Creating a Request
    DescribeDomain (..),
    newDescribeDomain,

    -- * Request Lenses
    describeDomain_domainId,

    -- * Destructuring the Response
    DescribeDomainResponse (..),
    newDescribeDomainResponse,

    -- * Response Lenses
    describeDomainResponse_domain,
    describeDomainResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.VoiceId.Types

-- | /See:/ 'newDescribeDomain' smart constructor.
data DescribeDomain = DescribeDomain'
  { -- | The identifier of the domain you are describing.
    domainId :: Prelude.Text
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
-- 'domainId', 'describeDomain_domainId' - The identifier of the domain you are describing.
newDescribeDomain ::
  -- | 'domainId'
  Prelude.Text ->
  DescribeDomain
newDescribeDomain pDomainId_ =
  DescribeDomain' {domainId = pDomainId_}

-- | The identifier of the domain you are describing.
describeDomain_domainId :: Lens.Lens' DescribeDomain Prelude.Text
describeDomain_domainId = Lens.lens (\DescribeDomain' {domainId} -> domainId) (\s@DescribeDomain' {} a -> s {domainId = a} :: DescribeDomain)

instance Core.AWSRequest DescribeDomain where
  type
    AWSResponse DescribeDomain =
      DescribeDomainResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeDomainResponse'
            Prelude.<$> (x Core..?> "Domain")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeDomain

instance Prelude.NFData DescribeDomain

instance Core.ToHeaders DescribeDomain where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("VoiceID.DescribeDomain" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeDomain where
  toJSON DescribeDomain' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("DomainId" Core..= domainId)]
      )

instance Core.ToPath DescribeDomain where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeDomain where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeDomainResponse' smart constructor.
data DescribeDomainResponse = DescribeDomainResponse'
  { -- | Information about the specified domain.
    domain :: Prelude.Maybe Domain,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDomainResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domain', 'describeDomainResponse_domain' - Information about the specified domain.
--
-- 'httpStatus', 'describeDomainResponse_httpStatus' - The response's http status code.
newDescribeDomainResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeDomainResponse
newDescribeDomainResponse pHttpStatus_ =
  DescribeDomainResponse'
    { domain = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the specified domain.
describeDomainResponse_domain :: Lens.Lens' DescribeDomainResponse (Prelude.Maybe Domain)
describeDomainResponse_domain = Lens.lens (\DescribeDomainResponse' {domain} -> domain) (\s@DescribeDomainResponse' {} a -> s {domain = a} :: DescribeDomainResponse)

-- | The response's http status code.
describeDomainResponse_httpStatus :: Lens.Lens' DescribeDomainResponse Prelude.Int
describeDomainResponse_httpStatus = Lens.lens (\DescribeDomainResponse' {httpStatus} -> httpStatus) (\s@DescribeDomainResponse' {} a -> s {httpStatus = a} :: DescribeDomainResponse)

instance Prelude.NFData DescribeDomainResponse
