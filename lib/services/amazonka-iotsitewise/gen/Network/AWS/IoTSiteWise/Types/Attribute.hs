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
-- Module      : Network.AWS.IoTSiteWise.Types.Attribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTSiteWise.Types.Attribute where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains an asset attribute property. For more information, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html#attributes Attributes>
-- in the /IoT SiteWise User Guide/.
--
-- /See:/ 'newAttribute' smart constructor.
data Attribute = Attribute'
  { -- | The default value of the asset model property attribute. All assets that
    -- you create from the asset model contain this attribute value. You can
    -- update an attribute\'s value after you create an asset. For more
    -- information, see
    -- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-attribute-values.html Updating attribute values>
    -- in the /IoT SiteWise User Guide/.
    defaultValue :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Attribute' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'defaultValue', 'attribute_defaultValue' - The default value of the asset model property attribute. All assets that
-- you create from the asset model contain this attribute value. You can
-- update an attribute\'s value after you create an asset. For more
-- information, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-attribute-values.html Updating attribute values>
-- in the /IoT SiteWise User Guide/.
newAttribute ::
  Attribute
newAttribute =
  Attribute' {defaultValue = Prelude.Nothing}

-- | The default value of the asset model property attribute. All assets that
-- you create from the asset model contain this attribute value. You can
-- update an attribute\'s value after you create an asset. For more
-- information, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-attribute-values.html Updating attribute values>
-- in the /IoT SiteWise User Guide/.
attribute_defaultValue :: Lens.Lens' Attribute (Prelude.Maybe Prelude.Text)
attribute_defaultValue = Lens.lens (\Attribute' {defaultValue} -> defaultValue) (\s@Attribute' {} a -> s {defaultValue = a} :: Attribute)

instance Core.FromJSON Attribute where
  parseJSON =
    Core.withObject
      "Attribute"
      ( \x ->
          Attribute' Prelude.<$> (x Core..:? "defaultValue")
      )

instance Prelude.Hashable Attribute

instance Prelude.NFData Attribute

instance Core.ToJSON Attribute where
  toJSON Attribute' {..} =
    Core.object
      ( Prelude.catMaybes
          [("defaultValue" Core..=) Prelude.<$> defaultValue]
      )
