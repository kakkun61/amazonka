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
-- Module      : Network.AWS.Personalize.ListSchemas
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of schemas associated with the account. The response
-- provides the properties for each schema, including the Amazon Resource
-- Name (ARN). For more information on schemas, see CreateSchema.
--
-- This operation returns paginated results.
module Network.AWS.Personalize.ListSchemas
  ( -- * Creating a Request
    ListSchemas (..),
    newListSchemas,

    -- * Request Lenses
    listSchemas_nextToken,
    listSchemas_maxResults,

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
import Network.AWS.Personalize.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListSchemas' smart constructor.
data ListSchemas = ListSchemas'
  { -- | A token returned from the previous call to @ListSchemas@ for getting the
    -- next set of schemas (if they exist).
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of schemas to return.
    maxResults :: Prelude.Maybe Prelude.Natural
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
-- 'nextToken', 'listSchemas_nextToken' - A token returned from the previous call to @ListSchemas@ for getting the
-- next set of schemas (if they exist).
--
-- 'maxResults', 'listSchemas_maxResults' - The maximum number of schemas to return.
newListSchemas ::
  ListSchemas
newListSchemas =
  ListSchemas'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | A token returned from the previous call to @ListSchemas@ for getting the
-- next set of schemas (if they exist).
listSchemas_nextToken :: Lens.Lens' ListSchemas (Prelude.Maybe Prelude.Text)
listSchemas_nextToken = Lens.lens (\ListSchemas' {nextToken} -> nextToken) (\s@ListSchemas' {} a -> s {nextToken = a} :: ListSchemas)

-- | The maximum number of schemas to return.
listSchemas_maxResults :: Lens.Lens' ListSchemas (Prelude.Maybe Prelude.Natural)
listSchemas_maxResults = Lens.lens (\ListSchemas' {maxResults} -> maxResults) (\s@ListSchemas' {} a -> s {maxResults = a} :: ListSchemas)

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
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListSchemasResponse'
            Prelude.<$> (x Core..?> "schemas" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListSchemas

instance Prelude.NFData ListSchemas

instance Core.ToHeaders ListSchemas where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonPersonalize.ListSchemas" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListSchemas where
  toJSON ListSchemas' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nextToken" Core..=) Prelude.<$> nextToken,
            ("maxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListSchemas where
  toPath = Prelude.const "/"

instance Core.ToQuery ListSchemas where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListSchemasResponse' smart constructor.
data ListSchemasResponse = ListSchemasResponse'
  { -- | A list of schemas.
    schemas :: Prelude.Maybe [DatasetSchemaSummary],
    -- | A token used to get the next set of schemas (if they exist).
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
-- 'schemas', 'listSchemasResponse_schemas' - A list of schemas.
--
-- 'nextToken', 'listSchemasResponse_nextToken' - A token used to get the next set of schemas (if they exist).
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

-- | A list of schemas.
listSchemasResponse_schemas :: Lens.Lens' ListSchemasResponse (Prelude.Maybe [DatasetSchemaSummary])
listSchemasResponse_schemas = Lens.lens (\ListSchemasResponse' {schemas} -> schemas) (\s@ListSchemasResponse' {} a -> s {schemas = a} :: ListSchemasResponse) Prelude.. Lens.mapping Lens.coerced

-- | A token used to get the next set of schemas (if they exist).
listSchemasResponse_nextToken :: Lens.Lens' ListSchemasResponse (Prelude.Maybe Prelude.Text)
listSchemasResponse_nextToken = Lens.lens (\ListSchemasResponse' {nextToken} -> nextToken) (\s@ListSchemasResponse' {} a -> s {nextToken = a} :: ListSchemasResponse)

-- | The response's http status code.
listSchemasResponse_httpStatus :: Lens.Lens' ListSchemasResponse Prelude.Int
listSchemasResponse_httpStatus = Lens.lens (\ListSchemasResponse' {httpStatus} -> httpStatus) (\s@ListSchemasResponse' {} a -> s {httpStatus = a} :: ListSchemasResponse)

instance Prelude.NFData ListSchemasResponse
