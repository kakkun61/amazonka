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
-- Module      : Network.AWS.IoTEvents.CreateDetectorModel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a detector model.
module Network.AWS.IoTEvents.CreateDetectorModel
  ( -- * Creating a Request
    CreateDetectorModel (..),
    newCreateDetectorModel,

    -- * Request Lenses
    createDetectorModel_detectorModelDescription,
    createDetectorModel_key,
    createDetectorModel_evaluationMethod,
    createDetectorModel_tags,
    createDetectorModel_detectorModelName,
    createDetectorModel_detectorModelDefinition,
    createDetectorModel_roleArn,

    -- * Destructuring the Response
    CreateDetectorModelResponse (..),
    newCreateDetectorModelResponse,

    -- * Response Lenses
    createDetectorModelResponse_detectorModelConfiguration,
    createDetectorModelResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTEvents.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateDetectorModel' smart constructor.
data CreateDetectorModel = CreateDetectorModel'
  { -- | A brief description of the detector model.
    detectorModelDescription :: Prelude.Maybe Prelude.Text,
    -- | The input attribute key used to identify a device or system to create a
    -- detector (an instance of the detector model) and then to route each
    -- input received to the appropriate detector (instance). This parameter
    -- uses a JSON-path expression in the message payload of each input to
    -- specify the attribute-value pair that is used to identify the device
    -- associated with the input.
    key :: Prelude.Maybe Prelude.Text,
    -- | Information about the order in which events are evaluated and how
    -- actions are executed.
    evaluationMethod :: Prelude.Maybe EvaluationMethod,
    -- | Metadata that can be used to manage the detector model.
    tags :: Prelude.Maybe [Tag],
    -- | The name of the detector model.
    detectorModelName :: Prelude.Text,
    -- | Information that defines how the detectors operate.
    detectorModelDefinition :: DetectorModelDefinition,
    -- | The ARN of the role that grants permission to AWS IoT Events to perform
    -- its operations.
    roleArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDetectorModel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'detectorModelDescription', 'createDetectorModel_detectorModelDescription' - A brief description of the detector model.
--
-- 'key', 'createDetectorModel_key' - The input attribute key used to identify a device or system to create a
-- detector (an instance of the detector model) and then to route each
-- input received to the appropriate detector (instance). This parameter
-- uses a JSON-path expression in the message payload of each input to
-- specify the attribute-value pair that is used to identify the device
-- associated with the input.
--
-- 'evaluationMethod', 'createDetectorModel_evaluationMethod' - Information about the order in which events are evaluated and how
-- actions are executed.
--
-- 'tags', 'createDetectorModel_tags' - Metadata that can be used to manage the detector model.
--
-- 'detectorModelName', 'createDetectorModel_detectorModelName' - The name of the detector model.
--
-- 'detectorModelDefinition', 'createDetectorModel_detectorModelDefinition' - Information that defines how the detectors operate.
--
-- 'roleArn', 'createDetectorModel_roleArn' - The ARN of the role that grants permission to AWS IoT Events to perform
-- its operations.
newCreateDetectorModel ::
  -- | 'detectorModelName'
  Prelude.Text ->
  -- | 'detectorModelDefinition'
  DetectorModelDefinition ->
  -- | 'roleArn'
  Prelude.Text ->
  CreateDetectorModel
newCreateDetectorModel
  pDetectorModelName_
  pDetectorModelDefinition_
  pRoleArn_ =
    CreateDetectorModel'
      { detectorModelDescription =
          Prelude.Nothing,
        key = Prelude.Nothing,
        evaluationMethod = Prelude.Nothing,
        tags = Prelude.Nothing,
        detectorModelName = pDetectorModelName_,
        detectorModelDefinition = pDetectorModelDefinition_,
        roleArn = pRoleArn_
      }

-- | A brief description of the detector model.
createDetectorModel_detectorModelDescription :: Lens.Lens' CreateDetectorModel (Prelude.Maybe Prelude.Text)
createDetectorModel_detectorModelDescription = Lens.lens (\CreateDetectorModel' {detectorModelDescription} -> detectorModelDescription) (\s@CreateDetectorModel' {} a -> s {detectorModelDescription = a} :: CreateDetectorModel)

-- | The input attribute key used to identify a device or system to create a
-- detector (an instance of the detector model) and then to route each
-- input received to the appropriate detector (instance). This parameter
-- uses a JSON-path expression in the message payload of each input to
-- specify the attribute-value pair that is used to identify the device
-- associated with the input.
createDetectorModel_key :: Lens.Lens' CreateDetectorModel (Prelude.Maybe Prelude.Text)
createDetectorModel_key = Lens.lens (\CreateDetectorModel' {key} -> key) (\s@CreateDetectorModel' {} a -> s {key = a} :: CreateDetectorModel)

-- | Information about the order in which events are evaluated and how
-- actions are executed.
createDetectorModel_evaluationMethod :: Lens.Lens' CreateDetectorModel (Prelude.Maybe EvaluationMethod)
createDetectorModel_evaluationMethod = Lens.lens (\CreateDetectorModel' {evaluationMethod} -> evaluationMethod) (\s@CreateDetectorModel' {} a -> s {evaluationMethod = a} :: CreateDetectorModel)

-- | Metadata that can be used to manage the detector model.
createDetectorModel_tags :: Lens.Lens' CreateDetectorModel (Prelude.Maybe [Tag])
createDetectorModel_tags = Lens.lens (\CreateDetectorModel' {tags} -> tags) (\s@CreateDetectorModel' {} a -> s {tags = a} :: CreateDetectorModel) Prelude.. Lens.mapping Lens.coerced

-- | The name of the detector model.
createDetectorModel_detectorModelName :: Lens.Lens' CreateDetectorModel Prelude.Text
createDetectorModel_detectorModelName = Lens.lens (\CreateDetectorModel' {detectorModelName} -> detectorModelName) (\s@CreateDetectorModel' {} a -> s {detectorModelName = a} :: CreateDetectorModel)

-- | Information that defines how the detectors operate.
createDetectorModel_detectorModelDefinition :: Lens.Lens' CreateDetectorModel DetectorModelDefinition
createDetectorModel_detectorModelDefinition = Lens.lens (\CreateDetectorModel' {detectorModelDefinition} -> detectorModelDefinition) (\s@CreateDetectorModel' {} a -> s {detectorModelDefinition = a} :: CreateDetectorModel)

-- | The ARN of the role that grants permission to AWS IoT Events to perform
-- its operations.
createDetectorModel_roleArn :: Lens.Lens' CreateDetectorModel Prelude.Text
createDetectorModel_roleArn = Lens.lens (\CreateDetectorModel' {roleArn} -> roleArn) (\s@CreateDetectorModel' {} a -> s {roleArn = a} :: CreateDetectorModel)

instance Core.AWSRequest CreateDetectorModel where
  type
    AWSResponse CreateDetectorModel =
      CreateDetectorModelResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateDetectorModelResponse'
            Prelude.<$> (x Core..?> "detectorModelConfiguration")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateDetectorModel

instance Prelude.NFData CreateDetectorModel

instance Core.ToHeaders CreateDetectorModel where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON CreateDetectorModel where
  toJSON CreateDetectorModel' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("detectorModelDescription" Core..=)
              Prelude.<$> detectorModelDescription,
            ("key" Core..=) Prelude.<$> key,
            ("evaluationMethod" Core..=)
              Prelude.<$> evaluationMethod,
            ("tags" Core..=) Prelude.<$> tags,
            Prelude.Just
              ("detectorModelName" Core..= detectorModelName),
            Prelude.Just
              ( "detectorModelDefinition"
                  Core..= detectorModelDefinition
              ),
            Prelude.Just ("roleArn" Core..= roleArn)
          ]
      )

