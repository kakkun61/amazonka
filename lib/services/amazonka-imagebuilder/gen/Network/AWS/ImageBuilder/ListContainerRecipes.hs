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
-- Module      : Network.AWS.ImageBuilder.ListContainerRecipes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of container recipes.
module Network.AWS.ImageBuilder.ListContainerRecipes
  ( -- * Creating a Request
    ListContainerRecipes (..),
    newListContainerRecipes,

    -- * Request Lenses
    listContainerRecipes_filters,
    listContainerRecipes_owner,
    listContainerRecipes_nextToken,
    listContainerRecipes_maxResults,

    -- * Destructuring the Response
    ListContainerRecipesResponse (..),
    newListContainerRecipesResponse,

    -- * Response Lenses
    listContainerRecipesResponse_requestId,
    listContainerRecipesResponse_containerRecipeSummaryList,
    listContainerRecipesResponse_nextToken,
    listContainerRecipesResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.ImageBuilder.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListContainerRecipes' smart constructor.
data ListContainerRecipes = ListContainerRecipes'
  { -- | Use the following filters to streamline results:
    --
    -- -   @containerType@
    --
    -- -   @name@
    --
    -- -   @parentImage@
    --
    -- -   @platform@
    filters :: Prelude.Maybe (Prelude.NonEmpty Filter),
    -- | Returns container recipes belonging to the specified owner, that have
    -- been shared with you. You can omit this field to return container
    -- recipes belonging to your account.
    owner :: Prelude.Maybe Ownership,
    -- | Provides a token for pagination, which determines where to begin the
    -- next set of results when the current set reaches the maximum for one
    -- request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return in the list.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListContainerRecipes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'filters', 'listContainerRecipes_filters' - Use the following filters to streamline results:
--
-- -   @containerType@
--
-- -   @name@
--
-- -   @parentImage@
--
-- -   @platform@
--
-- 'owner', 'listContainerRecipes_owner' - Returns container recipes belonging to the specified owner, that have
-- been shared with you. You can omit this field to return container
-- recipes belonging to your account.
--
-- 'nextToken', 'listContainerRecipes_nextToken' - Provides a token for pagination, which determines where to begin the
-- next set of results when the current set reaches the maximum for one
-- request.
--
-- 'maxResults', 'listContainerRecipes_maxResults' - The maximum number of results to return in the list.
newListContainerRecipes ::
  ListContainerRecipes
newListContainerRecipes =
  ListContainerRecipes'
    { filters = Prelude.Nothing,
      owner = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | Use the following filters to streamline results:
--
-- -   @containerType@
--
-- -   @name@
--
-- -   @parentImage@
--
-- -   @platform@
listContainerRecipes_filters :: Lens.Lens' ListContainerRecipes (Prelude.Maybe (Prelude.NonEmpty Filter))
listContainerRecipes_filters = Lens.lens (\ListContainerRecipes' {filters} -> filters) (\s@ListContainerRecipes' {} a -> s {filters = a} :: ListContainerRecipes) Prelude.. Lens.mapping Lens.coerced

-- | Returns container recipes belonging to the specified owner, that have
-- been shared with you. You can omit this field to return container
-- recipes belonging to your account.
listContainerRecipes_owner :: Lens.Lens' ListContainerRecipes (Prelude.Maybe Ownership)
listContainerRecipes_owner = Lens.lens (\ListContainerRecipes' {owner} -> owner) (\s@ListContainerRecipes' {} a -> s {owner = a} :: ListContainerRecipes)

-- | Provides a token for pagination, which determines where to begin the
-- next set of results when the current set reaches the maximum for one
-- request.
listContainerRecipes_nextToken :: Lens.Lens' ListContainerRecipes (Prelude.Maybe Prelude.Text)
listContainerRecipes_nextToken = Lens.lens (\ListContainerRecipes' {nextToken} -> nextToken) (\s@ListContainerRecipes' {} a -> s {nextToken = a} :: ListContainerRecipes)

-- | The maximum number of results to return in the list.
listContainerRecipes_maxResults :: Lens.Lens' ListContainerRecipes (Prelude.Maybe Prelude.Natural)
listContainerRecipes_maxResults = Lens.lens (\ListContainerRecipes' {maxResults} -> maxResults) (\s@ListContainerRecipes' {} a -> s {maxResults = a} :: ListContainerRecipes)

instance Core.AWSRequest ListContainerRecipes where
  type
    AWSResponse ListContainerRecipes =
      ListContainerRecipesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListContainerRecipesResponse'
            Prelude.<$> (x Core..?> "requestId")
            Prelude.<*> ( x Core..?> "containerRecipeSummaryList"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListContainerRecipes

instance Prelude.NFData ListContainerRecipes

instance Core.ToHeaders ListContainerRecipes where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListContainerRecipes where
  toJSON ListContainerRecipes' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("filters" Core..=) Prelude.<$> filters,
            ("owner" Core..=) Prelude.<$> owner,
            ("nextToken" Core..=) Prelude.<$> nextToken,
            ("maxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListContainerRecipes where
  toPath = Prelude.const "/ListContainerRecipes"

instance Core.ToQuery ListContainerRecipes where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListContainerRecipesResponse' smart constructor.
data ListContainerRecipesResponse = ListContainerRecipesResponse'
  { -- | The request ID that uniquely identifies this request.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The list of container recipes returned for the request.
    containerRecipeSummaryList :: Prelude.Maybe [ContainerRecipeSummary],
    -- | The next token field is used for paginated responses. When this is not
    -- empty, there are additional container recipes that the service has not
    -- included in this response. Use this token with the next request to
    -- retrieve additional list items.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListContainerRecipesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'listContainerRecipesResponse_requestId' - The request ID that uniquely identifies this request.
--
-- 'containerRecipeSummaryList', 'listContainerRecipesResponse_containerRecipeSummaryList' - The list of container recipes returned for the request.
--
-- 'nextToken', 'listContainerRecipesResponse_nextToken' - The next token field is used for paginated responses. When this is not
-- empty, there are additional container recipes that the service has not
-- included in this response. Use this token with the next request to
-- retrieve additional list items.
--
-- 'httpStatus', 'listContainerRecipesResponse_httpStatus' - The response's http status code.
newListContainerRecipesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListContainerRecipesResponse
newListContainerRecipesResponse pHttpStatus_ =
  ListContainerRecipesResponse'
    { requestId =
        Prelude.Nothing,
      containerRecipeSummaryList = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The request ID that uniquely identifies this request.
listContainerRecipesResponse_requestId :: Lens.Lens' ListContainerRecipesResponse (Prelude.Maybe Prelude.Text)
listContainerRecipesResponse_requestId = Lens.lens (\ListContainerRecipesResponse' {requestId} -> requestId) (\s@ListContainerRecipesResponse' {} a -> s {requestId = a} :: ListContainerRecipesResponse)

-- | The list of container recipes returned for the request.
listContainerRecipesResponse_containerRecipeSummaryList :: Lens.Lens' ListContainerRecipesResponse (Prelude.Maybe [ContainerRecipeSummary])
listContainerRecipesResponse_containerRecipeSummaryList = Lens.lens (\ListContainerRecipesResponse' {containerRecipeSummaryList} -> containerRecipeSummaryList) (\s@ListContainerRecipesResponse' {} a -> s {containerRecipeSummaryList = a} :: ListContainerRecipesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The next token field is used for paginated responses. When this is not
-- empty, there are additional container recipes that the service has not
-- included in this response. Use this token with the next request to
-- retrieve additional list items.
listContainerRecipesResponse_nextToken :: Lens.Lens' ListContainerRecipesResponse (Prelude.Maybe Prelude.Text)
listContainerRecipesResponse_nextToken = Lens.lens (\ListContainerRecipesResponse' {nextToken} -> nextToken) (\s@ListContainerRecipesResponse' {} a -> s {nextToken = a} :: ListContainerRecipesResponse)

-- | The response's http status code.
listContainerRecipesResponse_httpStatus :: Lens.Lens' ListContainerRecipesResponse Prelude.Int
listContainerRecipesResponse_httpStatus = Lens.lens (\ListContainerRecipesResponse' {httpStatus} -> httpStatus) (\s@ListContainerRecipesResponse' {} a -> s {httpStatus = a} :: ListContainerRecipesResponse)

instance Prelude.NFData ListContainerRecipesResponse
