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
-- Module      : Network.AWS.FraudDetector.CreateModelVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a version of the model using the specified model type and model
-- id.
module Network.AWS.FraudDetector.CreateModelVersion
  ( -- * Creating a Request
    CreateModelVersion (..),
    newCreateModelVersion,

    -- * Request Lenses
    createModelVersion_externalEventsDetail,
    createModelVersion_ingestedEventsDetail,
    createModelVersion_tags,
    createModelVersion_modelId,
    createModelVersion_modelType,
    createModelVersion_trainingDataSource,
    createModelVersion_trainingDataSchema,

    -- * Destructuring the Response
    CreateModelVersionResponse (..),
    newCreateModelVersionResponse,

    -- * Response Lenses
    createModelVersionResponse_status,
    createModelVersionResponse_modelType,
    createModelVersionResponse_modelId,
    createModelVersionResponse_modelVersionNumber,
    createModelVersionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.FraudDetector.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateModelVersion' smart constructor.
data CreateModelVersion = CreateModelVersion'
  { -- | Details of the external events data used for model version training.
    -- Required if @trainingDataSource@ is @EXTERNAL_EVENTS@.
    externalEventsDetail :: Prelude.Maybe ExternalEventsDetail,
    -- | Details of the ingested events data used for model version training.
    -- Required if @trainingDataSource@ is @INGESTED_EVENTS@.
    ingestedEventsDetail :: Prelude.Maybe IngestedEventsDetail,
    -- | A collection of key and value pairs.
    tags :: Prelude.Maybe [Tag],
    -- | The model ID.
    modelId :: Prelude.Text,
    -- | The model type.
    modelType :: ModelTypeEnum,
    -- | The training data source location in Amazon S3.
    trainingDataSource :: TrainingDataSourceEnum,
    -- | The training data schema.
    trainingDataSchema :: TrainingDataSchema
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateModelVersion' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'externalEventsDetail', 'createModelVersion_externalEventsDetail' - Details of the external events data used for model version training.
-- Required if @trainingDataSource@ is @EXTERNAL_EVENTS@.
--
-- 'ingestedEventsDetail', 'createModelVersion_ingestedEventsDetail' - Details of the ingested events data used for model version training.
-- Required if @trainingDataSource@ is @INGESTED_EVENTS@.
--
-- 'tags', 'createModelVersion_tags' - A collection of key and value pairs.
--
-- 'modelId', 'createModelVersion_modelId' - The model ID.
--
-- 'modelType', 'createModelVersion_modelType' - The model type.
--
-- 'trainingDataSource', 'createModelVersion_trainingDataSource' - The training data source location in Amazon S3.
--
-- 'trainingDataSchema', 'createModelVersion_trainingDataSchema' - The training data schema.
newCreateModelVersion ::
  -- | 'modelId'
  Prelude.Text ->
  -- | 'modelType'
  ModelTypeEnum ->
  -- | 'trainingDataSource'
  TrainingDataSourceEnum ->
  -- | 'trainingDataSchema'
  TrainingDataSchema ->
  CreateModelVersion
newCreateModelVersion
  pModelId_
  pModelType_
  pTrainingDataSource_
  pTrainingDataSchema_ =
    CreateModelVersion'
      { externalEventsDetail =
          Prelude.Nothing,
        ingestedEventsDetail = Prelude.Nothing,
        tags = Prelude.Nothing,
        modelId = pModelId_,
        modelType = pModelType_,
        trainingDataSource = pTrainingDataSource_,
        trainingDataSchema = pTrainingDataSchema_
      }

-- | Details of the external events data used for model version training.
-- Required if @trainingDataSource@ is @EXTERNAL_EVENTS@.
createModelVersion_externalEventsDetail :: Lens.Lens' CreateModelVersion (Prelude.Maybe ExternalEventsDetail)
createModelVersion_externalEventsDetail = Lens.lens (\CreateModelVersion' {externalEventsDetail} -> externalEventsDetail) (\s@CreateModelVersion' {} a -> s {externalEventsDetail = a} :: CreateModelVersion)

-- | Details of the ingested events data used for model version training.
-- Required if @trainingDataSource@ is @INGESTED_EVENTS@.
createModelVersion_ingestedEventsDetail :: Lens.Lens' CreateModelVersion (Prelude.Maybe IngestedEventsDetail)
createModelVersion_ingestedEventsDetail = Lens.lens (\CreateModelVersion' {ingestedEventsDetail} -> ingestedEventsDetail) (\s@CreateModelVersion' {} a -> s {ingestedEventsDetail = a} :: CreateModelVersion)

-- | A collection of key and value pairs.
createModelVersion_tags :: Lens.Lens' CreateModelVersion (Prelude.Maybe [Tag])
createModelVersion_tags = Lens.lens (\CreateModelVersion' {tags} -> tags) (\s@CreateModelVersion' {} a -> s {tags = a} :: CreateModelVersion) Prelude.. Lens.mapping Lens.coerced

-- | The model ID.
createModelVersion_modelId :: Lens.Lens' CreateModelVersion Prelude.Text
createModelVersion_modelId = Lens.lens (\CreateModelVersion' {modelId} -> modelId) (\s@CreateModelVersion' {} a -> s {modelId = a} :: CreateModelVersion)

-- | The model type.
createModelVersion_modelType :: Lens.Lens' CreateModelVersion ModelTypeEnum
createModelVersion_modelType = Lens.lens (\CreateModelVersion' {modelType} -> modelType) (\s@CreateModelVersion' {} a -> s {modelType = a} :: CreateModelVersion)

-- | The training data source location in Amazon S3.
createModelVersion_trainingDataSource :: Lens.Lens' CreateModelVersion TrainingDataSourceEnum
createModelVersion_trainingDataSource = Lens.lens (\CreateModelVersion' {trainingDataSource} -> trainingDataSource) (\s@CreateModelVersion' {} a -> s {trainingDataSource = a} :: CreateModelVersion)

-- | The training data schema.
createModelVersion_trainingDataSchema :: Lens.Lens' CreateModelVersion TrainingDataSchema
createModelVersion_trainingDataSchema = Lens.lens (\CreateModelVersion' {trainingDataSchema} -> trainingDataSchema) (\s@CreateModelVersion' {} a -> s {trainingDataSchema = a} :: CreateModelVersion)

instance Core.AWSRequest CreateModelVersion where
  type
    AWSResponse CreateModelVersion =
      CreateModelVersionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateModelVersionResponse'
            Prelude.<$> (x Core..?> "status")
            Prelude.<*> (x Core..?> "modelType")
            Prelude.<*> (x Core..?> "modelId")
            Prelude.<*> (x Core..?> "modelVersionNumber")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateModelVersion

instance Prelude.NFData CreateModelVersion

instance Core.ToHeaders CreateModelVersion where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSHawksNestServiceFacade.CreateModelVersion" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateModelVersion where
  toJSON CreateModelVersion' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("externalEventsDetail" Core..=)
              Prelude.<$> externalEventsDetail,
            ("ingestedEventsDetail" Core..=)
              Prelude.<$> ingestedEventsDetail,
            ("tags" Core..=) Prelude.<$> tags,
            Prelude.Just ("modelId" Core..= modelId),
            Prelude.Just ("modelType" Core..= modelType),
            Prelude.Just
              ("trainingDataSource" Core..= trainingDataSource),
            Prelude.Just
              ("trainingDataSchema" Core..= trainingDataSchema)
          ]
      )

