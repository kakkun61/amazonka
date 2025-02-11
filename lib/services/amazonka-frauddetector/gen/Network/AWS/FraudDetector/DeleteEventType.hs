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
-- Module      : Network.AWS.FraudDetector.DeleteEventType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an event type.
--
-- You cannot delete an event type that is used in a detector or a model.
--
-- When you delete an event type, Amazon Fraud Detector permanently deletes
-- that event type and the data is no longer stored in Amazon Fraud
-- Detector.
module Network.AWS.FraudDetector.DeleteEventType
  ( -- * Creating a Request
    DeleteEventType (..),
    newDeleteEventType,

    -- * Request Lenses
    deleteEventType_name,

    -- * Destructuring the Response
    DeleteEventTypeResponse (..),
    newDeleteEventTypeResponse,

    -- * Response Lenses
    deleteEventTypeResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.FraudDetector.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteEventType' smart constructor.
data DeleteEventType = DeleteEventType'
  { -- | The name of the event type to delete.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteEventType' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'deleteEventType_name' - The name of the event type to delete.
newDeleteEventType ::
  -- | 'name'
  Prelude.Text ->
  DeleteEventType
newDeleteEventType pName_ =
  DeleteEventType' {name = pName_}

-- | The name of the event type to delete.
deleteEventType_name :: Lens.Lens' DeleteEventType Prelude.Text
deleteEventType_name = Lens.lens (\DeleteEventType' {name} -> name) (\s@DeleteEventType' {} a -> s {name = a} :: DeleteEventType)

instance Core.AWSRequest DeleteEventType where
  type
    AWSResponse DeleteEventType =
      DeleteEventTypeResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteEventTypeResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteEventType

instance Prelude.NFData DeleteEventType

instance Core.ToHeaders DeleteEventType where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSHawksNestServiceFacade.DeleteEventType" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteEventType where
  toJSON DeleteEventType' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("name" Core..= name)]
      )

instance Core.ToPath DeleteEventType where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteEventType where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteEventTypeResponse' smart constructor.
data DeleteEventTypeResponse = DeleteEventTypeResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteEventTypeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteEventTypeResponse_httpStatus' - The response's http status code.
newDeleteEventTypeResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteEventTypeResponse
newDeleteEventTypeResponse pHttpStatus_ =
  DeleteEventTypeResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
deleteEventTypeResponse_httpStatus :: Lens.Lens' DeleteEventTypeResponse Prelude.Int
deleteEventTypeResponse_httpStatus = Lens.lens (\DeleteEventTypeResponse' {httpStatus} -> httpStatus) (\s@DeleteEventTypeResponse' {} a -> s {httpStatus = a} :: DeleteEventTypeResponse)

instance Prelude.NFData DeleteEventTypeResponse
