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
-- Module      : Network.AWS.AccessAnalyzer.CancelPolicyGeneration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels the requested policy generation.
module Network.AWS.AccessAnalyzer.CancelPolicyGeneration
  ( -- * Creating a Request
    CancelPolicyGeneration (..),
    newCancelPolicyGeneration,

    -- * Request Lenses
    cancelPolicyGeneration_jobId,

    -- * Destructuring the Response
    CancelPolicyGenerationResponse (..),
    newCancelPolicyGenerationResponse,

    -- * Response Lenses
    cancelPolicyGenerationResponse_httpStatus,
  )
where

import Network.AWS.AccessAnalyzer.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCancelPolicyGeneration' smart constructor.
data CancelPolicyGeneration = CancelPolicyGeneration'
  { -- | The @JobId@ that is returned by the @StartPolicyGeneration@ operation.
    -- The @JobId@ can be used with @GetGeneratedPolicy@ to retrieve the
    -- generated policies or used with @CancelPolicyGeneration@ to cancel the
    -- policy generation request.
    jobId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CancelPolicyGeneration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobId', 'cancelPolicyGeneration_jobId' - The @JobId@ that is returned by the @StartPolicyGeneration@ operation.
-- The @JobId@ can be used with @GetGeneratedPolicy@ to retrieve the
-- generated policies or used with @CancelPolicyGeneration@ to cancel the
-- policy generation request.
newCancelPolicyGeneration ::
  -- | 'jobId'
  Prelude.Text ->
  CancelPolicyGeneration
newCancelPolicyGeneration pJobId_ =
  CancelPolicyGeneration' {jobId = pJobId_}

-- | The @JobId@ that is returned by the @StartPolicyGeneration@ operation.
-- The @JobId@ can be used with @GetGeneratedPolicy@ to retrieve the
-- generated policies or used with @CancelPolicyGeneration@ to cancel the
-- policy generation request.
cancelPolicyGeneration_jobId :: Lens.Lens' CancelPolicyGeneration Prelude.Text
cancelPolicyGeneration_jobId = Lens.lens (\CancelPolicyGeneration' {jobId} -> jobId) (\s@CancelPolicyGeneration' {} a -> s {jobId = a} :: CancelPolicyGeneration)

instance Core.AWSRequest CancelPolicyGeneration where
  type
    AWSResponse CancelPolicyGeneration =
      CancelPolicyGenerationResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          CancelPolicyGenerationResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CancelPolicyGeneration

instance Prelude.NFData CancelPolicyGeneration

instance Core.ToHeaders CancelPolicyGeneration where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CancelPolicyGeneration where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath CancelPolicyGeneration where
  toPath CancelPolicyGeneration' {..} =
    Prelude.mconcat
      ["/policy/generation/", Core.toBS jobId]

instance Core.ToQuery CancelPolicyGeneration where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCancelPolicyGenerationResponse' smart constructor.
data CancelPolicyGenerationResponse = CancelPolicyGenerationResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CancelPolicyGenerationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'cancelPolicyGenerationResponse_httpStatus' - The response's http status code.
newCancelPolicyGenerationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CancelPolicyGenerationResponse
newCancelPolicyGenerationResponse pHttpStatus_ =
  CancelPolicyGenerationResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
cancelPolicyGenerationResponse_httpStatus :: Lens.Lens' CancelPolicyGenerationResponse Prelude.Int
cancelPolicyGenerationResponse_httpStatus = Lens.lens (\CancelPolicyGenerationResponse' {httpStatus} -> httpStatus) (\s@CancelPolicyGenerationResponse' {} a -> s {httpStatus = a} :: CancelPolicyGenerationResponse)

instance
  Prelude.NFData
    CancelPolicyGenerationResponse
