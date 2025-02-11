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
-- Module      : Network.AWS.IoTSiteWise.DisassociateAssets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates a child asset from the given parent asset through a
-- hierarchy defined in the parent asset\'s model.
module Network.AWS.IoTSiteWise.DisassociateAssets
  ( -- * Creating a Request
    DisassociateAssets (..),
    newDisassociateAssets,

    -- * Request Lenses
    disassociateAssets_clientToken,
    disassociateAssets_assetId,
    disassociateAssets_hierarchyId,
    disassociateAssets_childAssetId,

    -- * Destructuring the Response
    DisassociateAssetsResponse (..),
    newDisassociateAssetsResponse,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTSiteWise.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDisassociateAssets' smart constructor.
data DisassociateAssets = DisassociateAssets'
  { -- | A unique case-sensitive identifier that you can provide to ensure the
    -- idempotency of the request. Don\'t reuse this client token if a new
    -- idempotent request is required.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The ID of the parent asset from which to disassociate the child asset.
    assetId :: Prelude.Text,
    -- | The ID of a hierarchy in the parent asset\'s model. Hierarchies allow
    -- different groupings of assets to be formed that all come from the same
    -- asset model. You can use the hierarchy ID to identify the correct asset
    -- to disassociate. For more information, see
    -- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html Asset hierarchies>
    -- in the /IoT SiteWise User Guide/.
    hierarchyId :: Prelude.Text,
    -- | The ID of the child asset to disassociate.
    childAssetId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateAssets' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'disassociateAssets_clientToken' - A unique case-sensitive identifier that you can provide to ensure the
-- idempotency of the request. Don\'t reuse this client token if a new
-- idempotent request is required.
--
-- 'assetId', 'disassociateAssets_assetId' - The ID of the parent asset from which to disassociate the child asset.
--
-- 'hierarchyId', 'disassociateAssets_hierarchyId' - The ID of a hierarchy in the parent asset\'s model. Hierarchies allow
-- different groupings of assets to be formed that all come from the same
-- asset model. You can use the hierarchy ID to identify the correct asset
-- to disassociate. For more information, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html Asset hierarchies>
-- in the /IoT SiteWise User Guide/.
--
-- 'childAssetId', 'disassociateAssets_childAssetId' - The ID of the child asset to disassociate.
newDisassociateAssets ::
  -- | 'assetId'
  Prelude.Text ->
  -- | 'hierarchyId'
  Prelude.Text ->
  -- | 'childAssetId'
  Prelude.Text ->
  DisassociateAssets
newDisassociateAssets
  pAssetId_
  pHierarchyId_
  pChildAssetId_ =
    DisassociateAssets'
      { clientToken = Prelude.Nothing,
        assetId = pAssetId_,
        hierarchyId = pHierarchyId_,
        childAssetId = pChildAssetId_
      }

-- | A unique case-sensitive identifier that you can provide to ensure the
-- idempotency of the request. Don\'t reuse this client token if a new
-- idempotent request is required.
disassociateAssets_clientToken :: Lens.Lens' DisassociateAssets (Prelude.Maybe Prelude.Text)
disassociateAssets_clientToken = Lens.lens (\DisassociateAssets' {clientToken} -> clientToken) (\s@DisassociateAssets' {} a -> s {clientToken = a} :: DisassociateAssets)

-- | The ID of the parent asset from which to disassociate the child asset.
disassociateAssets_assetId :: Lens.Lens' DisassociateAssets Prelude.Text
disassociateAssets_assetId = Lens.lens (\DisassociateAssets' {assetId} -> assetId) (\s@DisassociateAssets' {} a -> s {assetId = a} :: DisassociateAssets)

-- | The ID of a hierarchy in the parent asset\'s model. Hierarchies allow
-- different groupings of assets to be formed that all come from the same
-- asset model. You can use the hierarchy ID to identify the correct asset
-- to disassociate. For more information, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html Asset hierarchies>
-- in the /IoT SiteWise User Guide/.
disassociateAssets_hierarchyId :: Lens.Lens' DisassociateAssets Prelude.Text
disassociateAssets_hierarchyId = Lens.lens (\DisassociateAssets' {hierarchyId} -> hierarchyId) (\s@DisassociateAssets' {} a -> s {hierarchyId = a} :: DisassociateAssets)

-- | The ID of the child asset to disassociate.
disassociateAssets_childAssetId :: Lens.Lens' DisassociateAssets Prelude.Text
disassociateAssets_childAssetId = Lens.lens (\DisassociateAssets' {childAssetId} -> childAssetId) (\s@DisassociateAssets' {} a -> s {childAssetId = a} :: DisassociateAssets)

instance Core.AWSRequest DisassociateAssets where
  type
    AWSResponse DisassociateAssets =
      DisassociateAssetsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull DisassociateAssetsResponse'

instance Prelude.Hashable DisassociateAssets

instance Prelude.NFData DisassociateAssets

instance Core.ToHeaders DisassociateAssets where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DisassociateAssets where
  toJSON DisassociateAssets' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("clientToken" Core..=) Prelude.<$> clientToken,
            Prelude.Just ("hierarchyId" Core..= hierarchyId),
            Prelude.Just ("childAssetId" Core..= childAssetId)
          ]
      )

instance Core.ToPath DisassociateAssets where
  toPath DisassociateAssets' {..} =
    Prelude.mconcat
      ["/assets/", Core.toBS assetId, "/disassociate"]

instance Core.ToQuery DisassociateAssets where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDisassociateAssetsResponse' smart constructor.
data DisassociateAssetsResponse = DisassociateAssetsResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateAssetsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDisassociateAssetsResponse ::
  DisassociateAssetsResponse
newDisassociateAssetsResponse =
  DisassociateAssetsResponse'

instance Prelude.NFData DisassociateAssetsResponse
