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
-- Module      : Network.AWS.AppRunner.DeleteService
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete an App Runner service.
--
-- This is an asynchronous operation. On a successful call, you can use the
-- returned @OperationId@ and the ListOperations call to track the
-- operation\'s progress.
module Network.AWS.AppRunner.DeleteService
  ( -- * Creating a Request
    DeleteService (..),
    newDeleteService,

    -- * Request Lenses
    deleteService_serviceArn,

    -- * Destructuring the Response
    DeleteServiceResponse (..),
    newDeleteServiceResponse,

    -- * Response Lenses
    deleteServiceResponse_httpStatus,
    deleteServiceResponse_service,
    deleteServiceResponse_operationId,
  )
where

import Network.AWS.AppRunner.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteService' smart constructor.
data DeleteService = DeleteService'
  { -- | The Amazon Resource Name (ARN) of the App Runner service that you want
    -- to delete.
    serviceArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteService' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'serviceArn', 'deleteService_serviceArn' - The Amazon Resource Name (ARN) of the App Runner service that you want
-- to delete.
newDeleteService ::
  -- | 'serviceArn'
  Prelude.Text ->
  DeleteService
newDeleteService pServiceArn_ =
  DeleteService' {serviceArn = pServiceArn_}

-- | The Amazon Resource Name (ARN) of the App Runner service that you want
-- to delete.
deleteService_serviceArn :: Lens.Lens' DeleteService Prelude.Text
deleteService_serviceArn = Lens.lens (\DeleteService' {serviceArn} -> serviceArn) (\s@DeleteService' {} a -> s {serviceArn = a} :: DeleteService)

instance Core.AWSRequest DeleteService where
  type
    AWSResponse DeleteService =
      DeleteServiceResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteServiceResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "Service")
            Prelude.<*> (x Core..:> "OperationId")
      )

instance Prelude.Hashable DeleteService

instance Prelude.NFData DeleteService

instance Core.ToHeaders DeleteService where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("AppRunner.DeleteService" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteService where
  toJSON DeleteService' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("ServiceArn" Core..= serviceArn)]
      )

instance Core.ToPath DeleteService where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteService where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteServiceResponse' smart constructor.
data DeleteServiceResponse = DeleteServiceResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A description of the App Runner service that this request just deleted.
    service :: Service,
    -- | The unique ID of the asynchronous operation that this request started.
    -- You can use it combined with the ListOperations call to track the
    -- operation\'s progress.
    operationId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteServiceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteServiceResponse_httpStatus' - The response's http status code.
--
-- 'service', 'deleteServiceResponse_service' - A description of the App Runner service that this request just deleted.
--
-- 'operationId', 'deleteServiceResponse_operationId' - The unique ID of the asynchronous operation that this request started.
-- You can use it combined with the ListOperations call to track the
-- operation\'s progress.
newDeleteServiceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'service'
  Service ->
  -- | 'operationId'
  Prelude.Text ->
  DeleteServiceResponse
newDeleteServiceResponse
  pHttpStatus_
  pService_
  pOperationId_ =
    DeleteServiceResponse'
      { httpStatus = pHttpStatus_,
        service = pService_,
        operationId = pOperationId_
      }

-- | The response's http status code.
deleteServiceResponse_httpStatus :: Lens.Lens' DeleteServiceResponse Prelude.Int
deleteServiceResponse_httpStatus = Lens.lens (\DeleteServiceResponse' {httpStatus} -> httpStatus) (\s@DeleteServiceResponse' {} a -> s {httpStatus = a} :: DeleteServiceResponse)

-- | A description of the App Runner service that this request just deleted.
deleteServiceResponse_service :: Lens.Lens' DeleteServiceResponse Service
deleteServiceResponse_service = Lens.lens (\DeleteServiceResponse' {service} -> service) (\s@DeleteServiceResponse' {} a -> s {service = a} :: DeleteServiceResponse)

-- | The unique ID of the asynchronous operation that this request started.
-- You can use it combined with the ListOperations call to track the
-- operation\'s progress.
deleteServiceResponse_operationId :: Lens.Lens' DeleteServiceResponse Prelude.Text
deleteServiceResponse_operationId = Lens.lens (\DeleteServiceResponse' {operationId} -> operationId) (\s@DeleteServiceResponse' {} a -> s {operationId = a} :: DeleteServiceResponse)

instance Prelude.NFData DeleteServiceResponse
