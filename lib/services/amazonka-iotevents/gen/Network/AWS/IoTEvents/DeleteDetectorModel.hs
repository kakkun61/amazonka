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
-- Module      : Network.AWS.IoTEvents.DeleteDetectorModel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a detector model. Any active instances of the detector model are
-- also deleted.
module Network.AWS.IoTEvents.DeleteDetectorModel
  ( -- * Creating a Request
    DeleteDetectorModel (..),
    newDeleteDetectorModel,

    -- * Request Lenses
    deleteDetectorModel_detectorModelName,

    -- * Destructuring the Response
    DeleteDetectorModelResponse (..),
    newDeleteDetectorModelResponse,

    -- * Response Lenses
    deleteDetectorModelResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTEvents.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteDetectorModel' smart constructor.
data DeleteDetectorModel = DeleteDetectorModel'
  { -- | The name of the detector model to be deleted.
    detectorModelName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDetectorModel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'detectorModelName', 'deleteDetectorModel_detectorModelName' - The name of the detector model to be deleted.
newDeleteDetectorModel ::
  -- | 'detectorModelName'
  Prelude.Text ->
  DeleteDetectorModel
newDeleteDetectorModel pDetectorModelName_ =
  DeleteDetectorModel'
    { detectorModelName =
        pDetectorModelName_
    }

-- | The name of the detector model to be deleted.
deleteDetectorModel_detectorModelName :: Lens.Lens' DeleteDetectorModel Prelude.Text
deleteDetectorModel_detectorModelName = Lens.lens (\DeleteDetectorModel' {detectorModelName} -> detectorModelName) (\s@DeleteDetectorModel' {} a -> s {detectorModelName = a} :: DeleteDetectorModel)

instance Core.AWSRequest DeleteDetectorModel where
  type
    AWSResponse DeleteDetectorModel =
      DeleteDetectorModelResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteDetectorModelResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteDetectorModel

instance Prelude.NFData DeleteDetectorModel

instance Core.ToHeaders DeleteDetectorModel where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DeleteDetectorModel where
  toPath DeleteDetectorModel' {..} =
    Prelude.mconcat
      ["/detector-models/", Core.toBS detectorModelName]

instance Core.ToQuery DeleteDetectorModel where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteDetectorModelResponse' smart constructor.
data DeleteDetectorModelResponse = DeleteDetectorModelResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDetectorModelResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteDetectorModelResponse_httpStatus' - The response's http status code.
newDeleteDetectorModelResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteDetectorModelResponse
newDeleteDetectorModelResponse pHttpStatus_ =
  DeleteDetectorModelResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteDetectorModelResponse_httpStatus :: Lens.Lens' DeleteDetectorModelResponse Prelude.Int
deleteDetectorModelResponse_httpStatus = Lens.lens (\DeleteDetectorModelResponse' {httpStatus} -> httpStatus) (\s@DeleteDetectorModelResponse' {} a -> s {httpStatus = a} :: DeleteDetectorModelResponse)

instance Prelude.NFData DeleteDetectorModelResponse
