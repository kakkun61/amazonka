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
-- Module      : Network.AWS.ImportExport.ListJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation returns the jobs associated with the requester. AWS
-- Import\/Export lists the jobs in reverse chronological order based on
-- the date of creation. For example if Job Test1 was created 2009Dec30 and
-- Test2 was created 2010Feb05, the ListJobs operation would return Test2
-- followed by Test1.
--
-- This operation returns paginated results.
module Network.AWS.ImportExport.ListJobs
  ( -- * Creating a Request
    ListJobs (..),
    newListJobs,

    -- * Request Lenses
    listJobs_aPIVersion,
    listJobs_marker,
    listJobs_maxJobs,

    -- * Destructuring the Response
    ListJobsResponse (..),
    newListJobsResponse,

    -- * Response Lenses
    listJobsResponse_jobs,
    listJobsResponse_isTruncated,
    listJobsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.ImportExport.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Input structure for the ListJobs operation.
--
-- /See:/ 'newListJobs' smart constructor.
data ListJobs = ListJobs'
  { aPIVersion :: Prelude.Maybe Prelude.Text,
    marker :: Prelude.Maybe Prelude.Text,
    maxJobs :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListJobs' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'aPIVersion', 'listJobs_aPIVersion' - Undocumented member.
--
-- 'marker', 'listJobs_marker' - Undocumented member.
--
-- 'maxJobs', 'listJobs_maxJobs' - Undocumented member.
newListJobs ::
  ListJobs
newListJobs =
  ListJobs'
    { aPIVersion = Prelude.Nothing,
      marker = Prelude.Nothing,
      maxJobs = Prelude.Nothing
    }

-- | Undocumented member.
listJobs_aPIVersion :: Lens.Lens' ListJobs (Prelude.Maybe Prelude.Text)
listJobs_aPIVersion = Lens.lens (\ListJobs' {aPIVersion} -> aPIVersion) (\s@ListJobs' {} a -> s {aPIVersion = a} :: ListJobs)

-- | Undocumented member.
listJobs_marker :: Lens.Lens' ListJobs (Prelude.Maybe Prelude.Text)
listJobs_marker = Lens.lens (\ListJobs' {marker} -> marker) (\s@ListJobs' {} a -> s {marker = a} :: ListJobs)

-- | Undocumented member.
listJobs_maxJobs :: Lens.Lens' ListJobs (Prelude.Maybe Prelude.Int)
listJobs_maxJobs = Lens.lens (\ListJobs' {maxJobs} -> maxJobs) (\s@ListJobs' {} a -> s {maxJobs = a} :: ListJobs)

instance Core.AWSPager ListJobs where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listJobsResponse_isTruncated Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.isNothing
        ( rs
            Lens.^? listJobsResponse_jobs Prelude.. Lens._Just
              Prelude.. Lens._last
              Prelude.. job_jobId
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listJobs_marker
          Lens..~ rs
          Lens.^? listJobsResponse_jobs Prelude.. Lens._Just
            Prelude.. Lens._last
            Prelude.. job_jobId

instance Core.AWSRequest ListJobs where
  type AWSResponse ListJobs = ListJobsResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "ListJobsResult"
      ( \s h x ->
          ListJobsResponse'
            Prelude.<$> ( x Core..@? "Jobs" Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "member")
                        )
            Prelude.<*> (x Core..@? "IsTruncated")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListJobs

instance Prelude.NFData ListJobs

instance Core.ToHeaders ListJobs where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ListJobs where
  toPath = Prelude.const "/"

instance Core.ToQuery ListJobs where
  toQuery ListJobs' {..} =
    Prelude.mconcat
      [ "Operation=ListJobs",
        "Action" Core.=: ("ListJobs" :: Prelude.ByteString),
        "Version"
          Core.=: ("2010-06-01" :: Prelude.ByteString),
        "APIVersion" Core.=: aPIVersion,
        "Marker" Core.=: marker,
        "MaxJobs" Core.=: maxJobs
      ]

-- | Output structure for the ListJobs operation.
--
-- /See:/ 'newListJobsResponse' smart constructor.
data ListJobsResponse = ListJobsResponse'
  { jobs :: Prelude.Maybe [Job],
    isTruncated :: Prelude.Maybe Prelude.Bool,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListJobsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobs', 'listJobsResponse_jobs' - Undocumented member.
--
-- 'isTruncated', 'listJobsResponse_isTruncated' - Undocumented member.
--
-- 'httpStatus', 'listJobsResponse_httpStatus' - The response's http status code.
newListJobsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListJobsResponse
newListJobsResponse pHttpStatus_ =
  ListJobsResponse'
    { jobs = Prelude.Nothing,
      isTruncated = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
listJobsResponse_jobs :: Lens.Lens' ListJobsResponse (Prelude.Maybe [Job])
listJobsResponse_jobs = Lens.lens (\ListJobsResponse' {jobs} -> jobs) (\s@ListJobsResponse' {} a -> s {jobs = a} :: ListJobsResponse) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
listJobsResponse_isTruncated :: Lens.Lens' ListJobsResponse (Prelude.Maybe Prelude.Bool)
listJobsResponse_isTruncated = Lens.lens (\ListJobsResponse' {isTruncated} -> isTruncated) (\s@ListJobsResponse' {} a -> s {isTruncated = a} :: ListJobsResponse)

-- | The response's http status code.
listJobsResponse_httpStatus :: Lens.Lens' ListJobsResponse Prelude.Int
listJobsResponse_httpStatus = Lens.lens (\ListJobsResponse' {httpStatus} -> httpStatus) (\s@ListJobsResponse' {} a -> s {httpStatus = a} :: ListJobsResponse)

instance Prelude.NFData ListJobsResponse
