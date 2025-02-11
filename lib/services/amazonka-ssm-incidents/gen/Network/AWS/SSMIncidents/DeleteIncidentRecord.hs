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
-- Module      : Network.AWS.SSMIncidents.DeleteIncidentRecord
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete an incident record from Incident Manager.
module Network.AWS.SSMIncidents.DeleteIncidentRecord
  ( -- * Creating a Request
    DeleteIncidentRecord (..),
    newDeleteIncidentRecord,

    -- * Request Lenses
    deleteIncidentRecord_arn,

    -- * Destructuring the Response
    DeleteIncidentRecordResponse (..),
    newDeleteIncidentRecordResponse,

    -- * Response Lenses
    deleteIncidentRecordResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SSMIncidents.Types

-- | /See:/ 'newDeleteIncidentRecord' smart constructor.
data DeleteIncidentRecord = DeleteIncidentRecord'
  { -- | The Amazon Resource Name (ARN) of the incident record you are deleting.
    arn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteIncidentRecord' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'deleteIncidentRecord_arn' - The Amazon Resource Name (ARN) of the incident record you are deleting.
newDeleteIncidentRecord ::
  -- | 'arn'
  Prelude.Text ->
  DeleteIncidentRecord
newDeleteIncidentRecord pArn_ =
  DeleteIncidentRecord' {arn = pArn_}

-- | The Amazon Resource Name (ARN) of the incident record you are deleting.
deleteIncidentRecord_arn :: Lens.Lens' DeleteIncidentRecord Prelude.Text
deleteIncidentRecord_arn = Lens.lens (\DeleteIncidentRecord' {arn} -> arn) (\s@DeleteIncidentRecord' {} a -> s {arn = a} :: DeleteIncidentRecord)

instance Core.AWSRequest DeleteIncidentRecord where
  type
    AWSResponse DeleteIncidentRecord =
      DeleteIncidentRecordResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteIncidentRecordResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteIncidentRecord

instance Prelude.NFData DeleteIncidentRecord

instance Core.ToHeaders DeleteIncidentRecord where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteIncidentRecord where
  toJSON DeleteIncidentRecord' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("arn" Core..= arn)]
      )

instance Core.ToPath DeleteIncidentRecord where
  toPath = Prelude.const "/deleteIncidentRecord"

instance Core.ToQuery DeleteIncidentRecord where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteIncidentRecordResponse' smart constructor.
data DeleteIncidentRecordResponse = DeleteIncidentRecordResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteIncidentRecordResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteIncidentRecordResponse_httpStatus' - The response's http status code.
newDeleteIncidentRecordResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteIncidentRecordResponse
newDeleteIncidentRecordResponse pHttpStatus_ =
  DeleteIncidentRecordResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteIncidentRecordResponse_httpStatus :: Lens.Lens' DeleteIncidentRecordResponse Prelude.Int
deleteIncidentRecordResponse_httpStatus = Lens.lens (\DeleteIncidentRecordResponse' {httpStatus} -> httpStatus) (\s@DeleteIncidentRecordResponse' {} a -> s {httpStatus = a} :: DeleteIncidentRecordResponse)

instance Prelude.NFData DeleteIncidentRecordResponse
