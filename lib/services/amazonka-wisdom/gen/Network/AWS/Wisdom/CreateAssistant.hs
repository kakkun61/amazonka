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
-- Module      : Network.AWS.Wisdom.CreateAssistant
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an Amazon Connect Wisdom assistant.
module Network.AWS.Wisdom.CreateAssistant
  ( -- * Creating a Request
    CreateAssistant (..),
    newCreateAssistant,

    -- * Request Lenses
    createAssistant_clientToken,
    createAssistant_description,
    createAssistant_serverSideEncryptionConfiguration,
    createAssistant_tags,
    createAssistant_name,
    createAssistant_type,

    -- * Destructuring the Response
    CreateAssistantResponse (..),
    newCreateAssistantResponse,

    -- * Response Lenses
    createAssistantResponse_assistant,
    createAssistantResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Wisdom.Types

-- | /See:/ 'newCreateAssistant' smart constructor.
data CreateAssistant = CreateAssistant'
  { -- | A unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The description of the assistant.
    description :: Prelude.Maybe Prelude.Text,
    -- | The KMS key used for encryption.
    serverSideEncryptionConfiguration :: Prelude.Maybe ServerSideEncryptionConfiguration,
    -- | The tags used to organize, track, or control access for this resource.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the assistant.
    name :: Prelude.Text,
    -- | The type of assistant.
    type' :: AssistantType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateAssistant' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'createAssistant_clientToken' - A unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request.
--
-- 'description', 'createAssistant_description' - The description of the assistant.
--
-- 'serverSideEncryptionConfiguration', 'createAssistant_serverSideEncryptionConfiguration' - The KMS key used for encryption.
--
-- 'tags', 'createAssistant_tags' - The tags used to organize, track, or control access for this resource.
--
-- 'name', 'createAssistant_name' - The name of the assistant.
--
-- 'type'', 'createAssistant_type' - The type of assistant.
newCreateAssistant ::
  -- | 'name'
  Prelude.Text ->
  -- | 'type''
  AssistantType ->
  CreateAssistant
newCreateAssistant pName_ pType_ =
  CreateAssistant'
    { clientToken = Prelude.Nothing,
      description = Prelude.Nothing,
      serverSideEncryptionConfiguration = Prelude.Nothing,
      tags = Prelude.Nothing,
      name = pName_,
      type' = pType_
    }

-- | A unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request.
createAssistant_clientToken :: Lens.Lens' CreateAssistant (Prelude.Maybe Prelude.Text)
createAssistant_clientToken = Lens.lens (\CreateAssistant' {clientToken} -> clientToken) (\s@CreateAssistant' {} a -> s {clientToken = a} :: CreateAssistant)

-- | The description of the assistant.
createAssistant_description :: Lens.Lens' CreateAssistant (Prelude.Maybe Prelude.Text)
createAssistant_description = Lens.lens (\CreateAssistant' {description} -> description) (\s@CreateAssistant' {} a -> s {description = a} :: CreateAssistant)

-- | The KMS key used for encryption.
createAssistant_serverSideEncryptionConfiguration :: Lens.Lens' CreateAssistant (Prelude.Maybe ServerSideEncryptionConfiguration)
createAssistant_serverSideEncryptionConfiguration = Lens.lens (\CreateAssistant' {serverSideEncryptionConfiguration} -> serverSideEncryptionConfiguration) (\s@CreateAssistant' {} a -> s {serverSideEncryptionConfiguration = a} :: CreateAssistant)

-- | The tags used to organize, track, or control access for this resource.
createAssistant_tags :: Lens.Lens' CreateAssistant (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createAssistant_tags = Lens.lens (\CreateAssistant' {tags} -> tags) (\s@CreateAssistant' {} a -> s {tags = a} :: CreateAssistant) Prelude.. Lens.mapping Lens.coerced

-- | The name of the assistant.
createAssistant_name :: Lens.Lens' CreateAssistant Prelude.Text
createAssistant_name = Lens.lens (\CreateAssistant' {name} -> name) (\s@CreateAssistant' {} a -> s {name = a} :: CreateAssistant)

-- | The type of assistant.
createAssistant_type :: Lens.Lens' CreateAssistant AssistantType
createAssistant_type = Lens.lens (\CreateAssistant' {type'} -> type') (\s@CreateAssistant' {} a -> s {type' = a} :: CreateAssistant)

instance Core.AWSRequest CreateAssistant where
  type
    AWSResponse CreateAssistant =
      CreateAssistantResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateAssistantResponse'
            Prelude.<$> (x Core..?> "assistant")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateAssistant

instance Prelude.NFData CreateAssistant

instance Core.ToHeaders CreateAssistant where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateAssistant where
  toJSON CreateAssistant' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("clientToken" Core..=) Prelude.<$> clientToken,
            ("description" Core..=) Prelude.<$> description,
            ("serverSideEncryptionConfiguration" Core..=)
              Prelude.<$> serverSideEncryptionConfiguration,
            ("tags" Core..=) Prelude.<$> tags,
            Prelude.Just ("name" Core..= name),
            Prelude.Just ("type" Core..= type')
          ]
      )

instance Core.ToPath CreateAssistant where
  toPath = Prelude.const "/assistants"

instance Core.ToQuery CreateAssistant where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateAssistantResponse' smart constructor.
data CreateAssistantResponse = CreateAssistantResponse'
  { -- | Information about the assistant.
    assistant :: Prelude.Maybe AssistantData,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateAssistantResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'assistant', 'createAssistantResponse_assistant' - Information about the assistant.
--
-- 'httpStatus', 'createAssistantResponse_httpStatus' - The response's http status code.
newCreateAssistantResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateAssistantResponse
newCreateAssistantResponse pHttpStatus_ =
  CreateAssistantResponse'
    { assistant =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the assistant.
createAssistantResponse_assistant :: Lens.Lens' CreateAssistantResponse (Prelude.Maybe AssistantData)
createAssistantResponse_assistant = Lens.lens (\CreateAssistantResponse' {assistant} -> assistant) (\s@CreateAssistantResponse' {} a -> s {assistant = a} :: CreateAssistantResponse)

-- | The response's http status code.
createAssistantResponse_httpStatus :: Lens.Lens' CreateAssistantResponse Prelude.Int
createAssistantResponse_httpStatus = Lens.lens (\CreateAssistantResponse' {httpStatus} -> httpStatus) (\s@CreateAssistantResponse' {} a -> s {httpStatus = a} :: CreateAssistantResponse)

instance Prelude.NFData CreateAssistantResponse
