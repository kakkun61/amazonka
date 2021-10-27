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
-- Module      : Network.AWS.IoTSiteWise.AssociateAssets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates a child asset with the given parent asset through a hierarchy
-- defined in the parent asset\'s model. For more information, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/add-associated-assets.html Associating assets>
-- in the /IoT SiteWise User Guide/.
module Network.AWS.IoTSiteWise.AssociateAssets
  ( -- * Creating a Request
    AssociateAssets (..),
    newAssociateAssets,

    -- * Request Lenses
    associateAssets_clientToken,
    associateAssets_assetId,
    associateAssets_hierarchyId,
    associateAssets_childAssetId,

    -- * Destructuring the Response
    AssociateAssetsResponse (..),
    newAssociateAssetsResponse,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTSiteWise.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newAssociateAssets' smart constructor.
data AssociateAssets = AssociateAssets'
  { -- | A unique case-sensitive identifier that you can provide to ensure the
    -- idempotency of the request. Don\'t reuse this client token if a new
    -- idempotent request is required.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The ID of the parent asset.
    assetId :: Prelude.Text,
    -- | The ID of a hierarchy in the parent asset\'s model. Hierarchies allow
    -- different groupings of assets to be formed that all come from the same
    -- asset model. For more information, see
    -- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html Asset hierarchies>
    -- in the /IoT SiteWise User Guide/.
    hierarchyId :: Prelude.Text,
    -- | The ID of the child asset to be associated.
    childAssetId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssociateAssets' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'associateAssets_clientToken' - A unique case-sensitive identifier that you can provide to ensure the
-- idempotency of the request. Don\'t reuse this client token if a new
-- idempotent request is required.
--
-- 'assetId', 'associateAssets_assetId' - The ID of the parent asset.
--
-- 'hierarchyId', 'associateAssets_hierarchyId' - The ID of a hierarchy in the parent asset\'s model. Hierarchies allow
-- different groupings of assets to be formed that all come from the same
-- asset model. For more information, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html Asset hierarchies>
-- in the /IoT SiteWise User Guide/.
--
-- 'childAssetId', 'associateAssets_childAssetId' - The ID of the child asset to be associated.
newAssociateAssets ::
  -- | 'assetId'
  Prelude.Text ->
  -- | 'hierarchyId'
  Prelude.Text ->
  -- | 'childAssetId'
  Prelude.Text ->
  AssociateAssets
newAssociateAssets
  pAssetId_
  pHierarchyId_
  pChildAssetId_ =
    AssociateAssets'
      { clientToken = Prelude.Nothing,
        assetId = pAssetId_,
        hierarchyId = pHierarchyId_,
        childAssetId = pChildAssetId_
      }

-- | A unique case-sensitive identifier that you can provide to ensure the
-- idempotency of the request. Don\'t reuse this client token if a new
-- idempotent request is required.
associateAssets_clientToken :: Lens.Lens' AssociateAssets (Prelude.Maybe Prelude.Text)
associateAssets_clientToken = Lens.lens (\AssociateAssets' {clientToken} -> clientToken) (\s@AssociateAssets' {} a -> s {clientToken = a} :: AssociateAssets)

-- | The ID of the parent asset.
associateAssets_assetId :: Lens.Lens' AssociateAssets Prelude.Text
associateAssets_assetId = Lens.lens (\AssociateAssets' {assetId} -> assetId) (\s@AssociateAssets' {} a -> s {assetId = a} :: AssociateAssets)

-- | The ID of a hierarchy in the parent asset\'s model. Hierarchies allow
-- different groupings of assets to be formed that all come from the same
-- asset model. For more information, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html Asset hierarchies>
-- in the /IoT SiteWise User Guide/.
associateAssets_hierarchyId :: Lens.Lens' AssociateAssets Prelude.Text
associateAssets_hierarchyId = Lens.lens (\AssociateAssets' {hierarchyId} -> hierarchyId) (\s@AssociateAssets' {} a -> s {hierarchyId = a} :: AssociateAssets)

-- | The ID of the child asset to be associated.
associateAssets_childAssetId :: Lens.Lens' AssociateAssets Prelude.Text
associateAssets_childAssetId = Lens.lens (\AssociateAssets' {childAssetId} -> childAssetId) (\s@AssociateAssets' {} a -> s {childAssetId = a} :: AssociateAssets)

instance Core.AWSRequest AssociateAssets where
  type
    AWSResponse AssociateAssets =
      AssociateAssetsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull AssociateAssetsResponse'

instance Prelude.Hashable AssociateAssets

instance Prelude.NFData AssociateAssets

instance Core.ToHeaders AssociateAssets where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON AssociateAssets where
  toJSON AssociateAssets' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("clientToken" Core..=) Prelude.<$> clientToken,
            Prelude.Just ("hierarchyId" Core..= hierarchyId),
            Prelude.Just ("childAssetId" Core..= childAssetId)
          ]
      )

instance Core.ToPath AssociateAssets where
  toPath AssociateAssets' {..} =
    Prelude.mconcat
      ["/assets/", Core.toBS assetId, "/associate"]

instance Core.ToQuery AssociateAssets where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newAssociateAssetsResponse' smart constructor.
data AssociateAssetsResponse = AssociateAssetsResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssociateAssetsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newAssociateAssetsResponse ::
  AssociateAssetsResponse
newAssociateAssetsResponse = AssociateAssetsResponse'

instance Prelude.NFData AssociateAssetsResponse
