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
-- Module      : Network.AWS.EMR.ListReleaseLabels
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves release labels of EMR services in the region where the API is
-- called.
module Network.AWS.EMR.ListReleaseLabels
  ( -- * Creating a Request
    ListReleaseLabels (..),
    newListReleaseLabels,

    -- * Request Lenses
    listReleaseLabels_filters,
    listReleaseLabels_nextToken,
    listReleaseLabels_maxResults,

    -- * Destructuring the Response
    ListReleaseLabelsResponse (..),
    newListReleaseLabelsResponse,

    -- * Response Lenses
    listReleaseLabelsResponse_releaseLabels,
    listReleaseLabelsResponse_nextToken,
    listReleaseLabelsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.EMR.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListReleaseLabels' smart constructor.
data ListReleaseLabels = ListReleaseLabels'
  { -- | Filters the results of the request. @Prefix@ specifies the prefix of
    -- release labels to return. @Application@ specifies the application
    -- (with\/without version) of release labels to return.
    filters :: Prelude.Maybe ReleaseLabelFilter,
    -- | Specifies the next page of results. If @NextToken@ is not specified,
    -- which is usually the case for the first request of ListReleaseLabels,
    -- the first page of results are determined by other filtering parameters
    -- or by the latest version. The @ListReleaseLabels@ request fails if the
    -- identity (Amazon Web Services account ID) and all filtering parameters
    -- are different from the original request, or if the @NextToken@ is
    -- expired or tampered with.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Defines the maximum number of release labels to return in a single
    -- response. The default is @100@.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListReleaseLabels' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'filters', 'listReleaseLabels_filters' - Filters the results of the request. @Prefix@ specifies the prefix of
-- release labels to return. @Application@ specifies the application
-- (with\/without version) of release labels to return.
--
-- 'nextToken', 'listReleaseLabels_nextToken' - Specifies the next page of results. If @NextToken@ is not specified,
-- which is usually the case for the first request of ListReleaseLabels,
-- the first page of results are determined by other filtering parameters
-- or by the latest version. The @ListReleaseLabels@ request fails if the
-- identity (Amazon Web Services account ID) and all filtering parameters
-- are different from the original request, or if the @NextToken@ is
-- expired or tampered with.
--
-- 'maxResults', 'listReleaseLabels_maxResults' - Defines the maximum number of release labels to return in a single
-- response. The default is @100@.
newListReleaseLabels ::
  ListReleaseLabels
newListReleaseLabels =
  ListReleaseLabels'
    { filters = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | Filters the results of the request. @Prefix@ specifies the prefix of
-- release labels to return. @Application@ specifies the application
-- (with\/without version) of release labels to return.
listReleaseLabels_filters :: Lens.Lens' ListReleaseLabels (Prelude.Maybe ReleaseLabelFilter)
listReleaseLabels_filters = Lens.lens (\ListReleaseLabels' {filters} -> filters) (\s@ListReleaseLabels' {} a -> s {filters = a} :: ListReleaseLabels)

-- | Specifies the next page of results. If @NextToken@ is not specified,
-- which is usually the case for the first request of ListReleaseLabels,
-- the first page of results are determined by other filtering parameters
-- or by the latest version. The @ListReleaseLabels@ request fails if the
-- identity (Amazon Web Services account ID) and all filtering parameters
-- are different from the original request, or if the @NextToken@ is
-- expired or tampered with.
listReleaseLabels_nextToken :: Lens.Lens' ListReleaseLabels (Prelude.Maybe Prelude.Text)
listReleaseLabels_nextToken = Lens.lens (\ListReleaseLabels' {nextToken} -> nextToken) (\s@ListReleaseLabels' {} a -> s {nextToken = a} :: ListReleaseLabels)

-- | Defines the maximum number of release labels to return in a single
-- response. The default is @100@.
listReleaseLabels_maxResults :: Lens.Lens' ListReleaseLabels (Prelude.Maybe Prelude.Natural)
listReleaseLabels_maxResults = Lens.lens (\ListReleaseLabels' {maxResults} -> maxResults) (\s@ListReleaseLabels' {} a -> s {maxResults = a} :: ListReleaseLabels)

instance Core.AWSRequest ListReleaseLabels where
  type
    AWSResponse ListReleaseLabels =
      ListReleaseLabelsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListReleaseLabelsResponse'
            Prelude.<$> (x Core..?> "ReleaseLabels" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListReleaseLabels

instance Prelude.NFData ListReleaseLabels

instance Core.ToHeaders ListReleaseLabels where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "ElasticMapReduce.ListReleaseLabels" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListReleaseLabels where
  toJSON ListReleaseLabels' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Filters" Core..=) Prelude.<$> filters,
            ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListReleaseLabels where
  toPath = Prelude.const "/"

instance Core.ToQuery ListReleaseLabels where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListReleaseLabelsResponse' smart constructor.
data ListReleaseLabelsResponse = ListReleaseLabelsResponse'
  { -- | The returned release labels.
    releaseLabels :: Prelude.Maybe [Prelude.Text],
    -- | Used to paginate the next page of results if specified in the next
    -- @ListReleaseLabels@ request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListReleaseLabelsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'releaseLabels', 'listReleaseLabelsResponse_releaseLabels' - The returned release labels.
--
-- 'nextToken', 'listReleaseLabelsResponse_nextToken' - Used to paginate the next page of results if specified in the next
-- @ListReleaseLabels@ request.
--
-- 'httpStatus', 'listReleaseLabelsResponse_httpStatus' - The response's http status code.
newListReleaseLabelsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListReleaseLabelsResponse
newListReleaseLabelsResponse pHttpStatus_ =
  ListReleaseLabelsResponse'
    { releaseLabels =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The returned release labels.
listReleaseLabelsResponse_releaseLabels :: Lens.Lens' ListReleaseLabelsResponse (Prelude.Maybe [Prelude.Text])
listReleaseLabelsResponse_releaseLabels = Lens.lens (\ListReleaseLabelsResponse' {releaseLabels} -> releaseLabels) (\s@ListReleaseLabelsResponse' {} a -> s {releaseLabels = a} :: ListReleaseLabelsResponse) Prelude.. Lens.mapping Lens.coerced

-- | Used to paginate the next page of results if specified in the next
-- @ListReleaseLabels@ request.
listReleaseLabelsResponse_nextToken :: Lens.Lens' ListReleaseLabelsResponse (Prelude.Maybe Prelude.Text)
listReleaseLabelsResponse_nextToken = Lens.lens (\ListReleaseLabelsResponse' {nextToken} -> nextToken) (\s@ListReleaseLabelsResponse' {} a -> s {nextToken = a} :: ListReleaseLabelsResponse)

-- | The response's http status code.
listReleaseLabelsResponse_httpStatus :: Lens.Lens' ListReleaseLabelsResponse Prelude.Int
listReleaseLabelsResponse_httpStatus = Lens.lens (\ListReleaseLabelsResponse' {httpStatus} -> httpStatus) (\s@ListReleaseLabelsResponse' {} a -> s {httpStatus = a} :: ListReleaseLabelsResponse)

instance Prelude.NFData ListReleaseLabelsResponse
