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
-- Module      : Network.AWS.FraudDetector.UpdateDetectorVersionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the detector version’s status. You can perform the following
-- promotions or demotions using @UpdateDetectorVersionStatus@: @DRAFT@ to
-- @ACTIVE@, @ACTIVE@ to @INACTIVE@, and @INACTIVE@ to @ACTIVE@.
module Network.AWS.FraudDetector.UpdateDetectorVersionStatus
  ( -- * Creating a Request
    UpdateDetectorVersionStatus (..),
    newUpdateDetectorVersionStatus,

    -- * Request Lenses
    updateDetectorVersionStatus_detectorId,
    updateDetectorVersionStatus_detectorVersionId,
    updateDetectorVersionStatus_status,

    -- * Destructuring the Response
    UpdateDetectorVersionStatusResponse (..),
    newUpdateDetectorVersionStatusResponse,

    -- * Response Lenses
    updateDetectorVersionStatusResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.FraudDetector.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateDetectorVersionStatus' smart constructor.
data UpdateDetectorVersionStatus = UpdateDetectorVersionStatus'
  { -- | The detector ID.
    detectorId :: Prelude.Text,
    -- | The detector version ID.
    detectorVersionId :: Prelude.Text,
    -- | The new status.
    status :: DetectorVersionStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateDetectorVersionStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'detectorId', 'updateDetectorVersionStatus_detectorId' - The detector ID.
--
-- 'detectorVersionId', 'updateDetectorVersionStatus_detectorVersionId' - The detector version ID.
--
-- 'status', 'updateDetectorVersionStatus_status' - The new status.
newUpdateDetectorVersionStatus ::
  -- | 'detectorId'
  Prelude.Text ->
  -- | 'detectorVersionId'
  Prelude.Text ->
  -- | 'status'
  DetectorVersionStatus ->
  UpdateDetectorVersionStatus
newUpdateDetectorVersionStatus
  pDetectorId_
  pDetectorVersionId_
  pStatus_ =
    UpdateDetectorVersionStatus'
      { detectorId =
          pDetectorId_,
        detectorVersionId = pDetectorVersionId_,
        status = pStatus_
      }

-- | The detector ID.
updateDetectorVersionStatus_detectorId :: Lens.Lens' UpdateDetectorVersionStatus Prelude.Text
updateDetectorVersionStatus_detectorId = Lens.lens (\UpdateDetectorVersionStatus' {detectorId} -> detectorId) (\s@UpdateDetectorVersionStatus' {} a -> s {detectorId = a} :: UpdateDetectorVersionStatus)

-- | The detector version ID.
updateDetectorVersionStatus_detectorVersionId :: Lens.Lens' UpdateDetectorVersionStatus Prelude.Text
updateDetectorVersionStatus_detectorVersionId = Lens.lens (\UpdateDetectorVersionStatus' {detectorVersionId} -> detectorVersionId) (\s@UpdateDetectorVersionStatus' {} a -> s {detectorVersionId = a} :: UpdateDetectorVersionStatus)

-- | The new status.
updateDetectorVersionStatus_status :: Lens.Lens' UpdateDetectorVersionStatus DetectorVersionStatus
updateDetectorVersionStatus_status = Lens.lens (\UpdateDetectorVersionStatus' {status} -> status) (\s@UpdateDetectorVersionStatus' {} a -> s {status = a} :: UpdateDetectorVersionStatus)

instance Core.AWSRequest UpdateDetectorVersionStatus where
  type
    AWSResponse UpdateDetectorVersionStatus =
      UpdateDetectorVersionStatusResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateDetectorVersionStatusResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateDetectorVersionStatus

instance Prelude.NFData UpdateDetectorVersionStatus

instance Core.ToHeaders UpdateDetectorVersionStatus where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSHawksNestServiceFacade.UpdateDetectorVersionStatus" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateDetectorVersionStatus where
  toJSON UpdateDetectorVersionStatus' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("detectorId" Core..= detectorId),
            Prelude.Just
              ("detectorVersionId" Core..= detectorVersionId),
            Prelude.Just ("status" Core..= status)
          ]
      )

instance Core.ToPath UpdateDetectorVersionStatus where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateDetectorVersionStatus where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateDetectorVersionStatusResponse' smart constructor.
data UpdateDetectorVersionStatusResponse = UpdateDetectorVersionStatusResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateDetectorVersionStatusResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateDetectorVersionStatusResponse_httpStatus' - The response's http status code.
newUpdateDetectorVersionStatusResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateDetectorVersionStatusResponse
newUpdateDetectorVersionStatusResponse pHttpStatus_ =
  UpdateDetectorVersionStatusResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
updateDetectorVersionStatusResponse_httpStatus :: Lens.Lens' UpdateDetectorVersionStatusResponse Prelude.Int
updateDetectorVersionStatusResponse_httpStatus = Lens.lens (\UpdateDetectorVersionStatusResponse' {httpStatus} -> httpStatus) (\s@UpdateDetectorVersionStatusResponse' {} a -> s {httpStatus = a} :: UpdateDetectorVersionStatusResponse)

instance
  Prelude.NFData
    UpdateDetectorVersionStatusResponse
