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
-- Module      : Network.AWS.MacieV2.DeleteCustomDataIdentifier
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Soft deletes a custom data identifier.
module Network.AWS.MacieV2.DeleteCustomDataIdentifier
  ( -- * Creating a Request
    DeleteCustomDataIdentifier (..),
    newDeleteCustomDataIdentifier,

    -- * Request Lenses
    deleteCustomDataIdentifier_id,

    -- * Destructuring the Response
    DeleteCustomDataIdentifierResponse (..),
    newDeleteCustomDataIdentifierResponse,

    -- * Response Lenses
    deleteCustomDataIdentifierResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MacieV2.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteCustomDataIdentifier' smart constructor.
data DeleteCustomDataIdentifier = DeleteCustomDataIdentifier'
  { -- | The unique identifier for the Amazon Macie resource or account that the
    -- request applies to.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteCustomDataIdentifier' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'deleteCustomDataIdentifier_id' - The unique identifier for the Amazon Macie resource or account that the
-- request applies to.
newDeleteCustomDataIdentifier ::
  -- | 'id'
  Prelude.Text ->
  DeleteCustomDataIdentifier
newDeleteCustomDataIdentifier pId_ =
  DeleteCustomDataIdentifier' {id = pId_}

-- | The unique identifier for the Amazon Macie resource or account that the
-- request applies to.
deleteCustomDataIdentifier_id :: Lens.Lens' DeleteCustomDataIdentifier Prelude.Text
deleteCustomDataIdentifier_id = Lens.lens (\DeleteCustomDataIdentifier' {id} -> id) (\s@DeleteCustomDataIdentifier' {} a -> s {id = a} :: DeleteCustomDataIdentifier)

instance Core.AWSRequest DeleteCustomDataIdentifier where
  type
    AWSResponse DeleteCustomDataIdentifier =
      DeleteCustomDataIdentifierResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteCustomDataIdentifierResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteCustomDataIdentifier

instance Prelude.NFData DeleteCustomDataIdentifier

instance Core.ToHeaders DeleteCustomDataIdentifier where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteCustomDataIdentifier where
  toPath DeleteCustomDataIdentifier' {..} =
    Prelude.mconcat
      ["/custom-data-identifiers/", Core.toBS id]

instance Core.ToQuery DeleteCustomDataIdentifier where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteCustomDataIdentifierResponse' smart constructor.
data DeleteCustomDataIdentifierResponse = DeleteCustomDataIdentifierResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteCustomDataIdentifierResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteCustomDataIdentifierResponse_httpStatus' - The response's http status code.
newDeleteCustomDataIdentifierResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteCustomDataIdentifierResponse
newDeleteCustomDataIdentifierResponse pHttpStatus_ =
  DeleteCustomDataIdentifierResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteCustomDataIdentifierResponse_httpStatus :: Lens.Lens' DeleteCustomDataIdentifierResponse Prelude.Int
deleteCustomDataIdentifierResponse_httpStatus = Lens.lens (\DeleteCustomDataIdentifierResponse' {httpStatus} -> httpStatus) (\s@DeleteCustomDataIdentifierResponse' {} a -> s {httpStatus = a} :: DeleteCustomDataIdentifierResponse)

instance
  Prelude.NFData
    DeleteCustomDataIdentifierResponse
