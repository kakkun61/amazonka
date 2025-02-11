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
-- Module      : Network.AWS.ApplicationInsights.DescribeProblemObservations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the anomalies or errors associated with the problem.
module Network.AWS.ApplicationInsights.DescribeProblemObservations
  ( -- * Creating a Request
    DescribeProblemObservations (..),
    newDescribeProblemObservations,

    -- * Request Lenses
    describeProblemObservations_problemId,

    -- * Destructuring the Response
    DescribeProblemObservationsResponse (..),
    newDescribeProblemObservationsResponse,

    -- * Response Lenses
    describeProblemObservationsResponse_relatedObservations,
    describeProblemObservationsResponse_httpStatus,
  )
where

import Network.AWS.ApplicationInsights.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeProblemObservations' smart constructor.
data DescribeProblemObservations = DescribeProblemObservations'
  { -- | The ID of the problem.
    problemId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeProblemObservations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'problemId', 'describeProblemObservations_problemId' - The ID of the problem.
newDescribeProblemObservations ::
  -- | 'problemId'
  Prelude.Text ->
  DescribeProblemObservations
newDescribeProblemObservations pProblemId_ =
  DescribeProblemObservations'
    { problemId =
        pProblemId_
    }

-- | The ID of the problem.
describeProblemObservations_problemId :: Lens.Lens' DescribeProblemObservations Prelude.Text
describeProblemObservations_problemId = Lens.lens (\DescribeProblemObservations' {problemId} -> problemId) (\s@DescribeProblemObservations' {} a -> s {problemId = a} :: DescribeProblemObservations)

instance Core.AWSRequest DescribeProblemObservations where
  type
    AWSResponse DescribeProblemObservations =
      DescribeProblemObservationsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeProblemObservationsResponse'
            Prelude.<$> (x Core..?> "RelatedObservations")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeProblemObservations

instance Prelude.NFData DescribeProblemObservations

instance Core.ToHeaders DescribeProblemObservations where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "EC2WindowsBarleyService.DescribeProblemObservations" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeProblemObservations where
  toJSON DescribeProblemObservations' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("ProblemId" Core..= problemId)]
      )

instance Core.ToPath DescribeProblemObservations where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeProblemObservations where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeProblemObservationsResponse' smart constructor.
data DescribeProblemObservationsResponse = DescribeProblemObservationsResponse'
  { -- | Observations related to the problem.
    relatedObservations :: Prelude.Maybe RelatedObservations,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeProblemObservationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'relatedObservations', 'describeProblemObservationsResponse_relatedObservations' - Observations related to the problem.
--
-- 'httpStatus', 'describeProblemObservationsResponse_httpStatus' - The response's http status code.
newDescribeProblemObservationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeProblemObservationsResponse
newDescribeProblemObservationsResponse pHttpStatus_ =
  DescribeProblemObservationsResponse'
    { relatedObservations =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Observations related to the problem.
describeProblemObservationsResponse_relatedObservations :: Lens.Lens' DescribeProblemObservationsResponse (Prelude.Maybe RelatedObservations)
describeProblemObservationsResponse_relatedObservations = Lens.lens (\DescribeProblemObservationsResponse' {relatedObservations} -> relatedObservations) (\s@DescribeProblemObservationsResponse' {} a -> s {relatedObservations = a} :: DescribeProblemObservationsResponse)

-- | The response's http status code.
describeProblemObservationsResponse_httpStatus :: Lens.Lens' DescribeProblemObservationsResponse Prelude.Int
describeProblemObservationsResponse_httpStatus = Lens.lens (\DescribeProblemObservationsResponse' {httpStatus} -> httpStatus) (\s@DescribeProblemObservationsResponse' {} a -> s {httpStatus = a} :: DescribeProblemObservationsResponse)

instance
  Prelude.NFData
    DescribeProblemObservationsResponse
