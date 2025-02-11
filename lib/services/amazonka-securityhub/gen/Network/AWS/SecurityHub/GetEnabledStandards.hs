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
-- Module      : Network.AWS.SecurityHub.GetEnabledStandards
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of the standards that are currently enabled.
--
-- This operation returns paginated results.
module Network.AWS.SecurityHub.GetEnabledStandards
  ( -- * Creating a Request
    GetEnabledStandards (..),
    newGetEnabledStandards,

    -- * Request Lenses
    getEnabledStandards_nextToken,
    getEnabledStandards_standardsSubscriptionArns,
    getEnabledStandards_maxResults,

    -- * Destructuring the Response
    GetEnabledStandardsResponse (..),
    newGetEnabledStandardsResponse,

    -- * Response Lenses
    getEnabledStandardsResponse_nextToken,
    getEnabledStandardsResponse_standardsSubscriptions,
    getEnabledStandardsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SecurityHub.Types

-- | /See:/ 'newGetEnabledStandards' smart constructor.
data GetEnabledStandards = GetEnabledStandards'
  { -- | The token that is required for pagination. On your first call to the
    -- @GetEnabledStandards@ operation, set the value of this parameter to
    -- @NULL@.
    --
    -- For subsequent calls to the operation, to continue listing data, set the
    -- value of this parameter to the value returned from the previous
    -- response.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The list of the standards subscription ARNs for the standards to
    -- retrieve.
    standardsSubscriptionArns :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | The maximum number of results to return in the response.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetEnabledStandards' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getEnabledStandards_nextToken' - The token that is required for pagination. On your first call to the
-- @GetEnabledStandards@ operation, set the value of this parameter to
-- @NULL@.
--
-- For subsequent calls to the operation, to continue listing data, set the
-- value of this parameter to the value returned from the previous
-- response.
--
-- 'standardsSubscriptionArns', 'getEnabledStandards_standardsSubscriptionArns' - The list of the standards subscription ARNs for the standards to
-- retrieve.
--
-- 'maxResults', 'getEnabledStandards_maxResults' - The maximum number of results to return in the response.
newGetEnabledStandards ::
  GetEnabledStandards
newGetEnabledStandards =
  GetEnabledStandards'
    { nextToken = Prelude.Nothing,
      standardsSubscriptionArns = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The token that is required for pagination. On your first call to the
-- @GetEnabledStandards@ operation, set the value of this parameter to
-- @NULL@.
--
-- For subsequent calls to the operation, to continue listing data, set the
-- value of this parameter to the value returned from the previous
-- response.
getEnabledStandards_nextToken :: Lens.Lens' GetEnabledStandards (Prelude.Maybe Prelude.Text)
getEnabledStandards_nextToken = Lens.lens (\GetEnabledStandards' {nextToken} -> nextToken) (\s@GetEnabledStandards' {} a -> s {nextToken = a} :: GetEnabledStandards)

-- | The list of the standards subscription ARNs for the standards to
-- retrieve.
getEnabledStandards_standardsSubscriptionArns :: Lens.Lens' GetEnabledStandards (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
getEnabledStandards_standardsSubscriptionArns = Lens.lens (\GetEnabledStandards' {standardsSubscriptionArns} -> standardsSubscriptionArns) (\s@GetEnabledStandards' {} a -> s {standardsSubscriptionArns = a} :: GetEnabledStandards) Prelude.. Lens.mapping Lens.coerced

-- | The maximum number of results to return in the response.
getEnabledStandards_maxResults :: Lens.Lens' GetEnabledStandards (Prelude.Maybe Prelude.Natural)
getEnabledStandards_maxResults = Lens.lens (\GetEnabledStandards' {maxResults} -> maxResults) (\s@GetEnabledStandards' {} a -> s {maxResults = a} :: GetEnabledStandards)

instance Core.AWSPager GetEnabledStandards where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? getEnabledStandardsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? getEnabledStandardsResponse_standardsSubscriptions
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& getEnabledStandards_nextToken
          Lens..~ rs
          Lens.^? getEnabledStandardsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest GetEnabledStandards where
  type
    AWSResponse GetEnabledStandards =
      GetEnabledStandardsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetEnabledStandardsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "StandardsSubscriptions"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetEnabledStandards

instance Prelude.NFData GetEnabledStandards

instance Core.ToHeaders GetEnabledStandards where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetEnabledStandards where
  toJSON GetEnabledStandards' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("StandardsSubscriptionArns" Core..=)
              Prelude.<$> standardsSubscriptionArns,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath GetEnabledStandards where
  toPath = Prelude.const "/standards/get"

instance Core.ToQuery GetEnabledStandards where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetEnabledStandardsResponse' smart constructor.
data GetEnabledStandardsResponse = GetEnabledStandardsResponse'
  { -- | The pagination token to use to request the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The list of @StandardsSubscriptions@ objects that include information
    -- about the enabled standards.
    standardsSubscriptions :: Prelude.Maybe [StandardsSubscription],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetEnabledStandardsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getEnabledStandardsResponse_nextToken' - The pagination token to use to request the next page of results.
--
-- 'standardsSubscriptions', 'getEnabledStandardsResponse_standardsSubscriptions' - The list of @StandardsSubscriptions@ objects that include information
-- about the enabled standards.
--
-- 'httpStatus', 'getEnabledStandardsResponse_httpStatus' - The response's http status code.
newGetEnabledStandardsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetEnabledStandardsResponse
newGetEnabledStandardsResponse pHttpStatus_ =
  GetEnabledStandardsResponse'
    { nextToken =
        Prelude.Nothing,
      standardsSubscriptions = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The pagination token to use to request the next page of results.
getEnabledStandardsResponse_nextToken :: Lens.Lens' GetEnabledStandardsResponse (Prelude.Maybe Prelude.Text)
getEnabledStandardsResponse_nextToken = Lens.lens (\GetEnabledStandardsResponse' {nextToken} -> nextToken) (\s@GetEnabledStandardsResponse' {} a -> s {nextToken = a} :: GetEnabledStandardsResponse)

-- | The list of @StandardsSubscriptions@ objects that include information
-- about the enabled standards.
getEnabledStandardsResponse_standardsSubscriptions :: Lens.Lens' GetEnabledStandardsResponse (Prelude.Maybe [StandardsSubscription])
getEnabledStandardsResponse_standardsSubscriptions = Lens.lens (\GetEnabledStandardsResponse' {standardsSubscriptions} -> standardsSubscriptions) (\s@GetEnabledStandardsResponse' {} a -> s {standardsSubscriptions = a} :: GetEnabledStandardsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getEnabledStandardsResponse_httpStatus :: Lens.Lens' GetEnabledStandardsResponse Prelude.Int
getEnabledStandardsResponse_httpStatus = Lens.lens (\GetEnabledStandardsResponse' {httpStatus} -> httpStatus) (\s@GetEnabledStandardsResponse' {} a -> s {httpStatus = a} :: GetEnabledStandardsResponse)

instance Prelude.NFData GetEnabledStandardsResponse
