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
-- Module      : Network.AWS.IoTEvents.ListInputs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the inputs you have created.
module Network.AWS.IoTEvents.ListInputs
  ( -- * Creating a Request
    ListInputs (..),
    newListInputs,

    -- * Request Lenses
    listInputs_nextToken,
    listInputs_maxResults,

    -- * Destructuring the Response
    ListInputsResponse (..),
    newListInputsResponse,

    -- * Response Lenses
    listInputsResponse_inputSummaries,
    listInputsResponse_nextToken,
    listInputsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTEvents.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListInputs' smart constructor.
data ListInputs = ListInputs'
  { -- | The token that you can use to return the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to be returned per request.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListInputs' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listInputs_nextToken' - The token that you can use to return the next set of results.
--
-- 'maxResults', 'listInputs_maxResults' - The maximum number of results to be returned per request.
newListInputs ::
  ListInputs
newListInputs =
  ListInputs'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The token that you can use to return the next set of results.
listInputs_nextToken :: Lens.Lens' ListInputs (Prelude.Maybe Prelude.Text)
listInputs_nextToken = Lens.lens (\ListInputs' {nextToken} -> nextToken) (\s@ListInputs' {} a -> s {nextToken = a} :: ListInputs)

-- | The maximum number of results to be returned per request.
listInputs_maxResults :: Lens.Lens' ListInputs (Prelude.Maybe Prelude.Natural)
listInputs_maxResults = Lens.lens (\ListInputs' {maxResults} -> maxResults) (\s@ListInputs' {} a -> s {maxResults = a} :: ListInputs)

instance Core.AWSRequest ListInputs where
  type AWSResponse ListInputs = ListInputsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListInputsResponse'
            Prelude.<$> (x Core..?> "inputSummaries" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListInputs

instance Prelude.NFData ListInputs

instance Core.ToHeaders ListInputs where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ListInputs where
  toPath = Prelude.const "/inputs"

instance Core.ToQuery ListInputs where
  toQuery ListInputs' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListInputsResponse' smart constructor.
data ListInputsResponse = ListInputsResponse'
  { -- | Summary information about the inputs.
    inputSummaries :: Prelude.Maybe [InputSummary],
    -- | The token that you can use to return the next set of results, or @null@
    -- if there are no more results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListInputsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'inputSummaries', 'listInputsResponse_inputSummaries' - Summary information about the inputs.
--
-- 'nextToken', 'listInputsResponse_nextToken' - The token that you can use to return the next set of results, or @null@
-- if there are no more results.
--
-- 'httpStatus', 'listInputsResponse_httpStatus' - The response's http status code.
newListInputsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListInputsResponse
newListInputsResponse pHttpStatus_ =
  ListInputsResponse'
    { inputSummaries =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Summary information about the inputs.
listInputsResponse_inputSummaries :: Lens.Lens' ListInputsResponse (Prelude.Maybe [InputSummary])
listInputsResponse_inputSummaries = Lens.lens (\ListInputsResponse' {inputSummaries} -> inputSummaries) (\s@ListInputsResponse' {} a -> s {inputSummaries = a} :: ListInputsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The token that you can use to return the next set of results, or @null@
-- if there are no more results.
listInputsResponse_nextToken :: Lens.Lens' ListInputsResponse (Prelude.Maybe Prelude.Text)
listInputsResponse_nextToken = Lens.lens (\ListInputsResponse' {nextToken} -> nextToken) (\s@ListInputsResponse' {} a -> s {nextToken = a} :: ListInputsResponse)

-- | The response's http status code.
listInputsResponse_httpStatus :: Lens.Lens' ListInputsResponse Prelude.Int
listInputsResponse_httpStatus = Lens.lens (\ListInputsResponse' {httpStatus} -> httpStatus) (\s@ListInputsResponse' {} a -> s {httpStatus = a} :: ListInputsResponse)

instance Prelude.NFData ListInputsResponse