instance Core.ToPath CreateModelVersion where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateModelVersion where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateModelVersionResponse' smart constructor.
data CreateModelVersionResponse = CreateModelVersionResponse'
  { -- | The model version status.
    status :: Prelude.Maybe Prelude.Text,
    -- | The model type.
    modelType :: Prelude.Maybe ModelTypeEnum,
    -- | The model ID.
    modelId :: Prelude.Maybe Prelude.Text,
    -- | The model version number of the model version created.
    modelVersionNumber :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateModelVersionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'createModelVersionResponse_status' - The model version status.
--
-- 'modelType', 'createModelVersionResponse_modelType' - The model type.
--
-- 'modelId', 'createModelVersionResponse_modelId' - The model ID.
--
-- 'modelVersionNumber', 'createModelVersionResponse_modelVersionNumber' - The model version number of the model version created.
--
-- 'httpStatus', 'createModelVersionResponse_httpStatus' - The response's http status code.
newCreateModelVersionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateModelVersionResponse
newCreateModelVersionResponse pHttpStatus_ =
  CreateModelVersionResponse'
    { status =
        Prelude.Nothing,
      modelType = Prelude.Nothing,
      modelId = Prelude.Nothing,
      modelVersionNumber = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The model version status.
createModelVersionResponse_status :: Lens.Lens' CreateModelVersionResponse (Prelude.Maybe Prelude.Text)
createModelVersionResponse_status = Lens.lens (\CreateModelVersionResponse' {status} -> status) (\s@CreateModelVersionResponse' {} a -> s {status = a} :: CreateModelVersionResponse)

-- | The model type.
createModelVersionResponse_modelType :: Lens.Lens' CreateModelVersionResponse (Prelude.Maybe ModelTypeEnum)
createModelVersionResponse_modelType = Lens.lens (\CreateModelVersionResponse' {modelType} -> modelType) (\s@CreateModelVersionResponse' {} a -> s {modelType = a} :: CreateModelVersionResponse)

-- | The model ID.
createModelVersionResponse_modelId :: Lens.Lens' CreateModelVersionResponse (Prelude.Maybe Prelude.Text)
createModelVersionResponse_modelId = Lens.lens (\CreateModelVersionResponse' {modelId} -> modelId) (\s@CreateModelVersionResponse' {} a -> s {modelId = a} :: CreateModelVersionResponse)

-- | The model version number of the model version created.
createModelVersionResponse_modelVersionNumber :: Lens.Lens' CreateModelVersionResponse (Prelude.Maybe Prelude.Text)
createModelVersionResponse_modelVersionNumber = Lens.lens (\CreateModelVersionResponse' {modelVersionNumber} -> modelVersionNumber) (\s@CreateModelVersionResponse' {} a -> s {modelVersionNumber = a} :: CreateModelVersionResponse)

-- | The response's http status code.
createModelVersionResponse_httpStatus :: Lens.Lens' CreateModelVersionResponse Prelude.Int
createModelVersionResponse_httpStatus = Lens.lens (\CreateModelVersionResponse' {httpStatus} -> httpStatus) (\s@CreateModelVersionResponse' {} a -> s {httpStatus = a} :: CreateModelVersionResponse)

instance Prelude.NFData CreateModelVersionResponse
