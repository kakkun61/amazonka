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
-- Module      : Network.AWS.AppRunner.DescribeCustomDomains
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return a description of custom domain names that are associated with an
-- App Runner service.
module Network.AWS.AppRunner.DescribeCustomDomains
  ( -- * Creating a Request
    DescribeCustomDomains (..),
    newDescribeCustomDomains,

    -- * Request Lenses
    describeCustomDomains_nextToken,
    describeCustomDomains_maxResults,
    describeCustomDomains_serviceArn,

    -- * Destructuring the Response
    DescribeCustomDomainsResponse (..),
    newDescribeCustomDomainsResponse,

    -- * Response Lenses
    describeCustomDomainsResponse_nextToken,
    describeCustomDomainsResponse_httpStatus,
    describeCustomDomainsResponse_dNSTarget,
    describeCustomDomainsResponse_serviceArn,
    describeCustomDomainsResponse_customDomains,
  )
where

import Network.AWS.AppRunner.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeCustomDomains' smart constructor.
data DescribeCustomDomains = DescribeCustomDomains'
  { -- | A token from a previous result page. It\'s used for a paginated request.
    -- The request retrieves the next result page. All other parameter values
    -- must be identical to the ones that are specified in the initial request.
    --
    -- If you don\'t specify @NextToken@, the request retrieves the first
    -- result page.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results that each response (result page) can
    -- include. It\'s used for a paginated request.
    --
    -- If you don\'t specify @MaxResults@, the request retrieves all available
    -- results in a single response.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The Amazon Resource Name (ARN) of the App Runner service that you want
    -- associated custom domain names to be described for.
    serviceArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeCustomDomains' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeCustomDomains_nextToken' - A token from a previous result page. It\'s used for a paginated request.
-- The request retrieves the next result page. All other parameter values
-- must be identical to the ones that are specified in the initial request.
--
-- If you don\'t specify @NextToken@, the request retrieves the first
-- result page.
--
-- 'maxResults', 'describeCustomDomains_maxResults' - The maximum number of results that each response (result page) can
-- include. It\'s used for a paginated request.
--
-- If you don\'t specify @MaxResults@, the request retrieves all available
-- results in a single response.
--
-- 'serviceArn', 'describeCustomDomains_serviceArn' - The Amazon Resource Name (ARN) of the App Runner service that you want
-- associated custom domain names to be described for.
newDescribeCustomDomains ::
  -- | 'serviceArn'
  Prelude.Text ->
  DescribeCustomDomains
newDescribeCustomDomains pServiceArn_ =
  DescribeCustomDomains'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      serviceArn = pServiceArn_
    }

-- | A token from a previous result page. It\'s used for a paginated request.
-- The request retrieves the next result page. All other parameter values
-- must be identical to the ones that are specified in the initial request.
--
-- If you don\'t specify @NextToken@, the request retrieves the first
-- result page.
describeCustomDomains_nextToken :: Lens.Lens' DescribeCustomDomains (Prelude.Maybe Prelude.Text)
describeCustomDomains_nextToken = Lens.lens (\DescribeCustomDomains' {nextToken} -> nextToken) (\s@DescribeCustomDomains' {} a -> s {nextToken = a} :: DescribeCustomDomains)

-- | The maximum number of results that each response (result page) can
-- include. It\'s used for a paginated request.
--
-- If you don\'t specify @MaxResults@, the request retrieves all available
-- results in a single response.
describeCustomDomains_maxResults :: Lens.Lens' DescribeCustomDomains (Prelude.Maybe Prelude.Natural)
describeCustomDomains_maxResults = Lens.lens (\DescribeCustomDomains' {maxResults} -> maxResults) (\s@DescribeCustomDomains' {} a -> s {maxResults = a} :: DescribeCustomDomains)

-- | The Amazon Resource Name (ARN) of the App Runner service that you want
-- associated custom domain names to be described for.
describeCustomDomains_serviceArn :: Lens.Lens' DescribeCustomDomains Prelude.Text
describeCustomDomains_serviceArn = Lens.lens (\DescribeCustomDomains' {serviceArn} -> serviceArn) (\s@DescribeCustomDomains' {} a -> s {serviceArn = a} :: DescribeCustomDomains)

instance Core.AWSRequest DescribeCustomDomains where
  type
    AWSResponse DescribeCustomDomains =
      DescribeCustomDomainsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeCustomDomainsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "DNSTarget")
            Prelude.<*> (x Core..:> "ServiceArn")
            Prelude.<*> (x Core..?> "CustomDomains" Core..!@ Prelude.mempty)
      )

instance Prelude.Hashable DescribeCustomDomains

instance Prelude.NFData DescribeCustomDomains

instance Core.ToHeaders DescribeCustomDomains where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AppRunner.DescribeCustomDomains" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeCustomDomains where
  toJSON DescribeCustomDomains' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just ("ServiceArn" Core..= serviceArn)
          ]
      )

