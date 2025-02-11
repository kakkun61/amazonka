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
-- Module      : Network.AWS.QuickSight.DeleteTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a template.
module Network.AWS.QuickSight.DeleteTemplate
  ( -- * Creating a Request
    DeleteTemplate (..),
    newDeleteTemplate,

    -- * Request Lenses
    deleteTemplate_versionNumber,
    deleteTemplate_awsAccountId,
    deleteTemplate_templateId,

    -- * Destructuring the Response
    DeleteTemplateResponse (..),
    newDeleteTemplateResponse,

    -- * Response Lenses
    deleteTemplateResponse_requestId,
    deleteTemplateResponse_arn,
    deleteTemplateResponse_templateId,
    deleteTemplateResponse_status,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteTemplate' smart constructor.
data DeleteTemplate = DeleteTemplate'
  { -- | Specifies the version of the template that you want to delete. If you
    -- don\'t provide a version number, @DeleteTemplate@ deletes all versions
    -- of the template.
    versionNumber :: Prelude.Maybe Prelude.Natural,
    -- | The ID of the Amazon Web Services account that contains the template
    -- that you\'re deleting.
    awsAccountId :: Prelude.Text,
    -- | An ID for the template you want to delete.
    templateId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteTemplate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'versionNumber', 'deleteTemplate_versionNumber' - Specifies the version of the template that you want to delete. If you
-- don\'t provide a version number, @DeleteTemplate@ deletes all versions
-- of the template.
--
-- 'awsAccountId', 'deleteTemplate_awsAccountId' - The ID of the Amazon Web Services account that contains the template
-- that you\'re deleting.
--
-- 'templateId', 'deleteTemplate_templateId' - An ID for the template you want to delete.
newDeleteTemplate ::
  -- | 'awsAccountId'
  Prelude.Text ->
  -- | 'templateId'
  Prelude.Text ->
  DeleteTemplate
newDeleteTemplate pAwsAccountId_ pTemplateId_ =
  DeleteTemplate'
    { versionNumber = Prelude.Nothing,
      awsAccountId = pAwsAccountId_,
      templateId = pTemplateId_
    }

-- | Specifies the version of the template that you want to delete. If you
-- don\'t provide a version number, @DeleteTemplate@ deletes all versions
-- of the template.
deleteTemplate_versionNumber :: Lens.Lens' DeleteTemplate (Prelude.Maybe Prelude.Natural)
deleteTemplate_versionNumber = Lens.lens (\DeleteTemplate' {versionNumber} -> versionNumber) (\s@DeleteTemplate' {} a -> s {versionNumber = a} :: DeleteTemplate)

-- | The ID of the Amazon Web Services account that contains the template
-- that you\'re deleting.
deleteTemplate_awsAccountId :: Lens.Lens' DeleteTemplate Prelude.Text
deleteTemplate_awsAccountId = Lens.lens (\DeleteTemplate' {awsAccountId} -> awsAccountId) (\s@DeleteTemplate' {} a -> s {awsAccountId = a} :: DeleteTemplate)

-- | An ID for the template you want to delete.
deleteTemplate_templateId :: Lens.Lens' DeleteTemplate Prelude.Text
deleteTemplate_templateId = Lens.lens (\DeleteTemplate' {templateId} -> templateId) (\s@DeleteTemplate' {} a -> s {templateId = a} :: DeleteTemplate)

instance Core.AWSRequest DeleteTemplate where
  type
    AWSResponse DeleteTemplate =
      DeleteTemplateResponse
  request = Request.delete defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteTemplateResponse'
            Prelude.<$> (x Core..?> "RequestId")
            Prelude.<*> (x Core..?> "Arn")
            Prelude.<*> (x Core..?> "TemplateId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteTemplate

instance Prelude.NFData DeleteTemplate

instance Core.ToHeaders DeleteTemplate where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteTemplate where
  toPath DeleteTemplate' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS awsAccountId,
        "/templates/",
        Core.toBS templateId
      ]

instance Core.ToQuery DeleteTemplate where
  toQuery DeleteTemplate' {..} =
    Prelude.mconcat
      ["version-number" Core.=: versionNumber]

-- | /See:/ 'newDeleteTemplateResponse' smart constructor.
data DeleteTemplateResponse = DeleteTemplateResponse'
  { -- | The Amazon Web Services request ID for this operation.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the resource.
    arn :: Prelude.Maybe Prelude.Text,
    -- | An ID for the template.
    templateId :: Prelude.Maybe Prelude.Text,
    -- | The HTTP status of the request.
    status :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteTemplateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'deleteTemplateResponse_requestId' - The Amazon Web Services request ID for this operation.
--
-- 'arn', 'deleteTemplateResponse_arn' - The Amazon Resource Name (ARN) of the resource.
--
-- 'templateId', 'deleteTemplateResponse_templateId' - An ID for the template.
--
-- 'status', 'deleteTemplateResponse_status' - The HTTP status of the request.
newDeleteTemplateResponse ::
  -- | 'status'
  Prelude.Int ->
  DeleteTemplateResponse
newDeleteTemplateResponse pStatus_ =
  DeleteTemplateResponse'
    { requestId =
        Prelude.Nothing,
      arn = Prelude.Nothing,
      templateId = Prelude.Nothing,
      status = pStatus_
    }

-- | The Amazon Web Services request ID for this operation.
deleteTemplateResponse_requestId :: Lens.Lens' DeleteTemplateResponse (Prelude.Maybe Prelude.Text)
deleteTemplateResponse_requestId = Lens.lens (\DeleteTemplateResponse' {requestId} -> requestId) (\s@DeleteTemplateResponse' {} a -> s {requestId = a} :: DeleteTemplateResponse)

-- | The Amazon Resource Name (ARN) of the resource.
deleteTemplateResponse_arn :: Lens.Lens' DeleteTemplateResponse (Prelude.Maybe Prelude.Text)
deleteTemplateResponse_arn = Lens.lens (\DeleteTemplateResponse' {arn} -> arn) (\s@DeleteTemplateResponse' {} a -> s {arn = a} :: DeleteTemplateResponse)

-- | An ID for the template.
deleteTemplateResponse_templateId :: Lens.Lens' DeleteTemplateResponse (Prelude.Maybe Prelude.Text)
deleteTemplateResponse_templateId = Lens.lens (\DeleteTemplateResponse' {templateId} -> templateId) (\s@DeleteTemplateResponse' {} a -> s {templateId = a} :: DeleteTemplateResponse)

-- | The HTTP status of the request.
deleteTemplateResponse_status :: Lens.Lens' DeleteTemplateResponse Prelude.Int
deleteTemplateResponse_status = Lens.lens (\DeleteTemplateResponse' {status} -> status) (\s@DeleteTemplateResponse' {} a -> s {status = a} :: DeleteTemplateResponse)

instance Prelude.NFData DeleteTemplateResponse
