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
-- Module      : Network.AWS.Schemas.ListRegistries
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the registries.
--
-- This operation returns paginated results.
module Network.AWS.Schemas.ListRegistries
  ( -- * Creating a Request
    ListRegistries (..),
    newListRegistries,

    -- * Request Lenses
    listRegistries_registryNamePrefix,
    listRegistries_nextToken,
    listRegistries_scope,
    listRegistries_limit,

    -- * Destructuring the Response
    ListRegistriesResponse (..),
    newListRegistriesResponse,

    -- * Response Lenses
    listRegistriesResponse_registries,
    listRegistriesResponse_nextToken,
    listRegistriesResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Schemas.Types

-- | /See:/ 'newListRegistries' smart constructor.
data ListRegistries = ListRegistries'
  { -- | Specifying this limits the results to only those registry names that
    -- start with the specified prefix.
    registryNamePrefix :: Prelude.Maybe Prelude.Text,
    -- | The token that specifies the next page of results to return. To request
    -- the first page, leave NextToken empty. The token will expire in 24
    -- hours, and cannot be shared with other accounts.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Can be set to Local or AWS to limit responses to your custom registries,
    -- or the ones provided by AWS.
    scope :: Prelude.Maybe Prelude.Text,
    limit :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListRegistries' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'registryNamePrefix', 'listRegistries_registryNamePrefix' - Specifying this limits the results to only those registry names that
-- start with the specified prefix.
--
-- 'nextToken', 'listRegistries_nextToken' - The token that specifies the next page of results to return. To request
-- the first page, leave NextToken empty. The token will expire in 24
-- hours, and cannot be shared with other accounts.
--
-- 'scope', 'listRegistries_scope' - Can be set to Local or AWS to limit responses to your custom registries,
-- or the ones provided by AWS.
--
-- 'limit', 'listRegistries_limit' - Undocumented member.
newListRegistries ::
  ListRegistries
newListRegistries =
  ListRegistries'
    { registryNamePrefix =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      scope = Prelude.Nothing,
      limit = Prelude.Nothing
    }

-- | Specifying this limits the results to only those registry names that
-- start with the specified prefix.
listRegistries_registryNamePrefix :: Lens.Lens' ListRegistries (Prelude.Maybe Prelude.Text)
listRegistries_registryNamePrefix = Lens.lens (\ListRegistries' {registryNamePrefix} -> registryNamePrefix) (\s@ListRegistries' {} a -> s {registryNamePrefix = a} :: ListRegistries)

-- | The token that specifies the next page of results to return. To request
-- the first page, leave NextToken empty. The token will expire in 24
-- hours, and cannot be shared with other accounts.
listRegistries_nextToken :: Lens.Lens' ListRegistries (Prelude.Maybe Prelude.Text)
listRegistries_nextToken = Lens.lens (\ListRegistries' {nextToken} -> nextToken) (\s@ListRegistries' {} a -> s {nextToken = a} :: ListRegistries)

-- | Can be set to Local or AWS to limit responses to your custom registries,
-- or the ones provided by AWS.
listRegistries_scope :: Lens.Lens' ListRegistries (Prelude.Maybe Prelude.Text)
listRegistries_scope = Lens.lens (\ListRegistries' {scope} -> scope) (\s@ListRegistries' {} a -> s {scope = a} :: ListRegistries)

-- | Undocumented member.
listRegistries_limit :: Lens.Lens' ListRegistries (Prelude.Maybe Prelude.Int)
listRegistries_limit = Lens.lens (\ListRegistries' {limit} -> limit) (\s@ListRegistries' {} a -> s {limit = a} :: ListRegistries)

instance Core.AWSPager ListRegistries where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listRegistriesResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listRegistriesResponse_registries
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listRegistries_nextToken
          Lens..~ rs
          Lens.^? listRegistriesResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListRegistries where
  type
    AWSResponse ListRegistries =
      ListRegistriesResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListRegistriesResponse'
            Prelude.<$> (x Core..?> "Registries" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListRegistries

instance Prelude.NFData ListRegistries

instance Core.ToHeaders ListRegistries where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListRegistries where
  toPath = Prelude.const "/v1/registries"

instance Core.ToQuery ListRegistries where
  toQuery ListRegistries' {..} =
    Prelude.mconcat
      [ "registryNamePrefix" Core.=: registryNamePrefix,
        "nextToken" Core.=: nextToken,
        "scope" Core.=: scope,
        "limit" Core.=: limit
      ]

-- | /See:/ 'newListRegistriesResponse' smart constructor.
data ListRegistriesResponse = ListRegistriesResponse'
  { -- | An array of registry summaries.
    registries :: Prelude.Maybe [RegistrySummary],
    -- | The token that specifies the next page of results to return. To request
    -- the first page, leave NextToken empty. The token will expire in 24
    -- hours, and cannot be shared with other accounts.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListRegistriesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'registries', 'listRegistriesResponse_registries' - An array of registry summaries.
--
-- 'nextToken', 'listRegistriesResponse_nextToken' - The token that specifies the next page of results to return. To request
-- the first page, leave NextToken empty. The token will expire in 24
-- hours, and cannot be shared with other accounts.
--
-- 'httpStatus', 'listRegistriesResponse_httpStatus' - The response's http status code.
newListRegistriesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListRegistriesResponse
newListRegistriesResponse pHttpStatus_ =
  ListRegistriesResponse'
    { registries =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An array of registry summaries.
listRegistriesResponse_registries :: Lens.Lens' ListRegistriesResponse (Prelude.Maybe [RegistrySummary])
listRegistriesResponse_registries = Lens.lens (\ListRegistriesResponse' {registries} -> registries) (\s@ListRegistriesResponse' {} a -> s {registries = a} :: ListRegistriesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The token that specifies the next page of results to return. To request
-- the first page, leave NextToken empty. The token will expire in 24
-- hours, and cannot be shared with other accounts.
listRegistriesResponse_nextToken :: Lens.Lens' ListRegistriesResponse (Prelude.Maybe Prelude.Text)
listRegistriesResponse_nextToken = Lens.lens (\ListRegistriesResponse' {nextToken} -> nextToken) (\s@ListRegistriesResponse' {} a -> s {nextToken = a} :: ListRegistriesResponse)

-- | The response's http status code.
listRegistriesResponse_httpStatus :: Lens.Lens' ListRegistriesResponse Prelude.Int
listRegistriesResponse_httpStatus = Lens.lens (\ListRegistriesResponse' {httpStatus} -> httpStatus) (\s@ListRegistriesResponse' {} a -> s {httpStatus = a} :: ListRegistriesResponse)

instance Prelude.NFData ListRegistriesResponse
