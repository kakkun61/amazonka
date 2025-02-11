{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DataBrew.Types.RecipeAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DataBrew.Types.RecipeAction where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Represents a transformation and associated parameters that are used to
-- apply a change to a DataBrew dataset. For more information, see
-- <https://docs.aws.amazon.com/databrew/latest/dg/recipe-actions-reference.html Recipe actions reference>.
--
-- /See:/ 'newRecipeAction' smart constructor.
data RecipeAction = RecipeAction'
  { -- | Contextual parameters for the transformation.
    parameters :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of a valid DataBrew transformation to be performed on the data.
    operation :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RecipeAction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'parameters', 'recipeAction_parameters' - Contextual parameters for the transformation.
--
-- 'operation', 'recipeAction_operation' - The name of a valid DataBrew transformation to be performed on the data.
newRecipeAction ::
  -- | 'operation'
  Prelude.Text ->
  RecipeAction
newRecipeAction pOperation_ =
  RecipeAction'
    { parameters = Prelude.Nothing,
      operation = pOperation_
    }

-- | Contextual parameters for the transformation.
recipeAction_parameters :: Lens.Lens' RecipeAction (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
recipeAction_parameters = Lens.lens (\RecipeAction' {parameters} -> parameters) (\s@RecipeAction' {} a -> s {parameters = a} :: RecipeAction) Prelude.. Lens.mapping Lens.coerced

-- | The name of a valid DataBrew transformation to be performed on the data.
recipeAction_operation :: Lens.Lens' RecipeAction Prelude.Text
recipeAction_operation = Lens.lens (\RecipeAction' {operation} -> operation) (\s@RecipeAction' {} a -> s {operation = a} :: RecipeAction)

instance Core.FromJSON RecipeAction where
  parseJSON =
    Core.withObject
      "RecipeAction"
      ( \x ->
          RecipeAction'
            Prelude.<$> (x Core..:? "Parameters" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..: "Operation")
      )

instance Prelude.Hashable RecipeAction

instance Prelude.NFData RecipeAction

instance Core.ToJSON RecipeAction where
  toJSON RecipeAction' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Parameters" Core..=) Prelude.<$> parameters,
            Prelude.Just ("Operation" Core..= operation)
          ]
      )