instance Core.ToPath DescribeCustomDomains where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeCustomDomains where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeCustomDomainsResponse' smart constructor.
data DescribeCustomDomainsResponse = DescribeCustomDomainsResponse'
  { -- | The token that you can pass in a subsequent request to get the next
    -- result page. It\'s returned in a paginated request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The App Runner subdomain of the App Runner service. The associated
    -- custom domain names are mapped to this target name.
    dNSTarget :: Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the App Runner service whose
    -- associated custom domain names you want to describe.
    serviceArn :: Prelude.Text,
    -- | A list of descriptions of custom domain names that are associated with
    -- the service. In a paginated request, the request returns up to
    -- @MaxResults@ records per call.
    customDomains :: [CustomDomain]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeCustomDomainsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeCustomDomainsResponse_nextToken' - The token that you can pass in a subsequent request to get the next
-- result page. It\'s returned in a paginated request.
--
-- 'httpStatus', 'describeCustomDomainsResponse_httpStatus' - The response's http status code.
--
-- 'dNSTarget', 'describeCustomDomainsResponse_dNSTarget' - The App Runner subdomain of the App Runner service. The associated
-- custom domain names are mapped to this target name.
--
-- 'serviceArn', 'describeCustomDomainsResponse_serviceArn' - The Amazon Resource Name (ARN) of the App Runner service whose
-- associated custom domain names you want to describe.
--
-- 'customDomains', 'describeCustomDomainsResponse_customDomains' - A list of descriptions of custom domain names that are associated with
-- the service. In a paginated request, the request returns up to
-- @MaxResults@ records per call.
newDescribeCustomDomainsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'dNSTarget'
  Prelude.Text ->
  -- | 'serviceArn'
  Prelude.Text ->
  DescribeCustomDomainsResponse
newDescribeCustomDomainsResponse
  pHttpStatus_
  pDNSTarget_
  pServiceArn_ =
    DescribeCustomDomainsResponse'
      { nextToken =
          Prelude.Nothing,
        httpStatus = pHttpStatus_,
        dNSTarget = pDNSTarget_,
        serviceArn = pServiceArn_,
        customDomains = Prelude.mempty
      }

-- | The token that you can pass in a subsequent request to get the next
-- result page. It\'s returned in a paginated request.
describeCustomDomainsResponse_nextToken :: Lens.Lens' DescribeCustomDomainsResponse (Prelude.Maybe Prelude.Text)
describeCustomDomainsResponse_nextToken = Lens.lens (\DescribeCustomDomainsResponse' {nextToken} -> nextToken) (\s@DescribeCustomDomainsResponse' {} a -> s {nextToken = a} :: DescribeCustomDomainsResponse)

-- | The response's http status code.
describeCustomDomainsResponse_httpStatus :: Lens.Lens' DescribeCustomDomainsResponse Prelude.Int
describeCustomDomainsResponse_httpStatus = Lens.lens (\DescribeCustomDomainsResponse' {httpStatus} -> httpStatus) (\s@DescribeCustomDomainsResponse' {} a -> s {httpStatus = a} :: DescribeCustomDomainsResponse)

-- | The App Runner subdomain of the App Runner service. The associated
-- custom domain names are mapped to this target name.
describeCustomDomainsResponse_dNSTarget :: Lens.Lens' DescribeCustomDomainsResponse Prelude.Text
describeCustomDomainsResponse_dNSTarget = Lens.lens (\DescribeCustomDomainsResponse' {dNSTarget} -> dNSTarget) (\s@DescribeCustomDomainsResponse' {} a -> s {dNSTarget = a} :: DescribeCustomDomainsResponse)

-- | The Amazon Resource Name (ARN) of the App Runner service whose
-- associated custom domain names you want to describe.
describeCustomDomainsResponse_serviceArn :: Lens.Lens' DescribeCustomDomainsResponse Prelude.Text
describeCustomDomainsResponse_serviceArn = Lens.lens (\DescribeCustomDomainsResponse' {serviceArn} -> serviceArn) (\s@DescribeCustomDomainsResponse' {} a -> s {serviceArn = a} :: DescribeCustomDomainsResponse)

-- | A list of descriptions of custom domain names that are associated with
-- the service. In a paginated request, the request returns up to
-- @MaxResults@ records per call.
describeCustomDomainsResponse_customDomains :: Lens.Lens' DescribeCustomDomainsResponse [CustomDomain]
describeCustomDomainsResponse_customDomains = Lens.lens (\DescribeCustomDomainsResponse' {customDomains} -> customDomains) (\s@DescribeCustomDomainsResponse' {} a -> s {customDomains = a} :: DescribeCustomDomainsResponse) Prelude.. Lens.coerced

instance Prelude.NFData DescribeCustomDomainsResponse
