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
-- Module      : Network.AWS.IoTEvents.DescribeDetectorModelAnalysis
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves runtime information about a detector model analysis.
--
-- After AWS IoT Events starts analyzing your detector model, you have up
-- to 24 hours to retrieve the analysis results.
module Network.AWS.IoTEvents.DescribeDetectorModelAnalysis
  ( -- * Creating a Request
    DescribeDetectorModelAnalysis (..),
    newDescribeDetectorModelAnalysis,

    -- * Request Lenses
    describeDetectorModelAnalysis_analysisId,

    -- * Destructuring the Response
    DescribeDetectorModelAnalysisResponse (..),
    newDescribeDetectorModelAnalysisResponse,

    -- * Response Lenses
    describeDetectorModelAnalysisResponse_status,
    describeDetectorModelAnalysisResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTEvents.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeDetectorModelAnalysis' smart constructor.
data DescribeDetectorModelAnalysis = DescribeDetectorModelAnalysis'
  { -- | The ID of the analysis result that you want to retrieve.
    analysisId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDetectorModelAnalysis' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'analysisId', 'describeDetectorModelAnalysis_analysisId' - The ID of the analysis result that you want to retrieve.
newDescribeDetectorModelAnalysis ::
  -- | 'analysisId'
  Prelude.Text ->
  DescribeDetectorModelAnalysis
newDescribeDetectorModelAnalysis pAnalysisId_ =
  DescribeDetectorModelAnalysis'
    { analysisId =
        pAnalysisId_
    }

-- | The ID of the analysis result that you want to retrieve.
describeDetectorModelAnalysis_analysisId :: Lens.Lens' DescribeDetectorModelAnalysis Prelude.Text
describeDetectorModelAnalysis_analysisId = Lens.lens (\DescribeDetectorModelAnalysis' {analysisId} -> analysisId) (\s@DescribeDetectorModelAnalysis' {} a -> s {analysisId = a} :: DescribeDetectorModelAnalysis)

instance
  Core.AWSRequest
    DescribeDetectorModelAnalysis
  where
  type
    AWSResponse DescribeDetectorModelAnalysis =
      DescribeDetectorModelAnalysisResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeDetectorModelAnalysisResponse'
            Prelude.<$> (x Core..?> "status")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeDetectorModelAnalysis

instance Prelude.NFData DescribeDetectorModelAnalysis

instance Core.ToHeaders DescribeDetectorModelAnalysis where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeDetectorModelAnalysis where
  toPath DescribeDetectorModelAnalysis' {..} =
    Prelude.mconcat
      ["/analysis/detector-models/", Core.toBS analysisId]

instance Core.ToQuery DescribeDetectorModelAnalysis where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeDetectorModelAnalysisResponse' smart constructor.
data DescribeDetectorModelAnalysisResponse = DescribeDetectorModelAnalysisResponse'
  { -- | The status of the analysis activity. The status can be one of the
    -- following values:
    --
    -- -   @RUNNING@ - AWS IoT Events is analyzing your detector model. This
    --     process can take several minutes to complete.
    --
    -- -   @COMPLETE@ - AWS IoT Events finished analyzing your detector model.
    --
    -- -   @FAILED@ - AWS IoT Events couldn\'t analyze your detector model. Try
    --     again later.
    status :: Prelude.Maybe AnalysisStatus,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDetectorModelAnalysisResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'describeDetectorModelAnalysisResponse_status' - The status of the analysis activity. The status can be one of the
-- following values:
--
-- -   @RUNNING@ - AWS IoT Events is analyzing your detector model. This
--     process can take several minutes to complete.
--
-- -   @COMPLETE@ - AWS IoT Events finished analyzing your detector model.
--
-- -   @FAILED@ - AWS IoT Events couldn\'t analyze your detector model. Try
--     again later.
--
-- 'httpStatus', 'describeDetectorModelAnalysisResponse_httpStatus' - The response's http status code.
newDescribeDetectorModelAnalysisResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeDetectorModelAnalysisResponse
newDescribeDetectorModelAnalysisResponse pHttpStatus_ =
  DescribeDetectorModelAnalysisResponse'
    { status =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The status of the analysis activity. The status can be one of the
-- following values:
--
-- -   @RUNNING@ - AWS IoT Events is analyzing your detector model. This
--     process can take several minutes to complete.
--
-- -   @COMPLETE@ - AWS IoT Events finished analyzing your detector model.
--
-- -   @FAILED@ - AWS IoT Events couldn\'t analyze your detector model. Try
--     again later.
describeDetectorModelAnalysisResponse_status :: Lens.Lens' DescribeDetectorModelAnalysisResponse (Prelude.Maybe AnalysisStatus)
describeDetectorModelAnalysisResponse_status = Lens.lens (\DescribeDetectorModelAnalysisResponse' {status} -> status) (\s@DescribeDetectorModelAnalysisResponse' {} a -> s {status = a} :: DescribeDetectorModelAnalysisResponse)

-- | The response's http status code.
describeDetectorModelAnalysisResponse_httpStatus :: Lens.Lens' DescribeDetectorModelAnalysisResponse Prelude.Int
describeDetectorModelAnalysisResponse_httpStatus = Lens.lens (\DescribeDetectorModelAnalysisResponse' {httpStatus} -> httpStatus) (\s@DescribeDetectorModelAnalysisResponse' {} a -> s {httpStatus = a} :: DescribeDetectorModelAnalysisResponse)

instance
  Prelude.NFData
    DescribeDetectorModelAnalysisResponse
