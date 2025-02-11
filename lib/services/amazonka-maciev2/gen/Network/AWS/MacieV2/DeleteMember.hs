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
-- Module      : Network.AWS.MacieV2.DeleteMember
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the association between an Amazon Macie administrator account
-- and an account.
module Network.AWS.MacieV2.DeleteMember
  ( -- * Creating a Request
    DeleteMember (..),
    newDeleteMember,

    -- * Request Lenses
    deleteMember_id,

    -- * Destructuring the Response
    DeleteMemberResponse (..),
    newDeleteMemberResponse,

    -- * Response Lenses
    deleteMemberResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MacieV2.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteMember' smart constructor.
data DeleteMember = DeleteMember'
  { -- | The unique identifier for the Amazon Macie resource or account that the
    -- request applies to.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteMember' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'deleteMember_id' - The unique identifier for the Amazon Macie resource or account that the
-- request applies to.
newDeleteMember ::
  -- | 'id'
  Prelude.Text ->
  DeleteMember
newDeleteMember pId_ = DeleteMember' {id = pId_}

-- | The unique identifier for the Amazon Macie resource or account that the
-- request applies to.
deleteMember_id :: Lens.Lens' DeleteMember Prelude.Text
deleteMember_id = Lens.lens (\DeleteMember' {id} -> id) (\s@DeleteMember' {} a -> s {id = a} :: DeleteMember)

instance Core.AWSRequest DeleteMember where
  type AWSResponse DeleteMember = DeleteMemberResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteMemberResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteMember

instance Prelude.NFData DeleteMember

instance Core.ToHeaders DeleteMember where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteMember where
  toPath DeleteMember' {..} =
    Prelude.mconcat ["/members/", Core.toBS id]

instance Core.ToQuery DeleteMember where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteMemberResponse' smart constructor.
data DeleteMemberResponse = DeleteMemberResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteMemberResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteMemberResponse_httpStatus' - The response's http status code.
newDeleteMemberResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteMemberResponse
newDeleteMemberResponse pHttpStatus_ =
  DeleteMemberResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
deleteMemberResponse_httpStatus :: Lens.Lens' DeleteMemberResponse Prelude.Int
deleteMemberResponse_httpStatus = Lens.lens (\DeleteMemberResponse' {httpStatus} -> httpStatus) (\s@DeleteMemberResponse' {} a -> s {httpStatus = a} :: DeleteMemberResponse)

instance Prelude.NFData DeleteMemberResponse
