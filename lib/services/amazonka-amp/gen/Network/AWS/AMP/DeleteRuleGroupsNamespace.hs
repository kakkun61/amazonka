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
-- Module      : Network.AWS.AMP.DeleteRuleGroupsNamespace
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a rule groups namespace.
module Network.AWS.AMP.DeleteRuleGroupsNamespace
  ( -- * Creating a Request
    DeleteRuleGroupsNamespace (..),
    newDeleteRuleGroupsNamespace,

    -- * Request Lenses
    deleteRuleGroupsNamespace_clientToken,
    deleteRuleGroupsNamespace_name,
    deleteRuleGroupsNamespace_workspaceId,

    -- * Destructuring the Response
    DeleteRuleGroupsNamespaceResponse (..),
    newDeleteRuleGroupsNamespaceResponse,
  )
where

import Network.AWS.AMP.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input of a DeleteRuleGroupsNamespace operation.
--
-- /See:/ 'newDeleteRuleGroupsNamespace' smart constructor.
data DeleteRuleGroupsNamespace = DeleteRuleGroupsNamespace'
  { -- | Optional, unique, case-sensitive, user-provided identifier to ensure the
    -- idempotency of the request.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The rule groups namespace name.
    name :: Prelude.Text,
    -- | The ID of the workspace to delete rule group definition.
    workspaceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteRuleGroupsNamespace' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'deleteRuleGroupsNamespace_clientToken' - Optional, unique, case-sensitive, user-provided identifier to ensure the
-- idempotency of the request.
--
-- 'name', 'deleteRuleGroupsNamespace_name' - The rule groups namespace name.
--
-- 'workspaceId', 'deleteRuleGroupsNamespace_workspaceId' - The ID of the workspace to delete rule group definition.
newDeleteRuleGroupsNamespace ::
  -- | 'name'
  Prelude.Text ->
  -- | 'workspaceId'
  Prelude.Text ->
  DeleteRuleGroupsNamespace
newDeleteRuleGroupsNamespace pName_ pWorkspaceId_ =
  DeleteRuleGroupsNamespace'
    { clientToken =
        Prelude.Nothing,
      name = pName_,
      workspaceId = pWorkspaceId_
    }

-- | Optional, unique, case-sensitive, user-provided identifier to ensure the
-- idempotency of the request.
deleteRuleGroupsNamespace_clientToken :: Lens.Lens' DeleteRuleGroupsNamespace (Prelude.Maybe Prelude.Text)
deleteRuleGroupsNamespace_clientToken = Lens.lens (\DeleteRuleGroupsNamespace' {clientToken} -> clientToken) (\s@DeleteRuleGroupsNamespace' {} a -> s {clientToken = a} :: DeleteRuleGroupsNamespace)

-- | The rule groups namespace name.
deleteRuleGroupsNamespace_name :: Lens.Lens' DeleteRuleGroupsNamespace Prelude.Text
deleteRuleGroupsNamespace_name = Lens.lens (\DeleteRuleGroupsNamespace' {name} -> name) (\s@DeleteRuleGroupsNamespace' {} a -> s {name = a} :: DeleteRuleGroupsNamespace)

-- | The ID of the workspace to delete rule group definition.
deleteRuleGroupsNamespace_workspaceId :: Lens.Lens' DeleteRuleGroupsNamespace Prelude.Text
deleteRuleGroupsNamespace_workspaceId = Lens.lens (\DeleteRuleGroupsNamespace' {workspaceId} -> workspaceId) (\s@DeleteRuleGroupsNamespace' {} a -> s {workspaceId = a} :: DeleteRuleGroupsNamespace)

instance Core.AWSRequest DeleteRuleGroupsNamespace where
  type
    AWSResponse DeleteRuleGroupsNamespace =
      DeleteRuleGroupsNamespaceResponse
  request = Request.delete defaultService
  response =
    Response.receiveNull
      DeleteRuleGroupsNamespaceResponse'

instance Prelude.Hashable DeleteRuleGroupsNamespace

instance Prelude.NFData DeleteRuleGroupsNamespace

instance Core.ToHeaders DeleteRuleGroupsNamespace where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteRuleGroupsNamespace where
  toPath DeleteRuleGroupsNamespace' {..} =
    Prelude.mconcat
      [ "/workspaces/",
        Core.toBS workspaceId,
        "/rulegroupsnamespaces/",
        Core.toBS name
      ]

instance Core.ToQuery DeleteRuleGroupsNamespace where
  toQuery DeleteRuleGroupsNamespace' {..} =
    Prelude.mconcat ["clientToken" Core.=: clientToken]

-- | /See:/ 'newDeleteRuleGroupsNamespaceResponse' smart constructor.
data DeleteRuleGroupsNamespaceResponse = DeleteRuleGroupsNamespaceResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteRuleGroupsNamespaceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteRuleGroupsNamespaceResponse ::
  DeleteRuleGroupsNamespaceResponse
newDeleteRuleGroupsNamespaceResponse =
  DeleteRuleGroupsNamespaceResponse'

instance
  Prelude.NFData
    DeleteRuleGroupsNamespaceResponse
