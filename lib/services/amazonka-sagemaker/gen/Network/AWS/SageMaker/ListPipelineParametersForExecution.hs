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
-- Module      : Network.AWS.SageMaker.ListPipelineParametersForExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of parameters for a pipeline execution.
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListPipelineParametersForExecution
  ( -- * Creating a Request
    ListPipelineParametersForExecution (..),
    newListPipelineParametersForExecution,

    -- * Request Lenses
    listPipelineParametersForExecution_nextToken,
    listPipelineParametersForExecution_maxResults,
    listPipelineParametersForExecution_pipelineExecutionArn,

    -- * Destructuring the Response
    ListPipelineParametersForExecutionResponse (..),
    newListPipelineParametersForExecutionResponse,

    -- * Response Lenses
    listPipelineParametersForExecutionResponse_pipelineParameters,
    listPipelineParametersForExecutionResponse_nextToken,
    listPipelineParametersForExecutionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'newListPipelineParametersForExecution' smart constructor.
data ListPipelineParametersForExecution = ListPipelineParametersForExecution'
  { -- | If the result of the previous @ListPipelineParametersForExecution@
    -- request was truncated, the response includes a @NextToken@. To retrieve
    -- the next set of parameters, use the token in the next request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of parameters to return in the response.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The Amazon Resource Name (ARN) of the pipeline execution.
    pipelineExecutionArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListPipelineParametersForExecution' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listPipelineParametersForExecution_nextToken' - If the result of the previous @ListPipelineParametersForExecution@
-- request was truncated, the response includes a @NextToken@. To retrieve
-- the next set of parameters, use the token in the next request.
--
-- 'maxResults', 'listPipelineParametersForExecution_maxResults' - The maximum number of parameters to return in the response.
--
-- 'pipelineExecutionArn', 'listPipelineParametersForExecution_pipelineExecutionArn' - The Amazon Resource Name (ARN) of the pipeline execution.
newListPipelineParametersForExecution ::
  -- | 'pipelineExecutionArn'
  Prelude.Text ->
  ListPipelineParametersForExecution
newListPipelineParametersForExecution
  pPipelineExecutionArn_ =
    ListPipelineParametersForExecution'
      { nextToken =
          Prelude.Nothing,
        maxResults = Prelude.Nothing,
        pipelineExecutionArn =
          pPipelineExecutionArn_
      }

-- | If the result of the previous @ListPipelineParametersForExecution@
-- request was truncated, the response includes a @NextToken@. To retrieve
-- the next set of parameters, use the token in the next request.
listPipelineParametersForExecution_nextToken :: Lens.Lens' ListPipelineParametersForExecution (Prelude.Maybe Prelude.Text)
listPipelineParametersForExecution_nextToken = Lens.lens (\ListPipelineParametersForExecution' {nextToken} -> nextToken) (\s@ListPipelineParametersForExecution' {} a -> s {nextToken = a} :: ListPipelineParametersForExecution)

-- | The maximum number of parameters to return in the response.
listPipelineParametersForExecution_maxResults :: Lens.Lens' ListPipelineParametersForExecution (Prelude.Maybe Prelude.Natural)
listPipelineParametersForExecution_maxResults = Lens.lens (\ListPipelineParametersForExecution' {maxResults} -> maxResults) (\s@ListPipelineParametersForExecution' {} a -> s {maxResults = a} :: ListPipelineParametersForExecution)

-- | The Amazon Resource Name (ARN) of the pipeline execution.
listPipelineParametersForExecution_pipelineExecutionArn :: Lens.Lens' ListPipelineParametersForExecution Prelude.Text
listPipelineParametersForExecution_pipelineExecutionArn = Lens.lens (\ListPipelineParametersForExecution' {pipelineExecutionArn} -> pipelineExecutionArn) (\s@ListPipelineParametersForExecution' {} a -> s {pipelineExecutionArn = a} :: ListPipelineParametersForExecution)

instance
  Core.AWSPager
    ListPipelineParametersForExecution
  where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listPipelineParametersForExecutionResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listPipelineParametersForExecutionResponse_pipelineParameters
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listPipelineParametersForExecution_nextToken
          Lens..~ rs
          Lens.^? listPipelineParametersForExecutionResponse_nextToken
            Prelude.. Lens._Just

instance
  Core.AWSRequest
    ListPipelineParametersForExecution
  where
  type
    AWSResponse ListPipelineParametersForExecution =
      ListPipelineParametersForExecutionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListPipelineParametersForExecutionResponse'
            Prelude.<$> ( x Core..?> "PipelineParameters"
                            Core..!@ Prelude.mempty
                        )
              Prelude.<*> (x Core..?> "NextToken")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    ListPipelineParametersForExecution

instance
  Prelude.NFData
    ListPipelineParametersForExecution

instance
  Core.ToHeaders
    ListPipelineParametersForExecution
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SageMaker.ListPipelineParametersForExecution" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    ListPipelineParametersForExecution
  where
  toJSON ListPipelineParametersForExecution' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just
              ( "PipelineExecutionArn"
                  Core..= pipelineExecutionArn
              )
          ]
      )

