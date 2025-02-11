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
-- Module      : Network.AWS.CodeArtifact.ListRepositoriesInDomain
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of
-- <https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_RepositorySummary.html RepositorySummary>
-- objects. Each @RepositorySummary@ contains information about a
-- repository in the specified domain and that matches the input
-- parameters.
--
-- This operation returns paginated results.
module Network.AWS.CodeArtifact.ListRepositoriesInDomain
  ( -- * Creating a Request
    ListRepositoriesInDomain (..),
    newListRepositoriesInDomain,

    -- * Request Lenses
    listRepositoriesInDomain_repositoryPrefix,
    listRepositoriesInDomain_domainOwner,
    listRepositoriesInDomain_nextToken,
    listRepositoriesInDomain_administratorAccount,
    listRepositoriesInDomain_maxResults,
    listRepositoriesInDomain_domain,

    -- * Destructuring the Response
    ListRepositoriesInDomainResponse (..),
    newListRepositoriesInDomainResponse,

    -- * Response Lenses
    listRepositoriesInDomainResponse_repositories,
    listRepositoriesInDomainResponse_nextToken,
    listRepositoriesInDomainResponse_httpStatus,
  )
where

import Network.AWS.CodeArtifact.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListRepositoriesInDomain' smart constructor.
data ListRepositoriesInDomain = ListRepositoriesInDomain'
  { -- | A prefix used to filter returned repositories. Only repositories with
    -- names that start with @repositoryPrefix@ are returned.
    repositoryPrefix :: Prelude.Maybe Prelude.Text,
    -- | The 12-digit account number of the AWS account that owns the domain. It
    -- does not include dashes or spaces.
    domainOwner :: Prelude.Maybe Prelude.Text,
    -- | The token for the next set of results. Use the value returned in the
    -- previous response in the next request to retrieve the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Filter the list of repositories to only include those that are managed
    -- by the AWS account ID.
    administratorAccount :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return per page.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The name of the domain that contains the returned list of repositories.
    domain :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListRepositoriesInDomain' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'repositoryPrefix', 'listRepositoriesInDomain_repositoryPrefix' - A prefix used to filter returned repositories. Only repositories with
-- names that start with @repositoryPrefix@ are returned.
--
-- 'domainOwner', 'listRepositoriesInDomain_domainOwner' - The 12-digit account number of the AWS account that owns the domain. It
-- does not include dashes or spaces.
--
-- 'nextToken', 'listRepositoriesInDomain_nextToken' - The token for the next set of results. Use the value returned in the
-- previous response in the next request to retrieve the next set of
-- results.
--
-- 'administratorAccount', 'listRepositoriesInDomain_administratorAccount' - Filter the list of repositories to only include those that are managed
-- by the AWS account ID.
--
-- 'maxResults', 'listRepositoriesInDomain_maxResults' - The maximum number of results to return per page.
--
-- 'domain', 'listRepositoriesInDomain_domain' - The name of the domain that contains the returned list of repositories.
newListRepositoriesInDomain ::
  -- | 'domain'
  Prelude.Text ->
  ListRepositoriesInDomain
newListRepositoriesInDomain pDomain_ =
  ListRepositoriesInDomain'
    { repositoryPrefix =
        Prelude.Nothing,
      domainOwner = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      administratorAccount = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      domain = pDomain_
    }

-- | A prefix used to filter returned repositories. Only repositories with
-- names that start with @repositoryPrefix@ are returned.
listRepositoriesInDomain_repositoryPrefix :: Lens.Lens' ListRepositoriesInDomain (Prelude.Maybe Prelude.Text)
listRepositoriesInDomain_repositoryPrefix = Lens.lens (\ListRepositoriesInDomain' {repositoryPrefix} -> repositoryPrefix) (\s@ListRepositoriesInDomain' {} a -> s {repositoryPrefix = a} :: ListRepositoriesInDomain)

-- | The 12-digit account number of the AWS account that owns the domain. It
-- does not include dashes or spaces.
listRepositoriesInDomain_domainOwner :: Lens.Lens' ListRepositoriesInDomain (Prelude.Maybe Prelude.Text)
listRepositoriesInDomain_domainOwner = Lens.lens (\ListRepositoriesInDomain' {domainOwner} -> domainOwner) (\s@ListRepositoriesInDomain' {} a -> s {domainOwner = a} :: ListRepositoriesInDomain)

-- | The token for the next set of results. Use the value returned in the
-- previous response in the next request to retrieve the next set of
-- results.
listRepositoriesInDomain_nextToken :: Lens.Lens' ListRepositoriesInDomain (Prelude.Maybe Prelude.Text)
listRepositoriesInDomain_nextToken = Lens.lens (\ListRepositoriesInDomain' {nextToken} -> nextToken) (\s@ListRepositoriesInDomain' {} a -> s {nextToken = a} :: ListRepositoriesInDomain)

-- | Filter the list of repositories to only include those that are managed
-- by the AWS account ID.
listRepositoriesInDomain_administratorAccount :: Lens.Lens' ListRepositoriesInDomain (Prelude.Maybe Prelude.Text)
listRepositoriesInDomain_administratorAccount = Lens.lens (\ListRepositoriesInDomain' {administratorAccount} -> administratorAccount) (\s@ListRepositoriesInDomain' {} a -> s {administratorAccount = a} :: ListRepositoriesInDomain)

-- | The maximum number of results to return per page.
listRepositoriesInDomain_maxResults :: Lens.Lens' ListRepositoriesInDomain (Prelude.Maybe Prelude.Natural)
listRepositoriesInDomain_maxResults = Lens.lens (\ListRepositoriesInDomain' {maxResults} -> maxResults) (\s@ListRepositoriesInDomain' {} a -> s {maxResults = a} :: ListRepositoriesInDomain)

-- | The name of the domain that contains the returned list of repositories.
listRepositoriesInDomain_domain :: Lens.Lens' ListRepositoriesInDomain Prelude.Text
listRepositoriesInDomain_domain = Lens.lens (\ListRepositoriesInDomain' {domain} -> domain) (\s@ListRepositoriesInDomain' {} a -> s {domain = a} :: ListRepositoriesInDomain)

instance Core.AWSPager ListRepositoriesInDomain where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listRepositoriesInDomainResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listRepositoriesInDomainResponse_repositories
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listRepositoriesInDomain_nextToken
          Lens..~ rs
          Lens.^? listRepositoriesInDomainResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListRepositoriesInDomain where
  type
    AWSResponse ListRepositoriesInDomain =
      ListRepositoriesInDomainResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListRepositoriesInDomainResponse'
            Prelude.<$> (x Core..?> "repositories" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListRepositoriesInDomain

instance Prelude.NFData ListRepositoriesInDomain

instance Core.ToHeaders ListRepositoriesInDomain where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListRepositoriesInDomain where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath ListRepositoriesInDomain where
  toPath = Prelude.const "/v1/domain/repositories"

instance Core.ToQuery ListRepositoriesInDomain where
  toQuery ListRepositoriesInDomain' {..} =
    Prelude.mconcat
      [ "repository-prefix" Core.=: repositoryPrefix,
        "domain-owner" Core.=: domainOwner,
        "next-token" Core.=: nextToken,
        "administrator-account" Core.=: administratorAccount,
        "max-results" Core.=: maxResults,
        "domain" Core.=: domain
      ]

-- | /See:/ 'newListRepositoriesInDomainResponse' smart constructor.
data ListRepositoriesInDomainResponse = ListRepositoriesInDomainResponse'
  { -- | The returned list of repositories.
    repositories :: Prelude.Maybe [RepositorySummary],
    -- | If there are additional results, this is the token for the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListRepositoriesInDomainResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'repositories', 'listRepositoriesInDomainResponse_repositories' - The returned list of repositories.
--
-- 'nextToken', 'listRepositoriesInDomainResponse_nextToken' - If there are additional results, this is the token for the next set of
-- results.
--
-- 'httpStatus', 'listRepositoriesInDomainResponse_httpStatus' - The response's http status code.
newListRepositoriesInDomainResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListRepositoriesInDomainResponse
newListRepositoriesInDomainResponse pHttpStatus_ =
  ListRepositoriesInDomainResponse'
    { repositories =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The returned list of repositories.
listRepositoriesInDomainResponse_repositories :: Lens.Lens' ListRepositoriesInDomainResponse (Prelude.Maybe [RepositorySummary])
listRepositoriesInDomainResponse_repositories = Lens.lens (\ListRepositoriesInDomainResponse' {repositories} -> repositories) (\s@ListRepositoriesInDomainResponse' {} a -> s {repositories = a} :: ListRepositoriesInDomainResponse) Prelude.. Lens.mapping Lens.coerced

-- | If there are additional results, this is the token for the next set of
-- results.
listRepositoriesInDomainResponse_nextToken :: Lens.Lens' ListRepositoriesInDomainResponse (Prelude.Maybe Prelude.Text)
listRepositoriesInDomainResponse_nextToken = Lens.lens (\ListRepositoriesInDomainResponse' {nextToken} -> nextToken) (\s@ListRepositoriesInDomainResponse' {} a -> s {nextToken = a} :: ListRepositoriesInDomainResponse)

-- | The response's http status code.
listRepositoriesInDomainResponse_httpStatus :: Lens.Lens' ListRepositoriesInDomainResponse Prelude.Int
listRepositoriesInDomainResponse_httpStatus = Lens.lens (\ListRepositoriesInDomainResponse' {httpStatus} -> httpStatus) (\s@ListRepositoriesInDomainResponse' {} a -> s {httpStatus = a} :: ListRepositoriesInDomainResponse)

instance
  Prelude.NFData
    ListRepositoriesInDomainResponse
