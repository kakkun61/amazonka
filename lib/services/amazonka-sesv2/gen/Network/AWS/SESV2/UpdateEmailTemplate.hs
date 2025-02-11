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
-- Module      : Network.AWS.SESV2.UpdateEmailTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an email template. Email templates enable you to send
-- personalized email to one or more destinations in a single API
-- operation. For more information, see the
-- <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html Amazon SES Developer Guide>.
--
-- You can execute this operation no more than once per second.
module Network.AWS.SESV2.UpdateEmailTemplate
  ( -- * Creating a Request
    UpdateEmailTemplate (..),
    newUpdateEmailTemplate,

    -- * Request Lenses
    updateEmailTemplate_templateName,
    updateEmailTemplate_templateContent,

    -- * Destructuring the Response
    UpdateEmailTemplateResponse (..),
    newUpdateEmailTemplateResponse,

    -- * Response Lenses
    updateEmailTemplateResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SESV2.Types

-- | Represents a request to update an email template. For more information,
-- see the
-- <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html Amazon SES Developer Guide>.
--
-- /See:/ 'newUpdateEmailTemplate' smart constructor.
data UpdateEmailTemplate = UpdateEmailTemplate'
  { -- | The name of the template.
    templateName :: Prelude.Text,
    -- | The content of the email template, composed of a subject line, an HTML
    -- part, and a text-only part.
    templateContent :: EmailTemplateContent
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateEmailTemplate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'templateName', 'updateEmailTemplate_templateName' - The name of the template.
--
-- 'templateContent', 'updateEmailTemplate_templateContent' - The content of the email template, composed of a subject line, an HTML
-- part, and a text-only part.
newUpdateEmailTemplate ::
  -- | 'templateName'
  Prelude.Text ->
  -- | 'templateContent'
  EmailTemplateContent ->
  UpdateEmailTemplate
newUpdateEmailTemplate
  pTemplateName_
  pTemplateContent_ =
    UpdateEmailTemplate'
      { templateName = pTemplateName_,
        templateContent = pTemplateContent_
      }

-- | The name of the template.
updateEmailTemplate_templateName :: Lens.Lens' UpdateEmailTemplate Prelude.Text
updateEmailTemplate_templateName = Lens.lens (\UpdateEmailTemplate' {templateName} -> templateName) (\s@UpdateEmailTemplate' {} a -> s {templateName = a} :: UpdateEmailTemplate)

-- | The content of the email template, composed of a subject line, an HTML
-- part, and a text-only part.
updateEmailTemplate_templateContent :: Lens.Lens' UpdateEmailTemplate EmailTemplateContent
updateEmailTemplate_templateContent = Lens.lens (\UpdateEmailTemplate' {templateContent} -> templateContent) (\s@UpdateEmailTemplate' {} a -> s {templateContent = a} :: UpdateEmailTemplate)

instance Core.AWSRequest UpdateEmailTemplate where
  type
    AWSResponse UpdateEmailTemplate =
      UpdateEmailTemplateResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateEmailTemplateResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateEmailTemplate

instance Prelude.NFData UpdateEmailTemplate

instance Core.ToHeaders UpdateEmailTemplate where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateEmailTemplate where
  toJSON UpdateEmailTemplate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("TemplateContent" Core..= templateContent)
          ]
      )

instance Core.ToPath UpdateEmailTemplate where
  toPath UpdateEmailTemplate' {..} =
    Prelude.mconcat
      ["/v2/email/templates/", Core.toBS templateName]

instance Core.ToQuery UpdateEmailTemplate where
  toQuery = Prelude.const Prelude.mempty

-- | If the action is successful, the service sends back an HTTP 200 response
-- with an empty HTTP body.
--
-- /See:/ 'newUpdateEmailTemplateResponse' smart constructor.
data UpdateEmailTemplateResponse = UpdateEmailTemplateResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateEmailTemplateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateEmailTemplateResponse_httpStatus' - The response's http status code.
newUpdateEmailTemplateResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateEmailTemplateResponse
newUpdateEmailTemplateResponse pHttpStatus_ =
  UpdateEmailTemplateResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
updateEmailTemplateResponse_httpStatus :: Lens.Lens' UpdateEmailTemplateResponse Prelude.Int
updateEmailTemplateResponse_httpStatus = Lens.lens (\UpdateEmailTemplateResponse' {httpStatus} -> httpStatus) (\s@UpdateEmailTemplateResponse' {} a -> s {httpStatus = a} :: UpdateEmailTemplateResponse)

instance Prelude.NFData UpdateEmailTemplateResponse
