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
-- Module      : Network.AWS.Translate.ListTextTranslationJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of the batch translation jobs that you have submitted.
module Network.AWS.Translate.ListTextTranslationJobs
  ( -- * Creating a Request
    ListTextTranslationJobs (..),
    newListTextTranslationJobs,

    -- * Request Lenses
    listTextTranslationJobs_nextToken,
    listTextTranslationJobs_filter,
    listTextTranslationJobs_maxResults,

    -- * Destructuring the Response
    ListTextTranslationJobsResponse (..),
    newListTextTranslationJobsResponse,

    -- * Response Lenses
    listTextTranslationJobsResponse_textTranslationJobPropertiesList,
    listTextTranslationJobsResponse_nextToken,
    listTextTranslationJobsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Translate.Types

-- | /See:/ 'newListTextTranslationJobs' smart constructor.
data ListTextTranslationJobs = ListTextTranslationJobs'
  { -- | The token to request the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The parameters that specify which batch translation jobs to retrieve.
    -- Filters include job name, job status, and submission time. You can only
    -- set one filter at a time.
    filter' :: Prelude.Maybe TextTranslationJobFilter,
    -- | The maximum number of results to return in each page. The default value
    -- is 100.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListTextTranslationJobs' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listTextTranslationJobs_nextToken' - The token to request the next page of results.
--
-- 'filter'', 'listTextTranslationJobs_filter' - The parameters that specify which batch translation jobs to retrieve.
-- Filters include job name, job status, and submission time. You can only
-- set one filter at a time.
--
-- 'maxResults', 'listTextTranslationJobs_maxResults' - The maximum number of results to return in each page. The default value
-- is 100.
newListTextTranslationJobs ::
  ListTextTranslationJobs
newListTextTranslationJobs =
  ListTextTranslationJobs'
    { nextToken =
        Prelude.Nothing,
      filter' = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The token to request the next page of results.
listTextTranslationJobs_nextToken :: Lens.Lens' ListTextTranslationJobs (Prelude.Maybe Prelude.Text)
listTextTranslationJobs_nextToken = Lens.lens (\ListTextTranslationJobs' {nextToken} -> nextToken) (\s@ListTextTranslationJobs' {} a -> s {nextToken = a} :: ListTextTranslationJobs)

-- | The parameters that specify which batch translation jobs to retrieve.
-- Filters include job name, job status, and submission time. You can only
-- set one filter at a time.
listTextTranslationJobs_filter :: Lens.Lens' ListTextTranslationJobs (Prelude.Maybe TextTranslationJobFilter)
listTextTranslationJobs_filter = Lens.lens (\ListTextTranslationJobs' {filter'} -> filter') (\s@ListTextTranslationJobs' {} a -> s {filter' = a} :: ListTextTranslationJobs)

-- | The maximum number of results to return in each page. The default value
-- is 100.
listTextTranslationJobs_maxResults :: Lens.Lens' ListTextTranslationJobs (Prelude.Maybe Prelude.Natural)
listTextTranslationJobs_maxResults = Lens.lens (\ListTextTranslationJobs' {maxResults} -> maxResults) (\s@ListTextTranslationJobs' {} a -> s {maxResults = a} :: ListTextTranslationJobs)

instance Core.AWSRequest ListTextTranslationJobs where
  type
    AWSResponse ListTextTranslationJobs =
      ListTextTranslationJobsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListTextTranslationJobsResponse'
            Prelude.<$> ( x Core..?> "TextTranslationJobPropertiesList"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListTextTranslationJobs

instance Prelude.NFData ListTextTranslationJobs

instance Core.ToHeaders ListTextTranslationJobs where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSShineFrontendService_20170701.ListTextTranslationJobs" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListTextTranslationJobs where
  toJSON ListTextTranslationJobs' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("Filter" Core..=) Prelude.<$> filter',
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListTextTranslationJobs where
  toPath = Prelude.const "/"

instance Core.ToQuery ListTextTranslationJobs where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListTextTranslationJobsResponse' smart constructor.
data ListTextTranslationJobsResponse = ListTextTranslationJobsResponse'
  { -- | A list containing the properties of each job that is returned.
    textTranslationJobPropertiesList :: Prelude.Maybe [TextTranslationJobProperties],
    -- | The token to use to retreive the next page of results. This value is
    -- @null@ when there are no more results to return.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListTextTranslationJobsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'textTranslationJobPropertiesList', 'listTextTranslationJobsResponse_textTranslationJobPropertiesList' - A list containing the properties of each job that is returned.
--
-- 'nextToken', 'listTextTranslationJobsResponse_nextToken' - The token to use to retreive the next page of results. This value is
-- @null@ when there are no more results to return.
--
-- 'httpStatus', 'listTextTranslationJobsResponse_httpStatus' - The response's http status code.
newListTextTranslationJobsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListTextTranslationJobsResponse
newListTextTranslationJobsResponse pHttpStatus_ =
  ListTextTranslationJobsResponse'
    { textTranslationJobPropertiesList =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list containing the properties of each job that is returned.
listTextTranslationJobsResponse_textTranslationJobPropertiesList :: Lens.Lens' ListTextTranslationJobsResponse (Prelude.Maybe [TextTranslationJobProperties])
listTextTranslationJobsResponse_textTranslationJobPropertiesList = Lens.lens (\ListTextTranslationJobsResponse' {textTranslationJobPropertiesList} -> textTranslationJobPropertiesList) (\s@ListTextTranslationJobsResponse' {} a -> s {textTranslationJobPropertiesList = a} :: ListTextTranslationJobsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The token to use to retreive the next page of results. This value is
-- @null@ when there are no more results to return.
listTextTranslationJobsResponse_nextToken :: Lens.Lens' ListTextTranslationJobsResponse (Prelude.Maybe Prelude.Text)
listTextTranslationJobsResponse_nextToken = Lens.lens (\ListTextTranslationJobsResponse' {nextToken} -> nextToken) (\s@ListTextTranslationJobsResponse' {} a -> s {nextToken = a} :: ListTextTranslationJobsResponse)

-- | The response's http status code.
listTextTranslationJobsResponse_httpStatus :: Lens.Lens' ListTextTranslationJobsResponse Prelude.Int
listTextTranslationJobsResponse_httpStatus = Lens.lens (\ListTextTranslationJobsResponse' {httpStatus} -> httpStatus) (\s@ListTextTranslationJobsResponse' {} a -> s {httpStatus = a} :: ListTextTranslationJobsResponse)

instance
  Prelude.NFData
    ListTextTranslationJobsResponse
