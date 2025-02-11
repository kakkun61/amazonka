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
-- Module      : Network.AWS.IoTSiteWise.BatchDisassociateProjectAssets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates a group (batch) of assets from an IoT SiteWise Monitor
-- project.
module Network.AWS.IoTSiteWise.BatchDisassociateProjectAssets
  ( -- * Creating a Request
    BatchDisassociateProjectAssets (..),
    newBatchDisassociateProjectAssets,

    -- * Request Lenses
    batchDisassociateProjectAssets_clientToken,
    batchDisassociateProjectAssets_projectId,
    batchDisassociateProjectAssets_assetIds,

    -- * Destructuring the Response
    BatchDisassociateProjectAssetsResponse (..),
    newBatchDisassociateProjectAssetsResponse,

    -- * Response Lenses
    batchDisassociateProjectAssetsResponse_errors,
    batchDisassociateProjectAssetsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTSiteWise.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newBatchDisassociateProjectAssets' smart constructor.
data BatchDisassociateProjectAssets = BatchDisassociateProjectAssets'
  { -- | A unique case-sensitive identifier that you can provide to ensure the
    -- idempotency of the request. Don\'t reuse this client token if a new
    -- idempotent request is required.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The ID of the project from which to disassociate the assets.
    projectId :: Prelude.Text,
    -- | The IDs of the assets to be disassociated from the project.
    assetIds :: Prelude.NonEmpty Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchDisassociateProjectAssets' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'batchDisassociateProjectAssets_clientToken' - A unique case-sensitive identifier that you can provide to ensure the
-- idempotency of the request. Don\'t reuse this client token if a new
-- idempotent request is required.
--
-- 'projectId', 'batchDisassociateProjectAssets_projectId' - The ID of the project from which to disassociate the assets.
--
-- 'assetIds', 'batchDisassociateProjectAssets_assetIds' - The IDs of the assets to be disassociated from the project.
newBatchDisassociateProjectAssets ::
  -- | 'projectId'
  Prelude.Text ->
  -- | 'assetIds'
  Prelude.NonEmpty Prelude.Text ->
  BatchDisassociateProjectAssets
newBatchDisassociateProjectAssets
  pProjectId_
  pAssetIds_ =
    BatchDisassociateProjectAssets'
      { clientToken =
          Prelude.Nothing,
        projectId = pProjectId_,
        assetIds = Lens.coerced Lens.# pAssetIds_
      }

-- | A unique case-sensitive identifier that you can provide to ensure the
-- idempotency of the request. Don\'t reuse this client token if a new
-- idempotent request is required.
batchDisassociateProjectAssets_clientToken :: Lens.Lens' BatchDisassociateProjectAssets (Prelude.Maybe Prelude.Text)
batchDisassociateProjectAssets_clientToken = Lens.lens (\BatchDisassociateProjectAssets' {clientToken} -> clientToken) (\s@BatchDisassociateProjectAssets' {} a -> s {clientToken = a} :: BatchDisassociateProjectAssets)

-- | The ID of the project from which to disassociate the assets.
batchDisassociateProjectAssets_projectId :: Lens.Lens' BatchDisassociateProjectAssets Prelude.Text
batchDisassociateProjectAssets_projectId = Lens.lens (\BatchDisassociateProjectAssets' {projectId} -> projectId) (\s@BatchDisassociateProjectAssets' {} a -> s {projectId = a} :: BatchDisassociateProjectAssets)

-- | The IDs of the assets to be disassociated from the project.
batchDisassociateProjectAssets_assetIds :: Lens.Lens' BatchDisassociateProjectAssets (Prelude.NonEmpty Prelude.Text)
batchDisassociateProjectAssets_assetIds = Lens.lens (\BatchDisassociateProjectAssets' {assetIds} -> assetIds) (\s@BatchDisassociateProjectAssets' {} a -> s {assetIds = a} :: BatchDisassociateProjectAssets) Prelude.. Lens.coerced

instance
  Core.AWSRequest
    BatchDisassociateProjectAssets
  where
  type
    AWSResponse BatchDisassociateProjectAssets =
      BatchDisassociateProjectAssetsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchDisassociateProjectAssetsResponse'
            Prelude.<$> (x Core..?> "errors" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    BatchDisassociateProjectAssets

instance
  Prelude.NFData
    BatchDisassociateProjectAssets

instance
  Core.ToHeaders
    BatchDisassociateProjectAssets
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON BatchDisassociateProjectAssets where
  toJSON BatchDisassociateProjectAssets' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("clientToken" Core..=) Prelude.<$> clientToken,
            Prelude.Just ("assetIds" Core..= assetIds)
          ]
      )

instance Core.ToPath BatchDisassociateProjectAssets where
  toPath BatchDisassociateProjectAssets' {..} =
    Prelude.mconcat
      [ "/projects/",
        Core.toBS projectId,
        "/assets/disassociate"
      ]

instance Core.ToQuery BatchDisassociateProjectAssets where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newBatchDisassociateProjectAssetsResponse' smart constructor.
data BatchDisassociateProjectAssetsResponse = BatchDisassociateProjectAssetsResponse'
  { -- | A list of associated error information, if any.
    errors :: Prelude.Maybe [AssetErrorDetails],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchDisassociateProjectAssetsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'errors', 'batchDisassociateProjectAssetsResponse_errors' - A list of associated error information, if any.
--
-- 'httpStatus', 'batchDisassociateProjectAssetsResponse_httpStatus' - The response's http status code.
newBatchDisassociateProjectAssetsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  BatchDisassociateProjectAssetsResponse
newBatchDisassociateProjectAssetsResponse
  pHttpStatus_ =
    BatchDisassociateProjectAssetsResponse'
      { errors =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | A list of associated error information, if any.
batchDisassociateProjectAssetsResponse_errors :: Lens.Lens' BatchDisassociateProjectAssetsResponse (Prelude.Maybe [AssetErrorDetails])
batchDisassociateProjectAssetsResponse_errors = Lens.lens (\BatchDisassociateProjectAssetsResponse' {errors} -> errors) (\s@BatchDisassociateProjectAssetsResponse' {} a -> s {errors = a} :: BatchDisassociateProjectAssetsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
batchDisassociateProjectAssetsResponse_httpStatus :: Lens.Lens' BatchDisassociateProjectAssetsResponse Prelude.Int
batchDisassociateProjectAssetsResponse_httpStatus = Lens.lens (\BatchDisassociateProjectAssetsResponse' {httpStatus} -> httpStatus) (\s@BatchDisassociateProjectAssetsResponse' {} a -> s {httpStatus = a} :: BatchDisassociateProjectAssetsResponse)

instance
  Prelude.NFData
    BatchDisassociateProjectAssetsResponse
