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
-- Module      : Network.AWS.IoTSiteWise.Types.VariableValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTSiteWise.Types.VariableValue where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Identifies a property value used in an expression.
--
-- /See:/ 'newVariableValue' smart constructor.
data VariableValue = VariableValue'
  { -- | The ID of the hierarchy to query for the property ID. You can use the
    -- hierarchy\'s name instead of the hierarchy\'s ID.
    --
    -- You use a hierarchy ID instead of a model ID because you can have
    -- several hierarchies using the same model and therefore the same
    -- @propertyId@. For example, you might have separately grouped assets that
    -- come from the same asset model. For more information, see
    -- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html Asset hierarchies>
    -- in the /IoT SiteWise User Guide/.
    hierarchyId :: Prelude.Maybe Prelude.Text,
    -- | The ID of the property to use as the variable. You can use the property
    -- @name@ if it\'s from the same asset model.
    propertyId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VariableValue' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'hierarchyId', 'variableValue_hierarchyId' - The ID of the hierarchy to query for the property ID. You can use the
-- hierarchy\'s name instead of the hierarchy\'s ID.
--
-- You use a hierarchy ID instead of a model ID because you can have
-- several hierarchies using the same model and therefore the same
-- @propertyId@. For example, you might have separately grouped assets that
-- come from the same asset model. For more information, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html Asset hierarchies>
-- in the /IoT SiteWise User Guide/.
--
-- 'propertyId', 'variableValue_propertyId' - The ID of the property to use as the variable. You can use the property
-- @name@ if it\'s from the same asset model.
newVariableValue ::
  -- | 'propertyId'
  Prelude.Text ->
  VariableValue
newVariableValue pPropertyId_ =
  VariableValue'
    { hierarchyId = Prelude.Nothing,
      propertyId = pPropertyId_
    }

-- | The ID of the hierarchy to query for the property ID. You can use the
-- hierarchy\'s name instead of the hierarchy\'s ID.
--
-- You use a hierarchy ID instead of a model ID because you can have
-- several hierarchies using the same model and therefore the same
-- @propertyId@. For example, you might have separately grouped assets that
-- come from the same asset model. For more information, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html Asset hierarchies>
-- in the /IoT SiteWise User Guide/.
variableValue_hierarchyId :: Lens.Lens' VariableValue (Prelude.Maybe Prelude.Text)
variableValue_hierarchyId = Lens.lens (\VariableValue' {hierarchyId} -> hierarchyId) (\s@VariableValue' {} a -> s {hierarchyId = a} :: VariableValue)

-- | The ID of the property to use as the variable. You can use the property
-- @name@ if it\'s from the same asset model.
variableValue_propertyId :: Lens.Lens' VariableValue Prelude.Text
variableValue_propertyId = Lens.lens (\VariableValue' {propertyId} -> propertyId) (\s@VariableValue' {} a -> s {propertyId = a} :: VariableValue)

instance Core.FromJSON VariableValue where
  parseJSON =
    Core.withObject
      "VariableValue"
      ( \x ->
          VariableValue'
            Prelude.<$> (x Core..:? "hierarchyId")
            Prelude.<*> (x Core..: "propertyId")
      )

instance Prelude.Hashable VariableValue

instance Prelude.NFData VariableValue

instance Core.ToJSON VariableValue where
  toJSON VariableValue' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("hierarchyId" Core..=) Prelude.<$> hierarchyId,
            Prelude.Just ("propertyId" Core..= propertyId)
          ]
      )
