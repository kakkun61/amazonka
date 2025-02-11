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
-- Module      : Network.AWS.IoTSiteWise.Types.AssetErrorDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTSiteWise.Types.AssetErrorDetails where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTSiteWise.Types.AssetErrorCode
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains error details for the requested associate project asset action.
--
-- /See:/ 'newAssetErrorDetails' smart constructor.
data AssetErrorDetails = AssetErrorDetails'
  { -- | The ID of the asset.
    assetId :: Prelude.Text,
    -- | The error code.
    code :: AssetErrorCode,
    -- | The error message.
    message :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssetErrorDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'assetId', 'assetErrorDetails_assetId' - The ID of the asset.
--
-- 'code', 'assetErrorDetails_code' - The error code.
--
-- 'message', 'assetErrorDetails_message' - The error message.
newAssetErrorDetails ::
  -- | 'assetId'
  Prelude.Text ->
  -- | 'code'
  AssetErrorCode ->
  -- | 'message'
  Prelude.Text ->
  AssetErrorDetails
newAssetErrorDetails pAssetId_ pCode_ pMessage_ =
  AssetErrorDetails'
    { assetId = pAssetId_,
      code = pCode_,
      message = pMessage_
    }

-- | The ID of the asset.
assetErrorDetails_assetId :: Lens.Lens' AssetErrorDetails Prelude.Text
assetErrorDetails_assetId = Lens.lens (\AssetErrorDetails' {assetId} -> assetId) (\s@AssetErrorDetails' {} a -> s {assetId = a} :: AssetErrorDetails)

-- | The error code.
assetErrorDetails_code :: Lens.Lens' AssetErrorDetails AssetErrorCode
assetErrorDetails_code = Lens.lens (\AssetErrorDetails' {code} -> code) (\s@AssetErrorDetails' {} a -> s {code = a} :: AssetErrorDetails)

-- | The error message.
assetErrorDetails_message :: Lens.Lens' AssetErrorDetails Prelude.Text
assetErrorDetails_message = Lens.lens (\AssetErrorDetails' {message} -> message) (\s@AssetErrorDetails' {} a -> s {message = a} :: AssetErrorDetails)

instance Core.FromJSON AssetErrorDetails where
  parseJSON =
    Core.withObject
      "AssetErrorDetails"
      ( \x ->
          AssetErrorDetails'
            Prelude.<$> (x Core..: "assetId")
            Prelude.<*> (x Core..: "code")
            Prelude.<*> (x Core..: "message")
      )

instance Prelude.Hashable AssetErrorDetails

instance Prelude.NFData AssetErrorDetails
