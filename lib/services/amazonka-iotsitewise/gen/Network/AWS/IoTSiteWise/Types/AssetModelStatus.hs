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
-- Module      : Network.AWS.IoTSiteWise.Types.AssetModelStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTSiteWise.Types.AssetModelStatus where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTSiteWise.Types.AssetModelState
import Network.AWS.IoTSiteWise.Types.ErrorDetails
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains current status information for an asset model. For more
-- information, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-and-model-states.html Asset and model states>
-- in the /IoT SiteWise User Guide/.
--
-- /See:/ 'newAssetModelStatus' smart constructor.
data AssetModelStatus = AssetModelStatus'
  { -- | Contains associated error information, if any.
    error :: Prelude.Maybe ErrorDetails,
    -- | The current state of the asset model.
    state :: AssetModelState
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssetModelStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'error', 'assetModelStatus_error' - Contains associated error information, if any.
--
-- 'state', 'assetModelStatus_state' - The current state of the asset model.
newAssetModelStatus ::
  -- | 'state'
  AssetModelState ->
  AssetModelStatus
newAssetModelStatus pState_ =
  AssetModelStatus'
    { error = Prelude.Nothing,
      state = pState_
    }

-- | Contains associated error information, if any.
assetModelStatus_error :: Lens.Lens' AssetModelStatus (Prelude.Maybe ErrorDetails)
assetModelStatus_error = Lens.lens (\AssetModelStatus' {error} -> error) (\s@AssetModelStatus' {} a -> s {error = a} :: AssetModelStatus)

-- | The current state of the asset model.
assetModelStatus_state :: Lens.Lens' AssetModelStatus AssetModelState
assetModelStatus_state = Lens.lens (\AssetModelStatus' {state} -> state) (\s@AssetModelStatus' {} a -> s {state = a} :: AssetModelStatus)

instance Core.FromJSON AssetModelStatus where
  parseJSON =
    Core.withObject
      "AssetModelStatus"
      ( \x ->
          AssetModelStatus'
            Prelude.<$> (x Core..:? "error") Prelude.<*> (x Core..: "state")
      )

instance Prelude.Hashable AssetModelStatus

instance Prelude.NFData AssetModelStatus
