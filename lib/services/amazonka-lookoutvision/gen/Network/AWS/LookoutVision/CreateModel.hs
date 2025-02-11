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
-- Module      : Network.AWS.LookoutVision.CreateModel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new version of a model within an an Amazon Lookout for Vision
-- project. @CreateModel@ is an asynchronous operation in which Amazon
-- Lookout for Vision trains, tests, and evaluates a new version of a
-- model.
--
-- To get the current status, check the @Status@ field returned in the
-- response from DescribeModel.
--
-- If the project has a single dataset, Amazon Lookout for Vision
-- internally splits the dataset to create a training and a test dataset.
-- If the project has a training and a test dataset, Lookout for Vision
-- uses the respective datasets to train and test the model.
--
-- After training completes, the evaluation metrics are stored at the
-- location specified in @OutputConfig@.
--
-- This operation requires permissions to perform the
-- @lookoutvision:CreateModel@ operation. If you want to tag your model,
-- you also require permission to the @lookoutvision:TagResource@
-- operation.
module Network.AWS.LookoutVision.CreateModel
  ( -- * Creating a Request
    CreateModel (..),
    newCreateModel,

    -- * Request Lenses
    createModel_clientToken,
    createModel_kmsKeyId,
    createModel_description,
    createModel_tags,
    createModel_projectName,
    createModel_outputConfig,

    -- * Destructuring the Response
    CreateModelResponse (..),
    newCreateModelResponse,

    -- * Response Lenses
    createModelResponse_modelMetadata,
    createModelResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LookoutVision.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateModel' smart constructor.
data CreateModel = CreateModel'
  { -- | ClientToken is an idempotency token that ensures a call to @CreateModel@
    -- completes only once. You choose the value to pass. For example, An
    -- issue, such as an network outage, might prevent you from getting a
    -- response from @CreateModel@. In this case, safely retry your call to
    -- @CreateModel@ by using the same @ClientToken@ parameter value. An error
    -- occurs if the other input parameters are not the same as in the first
    -- request. Using a different value for @ClientToken@ is considered a new
    -- call to @CreateModel@. An idempotency token is active for 8 hours.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The identifier for your AWS Key Management Service (AWS KMS) customer
    -- master key (CMK). The key is used to encrypt training and test images
    -- copied into the service for model training. Your source images are
    -- unaffected. If this parameter is not specified, the copied images are
    -- encrypted by a key that AWS owns and manages.
    kmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | A description for the version of the model.
    description :: Prelude.Maybe Prelude.Text,
    -- | A set of tags (key-value pairs) that you want to attach to the model.
    tags :: Prelude.Maybe [Tag],
    -- | The name of the project in which you want to create a model version.
    projectName :: Prelude.Text,
    -- | The location where Amazon Lookout for Vision saves the training results.
    outputConfig :: OutputConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateModel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'createModel_clientToken' - ClientToken is an idempotency token that ensures a call to @CreateModel@
-- completes only once. You choose the value to pass. For example, An
-- issue, such as an network outage, might prevent you from getting a
-- response from @CreateModel@. In this case, safely retry your call to
-- @CreateModel@ by using the same @ClientToken@ parameter value. An error
-- occurs if the other input parameters are not the same as in the first
-- request. Using a different value for @ClientToken@ is considered a new
-- call to @CreateModel@. An idempotency token is active for 8 hours.
--
-- 'kmsKeyId', 'createModel_kmsKeyId' - The identifier for your AWS Key Management Service (AWS KMS) customer
-- master key (CMK). The key is used to encrypt training and test images
-- copied into the service for model training. Your source images are
-- unaffected. If this parameter is not specified, the copied images are
-- encrypted by a key that AWS owns and manages.
--
-- 'description', 'createModel_description' - A description for the version of the model.
--
-- 'tags', 'createModel_tags' - A set of tags (key-value pairs) that you want to attach to the model.
--
-- 'projectName', 'createModel_projectName' - The name of the project in which you want to create a model version.
--
-- 'outputConfig', 'createModel_outputConfig' - The location where Amazon Lookout for Vision saves the training results.
newCreateModel ::
  -- | 'projectName'
  Prelude.Text ->
  -- | 'outputConfig'
  OutputConfig ->
  CreateModel
newCreateModel pProjectName_ pOutputConfig_ =
  CreateModel'
    { clientToken = Prelude.Nothing,
      kmsKeyId = Prelude.Nothing,
      description = Prelude.Nothing,
      tags = Prelude.Nothing,
      projectName = pProjectName_,
      outputConfig = pOutputConfig_
    }

-- | ClientToken is an idempotency token that ensures a call to @CreateModel@
-- completes only once. You choose the value to pass. For example, An
-- issue, such as an network outage, might prevent you from getting a
-- response from @CreateModel@. In this case, safely retry your call to
-- @CreateModel@ by using the same @ClientToken@ parameter value. An error
-- occurs if the other input parameters are not the same as in the first
-- request. Using a different value for @ClientToken@ is considered a new
-- call to @CreateModel@. An idempotency token is active for 8 hours.
createModel_clientToken :: Lens.Lens' CreateModel (Prelude.Maybe Prelude.Text)
createModel_clientToken = Lens.lens (\CreateModel' {clientToken} -> clientToken) (\s@CreateModel' {} a -> s {clientToken = a} :: CreateModel)

-- | The identifier for your AWS Key Management Service (AWS KMS) customer
-- master key (CMK). The key is used to encrypt training and test images
-- copied into the service for model training. Your source images are
-- unaffected. If this parameter is not specified, the copied images are
-- encrypted by a key that AWS owns and manages.
createModel_kmsKeyId :: Lens.Lens' CreateModel (Prelude.Maybe Prelude.Text)
createModel_kmsKeyId = Lens.lens (\CreateModel' {kmsKeyId} -> kmsKeyId) (\s@CreateModel' {} a -> s {kmsKeyId = a} :: CreateModel)

-- | A description for the version of the model.
createModel_description :: Lens.Lens' CreateModel (Prelude.Maybe Prelude.Text)
createModel_description = Lens.lens (\CreateModel' {description} -> description) (\s@CreateModel' {} a -> s {description = a} :: CreateModel)

-- | A set of tags (key-value pairs) that you want to attach to the model.
createModel_tags :: Lens.Lens' CreateModel (Prelude.Maybe [Tag])
createModel_tags = Lens.lens (\CreateModel' {tags} -> tags) (\s@CreateModel' {} a -> s {tags = a} :: CreateModel) Prelude.. Lens.mapping Lens.coerced

-- | The name of the project in which you want to create a model version.
createModel_projectName :: Lens.Lens' CreateModel Prelude.Text
createModel_projectName = Lens.lens (\CreateModel' {projectName} -> projectName) (\s@CreateModel' {} a -> s {projectName = a} :: CreateModel)

-- | The location where Amazon Lookout for Vision saves the training results.
createModel_outputConfig :: Lens.Lens' CreateModel OutputConfig
createModel_outputConfig = Lens.lens (\CreateModel' {outputConfig} -> outputConfig) (\s@CreateModel' {} a -> s {outputConfig = a} :: CreateModel)

instance Core.AWSRequest CreateModel where
  type AWSResponse CreateModel = CreateModelResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateModelResponse'
            Prelude.<$> (x Core..?> "ModelMetadata")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateModel

instance Prelude.NFData CreateModel

instance Core.ToHeaders CreateModel where
  toHeaders CreateModel' {..} =
    Prelude.mconcat
      [ "X-Amzn-Client-Token" Core.=# clientToken,
        "Content-Type"
          Core.=# ("application/x-amz-json-1.1" :: Prelude.ByteString)
      ]

instance Core.ToJSON CreateModel where
  toJSON CreateModel' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("KmsKeyId" Core..=) Prelude.<$> kmsKeyId,
            ("Description" Core..=) Prelude.<$> description,
            ("Tags" Core..=) Prelude.<$> tags,
            Prelude.Just ("OutputConfig" Core..= outputConfig)
          ]
      )

