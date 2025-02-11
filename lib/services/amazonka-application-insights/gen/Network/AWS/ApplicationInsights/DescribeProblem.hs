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
-- Module      : Network.AWS.ApplicationInsights.DescribeProblem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes an application problem.
module Network.AWS.ApplicationInsights.DescribeProblem
  ( -- * Creating a Request
    DescribeProblem (..),
    newDescribeProblem,

    -- * Request Lenses
    describeProblem_problemId,

    -- * Destructuring the Response
    DescribeProblemResponse (..),
    newDescribeProblemResponse,

    -- * Response Lenses
    describeProblemResponse_problem,
    describeProblemResponse_httpStatus,
  )
where

import Network.AWS.ApplicationInsights.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeProblem' smart constructor.
data DescribeProblem = DescribeProblem'
  { -- | The ID of the problem.
    problemId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeProblem' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'problemId', 'describeProblem_problemId' - The ID of the problem.
newDescribeProblem ::
  -- | 'problemId'
  Prelude.Text ->
  DescribeProblem
newDescribeProblem pProblemId_ =
  DescribeProblem' {problemId = pProblemId_}

-- | The ID of the problem.
describeProblem_problemId :: Lens.Lens' DescribeProblem Prelude.Text
describeProblem_problemId = Lens.lens (\DescribeProblem' {problemId} -> problemId) (\s@DescribeProblem' {} a -> s {problemId = a} :: DescribeProblem)

instance Core.AWSRequest DescribeProblem where
  type
    AWSResponse DescribeProblem =
      DescribeProblemResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeProblemResponse'
            Prelude.<$> (x Core..?> "Problem")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeProblem

instance Prelude.NFData DescribeProblem

instance Core.ToHeaders DescribeProblem where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "EC2WindowsBarleyService.DescribeProblem" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeProblem where
  toJSON DescribeProblem' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("ProblemId" Core..= problemId)]
      )

instance Core.ToPath DescribeProblem where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeProblem where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeProblemResponse' smart constructor.
data DescribeProblemResponse = DescribeProblemResponse'
  { -- | Information about the problem.
    problem :: Prelude.Maybe Problem,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeProblemResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'problem', 'describeProblemResponse_problem' - Information about the problem.
--
-- 'httpStatus', 'describeProblemResponse_httpStatus' - The response's http status code.
newDescribeProblemResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeProblemResponse
newDescribeProblemResponse pHttpStatus_ =
  DescribeProblemResponse'
    { problem = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the problem.
describeProblemResponse_problem :: Lens.Lens' DescribeProblemResponse (Prelude.Maybe Problem)
describeProblemResponse_problem = Lens.lens (\DescribeProblemResponse' {problem} -> problem) (\s@DescribeProblemResponse' {} a -> s {problem = a} :: DescribeProblemResponse)

-- | The response's http status code.
describeProblemResponse_httpStatus :: Lens.Lens' DescribeProblemResponse Prelude.Int
describeProblemResponse_httpStatus = Lens.lens (\DescribeProblemResponse' {httpStatus} -> httpStatus) (\s@DescribeProblemResponse' {} a -> s {httpStatus = a} :: DescribeProblemResponse)

instance Prelude.NFData DescribeProblemResponse
