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
-- Module      : Network.AWS.IoTSiteWise.BatchAssociateProjectAssets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates a group (batch) of assets with an IoT SiteWise Monitor
-- project.
module Network.AWS.IoTSiteWise.BatchAssociateProjectAssets
  ( -- * Creating a Request
    BatchAssociateProjectAssets (..),
    newBatchAssociateProjectAssets,

    -- * Request Lenses
    batchAssociateProjectAssets_clientToken,
    batchAssociateProjectAssets_projectId,
    batchAssociateProjectAssets_assetIds,

    -- * Destructuring the Response
    BatchAssociateProjectAssetsResponse (..),
    newBatchAssociateProjectAssetsResponse,

    -- * Response Lenses
    batchAssociateProjectAssetsResponse_errors,
    batchAssociateProjectAssetsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTSiteWise.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newBatchAssociateProjectAssets' smart constructor.
data BatchAssociateProjectAssets = BatchAssociateProjectAssets'
  { -- | A unique case-sensitive identifier that you can provide to ensure the
    -- idempotency of the request. Don\'t reuse this client token if a new
    -- idempotent request is required.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The ID of the project to which to associate the assets.
    projectId :: Prelude.Text,
    -- | The IDs of the assets to be associated to the project.
    assetIds :: Prelude.NonEmpty Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchAssociateProjectAssets' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'batchAssociateProjectAssets_clientToken' - A unique case-sensitive identifier that you can provide to ensure the
-- idempotency of the request. Don\'t reuse this client token if a new
-- idempotent request is required.
--
-- 'projectId', 'batchAssociateProjectAssets_projectId' - The ID of the project to which to associate the assets.
--
-- 'assetIds', 'batchAssociateProjectAssets_assetIds' - The IDs of the assets to be associated to the project.
newBatchAssociateProjectAssets ::
  -- | 'projectId'
  Prelude.Text ->
  -- | 'assetIds'
  Prelude.NonEmpty Prelude.Text ->
  BatchAssociateProjectAssets
newBatchAssociateProjectAssets pProjectId_ pAssetIds_ =
  BatchAssociateProjectAssets'
    { clientToken =
        Prelude.Nothing,
      projectId = pProjectId_,
      assetIds = Lens.coerced Lens.# pAssetIds_
    }

-- | A unique case-sensitive identifier that you can provide to ensure the
-- idempotency of the request. Don\'t reuse this client token if a new
-- idempotent request is required.
batchAssociateProjectAssets_clientToken :: Lens.Lens' BatchAssociateProjectAssets (Prelude.Maybe Prelude.Text)
batchAssociateProjectAssets_clientToken = Lens.lens (\BatchAssociateProjectAssets' {clientToken} -> clientToken) (\s@BatchAssociateProjectAssets' {} a -> s {clientToken = a} :: BatchAssociateProjectAssets)

-- | The ID of the project to which to associate the assets.
batchAssociateProjectAssets_projectId :: Lens.Lens' BatchAssociateProjectAssets Prelude.Text
batchAssociateProjectAssets_projectId = Lens.lens (\BatchAssociateProjectAssets' {projectId} -> projectId) (\s@BatchAssociateProjectAssets' {} a -> s {projectId = a} :: BatchAssociateProjectAssets)

-- | The IDs of the assets to be associated to the project.
batchAssociateProjectAssets_assetIds :: Lens.Lens' BatchAssociateProjectAssets (Prelude.NonEmpty Prelude.Text)
batchAssociateProjectAssets_assetIds = Lens.lens (\BatchAssociateProjectAssets' {assetIds} -> assetIds) (\s@BatchAssociateProjectAssets' {} a -> s {assetIds = a} :: BatchAssociateProjectAssets) Prelude.. Lens.coerced

instance Core.AWSRequest BatchAssociateProjectAssets where
  type
    AWSResponse BatchAssociateProjectAssets =
      BatchAssociateProjectAssetsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchAssociateProjectAssetsResponse'
            Prelude.<$> (x Core..?> "errors" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable BatchAssociateProjectAssets

instance Prelude.NFData BatchAssociateProjectAssets

instance Core.ToHeaders BatchAssociateProjectAssets where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON BatchAssociateProjectAssets where
  toJSON BatchAssociateProjectAssets' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("clientToken" Core..=) Prelude.<$> clientToken,
            Prelude.Just ("assetIds" Core..= assetIds)
          ]
      )

instance Core.ToPath BatchAssociateProjectAssets where
  toPath BatchAssociateProjectAssets' {..} =
    Prelude.mconcat
      [ "/projects/",
        Core.toBS projectId,
        "/assets/associate"
      ]

instance Core.ToQuery BatchAssociateProjectAssets where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newBatchAssociateProjectAssetsResponse' smart constructor.
data BatchAssociateProjectAssetsResponse = BatchAssociateProjectAssetsResponse'
  { -- | A list of associated error information, if any.
    errors :: Prelude.Maybe [AssetErrorDetails],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchAssociateProjectAssetsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'errors', 'batchAssociateProjectAssetsResponse_errors' - A list of associated error information, if any.
--
-- 'httpStatus', 'batchAssociateProjectAssetsResponse_httpStatus' - The response's http status code.
newBatchAssociateProjectAssetsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  BatchAssociateProjectAssetsResponse
newBatchAssociateProjectAssetsResponse pHttpStatus_ =
  BatchAssociateProjectAssetsResponse'
    { errors =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of associated error information, if any.
batchAssociateProjectAssetsResponse_errors :: Lens.Lens' BatchAssociateProjectAssetsResponse (Prelude.Maybe [AssetErrorDetails])
batchAssociateProjectAssetsResponse_errors = Lens.lens (\BatchAssociateProjectAssetsResponse' {errors} -> errors) (\s@BatchAssociateProjectAssetsResponse' {} a -> s {errors = a} :: BatchAssociateProjectAssetsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
batchAssociateProjectAssetsResponse_httpStatus :: Lens.Lens' BatchAssociateProjectAssetsResponse Prelude.Int
batchAssociateProjectAssetsResponse_httpStatus = Lens.lens (\BatchAssociateProjectAssetsResponse' {httpStatus} -> httpStatus) (\s@BatchAssociateProjectAssetsResponse' {} a -> s {httpStatus = a} :: BatchAssociateProjectAssetsResponse)

instance
  Prelude.NFData
    BatchAssociateProjectAssetsResponse
