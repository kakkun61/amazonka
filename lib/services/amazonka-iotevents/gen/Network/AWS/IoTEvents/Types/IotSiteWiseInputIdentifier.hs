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
-- Module      : Network.AWS.IoTEvents.Types.IotSiteWiseInputIdentifier
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTEvents.Types.IotSiteWiseInputIdentifier where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTEvents.Types.IotSiteWiseAssetModelPropertyIdentifier
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The identifer of the input routed from AWS IoT SiteWise.
--
-- /See:/ 'newIotSiteWiseInputIdentifier' smart constructor.
data IotSiteWiseInputIdentifier = IotSiteWiseInputIdentifier'
  { -- | The identifier of the AWS IoT SiteWise asset model property.
    iotSiteWiseAssetModelPropertyIdentifier :: Prelude.Maybe IotSiteWiseAssetModelPropertyIdentifier
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'IotSiteWiseInputIdentifier' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'iotSiteWiseAssetModelPropertyIdentifier', 'iotSiteWiseInputIdentifier_iotSiteWiseAssetModelPropertyIdentifier' - The identifier of the AWS IoT SiteWise asset model property.
newIotSiteWiseInputIdentifier ::
  IotSiteWiseInputIdentifier
newIotSiteWiseInputIdentifier =
  IotSiteWiseInputIdentifier'
    { iotSiteWiseAssetModelPropertyIdentifier =
        Prelude.Nothing
    }

-- | The identifier of the AWS IoT SiteWise asset model property.
iotSiteWiseInputIdentifier_iotSiteWiseAssetModelPropertyIdentifier :: Lens.Lens' IotSiteWiseInputIdentifier (Prelude.Maybe IotSiteWiseAssetModelPropertyIdentifier)
iotSiteWiseInputIdentifier_iotSiteWiseAssetModelPropertyIdentifier = Lens.lens (\IotSiteWiseInputIdentifier' {iotSiteWiseAssetModelPropertyIdentifier} -> iotSiteWiseAssetModelPropertyIdentifier) (\s@IotSiteWiseInputIdentifier' {} a -> s {iotSiteWiseAssetModelPropertyIdentifier = a} :: IotSiteWiseInputIdentifier)

instance Prelude.Hashable IotSiteWiseInputIdentifier

instance Prelude.NFData IotSiteWiseInputIdentifier

instance Core.ToJSON IotSiteWiseInputIdentifier where
  toJSON IotSiteWiseInputIdentifier' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("iotSiteWiseAssetModelPropertyIdentifier" Core..=)
              Prelude.<$> iotSiteWiseAssetModelPropertyIdentifier
          ]
      )
