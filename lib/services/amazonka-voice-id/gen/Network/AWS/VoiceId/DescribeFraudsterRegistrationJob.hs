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
-- Module      : Network.AWS.VoiceId.DescribeFraudsterRegistrationJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified fraudster registration job.
module Network.AWS.VoiceId.DescribeFraudsterRegistrationJob
  ( -- * Creating a Request
    DescribeFraudsterRegistrationJob (..),
    newDescribeFraudsterRegistrationJob,

    -- * Request Lenses
    describeFraudsterRegistrationJob_domainId,
    describeFraudsterRegistrationJob_jobId,

    -- * Destructuring the Response
    DescribeFraudsterRegistrationJobResponse (..),
    newDescribeFraudsterRegistrationJobResponse,

    -- * Response Lenses
    describeFraudsterRegistrationJobResponse_job,
    describeFraudsterRegistrationJobResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.VoiceId.Types

-- | /See:/ 'newDescribeFraudsterRegistrationJob' smart constructor.
data DescribeFraudsterRegistrationJob = DescribeFraudsterRegistrationJob'
  { -- | The identifier for the domain containing the fraudster registration job.
    domainId :: Prelude.Text,
    -- | The identifier for the fraudster registration job you are describing.
    jobId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeFraudsterRegistrationJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domainId', 'describeFraudsterRegistrationJob_domainId' - The identifier for the domain containing the fraudster registration job.
--
-- 'jobId', 'describeFraudsterRegistrationJob_jobId' - The identifier for the fraudster registration job you are describing.
newDescribeFraudsterRegistrationJob ::
  -- | 'domainId'
  Prelude.Text ->
  -- | 'jobId'
  Prelude.Text ->
  DescribeFraudsterRegistrationJob
newDescribeFraudsterRegistrationJob
  pDomainId_
  pJobId_ =
    DescribeFraudsterRegistrationJob'
      { domainId =
          pDomainId_,
        jobId = pJobId_
      }

-- | The identifier for the domain containing the fraudster registration job.
describeFraudsterRegistrationJob_domainId :: Lens.Lens' DescribeFraudsterRegistrationJob Prelude.Text
describeFraudsterRegistrationJob_domainId = Lens.lens (\DescribeFraudsterRegistrationJob' {domainId} -> domainId) (\s@DescribeFraudsterRegistrationJob' {} a -> s {domainId = a} :: DescribeFraudsterRegistrationJob)

-- | The identifier for the fraudster registration job you are describing.
describeFraudsterRegistrationJob_jobId :: Lens.Lens' DescribeFraudsterRegistrationJob Prelude.Text
describeFraudsterRegistrationJob_jobId = Lens.lens (\DescribeFraudsterRegistrationJob' {jobId} -> jobId) (\s@DescribeFraudsterRegistrationJob' {} a -> s {jobId = a} :: DescribeFraudsterRegistrationJob)

instance
  Core.AWSRequest
    DescribeFraudsterRegistrationJob
  where
  type
    AWSResponse DescribeFraudsterRegistrationJob =
      DescribeFraudsterRegistrationJobResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeFraudsterRegistrationJobResponse'
            Prelude.<$> (x Core..?> "Job")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeFraudsterRegistrationJob

instance
  Prelude.NFData
    DescribeFraudsterRegistrationJob

instance
  Core.ToHeaders
    DescribeFraudsterRegistrationJob
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "VoiceID.DescribeFraudsterRegistrationJob" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeFraudsterRegistrationJob where
  toJSON DescribeFraudsterRegistrationJob' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("DomainId" Core..= domainId),
            Prelude.Just ("JobId" Core..= jobId)
          ]
      )

instance Core.ToPath DescribeFraudsterRegistrationJob where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    DescribeFraudsterRegistrationJob
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeFraudsterRegistrationJobResponse' smart constructor.
data DescribeFraudsterRegistrationJobResponse = DescribeFraudsterRegistrationJobResponse'
  { -- | Contains details about the specified fraudster registration job.
    job :: Prelude.Maybe FraudsterRegistrationJob,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeFraudsterRegistrationJobResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'job', 'describeFraudsterRegistrationJobResponse_job' - Contains details about the specified fraudster registration job.
--
-- 'httpStatus', 'describeFraudsterRegistrationJobResponse_httpStatus' - The response's http status code.
newDescribeFraudsterRegistrationJobResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeFraudsterRegistrationJobResponse
newDescribeFraudsterRegistrationJobResponse
  pHttpStatus_ =
    DescribeFraudsterRegistrationJobResponse'
      { job =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | Contains details about the specified fraudster registration job.
describeFraudsterRegistrationJobResponse_job :: Lens.Lens' DescribeFraudsterRegistrationJobResponse (Prelude.Maybe FraudsterRegistrationJob)
describeFraudsterRegistrationJobResponse_job = Lens.lens (\DescribeFraudsterRegistrationJobResponse' {job} -> job) (\s@DescribeFraudsterRegistrationJobResponse' {} a -> s {job = a} :: DescribeFraudsterRegistrationJobResponse)

-- | The response's http status code.
describeFraudsterRegistrationJobResponse_httpStatus :: Lens.Lens' DescribeFraudsterRegistrationJobResponse Prelude.Int
describeFraudsterRegistrationJobResponse_httpStatus = Lens.lens (\DescribeFraudsterRegistrationJobResponse' {httpStatus} -> httpStatus) (\s@DescribeFraudsterRegistrationJobResponse' {} a -> s {httpStatus = a} :: DescribeFraudsterRegistrationJobResponse)

instance
  Prelude.NFData
    DescribeFraudsterRegistrationJobResponse
