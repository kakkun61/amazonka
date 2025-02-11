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
-- Module      : Network.AWS.IoTSiteWise.Types.AssetProperty
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTSiteWise.Types.AssetProperty where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTSiteWise.Types.PropertyDataType
import Network.AWS.IoTSiteWise.Types.PropertyNotification
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains asset property information.
--
-- /See:/ 'newAssetProperty' smart constructor.
data AssetProperty = AssetProperty'
  { -- | The data type of the structure for this property. This parameter exists
    -- on properties that have the @STRUCT@ data type.
    dataTypeSpec :: Prelude.Maybe Prelude.Text,
    -- | The asset property\'s notification topic and state. For more
    -- information, see
    -- <https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html UpdateAssetProperty>.
    notification :: Prelude.Maybe PropertyNotification,
    -- | The alias that identifies the property, such as an OPC-UA server data
    -- stream path (for example,
    -- @\/company\/windfarm\/3\/turbine\/7\/temperature@). For more
    -- information, see
    -- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html Mapping industrial data streams to asset properties>
    -- in the /IoT SiteWise User Guide/.
    alias :: Prelude.Maybe Prelude.Text,
    -- | The unit (such as @Newtons@ or @RPM@) of the asset property.
    unit :: Prelude.Maybe Prelude.Text,
    -- | The ID of the asset property.
    id :: Prelude.Text,
    -- | The name of the property.
    name :: Prelude.Text,
    -- | The data type of the asset property.
    dataType :: PropertyDataType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssetProperty' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dataTypeSpec', 'assetProperty_dataTypeSpec' - The data type of the structure for this property. This parameter exists
-- on properties that have the @STRUCT@ data type.
--
-- 'notification', 'assetProperty_notification' - The asset property\'s notification topic and state. For more
-- information, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html UpdateAssetProperty>.
--
-- 'alias', 'assetProperty_alias' - The alias that identifies the property, such as an OPC-UA server data
-- stream path (for example,
-- @\/company\/windfarm\/3\/turbine\/7\/temperature@). For more
-- information, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html Mapping industrial data streams to asset properties>
-- in the /IoT SiteWise User Guide/.
--
-- 'unit', 'assetProperty_unit' - The unit (such as @Newtons@ or @RPM@) of the asset property.
--
-- 'id', 'assetProperty_id' - The ID of the asset property.
--
-- 'name', 'assetProperty_name' - The name of the property.
--
-- 'dataType', 'assetProperty_dataType' - The data type of the asset property.
newAssetProperty ::
  -- | 'id'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  -- | 'dataType'
  PropertyDataType ->
  AssetProperty
newAssetProperty pId_ pName_ pDataType_ =
  AssetProperty'
    { dataTypeSpec = Prelude.Nothing,
      notification = Prelude.Nothing,
      alias = Prelude.Nothing,
      unit = Prelude.Nothing,
      id = pId_,
      name = pName_,
      dataType = pDataType_
    }

-- | The data type of the structure for this property. This parameter exists
-- on properties that have the @STRUCT@ data type.
assetProperty_dataTypeSpec :: Lens.Lens' AssetProperty (Prelude.Maybe Prelude.Text)
assetProperty_dataTypeSpec = Lens.lens (\AssetProperty' {dataTypeSpec} -> dataTypeSpec) (\s@AssetProperty' {} a -> s {dataTypeSpec = a} :: AssetProperty)

-- | The asset property\'s notification topic and state. For more
-- information, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html UpdateAssetProperty>.
assetProperty_notification :: Lens.Lens' AssetProperty (Prelude.Maybe PropertyNotification)
assetProperty_notification = Lens.lens (\AssetProperty' {notification} -> notification) (\s@AssetProperty' {} a -> s {notification = a} :: AssetProperty)

-- | The alias that identifies the property, such as an OPC-UA server data
-- stream path (for example,
-- @\/company\/windfarm\/3\/turbine\/7\/temperature@). For more
-- information, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html Mapping industrial data streams to asset properties>
-- in the /IoT SiteWise User Guide/.
assetProperty_alias :: Lens.Lens' AssetProperty (Prelude.Maybe Prelude.Text)
assetProperty_alias = Lens.lens (\AssetProperty' {alias} -> alias) (\s@AssetProperty' {} a -> s {alias = a} :: AssetProperty)

-- | The unit (such as @Newtons@ or @RPM@) of the asset property.
assetProperty_unit :: Lens.Lens' AssetProperty (Prelude.Maybe Prelude.Text)
assetProperty_unit = Lens.lens (\AssetProperty' {unit} -> unit) (\s@AssetProperty' {} a -> s {unit = a} :: AssetProperty)

-- | The ID of the asset property.
assetProperty_id :: Lens.Lens' AssetProperty Prelude.Text
assetProperty_id = Lens.lens (\AssetProperty' {id} -> id) (\s@AssetProperty' {} a -> s {id = a} :: AssetProperty)

-- | The name of the property.
assetProperty_name :: Lens.Lens' AssetProperty Prelude.Text
assetProperty_name = Lens.lens (\AssetProperty' {name} -> name) (\s@AssetProperty' {} a -> s {name = a} :: AssetProperty)

-- | The data type of the asset property.
assetProperty_dataType :: Lens.Lens' AssetProperty PropertyDataType
assetProperty_dataType = Lens.lens (\AssetProperty' {dataType} -> dataType) (\s@AssetProperty' {} a -> s {dataType = a} :: AssetProperty)

instance Core.FromJSON AssetProperty where
  parseJSON =
    Core.withObject
      "AssetProperty"
      ( \x ->
          AssetProperty'
            Prelude.<$> (x Core..:? "dataTypeSpec")
            Prelude.<*> (x Core..:? "notification")
            Prelude.<*> (x Core..:? "alias")
            Prelude.<*> (x Core..:? "unit")
            Prelude.<*> (x Core..: "id")
            Prelude.<*> (x Core..: "name")
            Prelude.<*> (x Core..: "dataType")
      )

instance Prelude.Hashable AssetProperty

instance Prelude.NFData AssetProperty
