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
-- Module      : Network.AWS.QuickSight.DescribeAnalysis
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a summary of the metadata for an analysis.
module Network.AWS.QuickSight.DescribeAnalysis
  ( -- * Creating a Request
    DescribeAnalysis (..),
    newDescribeAnalysis,

    -- * Request Lenses
    describeAnalysis_awsAccountId,
    describeAnalysis_analysisId,

    -- * Destructuring the Response
    DescribeAnalysisResponse (..),
    newDescribeAnalysisResponse,

    -- * Response Lenses
    describeAnalysisResponse_requestId,
    describeAnalysisResponse_analysis,
    describeAnalysisResponse_status,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeAnalysis' smart constructor.
data DescribeAnalysis = DescribeAnalysis'
  { -- | The ID of the Amazon Web Services account that contains the analysis.
    -- You must be using the Amazon Web Services account that the analysis is
    -- in.
    awsAccountId :: Prelude.Text,
    -- | The ID of the analysis that you\'re describing. The ID is part of the
    -- URL of the analysis.
    analysisId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAnalysis' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'awsAccountId', 'describeAnalysis_awsAccountId' - The ID of the Amazon Web Services account that contains the analysis.
-- You must be using the Amazon Web Services account that the analysis is
-- in.
--
-- 'analysisId', 'describeAnalysis_analysisId' - The ID of the analysis that you\'re describing. The ID is part of the
-- URL of the analysis.
newDescribeAnalysis ::
  -- | 'awsAccountId'
  Prelude.Text ->
  -- | 'analysisId'
  Prelude.Text ->
  DescribeAnalysis
newDescribeAnalysis pAwsAccountId_ pAnalysisId_ =
  DescribeAnalysis'
    { awsAccountId = pAwsAccountId_,
      analysisId = pAnalysisId_
    }

-- | The ID of the Amazon Web Services account that contains the analysis.
-- You must be using the Amazon Web Services account that the analysis is
-- in.
describeAnalysis_awsAccountId :: Lens.Lens' DescribeAnalysis Prelude.Text
describeAnalysis_awsAccountId = Lens.lens (\DescribeAnalysis' {awsAccountId} -> awsAccountId) (\s@DescribeAnalysis' {} a -> s {awsAccountId = a} :: DescribeAnalysis)

-- | The ID of the analysis that you\'re describing. The ID is part of the
-- URL of the analysis.
describeAnalysis_analysisId :: Lens.Lens' DescribeAnalysis Prelude.Text
describeAnalysis_analysisId = Lens.lens (\DescribeAnalysis' {analysisId} -> analysisId) (\s@DescribeAnalysis' {} a -> s {analysisId = a} :: DescribeAnalysis)

instance Core.AWSRequest DescribeAnalysis where
  type
    AWSResponse DescribeAnalysis =
      DescribeAnalysisResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeAnalysisResponse'
            Prelude.<$> (x Core..?> "RequestId")
            Prelude.<*> (x Core..?> "Analysis")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeAnalysis

instance Prelude.NFData DescribeAnalysis

instance Core.ToHeaders DescribeAnalysis where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeAnalysis where
  toPath DescribeAnalysis' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS awsAccountId,
        "/analyses/",
        Core.toBS analysisId
      ]

instance Core.ToQuery DescribeAnalysis where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeAnalysisResponse' smart constructor.
data DescribeAnalysisResponse = DescribeAnalysisResponse'
  { -- | The Amazon Web Services request ID for this operation.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | A metadata structure that contains summary information for the analysis
    -- that you\'re describing.
    analysis :: Prelude.Maybe Analysis,
    -- | The HTTP status of the request.
    status :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAnalysisResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'describeAnalysisResponse_requestId' - The Amazon Web Services request ID for this operation.
--
-- 'analysis', 'describeAnalysisResponse_analysis' - A metadata structure that contains summary information for the analysis
-- that you\'re describing.
--
-- 'status', 'describeAnalysisResponse_status' - The HTTP status of the request.
newDescribeAnalysisResponse ::
  -- | 'status'
  Prelude.Int ->
  DescribeAnalysisResponse
newDescribeAnalysisResponse pStatus_ =
  DescribeAnalysisResponse'
    { requestId =
        Prelude.Nothing,
      analysis = Prelude.Nothing,
      status = pStatus_
    }

-- | The Amazon Web Services request ID for this operation.
describeAnalysisResponse_requestId :: Lens.Lens' DescribeAnalysisResponse (Prelude.Maybe Prelude.Text)
describeAnalysisResponse_requestId = Lens.lens (\DescribeAnalysisResponse' {requestId} -> requestId) (\s@DescribeAnalysisResponse' {} a -> s {requestId = a} :: DescribeAnalysisResponse)

-- | A metadata structure that contains summary information for the analysis
-- that you\'re describing.
describeAnalysisResponse_analysis :: Lens.Lens' DescribeAnalysisResponse (Prelude.Maybe Analysis)
describeAnalysisResponse_analysis = Lens.lens (\DescribeAnalysisResponse' {analysis} -> analysis) (\s@DescribeAnalysisResponse' {} a -> s {analysis = a} :: DescribeAnalysisResponse)

-- | The HTTP status of the request.
describeAnalysisResponse_status :: Lens.Lens' DescribeAnalysisResponse Prelude.Int
describeAnalysisResponse_status = Lens.lens (\DescribeAnalysisResponse' {status} -> status) (\s@DescribeAnalysisResponse' {} a -> s {status = a} :: DescribeAnalysisResponse)

instance Prelude.NFData DescribeAnalysisResponse
