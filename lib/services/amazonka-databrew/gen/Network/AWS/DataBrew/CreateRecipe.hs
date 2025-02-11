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
-- Module      : Network.AWS.DataBrew.CreateRecipe
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new DataBrew recipe.
module Network.AWS.DataBrew.CreateRecipe
  ( -- * Creating a Request
    CreateRecipe (..),
    newCreateRecipe,

    -- * Request Lenses
    createRecipe_description,
    createRecipe_tags,
    createRecipe_name,
    createRecipe_steps,

    -- * Destructuring the Response
    CreateRecipeResponse (..),
    newCreateRecipeResponse,

    -- * Response Lenses
    createRecipeResponse_httpStatus,
    createRecipeResponse_name,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DataBrew.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateRecipe' smart constructor.
data CreateRecipe = CreateRecipe'
  { -- | A description for the recipe.
    description :: Prelude.Maybe Prelude.Text,
    -- | Metadata tags to apply to this recipe.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | A unique name for the recipe. Valid characters are alphanumeric (A-Z,
    -- a-z, 0-9), hyphen (-), period (.), and space.
    name :: Prelude.Text,
    -- | An array containing the steps to be performed by the recipe. Each recipe
    -- step consists of one recipe action and (optionally) an array of
    -- condition expressions.
    steps :: [RecipeStep]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateRecipe' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'description', 'createRecipe_description' - A description for the recipe.
--
-- 'tags', 'createRecipe_tags' - Metadata tags to apply to this recipe.
--
-- 'name', 'createRecipe_name' - A unique name for the recipe. Valid characters are alphanumeric (A-Z,
-- a-z, 0-9), hyphen (-), period (.), and space.
--
-- 'steps', 'createRecipe_steps' - An array containing the steps to be performed by the recipe. Each recipe
-- step consists of one recipe action and (optionally) an array of
-- condition expressions.
newCreateRecipe ::
  -- | 'name'
  Prelude.Text ->
  CreateRecipe
newCreateRecipe pName_ =
  CreateRecipe'
    { description = Prelude.Nothing,
      tags = Prelude.Nothing,
      name = pName_,
      steps = Prelude.mempty
    }

-- | A description for the recipe.
createRecipe_description :: Lens.Lens' CreateRecipe (Prelude.Maybe Prelude.Text)
createRecipe_description = Lens.lens (\CreateRecipe' {description} -> description) (\s@CreateRecipe' {} a -> s {description = a} :: CreateRecipe)

-- | Metadata tags to apply to this recipe.
createRecipe_tags :: Lens.Lens' CreateRecipe (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createRecipe_tags = Lens.lens (\CreateRecipe' {tags} -> tags) (\s@CreateRecipe' {} a -> s {tags = a} :: CreateRecipe) Prelude.. Lens.mapping Lens.coerced

-- | A unique name for the recipe. Valid characters are alphanumeric (A-Z,
-- a-z, 0-9), hyphen (-), period (.), and space.
createRecipe_name :: Lens.Lens' CreateRecipe Prelude.Text
createRecipe_name = Lens.lens (\CreateRecipe' {name} -> name) (\s@CreateRecipe' {} a -> s {name = a} :: CreateRecipe)

-- | An array containing the steps to be performed by the recipe. Each recipe
-- step consists of one recipe action and (optionally) an array of
-- condition expressions.
createRecipe_steps :: Lens.Lens' CreateRecipe [RecipeStep]
createRecipe_steps = Lens.lens (\CreateRecipe' {steps} -> steps) (\s@CreateRecipe' {} a -> s {steps = a} :: CreateRecipe) Prelude.. Lens.coerced

instance Core.AWSRequest CreateRecipe where
  type AWSResponse CreateRecipe = CreateRecipeResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateRecipeResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "Name")
      )

instance Prelude.Hashable CreateRecipe

instance Prelude.NFData CreateRecipe

instance Core.ToHeaders CreateRecipe where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateRecipe where
  toJSON CreateRecipe' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Description" Core..=) Prelude.<$> description,
            ("Tags" Core..=) Prelude.<$> tags,
            Prelude.Just ("Name" Core..= name),
            Prelude.Just ("Steps" Core..= steps)
          ]
      )

instance Core.ToPath CreateRecipe where
  toPath = Prelude.const "/recipes"

instance Core.ToQuery CreateRecipe where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateRecipeResponse' smart constructor.
data CreateRecipeResponse = CreateRecipeResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The name of the recipe that you created.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateRecipeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createRecipeResponse_httpStatus' - The response's http status code.
--
-- 'name', 'createRecipeResponse_name' - The name of the recipe that you created.
newCreateRecipeResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'name'
  Prelude.Text ->
  CreateRecipeResponse
newCreateRecipeResponse pHttpStatus_ pName_ =
  CreateRecipeResponse'
    { httpStatus = pHttpStatus_,
      name = pName_
    }

-- | The response's http status code.
createRecipeResponse_httpStatus :: Lens.Lens' CreateRecipeResponse Prelude.Int
createRecipeResponse_httpStatus = Lens.lens (\CreateRecipeResponse' {httpStatus} -> httpStatus) (\s@CreateRecipeResponse' {} a -> s {httpStatus = a} :: CreateRecipeResponse)

-- | The name of the recipe that you created.
createRecipeResponse_name :: Lens.Lens' CreateRecipeResponse Prelude.Text
createRecipeResponse_name = Lens.lens (\CreateRecipeResponse' {name} -> name) (\s@CreateRecipeResponse' {} a -> s {name = a} :: CreateRecipeResponse)

instance Prelude.NFData CreateRecipeResponse
