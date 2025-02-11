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
-- Module      : Network.AWS.Personalize.ListSolutions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of solutions that use the given dataset group. When a
-- dataset group is not specified, all the solutions associated with the
-- account are listed. The response provides the properties for each
-- solution, including the Amazon Resource Name (ARN). For more information
-- on solutions, see CreateSolution.
--
-- This operation returns paginated results.
module Network.AWS.Personalize.ListSolutions
  ( -- * Creating a Request
    ListSolutions (..),
    newListSolutions,

    -- * Request Lenses
    listSolutions_nextToken,
    listSolutions_datasetGroupArn,
    listSolutions_maxResults,

    -- * Destructuring the Response
    ListSolutionsResponse (..),
    newListSolutionsResponse,

    -- * Response Lenses
    listSolutionsResponse_nextToken,
    listSolutionsResponse_solutions,
    listSolutionsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Personalize.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListSolutions' smart constructor.
data ListSolutions = ListSolutions'
  { -- | A token returned from the previous call to @ListSolutions@ for getting
    -- the next set of solutions (if they exist).
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the dataset group.
    datasetGroupArn :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of solutions to return.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListSolutions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listSolutions_nextToken' - A token returned from the previous call to @ListSolutions@ for getting
-- the next set of solutions (if they exist).
--
-- 'datasetGroupArn', 'listSolutions_datasetGroupArn' - The Amazon Resource Name (ARN) of the dataset group.
--
-- 'maxResults', 'listSolutions_maxResults' - The maximum number of solutions to return.
newListSolutions ::
  ListSolutions
newListSolutions =
  ListSolutions'
    { nextToken = Prelude.Nothing,
      datasetGroupArn = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | A token returned from the previous call to @ListSolutions@ for getting
-- the next set of solutions (if they exist).
listSolutions_nextToken :: Lens.Lens' ListSolutions (Prelude.Maybe Prelude.Text)
listSolutions_nextToken = Lens.lens (\ListSolutions' {nextToken} -> nextToken) (\s@ListSolutions' {} a -> s {nextToken = a} :: ListSolutions)

-- | The Amazon Resource Name (ARN) of the dataset group.
listSolutions_datasetGroupArn :: Lens.Lens' ListSolutions (Prelude.Maybe Prelude.Text)
listSolutions_datasetGroupArn = Lens.lens (\ListSolutions' {datasetGroupArn} -> datasetGroupArn) (\s@ListSolutions' {} a -> s {datasetGroupArn = a} :: ListSolutions)

-- | The maximum number of solutions to return.
listSolutions_maxResults :: Lens.Lens' ListSolutions (Prelude.Maybe Prelude.Natural)
listSolutions_maxResults = Lens.lens (\ListSolutions' {maxResults} -> maxResults) (\s@ListSolutions' {} a -> s {maxResults = a} :: ListSolutions)

instance Core.AWSPager ListSolutions where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listSolutionsResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listSolutionsResponse_solutions Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listSolutions_nextToken
          Lens..~ rs
          Lens.^? listSolutionsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListSolutions where
  type
    AWSResponse ListSolutions =
      ListSolutionsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListSolutionsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (x Core..?> "solutions" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListSolutions

instance Prelude.NFData ListSolutions

instance Core.ToHeaders ListSolutions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonPersonalize.ListSolutions" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListSolutions where
  toJSON ListSolutions' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nextToken" Core..=) Prelude.<$> nextToken,
            ("datasetGroupArn" Core..=)
              Prelude.<$> datasetGroupArn,
            ("maxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListSolutions where
  toPath = Prelude.const "/"

instance Core.ToQuery ListSolutions where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListSolutionsResponse' smart constructor.
data ListSolutionsResponse = ListSolutionsResponse'
  { -- | A token for getting the next set of solutions (if they exist).
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of the current solutions.
    solutions :: Prelude.Maybe [SolutionSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListSolutionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listSolutionsResponse_nextToken' - A token for getting the next set of solutions (if they exist).
--
-- 'solutions', 'listSolutionsResponse_solutions' - A list of the current solutions.
--
-- 'httpStatus', 'listSolutionsResponse_httpStatus' - The response's http status code.
newListSolutionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListSolutionsResponse
newListSolutionsResponse pHttpStatus_ =
  ListSolutionsResponse'
    { nextToken = Prelude.Nothing,
      solutions = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A token for getting the next set of solutions (if they exist).
listSolutionsResponse_nextToken :: Lens.Lens' ListSolutionsResponse (Prelude.Maybe Prelude.Text)
listSolutionsResponse_nextToken = Lens.lens (\ListSolutionsResponse' {nextToken} -> nextToken) (\s@ListSolutionsResponse' {} a -> s {nextToken = a} :: ListSolutionsResponse)

-- | A list of the current solutions.
listSolutionsResponse_solutions :: Lens.Lens' ListSolutionsResponse (Prelude.Maybe [SolutionSummary])
listSolutionsResponse_solutions = Lens.lens (\ListSolutionsResponse' {solutions} -> solutions) (\s@ListSolutionsResponse' {} a -> s {solutions = a} :: ListSolutionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listSolutionsResponse_httpStatus :: Lens.Lens' ListSolutionsResponse Prelude.Int
listSolutionsResponse_httpStatus = Lens.lens (\ListSolutionsResponse' {httpStatus} -> httpStatus) (\s@ListSolutionsResponse' {} a -> s {httpStatus = a} :: ListSolutionsResponse)

instance Prelude.NFData ListSolutionsResponse
