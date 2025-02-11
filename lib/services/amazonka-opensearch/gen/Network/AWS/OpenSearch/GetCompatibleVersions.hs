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
-- Module      : Network.AWS.OpenSearch.GetCompatibleVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of upgrade-compatible versions of
-- OpenSearch\/Elasticsearch. You can optionally pass a @ DomainName @ to
-- get all upgrade-compatible versions of OpenSearch\/Elasticsearch for
-- that specific domain.
module Network.AWS.OpenSearch.GetCompatibleVersions
  ( -- * Creating a Request
    GetCompatibleVersions (..),
    newGetCompatibleVersions,

    -- * Request Lenses
    getCompatibleVersions_domainName,

    -- * Destructuring the Response
    GetCompatibleVersionsResponse (..),
    newGetCompatibleVersionsResponse,

    -- * Response Lenses
    getCompatibleVersionsResponse_compatibleVersions,
    getCompatibleVersionsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.OpenSearch.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Container for the request parameters to @ GetCompatibleVersions @
-- operation.
--
-- /See:/ 'newGetCompatibleVersions' smart constructor.
data GetCompatibleVersions = GetCompatibleVersions'
  { domainName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetCompatibleVersions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domainName', 'getCompatibleVersions_domainName' - Undocumented member.
newGetCompatibleVersions ::
  GetCompatibleVersions
newGetCompatibleVersions =
  GetCompatibleVersions'
    { domainName =
        Prelude.Nothing
    }

-- | Undocumented member.
getCompatibleVersions_domainName :: Lens.Lens' GetCompatibleVersions (Prelude.Maybe Prelude.Text)
getCompatibleVersions_domainName = Lens.lens (\GetCompatibleVersions' {domainName} -> domainName) (\s@GetCompatibleVersions' {} a -> s {domainName = a} :: GetCompatibleVersions)

instance Core.AWSRequest GetCompatibleVersions where
  type
    AWSResponse GetCompatibleVersions =
      GetCompatibleVersionsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetCompatibleVersionsResponse'
            Prelude.<$> ( x Core..?> "CompatibleVersions"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetCompatibleVersions

instance Prelude.NFData GetCompatibleVersions

instance Core.ToHeaders GetCompatibleVersions where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath GetCompatibleVersions where
  toPath =
    Prelude.const
      "/2021-01-01/opensearch/compatibleVersions"

instance Core.ToQuery GetCompatibleVersions where
  toQuery GetCompatibleVersions' {..} =
    Prelude.mconcat ["domainName" Core.=: domainName]

-- | Container for the response returned by the @ GetCompatibleVersions @
-- operation.
--
-- /See:/ 'newGetCompatibleVersionsResponse' smart constructor.
data GetCompatibleVersionsResponse = GetCompatibleVersionsResponse'
  { -- | A map of compatible OpenSearch versions returned as part of the
    -- @ GetCompatibleVersions @ operation.
    compatibleVersions :: Prelude.Maybe [CompatibleVersionsMap],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetCompatibleVersionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'compatibleVersions', 'getCompatibleVersionsResponse_compatibleVersions' - A map of compatible OpenSearch versions returned as part of the
-- @ GetCompatibleVersions @ operation.
--
-- 'httpStatus', 'getCompatibleVersionsResponse_httpStatus' - The response's http status code.
newGetCompatibleVersionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetCompatibleVersionsResponse
newGetCompatibleVersionsResponse pHttpStatus_ =
  GetCompatibleVersionsResponse'
    { compatibleVersions =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A map of compatible OpenSearch versions returned as part of the
-- @ GetCompatibleVersions @ operation.
getCompatibleVersionsResponse_compatibleVersions :: Lens.Lens' GetCompatibleVersionsResponse (Prelude.Maybe [CompatibleVersionsMap])
getCompatibleVersionsResponse_compatibleVersions = Lens.lens (\GetCompatibleVersionsResponse' {compatibleVersions} -> compatibleVersions) (\s@GetCompatibleVersionsResponse' {} a -> s {compatibleVersions = a} :: GetCompatibleVersionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getCompatibleVersionsResponse_httpStatus :: Lens.Lens' GetCompatibleVersionsResponse Prelude.Int
getCompatibleVersionsResponse_httpStatus = Lens.lens (\GetCompatibleVersionsResponse' {httpStatus} -> httpStatus) (\s@GetCompatibleVersionsResponse' {} a -> s {httpStatus = a} :: GetCompatibleVersionsResponse)

instance Prelude.NFData GetCompatibleVersionsResponse
