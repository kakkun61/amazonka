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
-- Module      : Network.AWS.DataBrew.ListRecipes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all of the DataBrew recipes that are defined.
--
-- This operation returns paginated results.
module Network.AWS.DataBrew.ListRecipes
  ( -- * Creating a Request
    ListRecipes (..),
    newListRecipes,

    -- * Request Lenses
    listRecipes_nextToken,
    listRecipes_recipeVersion,
    listRecipes_maxResults,

    -- * Destructuring the Response
    ListRecipesResponse (..),
    newListRecipesResponse,

    -- * Response Lenses
    listRecipesResponse_nextToken,
    listRecipesResponse_httpStatus,
    listRecipesResponse_recipes,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DataBrew.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListRecipes' smart constructor.
data ListRecipes = ListRecipes'
  { -- | The token returned by a previous call to retrieve the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Return only those recipes with a version identifier of @LATEST_WORKING@
    -- or @LATEST_PUBLISHED@. If @RecipeVersion@ is omitted, @ListRecipes@
    -- returns all of the @LATEST_PUBLISHED@ recipe versions.
    --
    -- Valid values: @LATEST_WORKING@ | @LATEST_PUBLISHED@
    recipeVersion :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return in this request.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListRecipes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listRecipes_nextToken' - The token returned by a previous call to retrieve the next set of
-- results.
--
-- 'recipeVersion', 'listRecipes_recipeVersion' - Return only those recipes with a version identifier of @LATEST_WORKING@
-- or @LATEST_PUBLISHED@. If @RecipeVersion@ is omitted, @ListRecipes@
-- returns all of the @LATEST_PUBLISHED@ recipe versions.
--
-- Valid values: @LATEST_WORKING@ | @LATEST_PUBLISHED@
--
-- 'maxResults', 'listRecipes_maxResults' - The maximum number of results to return in this request.
newListRecipes ::
  ListRecipes
newListRecipes =
  ListRecipes'
    { nextToken = Prelude.Nothing,
      recipeVersion = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The token returned by a previous call to retrieve the next set of
-- results.
listRecipes_nextToken :: Lens.Lens' ListRecipes (Prelude.Maybe Prelude.Text)
listRecipes_nextToken = Lens.lens (\ListRecipes' {nextToken} -> nextToken) (\s@ListRecipes' {} a -> s {nextToken = a} :: ListRecipes)

-- | Return only those recipes with a version identifier of @LATEST_WORKING@
-- or @LATEST_PUBLISHED@. If @RecipeVersion@ is omitted, @ListRecipes@
-- returns all of the @LATEST_PUBLISHED@ recipe versions.
--
-- Valid values: @LATEST_WORKING@ | @LATEST_PUBLISHED@
listRecipes_recipeVersion :: Lens.Lens' ListRecipes (Prelude.Maybe Prelude.Text)
listRecipes_recipeVersion = Lens.lens (\ListRecipes' {recipeVersion} -> recipeVersion) (\s@ListRecipes' {} a -> s {recipeVersion = a} :: ListRecipes)

-- | The maximum number of results to return in this request.
listRecipes_maxResults :: Lens.Lens' ListRecipes (Prelude.Maybe Prelude.Natural)
listRecipes_maxResults = Lens.lens (\ListRecipes' {maxResults} -> maxResults) (\s@ListRecipes' {} a -> s {maxResults = a} :: ListRecipes)

instance Core.AWSPager ListRecipes where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listRecipesResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop (rs Lens.^. listRecipesResponse_recipes) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listRecipes_nextToken
          Lens..~ rs
          Lens.^? listRecipesResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListRecipes where
  type AWSResponse ListRecipes = ListRecipesResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListRecipesResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "Recipes" Core..!@ Prelude.mempty)
      )

instance Prelude.Hashable ListRecipes

instance Prelude.NFData ListRecipes

instance Core.ToHeaders ListRecipes where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListRecipes where
  toPath = Prelude.const "/recipes"

instance Core.ToQuery ListRecipes where
  toQuery ListRecipes' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "recipeVersion" Core.=: recipeVersion,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListRecipesResponse' smart constructor.
data ListRecipesResponse = ListRecipesResponse'
  { -- | A token that you can use in a subsequent call to retrieve the next set
    -- of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A list of recipes that are defined.
    recipes :: [Recipe]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListRecipesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listRecipesResponse_nextToken' - A token that you can use in a subsequent call to retrieve the next set
-- of results.
--
-- 'httpStatus', 'listRecipesResponse_httpStatus' - The response's http status code.
--
-- 'recipes', 'listRecipesResponse_recipes' - A list of recipes that are defined.
newListRecipesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListRecipesResponse
newListRecipesResponse pHttpStatus_ =
  ListRecipesResponse'
    { nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_,
      recipes = Prelude.mempty
    }

-- | A token that you can use in a subsequent call to retrieve the next set
-- of results.
listRecipesResponse_nextToken :: Lens.Lens' ListRecipesResponse (Prelude.Maybe Prelude.Text)
listRecipesResponse_nextToken = Lens.lens (\ListRecipesResponse' {nextToken} -> nextToken) (\s@ListRecipesResponse' {} a -> s {nextToken = a} :: ListRecipesResponse)

-- | The response's http status code.
listRecipesResponse_httpStatus :: Lens.Lens' ListRecipesResponse Prelude.Int
listRecipesResponse_httpStatus = Lens.lens (\ListRecipesResponse' {httpStatus} -> httpStatus) (\s@ListRecipesResponse' {} a -> s {httpStatus = a} :: ListRecipesResponse)

-- | A list of recipes that are defined.
listRecipesResponse_recipes :: Lens.Lens' ListRecipesResponse [Recipe]
listRecipesResponse_recipes = Lens.lens (\ListRecipesResponse' {recipes} -> recipes) (\s@ListRecipesResponse' {} a -> s {recipes = a} :: ListRecipesResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListRecipesResponse
