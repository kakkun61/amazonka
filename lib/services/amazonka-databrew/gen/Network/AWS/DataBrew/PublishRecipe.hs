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
-- Module      : Network.AWS.DataBrew.PublishRecipe
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Publishes a new version of a DataBrew recipe.
module Network.AWS.DataBrew.PublishRecipe
  ( -- * Creating a Request
    PublishRecipe (..),
    newPublishRecipe,

    -- * Request Lenses
    publishRecipe_description,
    publishRecipe_name,

    -- * Destructuring the Response
    PublishRecipeResponse (..),
    newPublishRecipeResponse,

    -- * Response Lenses
    publishRecipeResponse_httpStatus,
    publishRecipeResponse_name,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DataBrew.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newPublishRecipe' smart constructor.
data PublishRecipe = PublishRecipe'
  { -- | A description of the recipe to be published, for this version of the
    -- recipe.
    description :: Prelude.Maybe Prelude.Text,
    -- | The name of the recipe to be published.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PublishRecipe' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'description', 'publishRecipe_description' - A description of the recipe to be published, for this version of the
-- recipe.
--
-- 'name', 'publishRecipe_name' - The name of the recipe to be published.
newPublishRecipe ::
  -- | 'name'
  Prelude.Text ->
  PublishRecipe
newPublishRecipe pName_ =
  PublishRecipe'
    { description = Prelude.Nothing,
      name = pName_
    }

-- | A description of the recipe to be published, for this version of the
-- recipe.
publishRecipe_description :: Lens.Lens' PublishRecipe (Prelude.Maybe Prelude.Text)
publishRecipe_description = Lens.lens (\PublishRecipe' {description} -> description) (\s@PublishRecipe' {} a -> s {description = a} :: PublishRecipe)

-- | The name of the recipe to be published.
publishRecipe_name :: Lens.Lens' PublishRecipe Prelude.Text
publishRecipe_name = Lens.lens (\PublishRecipe' {name} -> name) (\s@PublishRecipe' {} a -> s {name = a} :: PublishRecipe)

instance Core.AWSRequest PublishRecipe where
  type
    AWSResponse PublishRecipe =
      PublishRecipeResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          PublishRecipeResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "Name")
      )

instance Prelude.Hashable PublishRecipe

instance Prelude.NFData PublishRecipe

instance Core.ToHeaders PublishRecipe where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON PublishRecipe where
  toJSON PublishRecipe' {..} =
    Core.object
      ( Prelude.catMaybes
          [("Description" Core..=) Prelude.<$> description]
      )

instance Core.ToPath PublishRecipe where
  toPath PublishRecipe' {..} =
    Prelude.mconcat
      ["/recipes/", Core.toBS name, "/publishRecipe"]

instance Core.ToQuery PublishRecipe where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newPublishRecipeResponse' smart constructor.
data PublishRecipeResponse = PublishRecipeResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The name of the recipe that you published.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PublishRecipeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'publishRecipeResponse_httpStatus' - The response's http status code.
--
-- 'name', 'publishRecipeResponse_name' - The name of the recipe that you published.
newPublishRecipeResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'name'
  Prelude.Text ->
  PublishRecipeResponse
newPublishRecipeResponse pHttpStatus_ pName_ =
  PublishRecipeResponse'
    { httpStatus = pHttpStatus_,
      name = pName_
    }

-- | The response's http status code.
publishRecipeResponse_httpStatus :: Lens.Lens' PublishRecipeResponse Prelude.Int
publishRecipeResponse_httpStatus = Lens.lens (\PublishRecipeResponse' {httpStatus} -> httpStatus) (\s@PublishRecipeResponse' {} a -> s {httpStatus = a} :: PublishRecipeResponse)

-- | The name of the recipe that you published.
publishRecipeResponse_name :: Lens.Lens' PublishRecipeResponse Prelude.Text
publishRecipeResponse_name = Lens.lens (\PublishRecipeResponse' {name} -> name) (\s@PublishRecipeResponse' {} a -> s {name = a} :: PublishRecipeResponse)

instance Prelude.NFData PublishRecipeResponse
