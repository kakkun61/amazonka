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
-- Module      : Network.AWS.VoiceId.DescribeSpeakerEnrollmentJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified speaker enrollment job.
module Network.AWS.VoiceId.DescribeSpeakerEnrollmentJob
  ( -- * Creating a Request
    DescribeSpeakerEnrollmentJob (..),
    newDescribeSpeakerEnrollmentJob,

    -- * Request Lenses
    describeSpeakerEnrollmentJob_domainId,
    describeSpeakerEnrollmentJob_jobId,

    -- * Destructuring the Response
    DescribeSpeakerEnrollmentJobResponse (..),
    newDescribeSpeakerEnrollmentJobResponse,

    -- * Response Lenses
    describeSpeakerEnrollmentJobResponse_job,
    describeSpeakerEnrollmentJobResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.VoiceId.Types

-- | /See:/ 'newDescribeSpeakerEnrollmentJob' smart constructor.
data DescribeSpeakerEnrollmentJob = DescribeSpeakerEnrollmentJob'
  { -- | The identifier of the domain containing the speaker enrollment job.
    domainId :: Prelude.Text,
    -- | The identifier of the speaker enrollment job you are describing.
    jobId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeSpeakerEnrollmentJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domainId', 'describeSpeakerEnrollmentJob_domainId' - The identifier of the domain containing the speaker enrollment job.
--
-- 'jobId', 'describeSpeakerEnrollmentJob_jobId' - The identifier of the speaker enrollment job you are describing.
newDescribeSpeakerEnrollmentJob ::
  -- | 'domainId'
  Prelude.Text ->
  -- | 'jobId'
  Prelude.Text ->
  DescribeSpeakerEnrollmentJob
newDescribeSpeakerEnrollmentJob pDomainId_ pJobId_ =
  DescribeSpeakerEnrollmentJob'
    { domainId =
        pDomainId_,
      jobId = pJobId_
    }

-- | The identifier of the domain containing the speaker enrollment job.
describeSpeakerEnrollmentJob_domainId :: Lens.Lens' DescribeSpeakerEnrollmentJob Prelude.Text
describeSpeakerEnrollmentJob_domainId = Lens.lens (\DescribeSpeakerEnrollmentJob' {domainId} -> domainId) (\s@DescribeSpeakerEnrollmentJob' {} a -> s {domainId = a} :: DescribeSpeakerEnrollmentJob)

-- | The identifier of the speaker enrollment job you are describing.
describeSpeakerEnrollmentJob_jobId :: Lens.Lens' DescribeSpeakerEnrollmentJob Prelude.Text
describeSpeakerEnrollmentJob_jobId = Lens.lens (\DescribeSpeakerEnrollmentJob' {jobId} -> jobId) (\s@DescribeSpeakerEnrollmentJob' {} a -> s {jobId = a} :: DescribeSpeakerEnrollmentJob)

instance Core.AWSRequest DescribeSpeakerEnrollmentJob where
  type
    AWSResponse DescribeSpeakerEnrollmentJob =
      DescribeSpeakerEnrollmentJobResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeSpeakerEnrollmentJobResponse'
            Prelude.<$> (x Core..?> "Job")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeSpeakerEnrollmentJob

instance Prelude.NFData DescribeSpeakerEnrollmentJob

instance Core.ToHeaders DescribeSpeakerEnrollmentJob where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "VoiceID.DescribeSpeakerEnrollmentJob" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeSpeakerEnrollmentJob where
  toJSON DescribeSpeakerEnrollmentJob' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("DomainId" Core..= domainId),
            Prelude.Just ("JobId" Core..= jobId)
          ]
      )

instance Core.ToPath DescribeSpeakerEnrollmentJob where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeSpeakerEnrollmentJob where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeSpeakerEnrollmentJobResponse' smart constructor.
data DescribeSpeakerEnrollmentJobResponse = DescribeSpeakerEnrollmentJobResponse'
  { -- | Contains details about the specified speaker enrollment job.
    job :: Prelude.Maybe SpeakerEnrollmentJob,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeSpeakerEnrollmentJobResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'job', 'describeSpeakerEnrollmentJobResponse_job' - Contains details about the specified speaker enrollment job.
--
-- 'httpStatus', 'describeSpeakerEnrollmentJobResponse_httpStatus' - The response's http status code.
newDescribeSpeakerEnrollmentJobResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeSpeakerEnrollmentJobResponse
newDescribeSpeakerEnrollmentJobResponse pHttpStatus_ =
  DescribeSpeakerEnrollmentJobResponse'
    { job =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Contains details about the specified speaker enrollment job.
describeSpeakerEnrollmentJobResponse_job :: Lens.Lens' DescribeSpeakerEnrollmentJobResponse (Prelude.Maybe SpeakerEnrollmentJob)
describeSpeakerEnrollmentJobResponse_job = Lens.lens (\DescribeSpeakerEnrollmentJobResponse' {job} -> job) (\s@DescribeSpeakerEnrollmentJobResponse' {} a -> s {job = a} :: DescribeSpeakerEnrollmentJobResponse)

-- | The response's http status code.
describeSpeakerEnrollmentJobResponse_httpStatus :: Lens.Lens' DescribeSpeakerEnrollmentJobResponse Prelude.Int
describeSpeakerEnrollmentJobResponse_httpStatus = Lens.lens (\DescribeSpeakerEnrollmentJobResponse' {httpStatus} -> httpStatus) (\s@DescribeSpeakerEnrollmentJobResponse' {} a -> s {httpStatus = a} :: DescribeSpeakerEnrollmentJobResponse)

instance
  Prelude.NFData
    DescribeSpeakerEnrollmentJobResponse
