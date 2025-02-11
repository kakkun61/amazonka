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
-- Module      : Network.AWS.Chime.ListMediaCapturePipelines
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of media capture pipelines.
module Network.AWS.Chime.ListMediaCapturePipelines
  ( -- * Creating a Request
    ListMediaCapturePipelines (..),
    newListMediaCapturePipelines,

    -- * Request Lenses
    listMediaCapturePipelines_nextToken,
    listMediaCapturePipelines_maxResults,

    -- * Destructuring the Response
    ListMediaCapturePipelinesResponse (..),
    newListMediaCapturePipelinesResponse,

    -- * Response Lenses
    listMediaCapturePipelinesResponse_nextToken,
    listMediaCapturePipelinesResponse_mediaCapturePipelines,
    listMediaCapturePipelinesResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListMediaCapturePipelines' smart constructor.
data ListMediaCapturePipelines = ListMediaCapturePipelines'
  { -- | The token used to retrieve the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return in a single call. Valid Range: 1
    -- - 99.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListMediaCapturePipelines' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listMediaCapturePipelines_nextToken' - The token used to retrieve the next page of results.
--
-- 'maxResults', 'listMediaCapturePipelines_maxResults' - The maximum number of results to return in a single call. Valid Range: 1
-- - 99.
newListMediaCapturePipelines ::
  ListMediaCapturePipelines
newListMediaCapturePipelines =
  ListMediaCapturePipelines'
    { nextToken =
        Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The token used to retrieve the next page of results.
listMediaCapturePipelines_nextToken :: Lens.Lens' ListMediaCapturePipelines (Prelude.Maybe Prelude.Text)
listMediaCapturePipelines_nextToken = Lens.lens (\ListMediaCapturePipelines' {nextToken} -> nextToken) (\s@ListMediaCapturePipelines' {} a -> s {nextToken = a} :: ListMediaCapturePipelines)

-- | The maximum number of results to return in a single call. Valid Range: 1
-- - 99.
listMediaCapturePipelines_maxResults :: Lens.Lens' ListMediaCapturePipelines (Prelude.Maybe Prelude.Natural)
listMediaCapturePipelines_maxResults = Lens.lens (\ListMediaCapturePipelines' {maxResults} -> maxResults) (\s@ListMediaCapturePipelines' {} a -> s {maxResults = a} :: ListMediaCapturePipelines)

instance Core.AWSRequest ListMediaCapturePipelines where
  type
    AWSResponse ListMediaCapturePipelines =
      ListMediaCapturePipelinesResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListMediaCapturePipelinesResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "MediaCapturePipelines"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListMediaCapturePipelines

instance Prelude.NFData ListMediaCapturePipelines

instance Core.ToHeaders ListMediaCapturePipelines where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ListMediaCapturePipelines where
  toPath = Prelude.const "/media-capture-pipelines"

instance Core.ToQuery ListMediaCapturePipelines where
  toQuery ListMediaCapturePipelines' {..} =
    Prelude.mconcat
      [ "next-token" Core.=: nextToken,
        "max-results" Core.=: maxResults
      ]

-- | /See:/ 'newListMediaCapturePipelinesResponse' smart constructor.
data ListMediaCapturePipelinesResponse = ListMediaCapturePipelinesResponse'
  { -- | The token used to retrieve the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The media capture pipeline objects in the list.
    mediaCapturePipelines :: Prelude.Maybe [MediaCapturePipeline],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListMediaCapturePipelinesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listMediaCapturePipelinesResponse_nextToken' - The token used to retrieve the next page of results.
--
-- 'mediaCapturePipelines', 'listMediaCapturePipelinesResponse_mediaCapturePipelines' - The media capture pipeline objects in the list.
--
-- 'httpStatus', 'listMediaCapturePipelinesResponse_httpStatus' - The response's http status code.
newListMediaCapturePipelinesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListMediaCapturePipelinesResponse
newListMediaCapturePipelinesResponse pHttpStatus_ =
  ListMediaCapturePipelinesResponse'
    { nextToken =
        Prelude.Nothing,
      mediaCapturePipelines = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token used to retrieve the next page of results.
listMediaCapturePipelinesResponse_nextToken :: Lens.Lens' ListMediaCapturePipelinesResponse (Prelude.Maybe Prelude.Text)
listMediaCapturePipelinesResponse_nextToken = Lens.lens (\ListMediaCapturePipelinesResponse' {nextToken} -> nextToken) (\s@ListMediaCapturePipelinesResponse' {} a -> s {nextToken = a} :: ListMediaCapturePipelinesResponse)

-- | The media capture pipeline objects in the list.
listMediaCapturePipelinesResponse_mediaCapturePipelines :: Lens.Lens' ListMediaCapturePipelinesResponse (Prelude.Maybe [MediaCapturePipeline])
listMediaCapturePipelinesResponse_mediaCapturePipelines = Lens.lens (\ListMediaCapturePipelinesResponse' {mediaCapturePipelines} -> mediaCapturePipelines) (\s@ListMediaCapturePipelinesResponse' {} a -> s {mediaCapturePipelines = a} :: ListMediaCapturePipelinesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listMediaCapturePipelinesResponse_httpStatus :: Lens.Lens' ListMediaCapturePipelinesResponse Prelude.Int
listMediaCapturePipelinesResponse_httpStatus = Lens.lens (\ListMediaCapturePipelinesResponse' {httpStatus} -> httpStatus) (\s@ListMediaCapturePipelinesResponse' {} a -> s {httpStatus = a} :: ListMediaCapturePipelinesResponse)

instance
  Prelude.NFData
    ListMediaCapturePipelinesResponse
