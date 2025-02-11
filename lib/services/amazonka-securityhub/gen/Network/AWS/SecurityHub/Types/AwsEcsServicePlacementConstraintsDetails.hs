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
-- Module      : Network.AWS.SecurityHub.Types.AwsEcsServicePlacementConstraintsDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsEcsServicePlacementConstraintsDetails where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A placement constraint for the tasks in the service.
--
-- /See:/ 'newAwsEcsServicePlacementConstraintsDetails' smart constructor.
data AwsEcsServicePlacementConstraintsDetails = AwsEcsServicePlacementConstraintsDetails'
  { -- | A cluster query language expression to apply to the constraint. You
    -- cannot specify an expression if the constraint type is
    -- @distinctInstance@.
    expression :: Prelude.Maybe Prelude.Text,
    -- | The type of constraint. Use @distinctInstance@ to run each task in a
    -- particular group on a different container instance. Use @memberOf@ to
    -- restrict the selection to a group of valid candidates.
    --
    -- Valid values: @distinctInstance@ | @memberOf@
    type' :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsEcsServicePlacementConstraintsDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'expression', 'awsEcsServicePlacementConstraintsDetails_expression' - A cluster query language expression to apply to the constraint. You
-- cannot specify an expression if the constraint type is
-- @distinctInstance@.
--
-- 'type'', 'awsEcsServicePlacementConstraintsDetails_type' - The type of constraint. Use @distinctInstance@ to run each task in a
-- particular group on a different container instance. Use @memberOf@ to
-- restrict the selection to a group of valid candidates.
--
-- Valid values: @distinctInstance@ | @memberOf@
newAwsEcsServicePlacementConstraintsDetails ::
  AwsEcsServicePlacementConstraintsDetails
newAwsEcsServicePlacementConstraintsDetails =
  AwsEcsServicePlacementConstraintsDetails'
    { expression =
        Prelude.Nothing,
      type' = Prelude.Nothing
    }

-- | A cluster query language expression to apply to the constraint. You
-- cannot specify an expression if the constraint type is
-- @distinctInstance@.
awsEcsServicePlacementConstraintsDetails_expression :: Lens.Lens' AwsEcsServicePlacementConstraintsDetails (Prelude.Maybe Prelude.Text)
awsEcsServicePlacementConstraintsDetails_expression = Lens.lens (\AwsEcsServicePlacementConstraintsDetails' {expression} -> expression) (\s@AwsEcsServicePlacementConstraintsDetails' {} a -> s {expression = a} :: AwsEcsServicePlacementConstraintsDetails)

-- | The type of constraint. Use @distinctInstance@ to run each task in a
-- particular group on a different container instance. Use @memberOf@ to
-- restrict the selection to a group of valid candidates.
--
-- Valid values: @distinctInstance@ | @memberOf@
awsEcsServicePlacementConstraintsDetails_type :: Lens.Lens' AwsEcsServicePlacementConstraintsDetails (Prelude.Maybe Prelude.Text)
awsEcsServicePlacementConstraintsDetails_type = Lens.lens (\AwsEcsServicePlacementConstraintsDetails' {type'} -> type') (\s@AwsEcsServicePlacementConstraintsDetails' {} a -> s {type' = a} :: AwsEcsServicePlacementConstraintsDetails)

instance
  Core.FromJSON
    AwsEcsServicePlacementConstraintsDetails
  where
  parseJSON =
    Core.withObject
      "AwsEcsServicePlacementConstraintsDetails"
      ( \x ->
          AwsEcsServicePlacementConstraintsDetails'
            Prelude.<$> (x Core..:? "Expression")
            Prelude.<*> (x Core..:? "Type")
      )

instance
  Prelude.Hashable
    AwsEcsServicePlacementConstraintsDetails

instance
  Prelude.NFData
    AwsEcsServicePlacementConstraintsDetails

instance
  Core.ToJSON
    AwsEcsServicePlacementConstraintsDetails
  where
  toJSON AwsEcsServicePlacementConstraintsDetails' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Expression" Core..=) Prelude.<$> expression,
            ("Type" Core..=) Prelude.<$> type'
          ]
      )
