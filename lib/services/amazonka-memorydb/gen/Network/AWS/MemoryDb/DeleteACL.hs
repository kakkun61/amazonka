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
-- Module      : Network.AWS.MemoryDb.DeleteACL
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an Access Control List. The ACL must first be disassociated from
-- the cluster before it can be deleted. For more information, see
-- <https://docs.aws.amazon.com/MemoryDB/latest/devguide/clusters.acls.html Authenticating users with Access Contol Lists (ACLs)>.
module Network.AWS.MemoryDb.DeleteACL
  ( -- * Creating a Request
    DeleteACL (..),
    newDeleteACL,

    -- * Request Lenses
    deleteACL_aCLName,

    -- * Destructuring the Response
    DeleteACLResponse (..),
    newDeleteACLResponse,

    -- * Response Lenses
    deleteACLResponse_acl,
    deleteACLResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MemoryDb.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteACL' smart constructor.
data DeleteACL = DeleteACL'
  { -- | The name of the Access Control List to delete
    aCLName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteACL' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'aCLName', 'deleteACL_aCLName' - The name of the Access Control List to delete
newDeleteACL ::
  -- | 'aCLName'
  Prelude.Text ->
  DeleteACL
newDeleteACL pACLName_ =
  DeleteACL' {aCLName = pACLName_}

-- | The name of the Access Control List to delete
deleteACL_aCLName :: Lens.Lens' DeleteACL Prelude.Text
deleteACL_aCLName = Lens.lens (\DeleteACL' {aCLName} -> aCLName) (\s@DeleteACL' {} a -> s {aCLName = a} :: DeleteACL)

instance Core.AWSRequest DeleteACL where
  type AWSResponse DeleteACL = DeleteACLResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteACLResponse'
            Prelude.<$> (x Core..?> "ACL")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteACL

instance Prelude.NFData DeleteACL

instance Core.ToHeaders DeleteACL where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("AmazonMemoryDB.DeleteACL" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteACL where
  toJSON DeleteACL' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("ACLName" Core..= aCLName)]
      )

instance Core.ToPath DeleteACL where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteACL where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteACLResponse' smart constructor.
data DeleteACLResponse = DeleteACLResponse'
  { -- | The Access Control List object that has been deleted.
    acl :: Prelude.Maybe ACL,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteACLResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'acl', 'deleteACLResponse_acl' - The Access Control List object that has been deleted.
--
-- 'httpStatus', 'deleteACLResponse_httpStatus' - The response's http status code.
newDeleteACLResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteACLResponse
newDeleteACLResponse pHttpStatus_ =
  DeleteACLResponse'
    { acl = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Access Control List object that has been deleted.
deleteACLResponse_acl :: Lens.Lens' DeleteACLResponse (Prelude.Maybe ACL)
deleteACLResponse_acl = Lens.lens (\DeleteACLResponse' {acl} -> acl) (\s@DeleteACLResponse' {} a -> s {acl = a} :: DeleteACLResponse)

-- | The response's http status code.
deleteACLResponse_httpStatus :: Lens.Lens' DeleteACLResponse Prelude.Int
deleteACLResponse_httpStatus = Lens.lens (\DeleteACLResponse' {httpStatus} -> httpStatus) (\s@DeleteACLResponse' {} a -> s {httpStatus = a} :: DeleteACLResponse)

instance Prelude.NFData DeleteACLResponse
