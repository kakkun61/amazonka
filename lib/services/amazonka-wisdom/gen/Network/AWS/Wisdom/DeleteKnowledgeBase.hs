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
-- Module      : Network.AWS.Wisdom.DeleteKnowledgeBase
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the knowledge base.
--
-- When you use this API to delete an external knowledge base such as
-- Salesforce or ServiceNow, you must also delete the
-- <https://docs.aws.amazon.com/appintegrations/latest/APIReference/Welcome.html Amazon AppIntegrations>
-- DataIntegration. This is because you can\'t reuse the DataIntegration
-- after it\'s been associated with an external knowledge base. However,
-- you can delete and recreate it. See
-- <https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_DeleteDataIntegration.html DeleteDataIntegration>
-- and
-- <https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html CreateDataIntegration>
-- in the /Amazon AppIntegrations API Reference/.
module Network.AWS.Wisdom.DeleteKnowledgeBase
  ( -- * Creating a Request
    DeleteKnowledgeBase (..),
    newDeleteKnowledgeBase,

    -- * Request Lenses
    deleteKnowledgeBase_knowledgeBaseId,

    -- * Destructuring the Response
    DeleteKnowledgeBaseResponse (..),
    newDeleteKnowledgeBaseResponse,

    -- * Response Lenses
    deleteKnowledgeBaseResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Wisdom.Types

-- | /See:/ 'newDeleteKnowledgeBase' smart constructor.
data DeleteKnowledgeBase = DeleteKnowledgeBase'
  { -- | The knowledge base to delete content from. Can be either the ID or the
    -- ARN. URLs cannot contain the ARN.
    knowledgeBaseId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteKnowledgeBase' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'knowledgeBaseId', 'deleteKnowledgeBase_knowledgeBaseId' - The knowledge base to delete content from. Can be either the ID or the
-- ARN. URLs cannot contain the ARN.
newDeleteKnowledgeBase ::
  -- | 'knowledgeBaseId'
  Prelude.Text ->
  DeleteKnowledgeBase
newDeleteKnowledgeBase pKnowledgeBaseId_ =
  DeleteKnowledgeBase'
    { knowledgeBaseId =
        pKnowledgeBaseId_
    }

-- | The knowledge base to delete content from. Can be either the ID or the
-- ARN. URLs cannot contain the ARN.
deleteKnowledgeBase_knowledgeBaseId :: Lens.Lens' DeleteKnowledgeBase Prelude.Text
deleteKnowledgeBase_knowledgeBaseId = Lens.lens (\DeleteKnowledgeBase' {knowledgeBaseId} -> knowledgeBaseId) (\s@DeleteKnowledgeBase' {} a -> s {knowledgeBaseId = a} :: DeleteKnowledgeBase)

instance Core.AWSRequest DeleteKnowledgeBase where
  type
    AWSResponse DeleteKnowledgeBase =
      DeleteKnowledgeBaseResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteKnowledgeBaseResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteKnowledgeBase

instance Prelude.NFData DeleteKnowledgeBase

instance Core.ToHeaders DeleteKnowledgeBase where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteKnowledgeBase where
  toPath DeleteKnowledgeBase' {..} =
    Prelude.mconcat
      ["/knowledgeBases/", Core.toBS knowledgeBaseId]

instance Core.ToQuery DeleteKnowledgeBase where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteKnowledgeBaseResponse' smart constructor.
data DeleteKnowledgeBaseResponse = DeleteKnowledgeBaseResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteKnowledgeBaseResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteKnowledgeBaseResponse_httpStatus' - The response's http status code.
newDeleteKnowledgeBaseResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteKnowledgeBaseResponse
newDeleteKnowledgeBaseResponse pHttpStatus_ =
  DeleteKnowledgeBaseResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteKnowledgeBaseResponse_httpStatus :: Lens.Lens' DeleteKnowledgeBaseResponse Prelude.Int
deleteKnowledgeBaseResponse_httpStatus = Lens.lens (\DeleteKnowledgeBaseResponse' {httpStatus} -> httpStatus) (\s@DeleteKnowledgeBaseResponse' {} a -> s {httpStatus = a} :: DeleteKnowledgeBaseResponse)

instance Prelude.NFData DeleteKnowledgeBaseResponse
