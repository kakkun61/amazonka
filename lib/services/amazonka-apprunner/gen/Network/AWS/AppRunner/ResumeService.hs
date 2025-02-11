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
-- Module      : Network.AWS.AppRunner.ResumeService
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resume an active App Runner service. App Runner provisions compute
-- capacity for the service.
--
-- This is an asynchronous operation. On a successful call, you can use the
-- returned @OperationId@ and the ListOperations call to track the
-- operation\'s progress.
module Network.AWS.AppRunner.ResumeService
  ( -- * Creating a Request
    ResumeService (..),
    newResumeService,

    -- * Request Lenses
    resumeService_serviceArn,

    -- * Destructuring the Response
    ResumeServiceResponse (..),
    newResumeServiceResponse,

    -- * Response Lenses
    resumeServiceResponse_operationId,
    resumeServiceResponse_httpStatus,
    resumeServiceResponse_service,
  )
where

import Network.AWS.AppRunner.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newResumeService' smart constructor.
data ResumeService = ResumeService'
  { -- | The Amazon Resource Name (ARN) of the App Runner service that you want
    -- to resume.
    serviceArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ResumeService' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'serviceArn', 'resumeService_serviceArn' - The Amazon Resource Name (ARN) of the App Runner service that you want
-- to resume.
newResumeService ::
  -- | 'serviceArn'
  Prelude.Text ->
  ResumeService
newResumeService pServiceArn_ =
  ResumeService' {serviceArn = pServiceArn_}

-- | The Amazon Resource Name (ARN) of the App Runner service that you want
-- to resume.
resumeService_serviceArn :: Lens.Lens' ResumeService Prelude.Text
resumeService_serviceArn = Lens.lens (\ResumeService' {serviceArn} -> serviceArn) (\s@ResumeService' {} a -> s {serviceArn = a} :: ResumeService)

instance Core.AWSRequest ResumeService where
  type
    AWSResponse ResumeService =
      ResumeServiceResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ResumeServiceResponse'
            Prelude.<$> (x Core..?> "OperationId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "Service")
      )

instance Prelude.Hashable ResumeService

instance Prelude.NFData ResumeService

instance Core.ToHeaders ResumeService where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("AppRunner.ResumeService" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ResumeService where
  toJSON ResumeService' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("ServiceArn" Core..= serviceArn)]
      )

instance Core.ToPath ResumeService where
  toPath = Prelude.const "/"

instance Core.ToQuery ResumeService where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newResumeServiceResponse' smart constructor.
data ResumeServiceResponse = ResumeServiceResponse'
  { -- | The unique ID of the asynchronous operation that this request started.
    -- You can use it combined with the ListOperations call to track the
    -- operation\'s progress.
    operationId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A description of the App Runner service that this request just resumed.
    service :: Service
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ResumeServiceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'operationId', 'resumeServiceResponse_operationId' - The unique ID of the asynchronous operation that this request started.
-- You can use it combined with the ListOperations call to track the
-- operation\'s progress.
--
-- 'httpStatus', 'resumeServiceResponse_httpStatus' - The response's http status code.
--
-- 'service', 'resumeServiceResponse_service' - A description of the App Runner service that this request just resumed.
newResumeServiceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'service'
  Service ->
  ResumeServiceResponse
newResumeServiceResponse pHttpStatus_ pService_ =
  ResumeServiceResponse'
    { operationId =
        Prelude.Nothing,
      httpStatus = pHttpStatus_,
      service = pService_
    }

-- | The unique ID of the asynchronous operation that this request started.
-- You can use it combined with the ListOperations call to track the
-- operation\'s progress.
resumeServiceResponse_operationId :: Lens.Lens' ResumeServiceResponse (Prelude.Maybe Prelude.Text)
resumeServiceResponse_operationId = Lens.lens (\ResumeServiceResponse' {operationId} -> operationId) (\s@ResumeServiceResponse' {} a -> s {operationId = a} :: ResumeServiceResponse)

-- | The response's http status code.
resumeServiceResponse_httpStatus :: Lens.Lens' ResumeServiceResponse Prelude.Int
resumeServiceResponse_httpStatus = Lens.lens (\ResumeServiceResponse' {httpStatus} -> httpStatus) (\s@ResumeServiceResponse' {} a -> s {httpStatus = a} :: ResumeServiceResponse)

-- | A description of the App Runner service that this request just resumed.
resumeServiceResponse_service :: Lens.Lens' ResumeServiceResponse Service
resumeServiceResponse_service = Lens.lens (\ResumeServiceResponse' {service} -> service) (\s@ResumeServiceResponse' {} a -> s {service = a} :: ResumeServiceResponse)

instance Prelude.NFData ResumeServiceResponse
