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
-- Module      : Network.AWS.LicenseManager.ListLicenses
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the licenses for your account.
module Network.AWS.LicenseManager.ListLicenses
  ( -- * Creating a Request
    ListLicenses (..),
    newListLicenses,

    -- * Request Lenses
    listLicenses_filters,
    listLicenses_nextToken,
    listLicenses_licenseArns,
    listLicenses_maxResults,

    -- * Destructuring the Response
    ListLicensesResponse (..),
    newListLicensesResponse,

    -- * Response Lenses
    listLicensesResponse_nextToken,
    listLicensesResponse_licenses,
    listLicensesResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LicenseManager.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListLicenses' smart constructor.
data ListLicenses = ListLicenses'
  { -- | Filters to scope the results. The following filters are supported:
    --
    -- -   @Beneficiary@
    --
    -- -   @ProductSKU@
    --
    -- -   @Fingerprint@
    --
    -- -   @Status@
    filters :: Prelude.Maybe [Filter],
    -- | Token for the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Amazon Resource Names (ARNs) of the licenses.
    licenseArns :: Prelude.Maybe [Prelude.Text],
    -- | Maximum number of results to return in a single call.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListLicenses' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'filters', 'listLicenses_filters' - Filters to scope the results. The following filters are supported:
--
-- -   @Beneficiary@
--
-- -   @ProductSKU@
--
-- -   @Fingerprint@
--
-- -   @Status@
--
-- 'nextToken', 'listLicenses_nextToken' - Token for the next set of results.
--
-- 'licenseArns', 'listLicenses_licenseArns' - Amazon Resource Names (ARNs) of the licenses.
--
-- 'maxResults', 'listLicenses_maxResults' - Maximum number of results to return in a single call.
newListLicenses ::
  ListLicenses
newListLicenses =
  ListLicenses'
    { filters = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      licenseArns = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | Filters to scope the results. The following filters are supported:
--
-- -   @Beneficiary@
--
-- -   @ProductSKU@
--
-- -   @Fingerprint@
--
-- -   @Status@
listLicenses_filters :: Lens.Lens' ListLicenses (Prelude.Maybe [Filter])
listLicenses_filters = Lens.lens (\ListLicenses' {filters} -> filters) (\s@ListLicenses' {} a -> s {filters = a} :: ListLicenses) Prelude.. Lens.mapping Lens.coerced

-- | Token for the next set of results.
listLicenses_nextToken :: Lens.Lens' ListLicenses (Prelude.Maybe Prelude.Text)
listLicenses_nextToken = Lens.lens (\ListLicenses' {nextToken} -> nextToken) (\s@ListLicenses' {} a -> s {nextToken = a} :: ListLicenses)

-- | Amazon Resource Names (ARNs) of the licenses.
listLicenses_licenseArns :: Lens.Lens' ListLicenses (Prelude.Maybe [Prelude.Text])
listLicenses_licenseArns = Lens.lens (\ListLicenses' {licenseArns} -> licenseArns) (\s@ListLicenses' {} a -> s {licenseArns = a} :: ListLicenses) Prelude.. Lens.mapping Lens.coerced

-- | Maximum number of results to return in a single call.
listLicenses_maxResults :: Lens.Lens' ListLicenses (Prelude.Maybe Prelude.Natural)
listLicenses_maxResults = Lens.lens (\ListLicenses' {maxResults} -> maxResults) (\s@ListLicenses' {} a -> s {maxResults = a} :: ListLicenses)

instance Core.AWSRequest ListLicenses where
  type AWSResponse ListLicenses = ListLicensesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListLicensesResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Licenses" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListLicenses

instance Prelude.NFData ListLicenses

instance Core.ToHeaders ListLicenses where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSLicenseManager.ListLicenses" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListLicenses where
  toJSON ListLicenses' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Filters" Core..=) Prelude.<$> filters,
            ("NextToken" Core..=) Prelude.<$> nextToken,
            ("LicenseArns" Core..=) Prelude.<$> licenseArns,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListLicenses where
  toPath = Prelude.const "/"

instance Core.ToQuery ListLicenses where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListLicensesResponse' smart constructor.
data ListLicensesResponse = ListLicensesResponse'
  { -- | Token for the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | License details.
    licenses :: Prelude.Maybe [License],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListLicensesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listLicensesResponse_nextToken' - Token for the next set of results.
--
-- 'licenses', 'listLicensesResponse_licenses' - License details.
--
-- 'httpStatus', 'listLicensesResponse_httpStatus' - The response's http status code.
newListLicensesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListLicensesResponse
newListLicensesResponse pHttpStatus_ =
  ListLicensesResponse'
    { nextToken = Prelude.Nothing,
      licenses = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Token for the next set of results.
listLicensesResponse_nextToken :: Lens.Lens' ListLicensesResponse (Prelude.Maybe Prelude.Text)
listLicensesResponse_nextToken = Lens.lens (\ListLicensesResponse' {nextToken} -> nextToken) (\s@ListLicensesResponse' {} a -> s {nextToken = a} :: ListLicensesResponse)

-- | License details.
listLicensesResponse_licenses :: Lens.Lens' ListLicensesResponse (Prelude.Maybe [License])
listLicensesResponse_licenses = Lens.lens (\ListLicensesResponse' {licenses} -> licenses) (\s@ListLicensesResponse' {} a -> s {licenses = a} :: ListLicensesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listLicensesResponse_httpStatus :: Lens.Lens' ListLicensesResponse Prelude.Int
listLicensesResponse_httpStatus = Lens.lens (\ListLicensesResponse' {httpStatus} -> httpStatus) (\s@ListLicensesResponse' {} a -> s {httpStatus = a} :: ListLicensesResponse)

instance Prelude.NFData ListLicensesResponse
