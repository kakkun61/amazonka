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
-- Module      : Network.AWS.Braket.CancelQuantumTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels the specified task.
module Network.AWS.Braket.CancelQuantumTask
  ( -- * Creating a Request
    CancelQuantumTask (..),
    newCancelQuantumTask,

    -- * Request Lenses
    cancelQuantumTask_clientToken,
    cancelQuantumTask_quantumTaskArn,

    -- * Destructuring the Response
    CancelQuantumTaskResponse (..),
    newCancelQuantumTaskResponse,

    -- * Response Lenses
    cancelQuantumTaskResponse_httpStatus,
    cancelQuantumTaskResponse_cancellationStatus,
    cancelQuantumTaskResponse_quantumTaskArn,
  )
where

import Network.AWS.Braket.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCancelQuantumTask' smart constructor.
data CancelQuantumTask = CancelQuantumTask'
  { -- | The client token associated with the request.
    clientToken :: Prelude.Text,
    -- | The ARN of the task to cancel.
    quantumTaskArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CancelQuantumTask' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'cancelQuantumTask_clientToken' - The client token associated with the request.
--
-- 'quantumTaskArn', 'cancelQuantumTask_quantumTaskArn' - The ARN of the task to cancel.
newCancelQuantumTask ::
  -- | 'clientToken'
  Prelude.Text ->
  -- | 'quantumTaskArn'
  Prelude.Text ->
  CancelQuantumTask
newCancelQuantumTask pClientToken_ pQuantumTaskArn_ =
  CancelQuantumTask'
    { clientToken = pClientToken_,
      quantumTaskArn = pQuantumTaskArn_
    }

-- | The client token associated with the request.
cancelQuantumTask_clientToken :: Lens.Lens' CancelQuantumTask Prelude.Text
cancelQuantumTask_clientToken = Lens.lens (\CancelQuantumTask' {clientToken} -> clientToken) (\s@CancelQuantumTask' {} a -> s {clientToken = a} :: CancelQuantumTask)

-- | The ARN of the task to cancel.
cancelQuantumTask_quantumTaskArn :: Lens.Lens' CancelQuantumTask Prelude.Text
cancelQuantumTask_quantumTaskArn = Lens.lens (\CancelQuantumTask' {quantumTaskArn} -> quantumTaskArn) (\s@CancelQuantumTask' {} a -> s {quantumTaskArn = a} :: CancelQuantumTask)

instance Core.AWSRequest CancelQuantumTask where
  type
    AWSResponse CancelQuantumTask =
      CancelQuantumTaskResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CancelQuantumTaskResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "cancellationStatus")
            Prelude.<*> (x Core..:> "quantumTaskArn")
      )

instance Prelude.Hashable CancelQuantumTask

instance Prelude.NFData CancelQuantumTask

instance Core.ToHeaders CancelQuantumTask where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CancelQuantumTask where
  toJSON CancelQuantumTask' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("clientToken" Core..= clientToken)]
      )

instance Core.ToPath CancelQuantumTask where
  toPath CancelQuantumTask' {..} =
    Prelude.mconcat
      [ "/quantum-task/",
        Core.toBS quantumTaskArn,
        "/cancel"
      ]

instance Core.ToQuery CancelQuantumTask where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCancelQuantumTaskResponse' smart constructor.
data CancelQuantumTaskResponse = CancelQuantumTaskResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The status of the cancellation request.
    cancellationStatus :: CancellationStatus,
    -- | The ARN of the task.
    quantumTaskArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CancelQuantumTaskResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'cancelQuantumTaskResponse_httpStatus' - The response's http status code.
--
-- 'cancellationStatus', 'cancelQuantumTaskResponse_cancellationStatus' - The status of the cancellation request.
--
-- 'quantumTaskArn', 'cancelQuantumTaskResponse_quantumTaskArn' - The ARN of the task.
newCancelQuantumTaskResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'cancellationStatus'
  CancellationStatus ->
  -- | 'quantumTaskArn'
  Prelude.Text ->
  CancelQuantumTaskResponse
newCancelQuantumTaskResponse
  pHttpStatus_
  pCancellationStatus_
  pQuantumTaskArn_ =
    CancelQuantumTaskResponse'
      { httpStatus =
          pHttpStatus_,
        cancellationStatus = pCancellationStatus_,
        quantumTaskArn = pQuantumTaskArn_
      }

-- | The response's http status code.
cancelQuantumTaskResponse_httpStatus :: Lens.Lens' CancelQuantumTaskResponse Prelude.Int
cancelQuantumTaskResponse_httpStatus = Lens.lens (\CancelQuantumTaskResponse' {httpStatus} -> httpStatus) (\s@CancelQuantumTaskResponse' {} a -> s {httpStatus = a} :: CancelQuantumTaskResponse)

-- | The status of the cancellation request.
cancelQuantumTaskResponse_cancellationStatus :: Lens.Lens' CancelQuantumTaskResponse CancellationStatus
cancelQuantumTaskResponse_cancellationStatus = Lens.lens (\CancelQuantumTaskResponse' {cancellationStatus} -> cancellationStatus) (\s@CancelQuantumTaskResponse' {} a -> s {cancellationStatus = a} :: CancelQuantumTaskResponse)

-- | The ARN of the task.
cancelQuantumTaskResponse_quantumTaskArn :: Lens.Lens' CancelQuantumTaskResponse Prelude.Text
cancelQuantumTaskResponse_quantumTaskArn = Lens.lens (\CancelQuantumTaskResponse' {quantumTaskArn} -> quantumTaskArn) (\s@CancelQuantumTaskResponse' {} a -> s {quantumTaskArn = a} :: CancelQuantumTaskResponse)

instance Prelude.NFData CancelQuantumTaskResponse
