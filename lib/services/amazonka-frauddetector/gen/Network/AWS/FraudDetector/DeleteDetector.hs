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
-- Module      : Network.AWS.FraudDetector.DeleteDetector
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the detector. Before deleting a detector, you must first delete
-- all detector versions and rule versions associated with the detector.
--
-- When you delete a detector, Amazon Fraud Detector permanently deletes
-- the detector and the data is no longer stored in Amazon Fraud Detector.
module Network.AWS.FraudDetector.DeleteDetector
  ( -- * Creating a Request
    DeleteDetector (..),
    newDeleteDetector,

    -- * Request Lenses
    deleteDetector_detectorId,

    -- * Destructuring the Response
    DeleteDetectorResponse (..),
    newDeleteDetectorResponse,

    -- * Response Lenses
    deleteDetectorResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.FraudDetector.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteDetector' smart constructor.
data DeleteDetector = DeleteDetector'
  { -- | The ID of the detector to delete.
    detectorId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDetector' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'detectorId', 'deleteDetector_detectorId' - The ID of the detector to delete.
newDeleteDetector ::
  -- | 'detectorId'
  Prelude.Text ->
  DeleteDetector
newDeleteDetector pDetectorId_ =
  DeleteDetector' {detectorId = pDetectorId_}

-- | The ID of the detector to delete.
deleteDetector_detectorId :: Lens.Lens' DeleteDetector Prelude.Text
deleteDetector_detectorId = Lens.lens (\DeleteDetector' {detectorId} -> detectorId) (\s@DeleteDetector' {} a -> s {detectorId = a} :: DeleteDetector)

instance Core.AWSRequest DeleteDetector where
  type
    AWSResponse DeleteDetector =
      DeleteDetectorResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteDetectorResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteDetector

instance Prelude.NFData DeleteDetector

instance Core.ToHeaders DeleteDetector where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSHawksNestServiceFacade.DeleteDetector" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteDetector where
  toJSON DeleteDetector' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("detectorId" Core..= detectorId)]
      )

instance Core.ToPath DeleteDetector where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteDetector where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteDetectorResponse' smart constructor.
data DeleteDetectorResponse = DeleteDetectorResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDetectorResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteDetectorResponse_httpStatus' - The response's http status code.
newDeleteDetectorResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteDetectorResponse
newDeleteDetectorResponse pHttpStatus_ =
  DeleteDetectorResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
deleteDetectorResponse_httpStatus :: Lens.Lens' DeleteDetectorResponse Prelude.Int
deleteDetectorResponse_httpStatus = Lens.lens (\DeleteDetectorResponse' {httpStatus} -> httpStatus) (\s@DeleteDetectorResponse' {} a -> s {httpStatus = a} :: DeleteDetectorResponse)

instance Prelude.NFData DeleteDetectorResponse
