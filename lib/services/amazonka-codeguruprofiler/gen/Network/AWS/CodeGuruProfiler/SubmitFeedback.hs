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
-- Module      : Network.AWS.CodeGuruProfiler.SubmitFeedback
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sends feedback to CodeGuru Profiler about whether the anomaly detected
-- by the analysis is useful or not.
module Network.AWS.CodeGuruProfiler.SubmitFeedback
  ( -- * Creating a Request
    SubmitFeedback (..),
    newSubmitFeedback,

    -- * Request Lenses
    submitFeedback_comment,
    submitFeedback_anomalyInstanceId,
    submitFeedback_profilingGroupName,
    submitFeedback_type,

    -- * Destructuring the Response
    SubmitFeedbackResponse (..),
    newSubmitFeedbackResponse,

    -- * Response Lenses
    submitFeedbackResponse_httpStatus,
  )
where

import Network.AWS.CodeGuruProfiler.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The structure representing the SubmitFeedbackRequest.
--
-- /See:/ 'newSubmitFeedback' smart constructor.
data SubmitFeedback = SubmitFeedback'
  { -- | Optional feedback about this anomaly.
    comment :: Prelude.Maybe Prelude.Text,
    -- | The universally unique identifier (UUID) of the
    -- <https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AnomalyInstance.html AnomalyInstance>
    -- object that is included in the analysis data.
    anomalyInstanceId :: Prelude.Text,
    -- | The name of the profiling group that is associated with the analysis
    -- data.
    profilingGroupName :: Prelude.Text,
    -- | The feedback tpye. Thee are two valid values, @Positive@ and @Negative@.
    type' :: FeedbackType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SubmitFeedback' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'comment', 'submitFeedback_comment' - Optional feedback about this anomaly.
--
-- 'anomalyInstanceId', 'submitFeedback_anomalyInstanceId' - The universally unique identifier (UUID) of the
-- <https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AnomalyInstance.html AnomalyInstance>
-- object that is included in the analysis data.
--
-- 'profilingGroupName', 'submitFeedback_profilingGroupName' - The name of the profiling group that is associated with the analysis
-- data.
--
-- 'type'', 'submitFeedback_type' - The feedback tpye. Thee are two valid values, @Positive@ and @Negative@.
newSubmitFeedback ::
  -- | 'anomalyInstanceId'
  Prelude.Text ->
  -- | 'profilingGroupName'
  Prelude.Text ->
  -- | 'type''
  FeedbackType ->
  SubmitFeedback
newSubmitFeedback
  pAnomalyInstanceId_
  pProfilingGroupName_
  pType_ =
    SubmitFeedback'
      { comment = Prelude.Nothing,
        anomalyInstanceId = pAnomalyInstanceId_,
        profilingGroupName = pProfilingGroupName_,
        type' = pType_
      }

-- | Optional feedback about this anomaly.
submitFeedback_comment :: Lens.Lens' SubmitFeedback (Prelude.Maybe Prelude.Text)
submitFeedback_comment = Lens.lens (\SubmitFeedback' {comment} -> comment) (\s@SubmitFeedback' {} a -> s {comment = a} :: SubmitFeedback)

-- | The universally unique identifier (UUID) of the
-- <https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AnomalyInstance.html AnomalyInstance>
-- object that is included in the analysis data.
submitFeedback_anomalyInstanceId :: Lens.Lens' SubmitFeedback Prelude.Text
submitFeedback_anomalyInstanceId = Lens.lens (\SubmitFeedback' {anomalyInstanceId} -> anomalyInstanceId) (\s@SubmitFeedback' {} a -> s {anomalyInstanceId = a} :: SubmitFeedback)

-- | The name of the profiling group that is associated with the analysis
-- data.
submitFeedback_profilingGroupName :: Lens.Lens' SubmitFeedback Prelude.Text
submitFeedback_profilingGroupName = Lens.lens (\SubmitFeedback' {profilingGroupName} -> profilingGroupName) (\s@SubmitFeedback' {} a -> s {profilingGroupName = a} :: SubmitFeedback)

-- | The feedback tpye. Thee are two valid values, @Positive@ and @Negative@.
submitFeedback_type :: Lens.Lens' SubmitFeedback FeedbackType
submitFeedback_type = Lens.lens (\SubmitFeedback' {type'} -> type') (\s@SubmitFeedback' {} a -> s {type' = a} :: SubmitFeedback)

instance Core.AWSRequest SubmitFeedback where
  type
    AWSResponse SubmitFeedback =
      SubmitFeedbackResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          SubmitFeedbackResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable SubmitFeedback

instance Prelude.NFData SubmitFeedback

instance Core.ToHeaders SubmitFeedback where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON SubmitFeedback where
  toJSON SubmitFeedback' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("comment" Core..=) Prelude.<$> comment,
            Prelude.Just ("type" Core..= type')
          ]
      )

instance Core.ToPath SubmitFeedback where
  toPath SubmitFeedback' {..} =
    Prelude.mconcat
      [ "/internal/profilingGroups/",
        Core.toBS profilingGroupName,
        "/anomalies/",
        Core.toBS anomalyInstanceId,
        "/feedback"
      ]

instance Core.ToQuery SubmitFeedback where
  toQuery = Prelude.const Prelude.mempty

-- | The structure representing the SubmitFeedbackResponse.
--
-- /See:/ 'newSubmitFeedbackResponse' smart constructor.
data SubmitFeedbackResponse = SubmitFeedbackResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SubmitFeedbackResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'submitFeedbackResponse_httpStatus' - The response's http status code.
newSubmitFeedbackResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  SubmitFeedbackResponse
newSubmitFeedbackResponse pHttpStatus_ =
  SubmitFeedbackResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
submitFeedbackResponse_httpStatus :: Lens.Lens' SubmitFeedbackResponse Prelude.Int
submitFeedbackResponse_httpStatus = Lens.lens (\SubmitFeedbackResponse' {httpStatus} -> httpStatus) (\s@SubmitFeedbackResponse' {} a -> s {httpStatus = a} :: SubmitFeedbackResponse)

instance Prelude.NFData SubmitFeedbackResponse
