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
-- Module      : Network.AWS.Amplify.UpdateWebhook
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a webhook.
module Network.AWS.Amplify.UpdateWebhook
  ( -- * Creating a Request
    UpdateWebhook (..),
    newUpdateWebhook,

    -- * Request Lenses
    updateWebhook_branchName,
    updateWebhook_description,
    updateWebhook_webhookId,

    -- * Destructuring the Response
    UpdateWebhookResponse (..),
    newUpdateWebhookResponse,

    -- * Response Lenses
    updateWebhookResponse_httpStatus,
    updateWebhookResponse_webhook,
  )
where

import Network.AWS.Amplify.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The request structure for the update webhook request.
--
-- /See:/ 'newUpdateWebhook' smart constructor.
data UpdateWebhook = UpdateWebhook'
  { -- | The name for a branch that is part of an Amplify app.
    branchName :: Prelude.Maybe Prelude.Text,
    -- | The description for a webhook.
    description :: Prelude.Maybe Prelude.Text,
    -- | The unique ID for a webhook.
    webhookId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateWebhook' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'branchName', 'updateWebhook_branchName' - The name for a branch that is part of an Amplify app.
--
-- 'description', 'updateWebhook_description' - The description for a webhook.
--
-- 'webhookId', 'updateWebhook_webhookId' - The unique ID for a webhook.
newUpdateWebhook ::
  -- | 'webhookId'
  Prelude.Text ->
  UpdateWebhook
newUpdateWebhook pWebhookId_ =
  UpdateWebhook'
    { branchName = Prelude.Nothing,
      description = Prelude.Nothing,
      webhookId = pWebhookId_
    }

-- | The name for a branch that is part of an Amplify app.
updateWebhook_branchName :: Lens.Lens' UpdateWebhook (Prelude.Maybe Prelude.Text)
updateWebhook_branchName = Lens.lens (\UpdateWebhook' {branchName} -> branchName) (\s@UpdateWebhook' {} a -> s {branchName = a} :: UpdateWebhook)

-- | The description for a webhook.
updateWebhook_description :: Lens.Lens' UpdateWebhook (Prelude.Maybe Prelude.Text)
updateWebhook_description = Lens.lens (\UpdateWebhook' {description} -> description) (\s@UpdateWebhook' {} a -> s {description = a} :: UpdateWebhook)

-- | The unique ID for a webhook.
updateWebhook_webhookId :: Lens.Lens' UpdateWebhook Prelude.Text
updateWebhook_webhookId = Lens.lens (\UpdateWebhook' {webhookId} -> webhookId) (\s@UpdateWebhook' {} a -> s {webhookId = a} :: UpdateWebhook)

instance Core.AWSRequest UpdateWebhook where
  type
    AWSResponse UpdateWebhook =
      UpdateWebhookResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateWebhookResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "webhook")
      )

instance Prelude.Hashable UpdateWebhook

instance Prelude.NFData UpdateWebhook

instance Core.ToHeaders UpdateWebhook where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateWebhook where
  toJSON UpdateWebhook' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("branchName" Core..=) Prelude.<$> branchName,
            ("description" Core..=) Prelude.<$> description
          ]
      )

instance Core.ToPath UpdateWebhook where
  toPath UpdateWebhook' {..} =
    Prelude.mconcat ["/webhooks/", Core.toBS webhookId]

instance Core.ToQuery UpdateWebhook where
  toQuery = Prelude.const Prelude.mempty

-- | The result structure for the update webhook request.
--
-- /See:/ 'newUpdateWebhookResponse' smart constructor.
data UpdateWebhookResponse = UpdateWebhookResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | Describes a webhook that connects repository events to an Amplify app.
    webhook :: Webhook
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateWebhookResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateWebhookResponse_httpStatus' - The response's http status code.
--
-- 'webhook', 'updateWebhookResponse_webhook' - Describes a webhook that connects repository events to an Amplify app.
newUpdateWebhookResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'webhook'
  Webhook ->
  UpdateWebhookResponse
newUpdateWebhookResponse pHttpStatus_ pWebhook_ =
  UpdateWebhookResponse'
    { httpStatus = pHttpStatus_,
      webhook = pWebhook_
    }

-- | The response's http status code.
updateWebhookResponse_httpStatus :: Lens.Lens' UpdateWebhookResponse Prelude.Int
updateWebhookResponse_httpStatus = Lens.lens (\UpdateWebhookResponse' {httpStatus} -> httpStatus) (\s@UpdateWebhookResponse' {} a -> s {httpStatus = a} :: UpdateWebhookResponse)

-- | Describes a webhook that connects repository events to an Amplify app.
updateWebhookResponse_webhook :: Lens.Lens' UpdateWebhookResponse Webhook
updateWebhookResponse_webhook = Lens.lens (\UpdateWebhookResponse' {webhook} -> webhook) (\s@UpdateWebhookResponse' {} a -> s {webhook = a} :: UpdateWebhookResponse)

instance Prelude.NFData UpdateWebhookResponse
