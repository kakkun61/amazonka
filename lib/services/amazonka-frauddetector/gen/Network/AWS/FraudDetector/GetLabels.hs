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
-- Module      : Network.AWS.FraudDetector.GetLabels
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets all labels or a specific label if name is provided. This is a
-- paginated API. If you provide a null @maxResults@, this action retrieves
-- a maximum of 50 records per page. If you provide a @maxResults@, the
-- value must be between 10 and 50. To get the next page results, provide
-- the pagination token from the @GetGetLabelsResponse@ as part of your
-- request. A null pagination token fetches the records from the beginning.
module Network.AWS.FraudDetector.GetLabels
  ( -- * Creating a Request
    GetLabels (..),
    newGetLabels,

    -- * Request Lenses
    getLabels_nextToken,
    getLabels_name,
    getLabels_maxResults,

    -- * Destructuring the Response
    GetLabelsResponse (..),
    newGetLabelsResponse,

    -- * Response Lenses
    getLabelsResponse_nextToken,
    getLabelsResponse_labels,
    getLabelsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.FraudDetector.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetLabels' smart constructor.
data GetLabels = GetLabels'
  { -- | The next token for the subsequent request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The name of the label or labels to get.
    name :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of objects to return for the request.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetLabels' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getLabels_nextToken' - The next token for the subsequent request.
--
-- 'name', 'getLabels_name' - The name of the label or labels to get.
--
-- 'maxResults', 'getLabels_maxResults' - The maximum number of objects to return for the request.
newGetLabels ::
  GetLabels
newGetLabels =
  GetLabels'
    { nextToken = Prelude.Nothing,
      name = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The next token for the subsequent request.
getLabels_nextToken :: Lens.Lens' GetLabels (Prelude.Maybe Prelude.Text)
getLabels_nextToken = Lens.lens (\GetLabels' {nextToken} -> nextToken) (\s@GetLabels' {} a -> s {nextToken = a} :: GetLabels)

-- | The name of the label or labels to get.
getLabels_name :: Lens.Lens' GetLabels (Prelude.Maybe Prelude.Text)
getLabels_name = Lens.lens (\GetLabels' {name} -> name) (\s@GetLabels' {} a -> s {name = a} :: GetLabels)

-- | The maximum number of objects to return for the request.
getLabels_maxResults :: Lens.Lens' GetLabels (Prelude.Maybe Prelude.Natural)
getLabels_maxResults = Lens.lens (\GetLabels' {maxResults} -> maxResults) (\s@GetLabels' {} a -> s {maxResults = a} :: GetLabels)

instance Core.AWSRequest GetLabels where
  type AWSResponse GetLabels = GetLabelsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetLabelsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (x Core..?> "labels" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetLabels

instance Prelude.NFData GetLabels

instance Core.ToHeaders GetLabels where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSHawksNestServiceFacade.GetLabels" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetLabels where
  toJSON GetLabels' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nextToken" Core..=) Prelude.<$> nextToken,
            ("name" Core..=) Prelude.<$> name,
            ("maxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath GetLabels where
  toPath = Prelude.const "/"

instance Core.ToQuery GetLabels where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetLabelsResponse' smart constructor.
data GetLabelsResponse = GetLabelsResponse'
  { -- | The next page token.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | An array of labels.
    labels :: Prelude.Maybe [Label],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetLabelsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getLabelsResponse_nextToken' - The next page token.
--
-- 'labels', 'getLabelsResponse_labels' - An array of labels.
--
-- 'httpStatus', 'getLabelsResponse_httpStatus' - The response's http status code.
newGetLabelsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetLabelsResponse
newGetLabelsResponse pHttpStatus_ =
  GetLabelsResponse'
    { nextToken = Prelude.Nothing,
      labels = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The next page token.
getLabelsResponse_nextToken :: Lens.Lens' GetLabelsResponse (Prelude.Maybe Prelude.Text)
getLabelsResponse_nextToken = Lens.lens (\GetLabelsResponse' {nextToken} -> nextToken) (\s@GetLabelsResponse' {} a -> s {nextToken = a} :: GetLabelsResponse)

-- | An array of labels.
getLabelsResponse_labels :: Lens.Lens' GetLabelsResponse (Prelude.Maybe [Label])
getLabelsResponse_labels = Lens.lens (\GetLabelsResponse' {labels} -> labels) (\s@GetLabelsResponse' {} a -> s {labels = a} :: GetLabelsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getLabelsResponse_httpStatus :: Lens.Lens' GetLabelsResponse Prelude.Int
getLabelsResponse_httpStatus = Lens.lens (\GetLabelsResponse' {httpStatus} -> httpStatus) (\s@GetLabelsResponse' {} a -> s {httpStatus = a} :: GetLabelsResponse)

instance Prelude.NFData GetLabelsResponse
