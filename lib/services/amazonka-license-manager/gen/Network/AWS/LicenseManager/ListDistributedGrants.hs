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
-- Module      : Network.AWS.LicenseManager.ListDistributedGrants
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the grants distributed for the specified license.
module Network.AWS.LicenseManager.ListDistributedGrants
  ( -- * Creating a Request
    ListDistributedGrants (..),
    newListDistributedGrants,

    -- * Request Lenses
    listDistributedGrants_filters,
    listDistributedGrants_nextToken,
    listDistributedGrants_grantArns,
    listDistributedGrants_maxResults,

    -- * Destructuring the Response
    ListDistributedGrantsResponse (..),
    newListDistributedGrantsResponse,

    -- * Response Lenses
    listDistributedGrantsResponse_grants,
    listDistributedGrantsResponse_nextToken,
    listDistributedGrantsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LicenseManager.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListDistributedGrants' smart constructor.
data ListDistributedGrants = ListDistributedGrants'
  { -- | Filters to scope the results. The following filters are supported:
    --
    -- -   @LicenseArn@
    --
    -- -   @GrantStatus@
    --
    -- -   @GranteePrincipalARN@
    --
    -- -   @ProductSKU@
    --
    -- -   @LicenseIssuerName@
    filters :: Prelude.Maybe [Filter],
    -- | Token for the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Amazon Resource Names (ARNs) of the grants.
    grantArns :: Prelude.Maybe [Prelude.Text],
    -- | Maximum number of results to return in a single call.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListDistributedGrants' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'filters', 'listDistributedGrants_filters' - Filters to scope the results. The following filters are supported:
--
-- -   @LicenseArn@
--
-- -   @GrantStatus@
--
-- -   @GranteePrincipalARN@
--
-- -   @ProductSKU@
--
-- -   @LicenseIssuerName@
--
-- 'nextToken', 'listDistributedGrants_nextToken' - Token for the next set of results.
--
-- 'grantArns', 'listDistributedGrants_grantArns' - Amazon Resource Names (ARNs) of the grants.
--
-- 'maxResults', 'listDistributedGrants_maxResults' - Maximum number of results to return in a single call.
newListDistributedGrants ::
  ListDistributedGrants
newListDistributedGrants =
  ListDistributedGrants'
    { filters = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      grantArns = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | Filters to scope the results. The following filters are supported:
--
-- -   @LicenseArn@
--
-- -   @GrantStatus@
--
-- -   @GranteePrincipalARN@
--
-- -   @ProductSKU@
--
-- -   @LicenseIssuerName@
listDistributedGrants_filters :: Lens.Lens' ListDistributedGrants (Prelude.Maybe [Filter])
listDistributedGrants_filters = Lens.lens (\ListDistributedGrants' {filters} -> filters) (\s@ListDistributedGrants' {} a -> s {filters = a} :: ListDistributedGrants) Prelude.. Lens.mapping Lens.coerced

-- | Token for the next set of results.
listDistributedGrants_nextToken :: Lens.Lens' ListDistributedGrants (Prelude.Maybe Prelude.Text)
listDistributedGrants_nextToken = Lens.lens (\ListDistributedGrants' {nextToken} -> nextToken) (\s@ListDistributedGrants' {} a -> s {nextToken = a} :: ListDistributedGrants)

-- | Amazon Resource Names (ARNs) of the grants.
listDistributedGrants_grantArns :: Lens.Lens' ListDistributedGrants (Prelude.Maybe [Prelude.Text])
listDistributedGrants_grantArns = Lens.lens (\ListDistributedGrants' {grantArns} -> grantArns) (\s@ListDistributedGrants' {} a -> s {grantArns = a} :: ListDistributedGrants) Prelude.. Lens.mapping Lens.coerced

-- | Maximum number of results to return in a single call.
listDistributedGrants_maxResults :: Lens.Lens' ListDistributedGrants (Prelude.Maybe Prelude.Natural)
listDistributedGrants_maxResults = Lens.lens (\ListDistributedGrants' {maxResults} -> maxResults) (\s@ListDistributedGrants' {} a -> s {maxResults = a} :: ListDistributedGrants)

instance Core.AWSRequest ListDistributedGrants where
  type
    AWSResponse ListDistributedGrants =
      ListDistributedGrantsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListDistributedGrantsResponse'
            Prelude.<$> (x Core..?> "Grants" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListDistributedGrants

instance Prelude.NFData ListDistributedGrants

instance Core.ToHeaders ListDistributedGrants where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSLicenseManager.ListDistributedGrants" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListDistributedGrants where
  toJSON ListDistributedGrants' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Filters" Core..=) Prelude.<$> filters,
            ("NextToken" Core..=) Prelude.<$> nextToken,
            ("GrantArns" Core..=) Prelude.<$> grantArns,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListDistributedGrants where
  toPath = Prelude.const "/"

instance Core.ToQuery ListDistributedGrants where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListDistributedGrantsResponse' smart constructor.
data ListDistributedGrantsResponse = ListDistributedGrantsResponse'
  { -- | Distributed grant details.
    grants :: Prelude.Maybe [Grant],
    -- | Token for the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListDistributedGrantsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'grants', 'listDistributedGrantsResponse_grants' - Distributed grant details.
--
-- 'nextToken', 'listDistributedGrantsResponse_nextToken' - Token for the next set of results.
--
-- 'httpStatus', 'listDistributedGrantsResponse_httpStatus' - The response's http status code.
newListDistributedGrantsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListDistributedGrantsResponse
newListDistributedGrantsResponse pHttpStatus_ =
  ListDistributedGrantsResponse'
    { grants =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Distributed grant details.
listDistributedGrantsResponse_grants :: Lens.Lens' ListDistributedGrantsResponse (Prelude.Maybe [Grant])
listDistributedGrantsResponse_grants = Lens.lens (\ListDistributedGrantsResponse' {grants} -> grants) (\s@ListDistributedGrantsResponse' {} a -> s {grants = a} :: ListDistributedGrantsResponse) Prelude.. Lens.mapping Lens.coerced

-- | Token for the next set of results.
listDistributedGrantsResponse_nextToken :: Lens.Lens' ListDistributedGrantsResponse (Prelude.Maybe Prelude.Text)
listDistributedGrantsResponse_nextToken = Lens.lens (\ListDistributedGrantsResponse' {nextToken} -> nextToken) (\s@ListDistributedGrantsResponse' {} a -> s {nextToken = a} :: ListDistributedGrantsResponse)

-- | The response's http status code.
listDistributedGrantsResponse_httpStatus :: Lens.Lens' ListDistributedGrantsResponse Prelude.Int
listDistributedGrantsResponse_httpStatus = Lens.lens (\ListDistributedGrantsResponse' {httpStatus} -> httpStatus) (\s@ListDistributedGrantsResponse' {} a -> s {httpStatus = a} :: ListDistributedGrantsResponse)

instance Prelude.NFData ListDistributedGrantsResponse