instance Core.ToPath CreateDetectorModel where
  toPath = Prelude.const "/detector-models"

instance Core.ToQuery CreateDetectorModel where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateDetectorModelResponse' smart constructor.
data CreateDetectorModelResponse = CreateDetectorModelResponse'
  { -- | Information about how the detector model is configured.
    detectorModelConfiguration :: Prelude.Maybe DetectorModelConfiguration,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDetectorModelResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'detectorModelConfiguration', 'createDetectorModelResponse_detectorModelConfiguration' - Information about how the detector model is configured.
--
-- 'httpStatus', 'createDetectorModelResponse_httpStatus' - The response's http status code.
newCreateDetectorModelResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateDetectorModelResponse
newCreateDetectorModelResponse pHttpStatus_ =
  CreateDetectorModelResponse'
    { detectorModelConfiguration =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about how the detector model is configured.
createDetectorModelResponse_detectorModelConfiguration :: Lens.Lens' CreateDetectorModelResponse (Prelude.Maybe DetectorModelConfiguration)
createDetectorModelResponse_detectorModelConfiguration = Lens.lens (\CreateDetectorModelResponse' {detectorModelConfiguration} -> detectorModelConfiguration) (\s@CreateDetectorModelResponse' {} a -> s {detectorModelConfiguration = a} :: CreateDetectorModelResponse)

-- | The response's http status code.
createDetectorModelResponse_httpStatus :: Lens.Lens' CreateDetectorModelResponse Prelude.Int
createDetectorModelResponse_httpStatus = Lens.lens (\CreateDetectorModelResponse' {httpStatus} -> httpStatus) (\s@CreateDetectorModelResponse' {} a -> s {httpStatus = a} :: CreateDetectorModelResponse)

instance Prelude.NFData CreateDetectorModelResponse
