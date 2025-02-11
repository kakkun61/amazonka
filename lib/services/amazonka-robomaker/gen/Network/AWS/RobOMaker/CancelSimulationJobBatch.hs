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
-- Module      : Network.AWS.RobOMaker.CancelSimulationJobBatch
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels a simulation job batch. When you cancel a simulation job batch,
-- you are also cancelling all of the active simulation jobs created as
-- part of the batch.
module Network.AWS.RobOMaker.CancelSimulationJobBatch
  ( -- * Creating a Request
    CancelSimulationJobBatch (..),
    newCancelSimulationJobBatch,

    -- * Request Lenses
    cancelSimulationJobBatch_batch,

    -- * Destructuring the Response
    CancelSimulationJobBatchResponse (..),
    newCancelSimulationJobBatchResponse,

    -- * Response Lenses
    cancelSimulationJobBatchResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.RobOMaker.Types

-- | /See:/ 'newCancelSimulationJobBatch' smart constructor.
data CancelSimulationJobBatch = CancelSimulationJobBatch'
  { -- | The id of the batch to cancel.
    batch :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CancelSimulationJobBatch' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'batch', 'cancelSimulationJobBatch_batch' - The id of the batch to cancel.
newCancelSimulationJobBatch ::
  -- | 'batch'
  Prelude.Text ->
  CancelSimulationJobBatch
newCancelSimulationJobBatch pBatch_ =
  CancelSimulationJobBatch' {batch = pBatch_}

-- | The id of the batch to cancel.
cancelSimulationJobBatch_batch :: Lens.Lens' CancelSimulationJobBatch Prelude.Text
cancelSimulationJobBatch_batch = Lens.lens (\CancelSimulationJobBatch' {batch} -> batch) (\s@CancelSimulationJobBatch' {} a -> s {batch = a} :: CancelSimulationJobBatch)

instance Core.AWSRequest CancelSimulationJobBatch where
  type
    AWSResponse CancelSimulationJobBatch =
      CancelSimulationJobBatchResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          CancelSimulationJobBatchResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CancelSimulationJobBatch

instance Prelude.NFData CancelSimulationJobBatch

instance Core.ToHeaders CancelSimulationJobBatch where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CancelSimulationJobBatch where
  toJSON CancelSimulationJobBatch' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("batch" Core..= batch)]
      )

instance Core.ToPath CancelSimulationJobBatch where
  toPath = Prelude.const "/cancelSimulationJobBatch"

instance Core.ToQuery CancelSimulationJobBatch where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCancelSimulationJobBatchResponse' smart constructor.
data CancelSimulationJobBatchResponse = CancelSimulationJobBatchResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CancelSimulationJobBatchResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'cancelSimulationJobBatchResponse_httpStatus' - The response's http status code.
newCancelSimulationJobBatchResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CancelSimulationJobBatchResponse
newCancelSimulationJobBatchResponse pHttpStatus_ =
  CancelSimulationJobBatchResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
cancelSimulationJobBatchResponse_httpStatus :: Lens.Lens' CancelSimulationJobBatchResponse Prelude.Int
cancelSimulationJobBatchResponse_httpStatus = Lens.lens (\CancelSimulationJobBatchResponse' {httpStatus} -> httpStatus) (\s@CancelSimulationJobBatchResponse' {} a -> s {httpStatus = a} :: CancelSimulationJobBatchResponse)

instance
  Prelude.NFData
    CancelSimulationJobBatchResponse
