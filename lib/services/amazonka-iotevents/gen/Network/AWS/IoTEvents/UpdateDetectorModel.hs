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
-- Module      : Network.AWS.IoTEvents.UpdateDetectorModel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a detector model. Detectors (instances) spawned by the previous
-- version are deleted and then re-created as new inputs arrive.
module Network.AWS.IoTEvents.UpdateDetectorModel
  ( -- * Creating a Request
    UpdateDetectorModel (..),
    newUpdateDetectorModel,

    -- * Request Lenses
    updateDetectorModel_detectorModelDescription,
    updateDetectorModel_evaluationMethod,
    updateDetectorModel_detectorModelName,
    updateDetectorModel_detectorModelDefinition,
    updateDetectorModel_roleArn,

    -- * Destructuring the Response
    UpdateDetectorModelResponse (..),
    newUpdateDetectorModelResponse,

    -- * Response Lenses
    updateDetectorModelResponse_detectorModelConfiguration,
    updateDetectorModelResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTEvents.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateDetectorModel' smart constructor.
data UpdateDetectorModel = UpdateDetectorModel'
  { -- | A brief description of the detector model.
    detectorModelDescription :: Prelude.Maybe Prelude.Text,
    -- | Information about the order in which events are evaluated and how
    -- actions are executed.
    evaluationMethod :: Prelude.Maybe EvaluationMethod,
    -- | The name of the detector model that is updated.
    detectorModelName :: Prelude.Text,
    -- | Information that defines how a detector operates.
    detectorModelDefinition :: DetectorModelDefinition,
    -- | The ARN of the role that grants permission to AWS IoT Events to perform
    -- its operations.
    roleArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateDetectorModel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'detectorModelDescription', 'updateDetectorModel_detectorModelDescription' - A brief description of the detector model.
--
-- 'evaluationMethod', 'updateDetectorModel_evaluationMethod' - Information about the order in which events are evaluated and how
-- actions are executed.
--
-- 'detectorModelName', 'updateDetectorModel_detectorModelName' - The name of the detector model that is updated.
--
-- 'detectorModelDefinition', 'updateDetectorModel_detectorModelDefinition' - Information that defines how a detector operates.
--
-- 'roleArn', 'updateDetectorModel_roleArn' - The ARN of the role that grants permission to AWS IoT Events to perform
-- its operations.
newUpdateDetectorModel ::
  -- | 'detectorModelName'
  Prelude.Text ->
  -- | 'detectorModelDefinition'
  DetectorModelDefinition ->
  -- | 'roleArn'
  Prelude.Text ->
  UpdateDetectorModel
newUpdateDetectorModel
  pDetectorModelName_
  pDetectorModelDefinition_
  pRoleArn_ =
    UpdateDetectorModel'
      { detectorModelDescription =
          Prelude.Nothing,
        evaluationMethod = Prelude.Nothing,
        detectorModelName = pDetectorModelName_,
        detectorModelDefinition = pDetectorModelDefinition_,
        roleArn = pRoleArn_
      }

-- | A brief description of the detector model.
updateDetectorModel_detectorModelDescription :: Lens.Lens' UpdateDetectorModel (Prelude.Maybe Prelude.Text)
updateDetectorModel_detectorModelDescription = Lens.lens (\UpdateDetectorModel' {detectorModelDescription} -> detectorModelDescription) (\s@UpdateDetectorModel' {} a -> s {detectorModelDescription = a} :: UpdateDetectorModel)

-- | Information about the order in which events are evaluated and how
-- actions are executed.
updateDetectorModel_evaluationMethod :: Lens.Lens' UpdateDetectorModel (Prelude.Maybe EvaluationMethod)
updateDetectorModel_evaluationMethod = Lens.lens (\UpdateDetectorModel' {evaluationMethod} -> evaluationMethod) (\s@UpdateDetectorModel' {} a -> s {evaluationMethod = a} :: UpdateDetectorModel)

-- | The name of the detector model that is updated.
updateDetectorModel_detectorModelName :: Lens.Lens' UpdateDetectorModel Prelude.Text
updateDetectorModel_detectorModelName = Lens.lens (\UpdateDetectorModel' {detectorModelName} -> detectorModelName) (\s@UpdateDetectorModel' {} a -> s {detectorModelName = a} :: UpdateDetectorModel)

-- | Information that defines how a detector operates.
updateDetectorModel_detectorModelDefinition :: Lens.Lens' UpdateDetectorModel DetectorModelDefinition
updateDetectorModel_detectorModelDefinition = Lens.lens (\UpdateDetectorModel' {detectorModelDefinition} -> detectorModelDefinition) (\s@UpdateDetectorModel' {} a -> s {detectorModelDefinition = a} :: UpdateDetectorModel)

-- | The ARN of the role that grants permission to AWS IoT Events to perform
-- its operations.
updateDetectorModel_roleArn :: Lens.Lens' UpdateDetectorModel Prelude.Text
updateDetectorModel_roleArn = Lens.lens (\UpdateDetectorModel' {roleArn} -> roleArn) (\s@UpdateDetectorModel' {} a -> s {roleArn = a} :: UpdateDetectorModel)

instance Core.AWSRequest UpdateDetectorModel where
  type
    AWSResponse UpdateDetectorModel =
      UpdateDetectorModelResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateDetectorModelResponse'
            Prelude.<$> (x Core..?> "detectorModelConfiguration")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateDetectorModel

instance Prelude.NFData UpdateDetectorModel

instance Core.ToHeaders UpdateDetectorModel where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON UpdateDetectorModel where
  toJSON UpdateDetectorModel' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("detectorModelDescription" Core..=)
              Prelude.<$> detectorModelDescription,
            ("evaluationMethod" Core..=)
              Prelude.<$> evaluationMethod,
            Prelude.Just
              ( "detectorModelDefinition"
                  Core..= detectorModelDefinition
              ),
            Prelude.Just ("roleArn" Core..= roleArn)
          ]
      )

