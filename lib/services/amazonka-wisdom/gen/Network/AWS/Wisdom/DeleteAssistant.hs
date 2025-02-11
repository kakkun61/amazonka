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
-- Module      : Network.AWS.Wisdom.DeleteAssistant
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an assistant.
module Network.AWS.Wisdom.DeleteAssistant
  ( -- * Creating a Request
    DeleteAssistant (..),
    newDeleteAssistant,

    -- * Request Lenses
    deleteAssistant_assistantId,

    -- * Destructuring the Response
    DeleteAssistantResponse (..),
    newDeleteAssistantResponse,

    -- * Response Lenses
    deleteAssistantResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Wisdom.Types

-- | /See:/ 'newDeleteAssistant' smart constructor.
data DeleteAssistant = DeleteAssistant'
  { -- | The identifier of the Wisdom assistant. Can be either the ID or the ARN.
    -- URLs cannot contain the ARN.
    assistantId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteAssistant' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'assistantId', 'deleteAssistant_assistantId' - The identifier of the Wisdom assistant. Can be either the ID or the ARN.
-- URLs cannot contain the ARN.
newDeleteAssistant ::
  -- | 'assistantId'
  Prelude.Text ->
  DeleteAssistant
newDeleteAssistant pAssistantId_ =
  DeleteAssistant' {assistantId = pAssistantId_}

-- | The identifier of the Wisdom assistant. Can be either the ID or the ARN.
-- URLs cannot contain the ARN.
deleteAssistant_assistantId :: Lens.Lens' DeleteAssistant Prelude.Text
deleteAssistant_assistantId = Lens.lens (\DeleteAssistant' {assistantId} -> assistantId) (\s@DeleteAssistant' {} a -> s {assistantId = a} :: DeleteAssistant)

instance Core.AWSRequest DeleteAssistant where
  type
    AWSResponse DeleteAssistant =
      DeleteAssistantResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteAssistantResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteAssistant

instance Prelude.NFData DeleteAssistant

instance Core.ToHeaders DeleteAssistant where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteAssistant where
  toPath DeleteAssistant' {..} =
    Prelude.mconcat
      ["/assistants/", Core.toBS assistantId]

instance Core.ToQuery DeleteAssistant where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteAssistantResponse' smart constructor.
data DeleteAssistantResponse = DeleteAssistantResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteAssistantResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteAssistantResponse_httpStatus' - The response's http status code.
newDeleteAssistantResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteAssistantResponse
newDeleteAssistantResponse pHttpStatus_ =
  DeleteAssistantResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
deleteAssistantResponse_httpStatus :: Lens.Lens' DeleteAssistantResponse Prelude.Int
deleteAssistantResponse_httpStatus = Lens.lens (\DeleteAssistantResponse' {httpStatus} -> httpStatus) (\s@DeleteAssistantResponse' {} a -> s {httpStatus = a} :: DeleteAssistantResponse)

instance Prelude.NFData DeleteAssistantResponse
