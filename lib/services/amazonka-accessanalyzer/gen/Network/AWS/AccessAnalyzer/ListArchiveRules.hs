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
-- Module      : Network.AWS.AccessAnalyzer.ListArchiveRules
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of archive rules created for the specified analyzer.
--
-- This operation returns paginated results.
module Network.AWS.AccessAnalyzer.ListArchiveRules
  ( -- * Creating a Request
    ListArchiveRules (..),
    newListArchiveRules,

    -- * Request Lenses
    listArchiveRules_nextToken,
    listArchiveRules_maxResults,
    listArchiveRules_analyzerName,

    -- * Destructuring the Response
    ListArchiveRulesResponse (..),
    newListArchiveRulesResponse,

    -- * Response Lenses
    listArchiveRulesResponse_nextToken,
    listArchiveRulesResponse_httpStatus,
    listArchiveRulesResponse_archiveRules,
  )
where

import Network.AWS.AccessAnalyzer.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Retrieves a list of archive rules created for the specified analyzer.
--
-- /See:/ 'newListArchiveRules' smart constructor.
data ListArchiveRules = ListArchiveRules'
  { -- | A token used for pagination of results returned.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return in the request.
    maxResults :: Prelude.Maybe Prelude.Int,
    -- | The name of the analyzer to retrieve rules from.
    analyzerName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListArchiveRules' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listArchiveRules_nextToken' - A token used for pagination of results returned.
--
-- 'maxResults', 'listArchiveRules_maxResults' - The maximum number of results to return in the request.
--
-- 'analyzerName', 'listArchiveRules_analyzerName' - The name of the analyzer to retrieve rules from.
newListArchiveRules ::
  -- | 'analyzerName'
  Prelude.Text ->
  ListArchiveRules
newListArchiveRules pAnalyzerName_ =
  ListArchiveRules'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      analyzerName = pAnalyzerName_
    }

-- | A token used for pagination of results returned.
listArchiveRules_nextToken :: Lens.Lens' ListArchiveRules (Prelude.Maybe Prelude.Text)
listArchiveRules_nextToken = Lens.lens (\ListArchiveRules' {nextToken} -> nextToken) (\s@ListArchiveRules' {} a -> s {nextToken = a} :: ListArchiveRules)

-- | The maximum number of results to return in the request.
listArchiveRules_maxResults :: Lens.Lens' ListArchiveRules (Prelude.Maybe Prelude.Int)
listArchiveRules_maxResults = Lens.lens (\ListArchiveRules' {maxResults} -> maxResults) (\s@ListArchiveRules' {} a -> s {maxResults = a} :: ListArchiveRules)

-- | The name of the analyzer to retrieve rules from.
listArchiveRules_analyzerName :: Lens.Lens' ListArchiveRules Prelude.Text
listArchiveRules_analyzerName = Lens.lens (\ListArchiveRules' {analyzerName} -> analyzerName) (\s@ListArchiveRules' {} a -> s {analyzerName = a} :: ListArchiveRules)

instance Core.AWSPager ListArchiveRules where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listArchiveRulesResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        (rs Lens.^. listArchiveRulesResponse_archiveRules) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listArchiveRules_nextToken
          Lens..~ rs
          Lens.^? listArchiveRulesResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListArchiveRules where
  type
    AWSResponse ListArchiveRules =
      ListArchiveRulesResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListArchiveRulesResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "archiveRules" Core..!@ Prelude.mempty)
      )

instance Prelude.Hashable ListArchiveRules

instance Prelude.NFData ListArchiveRules

instance Core.ToHeaders ListArchiveRules where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListArchiveRules where
  toPath ListArchiveRules' {..} =
    Prelude.mconcat
      [ "/analyzer/",
        Core.toBS analyzerName,
        "/archive-rule"
      ]

instance Core.ToQuery ListArchiveRules where
  toQuery ListArchiveRules' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | The response to the request.
--
-- /See:/ 'newListArchiveRulesResponse' smart constructor.
data ListArchiveRulesResponse = ListArchiveRulesResponse'
  { -- | A token used for pagination of results returned.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A list of archive rules created for the specified analyzer.
    archiveRules :: [ArchiveRuleSummary]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListArchiveRulesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listArchiveRulesResponse_nextToken' - A token used for pagination of results returned.
--
-- 'httpStatus', 'listArchiveRulesResponse_httpStatus' - The response's http status code.
--
-- 'archiveRules', 'listArchiveRulesResponse_archiveRules' - A list of archive rules created for the specified analyzer.
newListArchiveRulesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListArchiveRulesResponse
newListArchiveRulesResponse pHttpStatus_ =
  ListArchiveRulesResponse'
    { nextToken =
        Prelude.Nothing,
      httpStatus = pHttpStatus_,
      archiveRules = Prelude.mempty
    }

-- | A token used for pagination of results returned.
listArchiveRulesResponse_nextToken :: Lens.Lens' ListArchiveRulesResponse (Prelude.Maybe Prelude.Text)
listArchiveRulesResponse_nextToken = Lens.lens (\ListArchiveRulesResponse' {nextToken} -> nextToken) (\s@ListArchiveRulesResponse' {} a -> s {nextToken = a} :: ListArchiveRulesResponse)

-- | The response's http status code.
listArchiveRulesResponse_httpStatus :: Lens.Lens' ListArchiveRulesResponse Prelude.Int
listArchiveRulesResponse_httpStatus = Lens.lens (\ListArchiveRulesResponse' {httpStatus} -> httpStatus) (\s@ListArchiveRulesResponse' {} a -> s {httpStatus = a} :: ListArchiveRulesResponse)

-- | A list of archive rules created for the specified analyzer.
listArchiveRulesResponse_archiveRules :: Lens.Lens' ListArchiveRulesResponse [ArchiveRuleSummary]
listArchiveRulesResponse_archiveRules = Lens.lens (\ListArchiveRulesResponse' {archiveRules} -> archiveRules) (\s@ListArchiveRulesResponse' {} a -> s {archiveRules = a} :: ListArchiveRulesResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListArchiveRulesResponse
