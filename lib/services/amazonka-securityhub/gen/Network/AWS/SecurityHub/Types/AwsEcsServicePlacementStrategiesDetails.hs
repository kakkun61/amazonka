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
-- Module      : Network.AWS.SecurityHub.Types.AwsEcsServicePlacementStrategiesDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsEcsServicePlacementStrategiesDetails where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A placement strategy that determines how to place the tasks for the
-- service.
--
-- /See:/ 'newAwsEcsServicePlacementStrategiesDetails' smart constructor.
data AwsEcsServicePlacementStrategiesDetails = AwsEcsServicePlacementStrategiesDetails'
  { -- | The field to apply the placement strategy against.
    --
    -- For the @spread@ placement strategy, valid values are @instanceId@ (or
    -- @host@, which has the same effect), or any platform or custom attribute
    -- that is applied to a container instance, such as
    -- @attribute:ecs.availability-zone@.
    --
    -- For the @binpack@ placement strategy, valid values are @cpu@ and
    -- @memory@.
    --
    -- For the @random@ placement strategy, this attribute is not used.
    field :: Prelude.Maybe Prelude.Text,
    -- | The type of placement strategy.
    --
    -- The @random@ placement strategy randomly places tasks on available
    -- candidates.
    --
    -- The @spread@ placement strategy spreads placement across available
    -- candidates evenly based on the value of @Field@.
    --
    -- The @binpack@ strategy places tasks on available candidates that have
    -- the least available amount of the resource that is specified in @Field@.
    --
    -- Valid values: @random@ | @spread@ | @binpack@
    type' :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsEcsServicePlacementStrategiesDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'field', 'awsEcsServicePlacementStrategiesDetails_field' - The field to apply the placement strategy against.
--
-- For the @spread@ placement strategy, valid values are @instanceId@ (or
-- @host@, which has the same effect), or any platform or custom attribute
-- that is applied to a container instance, such as
-- @attribute:ecs.availability-zone@.
--
-- For the @binpack@ placement strategy, valid values are @cpu@ and
-- @memory@.
--
-- For the @random@ placement strategy, this attribute is not used.
--
-- 'type'', 'awsEcsServicePlacementStrategiesDetails_type' - The type of placement strategy.
--
-- The @random@ placement strategy randomly places tasks on available
-- candidates.
--
-- The @spread@ placement strategy spreads placement across available
-- candidates evenly based on the value of @Field@.
--
-- The @binpack@ strategy places tasks on available candidates that have
-- the least available amount of the resource that is specified in @Field@.
--
-- Valid values: @random@ | @spread@ | @binpack@
newAwsEcsServicePlacementStrategiesDetails ::
  AwsEcsServicePlacementStrategiesDetails
newAwsEcsServicePlacementStrategiesDetails =
  AwsEcsServicePlacementStrategiesDetails'
    { field =
        Prelude.Nothing,
      type' = Prelude.Nothing
    }

-- | The field to apply the placement strategy against.
--
-- For the @spread@ placement strategy, valid values are @instanceId@ (or
-- @host@, which has the same effect), or any platform or custom attribute
-- that is applied to a container instance, such as
-- @attribute:ecs.availability-zone@.
--
-- For the @binpack@ placement strategy, valid values are @cpu@ and
-- @memory@.
--
-- For the @random@ placement strategy, this attribute is not used.
awsEcsServicePlacementStrategiesDetails_field :: Lens.Lens' AwsEcsServicePlacementStrategiesDetails (Prelude.Maybe Prelude.Text)
awsEcsServicePlacementStrategiesDetails_field = Lens.lens (\AwsEcsServicePlacementStrategiesDetails' {field} -> field) (\s@AwsEcsServicePlacementStrategiesDetails' {} a -> s {field = a} :: AwsEcsServicePlacementStrategiesDetails)

-- | The type of placement strategy.
--
-- The @random@ placement strategy randomly places tasks on available
-- candidates.
--
-- The @spread@ placement strategy spreads placement across available
-- candidates evenly based on the value of @Field@.
--
-- The @binpack@ strategy places tasks on available candidates that have
-- the least available amount of the resource that is specified in @Field@.
--
-- Valid values: @random@ | @spread@ | @binpack@
awsEcsServicePlacementStrategiesDetails_type :: Lens.Lens' AwsEcsServicePlacementStrategiesDetails (Prelude.Maybe Prelude.Text)
awsEcsServicePlacementStrategiesDetails_type = Lens.lens (\AwsEcsServicePlacementStrategiesDetails' {type'} -> type') (\s@AwsEcsServicePlacementStrategiesDetails' {} a -> s {type' = a} :: AwsEcsServicePlacementStrategiesDetails)

instance
  Core.FromJSON
    AwsEcsServicePlacementStrategiesDetails
  where
  parseJSON =
    Core.withObject
      "AwsEcsServicePlacementStrategiesDetails"
      ( \x ->
          AwsEcsServicePlacementStrategiesDetails'
            Prelude.<$> (x Core..:? "Field") Prelude.<*> (x Core..:? "Type")
      )

instance
  Prelude.Hashable
    AwsEcsServicePlacementStrategiesDetails

instance
  Prelude.NFData
    AwsEcsServicePlacementStrategiesDetails

instance
  Core.ToJSON
    AwsEcsServicePlacementStrategiesDetails
  where
  toJSON AwsEcsServicePlacementStrategiesDetails' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Field" Core..=) Prelude.<$> field,
            ("Type" Core..=) Prelude.<$> type'
          ]
      )
