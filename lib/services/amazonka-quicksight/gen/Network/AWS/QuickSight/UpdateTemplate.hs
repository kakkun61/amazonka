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
-- Module      : Network.AWS.QuickSight.UpdateTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a template from an existing Amazon QuickSight analysis or
-- another template.
module Network.AWS.QuickSight.UpdateTemplate
  ( -- * Creating a Request
    UpdateTemplate (..),
    newUpdateTemplate,

    -- * Request Lenses
    updateTemplate_versionDescription,
    updateTemplate_name,
    updateTemplate_awsAccountId,
    updateTemplate_templateId,
    updateTemplate_sourceEntity,

    -- * Destructuring the Response
    UpdateTemplateResponse (..),
    newUpdateTemplateResponse,

    -- * Response Lenses
    updateTemplateResponse_requestId,
    updateTemplateResponse_arn,
    updateTemplateResponse_creationStatus,
    updateTemplateResponse_templateId,
    updateTemplateResponse_versionArn,
    updateTemplateResponse_status,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateTemplate' smart constructor.
data UpdateTemplate = UpdateTemplate'
  { -- | A description of the current template version that is being updated.
    -- Every time you call @UpdateTemplate@, you create a new version of the
    -- template. Each version of the template maintains a description of the
    -- version in the @VersionDescription@ field.
    versionDescription :: Prelude.Maybe Prelude.Text,
    -- | The name for the template.
    name :: Prelude.Maybe Prelude.Text,
    -- | The ID of the Amazon Web Services account that contains the template
    -- that you\'re updating.
    awsAccountId :: Prelude.Text,
    -- | The ID for the template.
    templateId :: Prelude.Text,
    -- | The entity that you are using as a source when you update the template.
    -- In @SourceEntity@, you specify the type of object you\'re using as
    -- source: @SourceTemplate@ for a template or @SourceAnalysis@ for an
    -- analysis. Both of these require an Amazon Resource Name (ARN). For
    -- @SourceTemplate@, specify the ARN of the source template. For
    -- @SourceAnalysis@, specify the ARN of the source analysis. The
    -- @SourceTemplate@ ARN can contain any Amazon Web Services account and any
    -- Amazon QuickSight-supported Amazon Web Services Region;.
    --
    -- Use the @DataSetReferences@ entity within @SourceTemplate@ or
    -- @SourceAnalysis@ to list the replacement datasets for the placeholders
    -- listed in the original. The schema in each dataset must match its
    -- placeholder.
    sourceEntity :: TemplateSourceEntity
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateTemplate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'versionDescription', 'updateTemplate_versionDescription' - A description of the current template version that is being updated.
-- Every time you call @UpdateTemplate@, you create a new version of the
-- template. Each version of the template maintains a description of the
-- version in the @VersionDescription@ field.
--
-- 'name', 'updateTemplate_name' - The name for the template.
--
-- 'awsAccountId', 'updateTemplate_awsAccountId' - The ID of the Amazon Web Services account that contains the template
-- that you\'re updating.
--
-- 'templateId', 'updateTemplate_templateId' - The ID for the template.
--
-- 'sourceEntity', 'updateTemplate_sourceEntity' - The entity that you are using as a source when you update the template.
-- In @SourceEntity@, you specify the type of object you\'re using as
-- source: @SourceTemplate@ for a template or @SourceAnalysis@ for an
-- analysis. Both of these require an Amazon Resource Name (ARN). For
-- @SourceTemplate@, specify the ARN of the source template. For
-- @SourceAnalysis@, specify the ARN of the source analysis. The
-- @SourceTemplate@ ARN can contain any Amazon Web Services account and any
-- Amazon QuickSight-supported Amazon Web Services Region;.
--
-- Use the @DataSetReferences@ entity within @SourceTemplate@ or
-- @SourceAnalysis@ to list the replacement datasets for the placeholders
-- listed in the original. The schema in each dataset must match its
-- placeholder.
newUpdateTemplate ::
  -- | 'awsAccountId'
  Prelude.Text ->
  -- | 'templateId'
  Prelude.Text ->
  -- | 'sourceEntity'
  TemplateSourceEntity ->
  UpdateTemplate
newUpdateTemplate
  pAwsAccountId_
  pTemplateId_
  pSourceEntity_ =
    UpdateTemplate'
      { versionDescription =
          Prelude.Nothing,
        name = Prelude.Nothing,
        awsAccountId = pAwsAccountId_,
        templateId = pTemplateId_,
        sourceEntity = pSourceEntity_
      }

-- | A description of the current template version that is being updated.
-- Every time you call @UpdateTemplate@, you create a new version of the
-- template. Each version of the template maintains a description of the
-- version in the @VersionDescription@ field.
updateTemplate_versionDescription :: Lens.Lens' UpdateTemplate (Prelude.Maybe Prelude.Text)
updateTemplate_versionDescription = Lens.lens (\UpdateTemplate' {versionDescription} -> versionDescription) (\s@UpdateTemplate' {} a -> s {versionDescription = a} :: UpdateTemplate)

-- | The name for the template.
updateTemplate_name :: Lens.Lens' UpdateTemplate (Prelude.Maybe Prelude.Text)
updateTemplate_name = Lens.lens (\UpdateTemplate' {name} -> name) (\s@UpdateTemplate' {} a -> s {name = a} :: UpdateTemplate)

-- | The ID of the Amazon Web Services account that contains the template
-- that you\'re updating.
updateTemplate_awsAccountId :: Lens.Lens' UpdateTemplate Prelude.Text
updateTemplate_awsAccountId = Lens.lens (\UpdateTemplate' {awsAccountId} -> awsAccountId) (\s@UpdateTemplate' {} a -> s {awsAccountId = a} :: UpdateTemplate)

-- | The ID for the template.
updateTemplate_templateId :: Lens.Lens' UpdateTemplate Prelude.Text
updateTemplate_templateId = Lens.lens (\UpdateTemplate' {templateId} -> templateId) (\s@UpdateTemplate' {} a -> s {templateId = a} :: UpdateTemplate)

-- | The entity that you are using as a source when you update the template.
-- In @SourceEntity@, you specify the type of object you\'re using as
-- source: @SourceTemplate@ for a template or @SourceAnalysis@ for an
-- analysis. Both of these require an Amazon Resource Name (ARN). For
-- @SourceTemplate@, specify the ARN of the source template. For
-- @SourceAnalysis@, specify the ARN of the source analysis. The
-- @SourceTemplate@ ARN can contain any Amazon Web Services account and any
-- Amazon QuickSight-supported Amazon Web Services Region;.
--
-- Use the @DataSetReferences@ entity within @SourceTemplate@ or
-- @SourceAnalysis@ to list the replacement datasets for the placeholders
-- listed in the original. The schema in each dataset must match its
-- placeholder.
updateTemplate_sourceEntity :: Lens.Lens' UpdateTemplate TemplateSourceEntity
updateTemplate_sourceEntity = Lens.lens (\UpdateTemplate' {sourceEntity} -> sourceEntity) (\s@UpdateTemplate' {} a -> s {sourceEntity = a} :: UpdateTemplate)

instance Core.AWSRequest UpdateTemplate where
  type
    AWSResponse UpdateTemplate =
      UpdateTemplateResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateTemplateResponse'
            Prelude.<$> (x Core..?> "RequestId")
            Prelude.<*> (x Core..?> "Arn")
            Prelude.<*> (x Core..?> "CreationStatus")
            Prelude.<*> (x Core..?> "TemplateId")
            Prelude.<*> (x Core..?> "VersionArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateTemplate

instance Prelude.NFData UpdateTemplate

instance Core.ToHeaders UpdateTemplate where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateTemplate where
  toJSON UpdateTemplate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("VersionDescription" Core..=)
              Prelude.<$> versionDescription,
            ("Name" Core..=) Prelude.<$> name,
            Prelude.Just ("SourceEntity" Core..= sourceEntity)
          ]
      )

instance Core.ToPath UpdateTemplate where
  toPath UpdateTemplate' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS awsAccountId,
        "/templates/",
        Core.toBS templateId
      ]

