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
-- Module      : Network.AWS.DataBrew.BatchDeleteRecipeVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes one or more versions of a recipe at a time.
--
-- The entire request will be rejected if:
--
-- -   The recipe does not exist.
--
-- -   There is an invalid version identifier in the list of versions.
--
-- -   The version list is empty.
--
-- -   The version list size exceeds 50.
--
-- -   The version list contains duplicate entries.
--
-- The request will complete successfully, but with partial failures, if:
--
-- -   A version does not exist.
--
-- -   A version is being used by a job.
--
-- -   You specify @LATEST_WORKING@, but it\'s being used by a project.
--
-- -   The version fails to be deleted.
--
-- The @LATEST_WORKING@ version will only be deleted if the recipe has no
-- other versions. If you try to delete @LATEST_WORKING@ while other
-- versions exist (or if they can\'t be deleted), then @LATEST_WORKING@
-- will be listed as partial failure in the response.
module Network.AWS.DataBrew.BatchDeleteRecipeVersion
  ( -- * Creating a Request
    BatchDeleteRecipeVersion (..),
    newBatchDeleteRecipeVersion,

    -- * Request Lenses
    batchDeleteRecipeVersion_name,
    batchDeleteRecipeVersion_recipeVersions,

    -- * Destructuring the Response
    BatchDeleteRecipeVersionResponse (..),
    newBatchDeleteRecipeVersionResponse,

    -- * Response Lenses
    batchDeleteRecipeVersionResponse_errors,
    batchDeleteRecipeVersionResponse_httpStatus,
    batchDeleteRecipeVersionResponse_name,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DataBrew.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newBatchDeleteRecipeVersion' smart constructor.
data BatchDeleteRecipeVersion = BatchDeleteRecipeVersion'
  { -- | The name of the recipe whose versions are to be deleted.
    name :: Prelude.Text,
    -- | An array of version identifiers, for the recipe versions to be deleted.
    -- You can specify numeric versions (@X.Y@) or @LATEST_WORKING@.
    -- @LATEST_PUBLISHED@ is not supported.
    recipeVersions :: Prelude.NonEmpty Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchDeleteRecipeVersion' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'batchDeleteRecipeVersion_name' - The name of the recipe whose versions are to be deleted.
--
-- 'recipeVersions', 'batchDeleteRecipeVersion_recipeVersions' - An array of version identifiers, for the recipe versions to be deleted.
-- You can specify numeric versions (@X.Y@) or @LATEST_WORKING@.
-- @LATEST_PUBLISHED@ is not supported.
newBatchDeleteRecipeVersion ::
  -- | 'name'
  Prelude.Text ->
  -- | 'recipeVersions'
  Prelude.NonEmpty Prelude.Text ->
  BatchDeleteRecipeVersion
newBatchDeleteRecipeVersion pName_ pRecipeVersions_ =
  BatchDeleteRecipeVersion'
    { name = pName_,
      recipeVersions =
        Lens.coerced Lens.# pRecipeVersions_
    }

-- | The name of the recipe whose versions are to be deleted.
batchDeleteRecipeVersion_name :: Lens.Lens' BatchDeleteRecipeVersion Prelude.Text
batchDeleteRecipeVersion_name = Lens.lens (\BatchDeleteRecipeVersion' {name} -> name) (\s@BatchDeleteRecipeVersion' {} a -> s {name = a} :: BatchDeleteRecipeVersion)

-- | An array of version identifiers, for the recipe versions to be deleted.
-- You can specify numeric versions (@X.Y@) or @LATEST_WORKING@.
-- @LATEST_PUBLISHED@ is not supported.
batchDeleteRecipeVersion_recipeVersions :: Lens.Lens' BatchDeleteRecipeVersion (Prelude.NonEmpty Prelude.Text)
batchDeleteRecipeVersion_recipeVersions = Lens.lens (\BatchDeleteRecipeVersion' {recipeVersions} -> recipeVersions) (\s@BatchDeleteRecipeVersion' {} a -> s {recipeVersions = a} :: BatchDeleteRecipeVersion) Prelude.. Lens.coerced

instance Core.AWSRequest BatchDeleteRecipeVersion where
  type
    AWSResponse BatchDeleteRecipeVersion =
      BatchDeleteRecipeVersionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchDeleteRecipeVersionResponse'
            Prelude.<$> (x Core..?> "Errors" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "Name")
      )

instance Prelude.Hashable BatchDeleteRecipeVersion

instance Prelude.NFData BatchDeleteRecipeVersion

instance Core.ToHeaders BatchDeleteRecipeVersion where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON BatchDeleteRecipeVersion where
  toJSON BatchDeleteRecipeVersion' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("RecipeVersions" Core..= recipeVersions)
          ]
      )

instance Core.ToPath BatchDeleteRecipeVersion where
  toPath BatchDeleteRecipeVersion' {..} =
    Prelude.mconcat
      [ "/recipes/",
        Core.toBS name,
        "/batchDeleteRecipeVersion"
      ]

instance Core.ToQuery BatchDeleteRecipeVersion where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newBatchDeleteRecipeVersionResponse' smart constructor.
data BatchDeleteRecipeVersionResponse = BatchDeleteRecipeVersionResponse'
  { -- | Errors, if any, that occurred while attempting to delete the recipe
    -- versions.
    errors :: Prelude.Maybe [RecipeVersionErrorDetail],
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The name of the recipe that was modified.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchDeleteRecipeVersionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'errors', 'batchDeleteRecipeVersionResponse_errors' - Errors, if any, that occurred while attempting to delete the recipe
-- versions.
--
-- 'httpStatus', 'batchDeleteRecipeVersionResponse_httpStatus' - The response's http status code.
--
-- 'name', 'batchDeleteRecipeVersionResponse_name' - The name of the recipe that was modified.
newBatchDeleteRecipeVersionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'name'
  Prelude.Text ->
  BatchDeleteRecipeVersionResponse
newBatchDeleteRecipeVersionResponse
  pHttpStatus_
  pName_ =
    BatchDeleteRecipeVersionResponse'
      { errors =
          Prelude.Nothing,
        httpStatus = pHttpStatus_,
        name = pName_
      }

-- | Errors, if any, that occurred while attempting to delete the recipe
-- versions.
batchDeleteRecipeVersionResponse_errors :: Lens.Lens' BatchDeleteRecipeVersionResponse (Prelude.Maybe [RecipeVersionErrorDetail])
batchDeleteRecipeVersionResponse_errors = Lens.lens (\BatchDeleteRecipeVersionResponse' {errors} -> errors) (\s@BatchDeleteRecipeVersionResponse' {} a -> s {errors = a} :: BatchDeleteRecipeVersionResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
batchDeleteRecipeVersionResponse_httpStatus :: Lens.Lens' BatchDeleteRecipeVersionResponse Prelude.Int
batchDeleteRecipeVersionResponse_httpStatus = Lens.lens (\BatchDeleteRecipeVersionResponse' {httpStatus} -> httpStatus) (\s@BatchDeleteRecipeVersionResponse' {} a -> s {httpStatus = a} :: BatchDeleteRecipeVersionResponse)

-- | The name of the recipe that was modified.
batchDeleteRecipeVersionResponse_name :: Lens.Lens' BatchDeleteRecipeVersionResponse Prelude.Text
batchDeleteRecipeVersionResponse_name = Lens.lens (\BatchDeleteRecipeVersionResponse' {name} -> name) (\s@BatchDeleteRecipeVersionResponse' {} a -> s {name = a} :: BatchDeleteRecipeVersionResponse)

instance
  Prelude.NFData
    BatchDeleteRecipeVersionResponse
