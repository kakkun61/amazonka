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
-- Module      : Network.AWS.CodeArtifact.DescribeRepository
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a @RepositoryDescription@ object that contains detailed
-- information about the requested repository.
module Network.AWS.CodeArtifact.DescribeRepository
  ( -- * Creating a Request
    DescribeRepository (..),
    newDescribeRepository,

    -- * Request Lenses
    describeRepository_domainOwner,
    describeRepository_domain,
    describeRepository_repository,

    -- * Destructuring the Response
    DescribeRepositoryResponse (..),
    newDescribeRepositoryResponse,

    -- * Response Lenses
    describeRepositoryResponse_repository,
    describeRepositoryResponse_httpStatus,
  )
where

import Network.AWS.CodeArtifact.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeRepository' smart constructor.
data DescribeRepository = DescribeRepository'
  { -- | The 12-digit account number of the AWS account that owns the domain. It
    -- does not include dashes or spaces.
    domainOwner :: Prelude.Maybe Prelude.Text,
    -- | The name of the domain that contains the repository to describe.
    domain :: Prelude.Text,
    -- | A string that specifies the name of the requested repository.
    repository :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeRepository' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domainOwner', 'describeRepository_domainOwner' - The 12-digit account number of the AWS account that owns the domain. It
-- does not include dashes or spaces.
--
-- 'domain', 'describeRepository_domain' - The name of the domain that contains the repository to describe.
--
-- 'repository', 'describeRepository_repository' - A string that specifies the name of the requested repository.
newDescribeRepository ::
  -- | 'domain'
  Prelude.Text ->
  -- | 'repository'
  Prelude.Text ->
  DescribeRepository
newDescribeRepository pDomain_ pRepository_ =
  DescribeRepository'
    { domainOwner = Prelude.Nothing,
      domain = pDomain_,
      repository = pRepository_
    }

-- | The 12-digit account number of the AWS account that owns the domain. It
-- does not include dashes or spaces.
describeRepository_domainOwner :: Lens.Lens' DescribeRepository (Prelude.Maybe Prelude.Text)
describeRepository_domainOwner = Lens.lens (\DescribeRepository' {domainOwner} -> domainOwner) (\s@DescribeRepository' {} a -> s {domainOwner = a} :: DescribeRepository)

-- | The name of the domain that contains the repository to describe.
describeRepository_domain :: Lens.Lens' DescribeRepository Prelude.Text
describeRepository_domain = Lens.lens (\DescribeRepository' {domain} -> domain) (\s@DescribeRepository' {} a -> s {domain = a} :: DescribeRepository)

-- | A string that specifies the name of the requested repository.
describeRepository_repository :: Lens.Lens' DescribeRepository Prelude.Text
describeRepository_repository = Lens.lens (\DescribeRepository' {repository} -> repository) (\s@DescribeRepository' {} a -> s {repository = a} :: DescribeRepository)

instance Core.AWSRequest DescribeRepository where
  type
    AWSResponse DescribeRepository =
      DescribeRepositoryResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeRepositoryResponse'
            Prelude.<$> (x Core..?> "repository")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeRepository

instance Prelude.NFData DescribeRepository

instance Core.ToHeaders DescribeRepository where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeRepository where
  toPath = Prelude.const "/v1/repository"

instance Core.ToQuery DescribeRepository where
  toQuery DescribeRepository' {..} =
    Prelude.mconcat
      [ "domain-owner" Core.=: domainOwner,
        "domain" Core.=: domain,
        "repository" Core.=: repository
      ]

-- | /See:/ 'newDescribeRepositoryResponse' smart constructor.
data DescribeRepositoryResponse = DescribeRepositoryResponse'
  { -- | A @RepositoryDescription@ object that contains the requested repository
    -- information.
    repository :: Prelude.Maybe RepositoryDescription,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeRepositoryResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'repository', 'describeRepositoryResponse_repository' - A @RepositoryDescription@ object that contains the requested repository
-- information.
--
-- 'httpStatus', 'describeRepositoryResponse_httpStatus' - The response's http status code.
newDescribeRepositoryResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeRepositoryResponse
newDescribeRepositoryResponse pHttpStatus_ =
  DescribeRepositoryResponse'
    { repository =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A @RepositoryDescription@ object that contains the requested repository
-- information.
describeRepositoryResponse_repository :: Lens.Lens' DescribeRepositoryResponse (Prelude.Maybe RepositoryDescription)
describeRepositoryResponse_repository = Lens.lens (\DescribeRepositoryResponse' {repository} -> repository) (\s@DescribeRepositoryResponse' {} a -> s {repository = a} :: DescribeRepositoryResponse)

-- | The response's http status code.
describeRepositoryResponse_httpStatus :: Lens.Lens' DescribeRepositoryResponse Prelude.Int
describeRepositoryResponse_httpStatus = Lens.lens (\DescribeRepositoryResponse' {httpStatus} -> httpStatus) (\s@DescribeRepositoryResponse' {} a -> s {httpStatus = a} :: DescribeRepositoryResponse)

instance Prelude.NFData DescribeRepositoryResponse
