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
-- Module      : Network.AWS.DataBrew.DeleteJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified DataBrew job.
module Network.AWS.DataBrew.DeleteJob
  ( -- * Creating a Request
    DeleteJob (..),
    newDeleteJob,

    -- * Request Lenses
    deleteJob_name,

    -- * Destructuring the Response
    DeleteJobResponse (..),
    newDeleteJobResponse,

    -- * Response Lenses
    deleteJobResponse_httpStatus,
    deleteJobResponse_name,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DataBrew.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteJob' smart constructor.
data DeleteJob = DeleteJob'
  { -- | The name of the job to be deleted.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'deleteJob_name' - The name of the job to be deleted.
newDeleteJob ::
  -- | 'name'
  Prelude.Text ->
  DeleteJob
newDeleteJob pName_ = DeleteJob' {name = pName_}

-- | The name of the job to be deleted.
deleteJob_name :: Lens.Lens' DeleteJob Prelude.Text
deleteJob_name = Lens.lens (\DeleteJob' {name} -> name) (\s@DeleteJob' {} a -> s {name = a} :: DeleteJob)

instance Core.AWSRequest DeleteJob where
  type AWSResponse DeleteJob = DeleteJobResponse
  request = Request.delete defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteJobResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "Name")
      )

instance Prelude.Hashable DeleteJob

instance Prelude.NFData DeleteJob

instance Core.ToHeaders DeleteJob where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteJob where
  toPath DeleteJob' {..} =
    Prelude.mconcat ["/jobs/", Core.toBS name]

instance Core.ToQuery DeleteJob where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteJobResponse' smart constructor.
data DeleteJobResponse = DeleteJobResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The name of the job that you deleted.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteJobResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteJobResponse_httpStatus' - The response's http status code.
--
-- 'name', 'deleteJobResponse_name' - The name of the job that you deleted.
newDeleteJobResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'name'
  Prelude.Text ->
  DeleteJobResponse
newDeleteJobResponse pHttpStatus_ pName_ =
  DeleteJobResponse'
    { httpStatus = pHttpStatus_,
      name = pName_
    }

-- | The response's http status code.
deleteJobResponse_httpStatus :: Lens.Lens' DeleteJobResponse Prelude.Int
deleteJobResponse_httpStatus = Lens.lens (\DeleteJobResponse' {httpStatus} -> httpStatus) (\s@DeleteJobResponse' {} a -> s {httpStatus = a} :: DeleteJobResponse)

-- | The name of the job that you deleted.
deleteJobResponse_name :: Lens.Lens' DeleteJobResponse Prelude.Text
deleteJobResponse_name = Lens.lens (\DeleteJobResponse' {name} -> name) (\s@DeleteJobResponse' {} a -> s {name = a} :: DeleteJobResponse)

instance Prelude.NFData DeleteJobResponse
