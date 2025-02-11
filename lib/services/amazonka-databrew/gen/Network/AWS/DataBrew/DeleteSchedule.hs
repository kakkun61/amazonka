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
-- Module      : Network.AWS.DataBrew.DeleteSchedule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified DataBrew schedule.
module Network.AWS.DataBrew.DeleteSchedule
  ( -- * Creating a Request
    DeleteSchedule (..),
    newDeleteSchedule,

    -- * Request Lenses
    deleteSchedule_name,

    -- * Destructuring the Response
    DeleteScheduleResponse (..),
    newDeleteScheduleResponse,

    -- * Response Lenses
    deleteScheduleResponse_httpStatus,
    deleteScheduleResponse_name,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DataBrew.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteSchedule' smart constructor.
data DeleteSchedule = DeleteSchedule'
  { -- | The name of the schedule to be deleted.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteSchedule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'deleteSchedule_name' - The name of the schedule to be deleted.
newDeleteSchedule ::
  -- | 'name'
  Prelude.Text ->
  DeleteSchedule
newDeleteSchedule pName_ =
  DeleteSchedule' {name = pName_}

-- | The name of the schedule to be deleted.
deleteSchedule_name :: Lens.Lens' DeleteSchedule Prelude.Text
deleteSchedule_name = Lens.lens (\DeleteSchedule' {name} -> name) (\s@DeleteSchedule' {} a -> s {name = a} :: DeleteSchedule)

instance Core.AWSRequest DeleteSchedule where
  type
    AWSResponse DeleteSchedule =
      DeleteScheduleResponse
  request = Request.delete defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteScheduleResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "Name")
      )

instance Prelude.Hashable DeleteSchedule

instance Prelude.NFData DeleteSchedule

instance Core.ToHeaders DeleteSchedule where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteSchedule where
  toPath DeleteSchedule' {..} =
    Prelude.mconcat ["/schedules/", Core.toBS name]

instance Core.ToQuery DeleteSchedule where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteScheduleResponse' smart constructor.
data DeleteScheduleResponse = DeleteScheduleResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The name of the schedule that was deleted.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteScheduleResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteScheduleResponse_httpStatus' - The response's http status code.
--
-- 'name', 'deleteScheduleResponse_name' - The name of the schedule that was deleted.
newDeleteScheduleResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'name'
  Prelude.Text ->
  DeleteScheduleResponse
newDeleteScheduleResponse pHttpStatus_ pName_ =
  DeleteScheduleResponse'
    { httpStatus = pHttpStatus_,
      name = pName_
    }

-- | The response's http status code.
deleteScheduleResponse_httpStatus :: Lens.Lens' DeleteScheduleResponse Prelude.Int
deleteScheduleResponse_httpStatus = Lens.lens (\DeleteScheduleResponse' {httpStatus} -> httpStatus) (\s@DeleteScheduleResponse' {} a -> s {httpStatus = a} :: DeleteScheduleResponse)

-- | The name of the schedule that was deleted.
deleteScheduleResponse_name :: Lens.Lens' DeleteScheduleResponse Prelude.Text
deleteScheduleResponse_name = Lens.lens (\DeleteScheduleResponse' {name} -> name) (\s@DeleteScheduleResponse' {} a -> s {name = a} :: DeleteScheduleResponse)

instance Prelude.NFData DeleteScheduleResponse