instance Core.ToPath CreateModel where
  toPath CreateModel' {..} =
    Prelude.mconcat
      [ "/2020-11-20/projects/",
        Core.toBS projectName,
        "/models"
      ]

instance Core.ToQuery CreateModel where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateModelResponse' smart constructor.
data CreateModelResponse = CreateModelResponse'
  { -- | The response from a call to @CreateModel@.
    modelMetadata :: Prelude.Maybe ModelMetadata,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateModelResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'modelMetadata', 'createModelResponse_modelMetadata' - The response from a call to @CreateModel@.
--
-- 'httpStatus', 'createModelResponse_httpStatus' - The response's http status code.
newCreateModelResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateModelResponse
newCreateModelResponse pHttpStatus_ =
  CreateModelResponse'
    { modelMetadata =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The response from a call to @CreateModel@.
createModelResponse_modelMetadata :: Lens.Lens' CreateModelResponse (Prelude.Maybe ModelMetadata)
createModelResponse_modelMetadata = Lens.lens (\CreateModelResponse' {modelMetadata} -> modelMetadata) (\s@CreateModelResponse' {} a -> s {modelMetadata = a} :: CreateModelResponse)

-- | The response's http status code.
createModelResponse_httpStatus :: Lens.Lens' CreateModelResponse Prelude.Int
createModelResponse_httpStatus = Lens.lens (\CreateModelResponse' {httpStatus} -> httpStatus) (\s@CreateModelResponse' {} a -> s {httpStatus = a} :: CreateModelResponse)

instance Prelude.NFData CreateModelResponse