instance
  Core.ToPath
    ListPipelineParametersForExecution
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    ListPipelineParametersForExecution
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListPipelineParametersForExecutionResponse' smart constructor.
data ListPipelineParametersForExecutionResponse = ListPipelineParametersForExecutionResponse'
  { -- | Contains a list of pipeline parameters. This list can be empty.
    pipelineParameters :: Prelude.Maybe [Parameter],
    -- | If the result of the previous @ListPipelineParametersForExecution@
    -- request was truncated, the response includes a @NextToken@. To retrieve
    -- the next set of parameters, use the token in the next request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListPipelineParametersForExecutionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'pipelineParameters', 'listPipelineParametersForExecutionResponse_pipelineParameters' - Contains a list of pipeline parameters. This list can be empty.
--
-- 'nextToken', 'listPipelineParametersForExecutionResponse_nextToken' - If the result of the previous @ListPipelineParametersForExecution@
-- request was truncated, the response includes a @NextToken@. To retrieve
-- the next set of parameters, use the token in the next request.
--
-- 'httpStatus', 'listPipelineParametersForExecutionResponse_httpStatus' - The response's http status code.
newListPipelineParametersForExecutionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListPipelineParametersForExecutionResponse
newListPipelineParametersForExecutionResponse
  pHttpStatus_ =
    ListPipelineParametersForExecutionResponse'
      { pipelineParameters =
          Prelude.Nothing,
        nextToken = Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | Contains a list of pipeline parameters. This list can be empty.
listPipelineParametersForExecutionResponse_pipelineParameters :: Lens.Lens' ListPipelineParametersForExecutionResponse (Prelude.Maybe [Parameter])
listPipelineParametersForExecutionResponse_pipelineParameters = Lens.lens (\ListPipelineParametersForExecutionResponse' {pipelineParameters} -> pipelineParameters) (\s@ListPipelineParametersForExecutionResponse' {} a -> s {pipelineParameters = a} :: ListPipelineParametersForExecutionResponse) Prelude.. Lens.mapping Lens.coerced

-- | If the result of the previous @ListPipelineParametersForExecution@
-- request was truncated, the response includes a @NextToken@. To retrieve
-- the next set of parameters, use the token in the next request.
listPipelineParametersForExecutionResponse_nextToken :: Lens.Lens' ListPipelineParametersForExecutionResponse (Prelude.Maybe Prelude.Text)
listPipelineParametersForExecutionResponse_nextToken = Lens.lens (\ListPipelineParametersForExecutionResponse' {nextToken} -> nextToken) (\s@ListPipelineParametersForExecutionResponse' {} a -> s {nextToken = a} :: ListPipelineParametersForExecutionResponse)

-- | The response's http status code.
listPipelineParametersForExecutionResponse_httpStatus :: Lens.Lens' ListPipelineParametersForExecutionResponse Prelude.Int
listPipelineParametersForExecutionResponse_httpStatus = Lens.lens (\ListPipelineParametersForExecutionResponse' {httpStatus} -> httpStatus) (\s@ListPipelineParametersForExecutionResponse' {} a -> s {httpStatus = a} :: ListPipelineParametersForExecutionResponse)

instance
  Prelude.NFData
    ListPipelineParametersForExecutionResponse