instance Core.ToPath UpdateDetectorModel where
  toPath UpdateDetectorModel' {..} =
    Prelude.mconcat
      ["/detector-models/", Core.toBS detectorModelName]

instance Core.ToQuery UpdateDetectorModel where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateDetectorModelResponse' smart constructor.
data UpdateDetectorModelResponse = UpdateDetectorModelResponse'
  { -- | Information about how the detector model is configured.
    detectorModelConfiguration :: Prelude.Maybe DetectorModelConfiguration,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateDetectorModelResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'detectorModelConfiguration', 'updateDetectorModelResponse_detectorModelConfiguration' - Information about how the detector model is configured.
--
-- 'httpStatus', 'updateDetectorModelResponse_httpStatus' - The response's http status code.
newUpdateDetectorModelResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateDetectorModelResponse
newUpdateDetectorModelResponse pHttpStatus_ =
  UpdateDetectorModelResponse'
    { detectorModelConfiguration =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about how the detector model is configured.
updateDetectorModelResponse_detectorModelConfiguration :: Lens.Lens' UpdateDetectorModelResponse (Prelude.Maybe DetectorModelConfiguration)
updateDetectorModelResponse_detectorModelConfiguration = Lens.lens (\UpdateDetectorModelResponse' {detectorModelConfiguration} -> detectorModelConfiguration) (\s@UpdateDetectorModelResponse' {} a -> s {detectorModelConfiguration = a} :: UpdateDetectorModelResponse)

-- | The response's http status code.
updateDetectorModelResponse_httpStatus :: Lens.Lens' UpdateDetectorModelResponse Prelude.Int
updateDetectorModelResponse_httpStatus = Lens.lens (\UpdateDetectorModelResponse' {httpStatus} -> httpStatus) (\s@UpdateDetectorModelResponse' {} a -> s {httpStatus = a} :: UpdateDetectorModelResponse)

instance Prelude.NFData UpdateDetectorModelResponse