instance Core.ToQuery UpdateTemplate where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateTemplateResponse' smart constructor.
data UpdateTemplateResponse = UpdateTemplateResponse'
  { -- | The Amazon Web Services request ID for this operation.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) for the template.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The creation status of the template.
    creationStatus :: Prelude.Maybe ResourceStatus,
    -- | The ID for the template.
    templateId :: Prelude.Maybe Prelude.Text,
    -- | The ARN for the template, including the version information of the first
    -- version.
    versionArn :: Prelude.Maybe Prelude.Text,
    -- | The HTTP status of the request.
    status :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateTemplateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'updateTemplateResponse_requestId' - The Amazon Web Services request ID for this operation.
--
-- 'arn', 'updateTemplateResponse_arn' - The Amazon Resource Name (ARN) for the template.
--
-- 'creationStatus', 'updateTemplateResponse_creationStatus' - The creation status of the template.
--
-- 'templateId', 'updateTemplateResponse_templateId' - The ID for the template.
--
-- 'versionArn', 'updateTemplateResponse_versionArn' - The ARN for the template, including the version information of the first
-- version.
--
-- 'status', 'updateTemplateResponse_status' - The HTTP status of the request.
newUpdateTemplateResponse ::
  -- | 'status'
  Prelude.Int ->
  UpdateTemplateResponse
