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
-- Module      : Network.AWS.MacieV2.DeleteFindingsFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a findings filter.
module Network.AWS.MacieV2.DeleteFindingsFilter
  ( -- * Creating a Request
    DeleteFindingsFilter (..),
    newDeleteFindingsFilter,

    -- * Request Lenses
    deleteFindingsFilter_id,

    -- * Destructuring the Response
    DeleteFindingsFilterResponse (..),
    newDeleteFindingsFilterResponse,

    -- * Response Lenses
    deleteFindingsFilterResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MacieV2.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteFindingsFilter' smart constructor.
data DeleteFindingsFilter = DeleteFindingsFilter'
  { -- | The unique identifier for the Amazon Macie resource or account that the
    -- request applies to.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteFindingsFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'deleteFindingsFilter_id' - The unique identifier for the Amazon Macie resource or account that the
-- request applies to.
newDeleteFindingsFilter ::
  -- | 'id'
  Prelude.Text ->
  DeleteFindingsFilter
newDeleteFindingsFilter pId_ =
  DeleteFindingsFilter' {id = pId_}

-- | The unique identifier for the Amazon Macie resource or account that the
-- request applies to.
deleteFindingsFilter_id :: Lens.Lens' DeleteFindingsFilter Prelude.Text
deleteFindingsFilter_id = Lens.lens (\DeleteFindingsFilter' {id} -> id) (\s@DeleteFindingsFilter' {} a -> s {id = a} :: DeleteFindingsFilter)

instance Core.AWSRequest DeleteFindingsFilter where
  type
    AWSResponse DeleteFindingsFilter =
      DeleteFindingsFilterResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteFindingsFilterResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteFindingsFilter

instance Prelude.NFData DeleteFindingsFilter

instance Core.ToHeaders DeleteFindingsFilter where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteFindingsFilter where
  toPath DeleteFindingsFilter' {..} =
    Prelude.mconcat ["/findingsfilters/", Core.toBS id]

instance Core.ToQuery DeleteFindingsFilter where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteFindingsFilterResponse' smart constructor.
data DeleteFindingsFilterResponse = DeleteFindingsFilterResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteFindingsFilterResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteFindingsFilterResponse_httpStatus' - The response's http status code.
newDeleteFindingsFilterResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteFindingsFilterResponse
newDeleteFindingsFilterResponse pHttpStatus_ =
  DeleteFindingsFilterResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteFindingsFilterResponse_httpStatus :: Lens.Lens' DeleteFindingsFilterResponse Prelude.Int
deleteFindingsFilterResponse_httpStatus = Lens.lens (\DeleteFindingsFilterResponse' {httpStatus} -> httpStatus) (\s@DeleteFindingsFilterResponse' {} a -> s {httpStatus = a} :: DeleteFindingsFilterResponse)

instance Prelude.NFData DeleteFindingsFilterResponse
