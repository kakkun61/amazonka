{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTSiteWise.UpdateAsset
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an asset\'s name. For more information, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-assets-and-models.html Updating assets and models>
-- in the /IoT SiteWise User Guide/.
module Network.AWS.IoTSiteWise.UpdateAsset
  ( -- * Creating a Request
    UpdateAsset (..),
    newUpdateAsset,

    -- * Request Lenses
    updateAsset_clientToken,
    updateAsset_assetId,
    updateAsset_assetName,

    -- * Destructuring the Response
    UpdateAssetResponse (..),
    newUpdateAssetResponse,

    -- * Response Lenses
    updateAssetResponse_httpStatus,
    updateAssetResponse_assetStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTSiteWise.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateAsset' smart constructor.
data UpdateAsset = UpdateAsset'
  { -- | A unique case-sensitive identifier that you can provide to ensure the
    -- idempotency of the request. Don\'t reuse this client token if a new
    -- idempotent request is required.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The ID of the asset to update.
    assetId :: Prelude.Text,
    -- | A unique, friendly name for the asset.
    assetName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateAsset' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'updateAsset_clientToken' - A unique case-sensitive identifier that you can provide to ensure the
-- idempotency of the request. Don\'t reuse this client token if a new
-- idempotent request is required.
--
-- 'assetId', 'updateAsset_assetId' - The ID of the asset to update.
--
-- 'assetName', 'updateAsset_assetName' - A unique, friendly name for the asset.
newUpdateAsset ::
  -- | 'assetId'
  Prelude.Text ->
  -- | 'assetName'
  Prelude.Text ->
  UpdateAsset
newUpdateAsset pAssetId_ pAssetName_ =
  UpdateAsset'
    { clientToken = Prelude.Nothing,
      assetId = pAssetId_,
      assetName = pAssetName_
    }

-- | A unique case-sensitive identifier that you can provide to ensure the
-- idempotency of the request. Don\'t reuse this client token if a new
-- idempotent request is required.
updateAsset_clientToken :: Lens.Lens' UpdateAsset (Prelude.Maybe Prelude.Text)
updateAsset_clientToken = Lens.lens (\UpdateAsset' {clientToken} -> clientToken) (\s@UpdateAsset' {} a -> s {clientToken = a} :: UpdateAsset)

-- | The ID of the asset to update.
updateAsset_assetId :: Lens.Lens' UpdateAsset Prelude.Text
updateAsset_assetId = Lens.lens (\UpdateAsset' {assetId} -> assetId) (\s@UpdateAsset' {} a -> s {assetId = a} :: UpdateAsset)

-- | A unique, friendly name for the asset.
updateAsset_assetName :: Lens.Lens' UpdateAsset Prelude.Text
updateAsset_assetName = Lens.lens (\UpdateAsset' {assetName} -> assetName) (\s@UpdateAsset' {} a -> s {assetName = a} :: UpdateAsset)

instance Core.AWSRequest UpdateAsset where
  type AWSResponse UpdateAsset = UpdateAssetResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateAssetResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "assetStatus")
      )

instance Prelude.Hashable UpdateAsset

instance Prelude.NFData UpdateAsset

instance Core.ToHeaders UpdateAsset where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateAsset where
  toJSON UpdateAsset' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("clientToken" Core..=) Prelude.<$> clientToken,
            Prelude.Just ("assetName" Core..= assetName)
          ]
      )

instance Core.ToPath UpdateAsset where
  toPath UpdateAsset' {..} =
    Prelude.mconcat ["/assets/", Core.toBS assetId]

instance Core.ToQuery UpdateAsset where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateAssetResponse' smart constructor.
data UpdateAssetResponse = UpdateAssetResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The status of the asset, which contains a state (@UPDATING@ after
    -- successfully calling this operation) and any error message.
    assetStatus :: AssetStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateAssetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateAssetResponse_httpStatus' - The response's http status code.
--
-- 'assetStatus', 'updateAssetResponse_assetStatus' - The status of the asset, which contains a state (@UPDATING@ after
-- successfully calling this operation) and any error message.
newUpdateAssetResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'assetStatus'
  AssetStatus ->
  UpdateAssetResponse
newUpdateAssetResponse pHttpStatus_ pAssetStatus_ =
  UpdateAssetResponse'
    { httpStatus = pHttpStatus_,
      assetStatus = pAssetStatus_
    }

-- | The response's http status code.
updateAssetResponse_httpStatus :: Lens.Lens' UpdateAssetResponse Prelude.Int
updateAssetResponse_httpStatus = Lens.lens (\UpdateAssetResponse' {httpStatus} -> httpStatus) (\s@UpdateAssetResponse' {} a -> s {httpStatus = a} :: UpdateAssetResponse)

-- | The status of the asset, which contains a state (@UPDATING@ after
-- successfully calling this operation) and any error message.
updateAssetResponse_assetStatus :: Lens.Lens' UpdateAssetResponse AssetStatus
updateAssetResponse_assetStatus = Lens.lens (\UpdateAssetResponse' {assetStatus} -> assetStatus) (\s@UpdateAssetResponse' {} a -> s {assetStatus = a} :: UpdateAssetResponse)

instance Prelude.NFData UpdateAssetResponse
