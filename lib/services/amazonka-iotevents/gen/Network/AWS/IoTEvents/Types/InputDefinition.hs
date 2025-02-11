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
-- Module      : Network.AWS.IoTEvents.Types.InputDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTEvents.Types.InputDefinition where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTEvents.Types.Attribute
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The definition of the input.
--
-- /See:/ 'newInputDefinition' smart constructor.
data InputDefinition = InputDefinition'
  { -- | The attributes from the JSON payload that are made available by the
    -- input. Inputs are derived from messages sent to the AWS IoT Events
    -- system using @BatchPutMessage@. Each such message contains a JSON
    -- payload, and those attributes (and their paired values) specified here
    -- are available for use in the @condition@ expressions used by detectors
    -- that monitor this input.
    attributes :: Prelude.NonEmpty Attribute
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InputDefinition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'attributes', 'inputDefinition_attributes' - The attributes from the JSON payload that are made available by the
-- input. Inputs are derived from messages sent to the AWS IoT Events
-- system using @BatchPutMessage@. Each such message contains a JSON
-- payload, and those attributes (and their paired values) specified here
-- are available for use in the @condition@ expressions used by detectors
-- that monitor this input.
newInputDefinition ::
  -- | 'attributes'
  Prelude.NonEmpty Attribute ->
  InputDefinition
newInputDefinition pAttributes_ =
  InputDefinition'
    { attributes =
        Lens.coerced Lens.# pAttributes_
    }

-- | The attributes from the JSON payload that are made available by the
-- input. Inputs are derived from messages sent to the AWS IoT Events
-- system using @BatchPutMessage@. Each such message contains a JSON
-- payload, and those attributes (and their paired values) specified here
-- are available for use in the @condition@ expressions used by detectors
-- that monitor this input.
inputDefinition_attributes :: Lens.Lens' InputDefinition (Prelude.NonEmpty Attribute)
inputDefinition_attributes = Lens.lens (\InputDefinition' {attributes} -> attributes) (\s@InputDefinition' {} a -> s {attributes = a} :: InputDefinition) Prelude.. Lens.coerced

instance Core.FromJSON InputDefinition where
  parseJSON =
    Core.withObject
      "InputDefinition"
      ( \x ->
          InputDefinition'
            Prelude.<$> (x Core..: "attributes")
      )

instance Prelude.Hashable InputDefinition

instance Prelude.NFData InputDefinition

instance Core.ToJSON InputDefinition where
  toJSON InputDefinition' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("attributes" Core..= attributes)]
      )
