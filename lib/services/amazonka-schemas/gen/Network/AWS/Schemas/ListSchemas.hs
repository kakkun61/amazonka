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
-- Module      : Network.AWS.Schemas.ListSchemas
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the schemas.
--
-- This operation returns paginated results.
module Network.AWS.Schemas.ListSchemas
  ( -- * Creating a Request
    ListSchemas (..),
    newListSchemas,

    -- * Request Lenses
    listSchemas_schemaNamePrefix,
    listSchemas_nextToken,
    listSchemas_limit,
    listSchemas_registryName,

    -- * Destructuring the Response
    ListSchemasResponse (..),
    newListSchemasResponse,

    -- * Response Lenses
    listSchemasResponse_schemas,
    listSchemasResponse_nextToken,
    listSchemasResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Schemas.Types

-- | /See:/ 'newListSchemas' smart constructor.
data ListSchemas = ListSchemas'
  { -- | Specifying this limits the results to only those schema names that start
    -- with the specified prefix.
    schemaNamePrefix :: Prelude.Maybe Prelude.Text,
    -- | The token that specifies the next page of results to return. To request
    -- the first page, leave NextToken empty. The token will expire in 24
    -- hours, and cannot be shared with other accounts.
    nextToken :: Prelude.Maybe Prelude.Text,
    limit :: Prelude.Maybe Prelude.Int,
    -- | The name of the registry.
    registryName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListSchemas' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'schemaNamePrefix', 'listSchemas_schemaNamePrefix' - Specifying this limits the results to only those schema names that start
-- with the specified prefix.
--
-- 'nextToken', 'listSchemas_nextToken' - The token that specifies the next page of results to return. To request
-- the first page, leave NextToken empty. The token will expire in 24
-- hours, and cannot be shared with other accounts.
--
-- 'limit', 'listSchemas_limit' - Undocumented member.
--
-- 'registryName', 'listSchemas_registryName' - The name of the registry.
newListSchemas ::
  -- | 'registryName'
  Prelude.Text ->
  ListSchemas
newListSchemas pRegistryName_ =
  ListSchemas'
    { schemaNamePrefix = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      limit = Prelude.Nothing,
      registryName = pRegistryName_
    }

-- | Specifying this limits the results to only those schema names that start
-- with the specified prefix.
listSchemas_schemaNamePrefix :: Lens.Lens' ListSchemas (Prelude.Maybe Prelude.Text)
listSchemas_schemaNamePrefix = Lens.lens (\ListSchemas' {schemaNamePrefix} -> schemaNamePrefix) (\s@ListSchemas' {} a -> s {schemaNamePrefix = a} :: ListSchemas)

-- | The token that specifies the next page of results to return. To request
-- the first page, leave NextToken empty. The token will expire in 24
-- hours, and cannot be shared with other accounts.
listSchemas_nextToken :: Lens.Lens' ListSchemas (Prelude.Maybe Prelude.Text)
listSchemas_nextToken = Lens.lens (\ListSchemas' {nextToken} -> nextToken) (\s@ListSchemas' {} a -> s {nextToken = a} :: ListSchemas)

-- | Undocumented member.
listSchemas_limit :: Lens.Lens' ListSchemas (Prelude.Maybe Prelude.Int)
listSchemas_limit = Lens.lens (\ListSchemas' {limit} -> limit) (\s@ListSchemas' {} a -> s {limit = a} :: ListSchemas)

-- | The name of the registry.
listSchemas_registryName :: Lens.Lens' ListSchemas Prelude.Text
listSchemas_registryName = Lens.lens (\ListSchemas' {registryName} -> registryName) (\s@ListSchemas' {} a -> s {registryName = a} :: ListSchemas)

instance Core.AWSPager ListSchemas where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listSchemasResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listSchemasResponse_schemas Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listSchemas_nextToken
          Lens..~ rs
          Lens.^? listSchemasResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListSchemas where
  type AWSResponse ListSchemas = ListSchemasResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListSchemasResponse'
            Prelude.<$> (x Core..?> "Schemas" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListSchemas

instance Prelude.NFData ListSchemas

instance Core.ToHeaders ListSchemas where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListSchemas where
  toPath ListSchemas' {..} =
    Prelude.mconcat
      [ "/v1/registries/name/",
        Core.toBS registryName,
        "/schemas"
      ]

instance Core.ToQuery ListSchemas where
  toQuery ListSchemas' {..} =
    Prelude.mconcat
      [ "schemaNamePrefix" Core.=: schemaNamePrefix,
        "nextToken" Core.=: nextToken,
        "limit" Core.=: limit
      ]

-- | /See:/ 'newListSchemasResponse' smart constructor.
data ListSchemasResponse = ListSchemasResponse'
  { -- | An array of schema summaries.
    schemas :: Prelude.Maybe [SchemaSummary],
    -- | The token that specifies the next page of results to return. To request
    -- the first page, leave NextToken empty. The token will expire in 24
    -- hours, and cannot be shared with other accounts.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListSchemasResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'schemas', 'listSchemasResponse_schemas' - An array of schema summaries.
--
-- 'nextToken', 'listSchemasResponse_nextToken' - The token that specifies the next page of results to return. To request
-- the first page, leave NextToken empty. The token will expire in 24
-- hours, and cannot be shared with other accounts.
--
-- 'httpStatus', 'listSchemasResponse_httpStatus' - The response's http status code.
newListSchemasResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListSchemasResponse
newListSchemasResponse pHttpStatus_ =
  ListSchemasResponse'
    { schemas = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An array of schema summaries.
listSchemasResponse_schemas :: Lens.Lens' ListSchemasResponse (Prelude.Maybe [SchemaSummary])
listSchemasResponse_schemas = Lens.lens (\ListSchemasResponse' {schemas} -> schemas) (\s@ListSchemasResponse' {} a -> s {schemas = a} :: ListSchemasResponse) Prelude.. Lens.mapping Lens.coerced

-- | The token that specifies the next page of results to return. To request
-- the first page, leave NextToken empty. The token will expire in 24
-- hours, and cannot be shared with other accounts.
listSchemasResponse_nextToken :: Lens.Lens' ListSchemasResponse (Prelude.Maybe Prelude.Text)
listSchemasResponse_nextToken = Lens.lens (\ListSchemasResponse' {nextToken} -> nextToken) (\s@ListSchemasResponse' {} a -> s {nextToken = a} :: ListSchemasResponse)

-- | The response's http status code.
listSchemasResponse_httpStatus :: Lens.Lens' ListSchemasResponse Prelude.Int
listSchemasResponse_httpStatus = Lens.lens (\ListSchemasResponse' {httpStatus} -> httpStatus) (\s@ListSchemasResponse' {} a -> s {httpStatus = a} :: ListSchemasResponse)

instance Prelude.NFData ListSchemasResponse
