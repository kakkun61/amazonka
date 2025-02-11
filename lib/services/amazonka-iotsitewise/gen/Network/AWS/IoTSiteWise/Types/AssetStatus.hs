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
-- Module      : Network.AWS.IoTSiteWise.Types.AssetStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTSiteWise.Types.AssetStatus where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTSiteWise.Types.AssetState
import Network.AWS.IoTSiteWise.Types.ErrorDetails
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information about the current status of an asset. For more
-- information, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-and-model-states.html Asset and model states>
-- in the /IoT SiteWise User Guide/.
--
-- /See:/ 'newAssetStatus' smart constructor.
data AssetStatus = AssetStatus'
  { -- | Contains associated error information, if any.
    error :: Prelude.Maybe ErrorDetails,
    -- | The current status of the asset.
    state :: AssetState
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssetStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'error', 'assetStatus_error' - Contains associated error information, if any.
--
-- 'state', 'assetStatus_state' - The current status of the asset.
newAssetStatus ::
  -- | 'state'
  AssetState ->
  AssetStatus
newAssetStatus pState_ =
  AssetStatus'
    { error = Prelude.Nothing,
      state = pState_
    }

-- | Contains associated error information, if any.
assetStatus_error :: Lens.Lens' AssetStatus (Prelude.Maybe ErrorDetails)
assetStatus_error = Lens.lens (\AssetStatus' {error} -> error) (\s@AssetStatus' {} a -> s {error = a} :: AssetStatus)

-- | The current status of the asset.
assetStatus_state :: Lens.Lens' AssetStatus AssetState
assetStatus_state = Lens.lens (\AssetStatus' {state} -> state) (\s@AssetStatus' {} a -> s {state = a} :: AssetStatus)

instance Core.FromJSON AssetStatus where
  parseJSON =
    Core.withObject
      "AssetStatus"
      ( \x ->
          AssetStatus'
            Prelude.<$> (x Core..:? "error") Prelude.<*> (x Core..: "state")
      )

instance Prelude.Hashable AssetStatus

instance Prelude.NFData AssetStatus