newUpdateTemplateResponse pStatus_ =
  UpdateTemplateResponse'
    { requestId =
        Prelude.Nothing,
      arn = Prelude.Nothing,
      creationStatus = Prelude.Nothing,
      templateId = Prelude.Nothing,
      versionArn = Prelude.Nothing,
      status = pStatus_
    }

-- | The Amazon Web Services request ID for this operation.
updateTemplateResponse_requestId :: Lens.Lens' UpdateTemplateResponse (Prelude.Maybe Prelude.Text)
updateTemplateResponse_requestId = Lens.lens (\UpdateTemplateResponse' {requestId} -> requestId) (\s@UpdateTemplateResponse' {} a -> s {requestId = a} :: UpdateTemplateResponse)

-- | The Amazon Resource Name (ARN) for the template.
updateTemplateResponse_arn :: Lens.Lens' UpdateTemplateResponse (Prelude.Maybe Prelude.Text)
updateTemplateResponse_arn = Lens.lens (\UpdateTemplateResponse' {arn} -> arn) (\s@UpdateTemplateResponse' {} a -> s {arn = a} :: UpdateTemplateResponse)

-- | The creation status of the template.
updateTemplateResponse_creationStatus :: Lens.Lens' UpdateTemplateResponse (Prelude.Maybe ResourceStatus)
updateTemplateResponse_creationStatus = Lens.lens (\UpdateTemplateResponse' {creationStatus} -> creationStatus) (\s@UpdateTemplateResponse' {} a -> s {creationStatus = a} :: UpdateTemplateResponse)

-- | The ID for the template.
updateTemplateResponse_templateId :: Lens.Lens' UpdateTemplateResponse (Prelude.Maybe Prelude.Text)
updateTemplateResponse_templateId = Lens.lens (\UpdateTemplateResponse' {templateId} -> templateId) (\s@UpdateTemplateResponse' {} a -> s {templateId = a} :: UpdateTemplateResponse)

-- | The ARN for the template, including the version information of the first
-- version.
updateTemplateResponse_versionArn :: Lens.Lens' UpdateTemplateResponse (Prelude.Maybe Prelude.Text)
updateTemplateResponse_versionArn = Lens.lens (\UpdateTemplateResponse' {versionArn} -> versionArn) (\s@UpdateTemplateResponse' {} a -> s {versionArn = a} :: UpdateTemplateResponse)

-- | The HTTP status of the request.
updateTemplateResponse_status :: Lens.Lens' UpdateTemplateResponse Prelude.Int
updateTemplateResponse_status = Lens.lens (\UpdateTemplateResponse' {status} -> status) (\s@UpdateTemplateResponse' {} a -> s {status = a} :: UpdateTemplateResponse)

instance Prelude.NFData UpdateTemplateResponse
