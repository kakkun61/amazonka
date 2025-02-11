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
-- Module      : Network.AWS.Amplify.CreateWebhook
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new webhook on an Amplify app.
module Network.AWS.Amplify.CreateWebhook
  ( -- * Creating a Request
    CreateWebhook (..),
    newCreateWebhook,

    -- * Request Lenses
    createWebhook_description,
    createWebhook_appId,
    createWebhook_branchName,

    -- * Destructuring the Response
    CreateWebhookResponse (..),
    newCreateWebhookResponse,

    -- * Response Lenses
    createWebhookResponse_httpStatus,
    createWebhookResponse_webhook,
  )
where

import Network.AWS.Amplify.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The request structure for the create webhook request.
--
-- /See:/ 'newCreateWebhook' smart constructor.
data CreateWebhook = CreateWebhook'
  { -- | The description for a webhook.
    description :: Prelude.Maybe Prelude.Text,
    -- | The unique ID for an Amplify app.
    appId :: Prelude.Text,
    -- | The name for a branch that is part of an Amplify app.
    branchName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateWebhook' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'description', 'createWebhook_description' - The description for a webhook.
--
-- 'appId', 'createWebhook_appId' - The unique ID for an Amplify app.
--
-- 'branchName', 'createWebhook_branchName' - The name for a branch that is part of an Amplify app.
newCreateWebhook ::
  -- | 'appId'
  Prelude.Text ->
  -- | 'branchName'
  Prelude.Text ->
  CreateWebhook
newCreateWebhook pAppId_ pBranchName_ =
  CreateWebhook'
    { description = Prelude.Nothing,
      appId = pAppId_,
      branchName = pBranchName_
    }

-- | The description for a webhook.
createWebhook_description :: Lens.Lens' CreateWebhook (Prelude.Maybe Prelude.Text)
createWebhook_description = Lens.lens (\CreateWebhook' {description} -> description) (\s@CreateWebhook' {} a -> s {description = a} :: CreateWebhook)

-- | The unique ID for an Amplify app.
createWebhook_appId :: Lens.Lens' CreateWebhook Prelude.Text
createWebhook_appId = Lens.lens (\CreateWebhook' {appId} -> appId) (\s@CreateWebhook' {} a -> s {appId = a} :: CreateWebhook)

-- | The name for a branch that is part of an Amplify app.
createWebhook_branchName :: Lens.Lens' CreateWebhook Prelude.Text
createWebhook_branchName = Lens.lens (\CreateWebhook' {branchName} -> branchName) (\s@CreateWebhook' {} a -> s {branchName = a} :: CreateWebhook)

instance Core.AWSRequest CreateWebhook where
  type
    AWSResponse CreateWebhook =
      CreateWebhookResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateWebhookResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "webhook")
      )

instance Prelude.Hashable CreateWebhook

instance Prelude.NFData CreateWebhook

instance Core.ToHeaders CreateWebhook where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateWebhook where
  toJSON CreateWebhook' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("description" Core..=) Prelude.<$> description,
            Prelude.Just ("branchName" Core..= branchName)
          ]
      )

instance Core.ToPath CreateWebhook where
  toPath CreateWebhook' {..} =
    Prelude.mconcat
      ["/apps/", Core.toBS appId, "/webhooks"]

instance Core.ToQuery CreateWebhook where
  toQuery = Prelude.const Prelude.mempty

-- | The result structure for the create webhook request.
--
-- /See:/ 'newCreateWebhookResponse' smart constructor.
data CreateWebhookResponse = CreateWebhookResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | Describes a webhook that connects repository events to an Amplify app.
    webhook :: Webhook
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateWebhookResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createWebhookResponse_httpStatus' - The response's http status code.
--
-- 'webhook', 'createWebhookResponse_webhook' - Describes a webhook that connects repository events to an Amplify app.
newCreateWebhookResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'webhook'
  Webhook ->
  CreateWebhookResponse
newCreateWebhookResponse pHttpStatus_ pWebhook_ =
  CreateWebhookResponse'
    { httpStatus = pHttpStatus_,
      webhook = pWebhook_
    }

-- | The response's http status code.
createWebhookResponse_httpStatus :: Lens.Lens' CreateWebhookResponse Prelude.Int
createWebhookResponse_httpStatus = Lens.lens (\CreateWebhookResponse' {httpStatus} -> httpStatus) (\s@CreateWebhookResponse' {} a -> s {httpStatus = a} :: CreateWebhookResponse)

-- | Describes a webhook that connects repository events to an Amplify app.
createWebhookResponse_webhook :: Lens.Lens' CreateWebhookResponse Webhook
createWebhookResponse_webhook = Lens.lens (\CreateWebhookResponse' {webhook} -> webhook) (\s@CreateWebhookResponse' {} a -> s {webhook = a} :: CreateWebhookResponse)

instance Prelude.NFData CreateWebhookResponse
