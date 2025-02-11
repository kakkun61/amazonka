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
-- Module      : Network.AWS.LookoutEquipment.ListInferenceSchedulers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of all inference schedulers currently available for
-- your account.
module Network.AWS.LookoutEquipment.ListInferenceSchedulers
  ( -- * Creating a Request
    ListInferenceSchedulers (..),
    newListInferenceSchedulers,

    -- * Request Lenses
    listInferenceSchedulers_modelName,
    listInferenceSchedulers_nextToken,
    listInferenceSchedulers_inferenceSchedulerNameBeginsWith,
    listInferenceSchedulers_maxResults,

    -- * Destructuring the Response
    ListInferenceSchedulersResponse (..),
    newListInferenceSchedulersResponse,

    -- * Response Lenses
    listInferenceSchedulersResponse_inferenceSchedulerSummaries,
    listInferenceSchedulersResponse_nextToken,
    listInferenceSchedulersResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LookoutEquipment.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListInferenceSchedulers' smart constructor.
data ListInferenceSchedulers = ListInferenceSchedulers'
  { -- | The name of the ML model used by the inference scheduler to be listed.
    modelName :: Prelude.Maybe Prelude.Text,
    -- | An opaque pagination token indicating where to continue the listing of
    -- inference schedulers.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The beginning of the name of the inference schedulers to be listed.
    inferenceSchedulerNameBeginsWith :: Prelude.Maybe Prelude.Text,
    -- | Specifies the maximum number of inference schedulers to list.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListInferenceSchedulers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'modelName', 'listInferenceSchedulers_modelName' - The name of the ML model used by the inference scheduler to be listed.
--
-- 'nextToken', 'listInferenceSchedulers_nextToken' - An opaque pagination token indicating where to continue the listing of
-- inference schedulers.
--
-- 'inferenceSchedulerNameBeginsWith', 'listInferenceSchedulers_inferenceSchedulerNameBeginsWith' - The beginning of the name of the inference schedulers to be listed.
--
-- 'maxResults', 'listInferenceSchedulers_maxResults' - Specifies the maximum number of inference schedulers to list.
newListInferenceSchedulers ::
  ListInferenceSchedulers
newListInferenceSchedulers =
  ListInferenceSchedulers'
    { modelName =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      inferenceSchedulerNameBeginsWith = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The name of the ML model used by the inference scheduler to be listed.
listInferenceSchedulers_modelName :: Lens.Lens' ListInferenceSchedulers (Prelude.Maybe Prelude.Text)
listInferenceSchedulers_modelName = Lens.lens (\ListInferenceSchedulers' {modelName} -> modelName) (\s@ListInferenceSchedulers' {} a -> s {modelName = a} :: ListInferenceSchedulers)

-- | An opaque pagination token indicating where to continue the listing of
-- inference schedulers.
listInferenceSchedulers_nextToken :: Lens.Lens' ListInferenceSchedulers (Prelude.Maybe Prelude.Text)
listInferenceSchedulers_nextToken = Lens.lens (\ListInferenceSchedulers' {nextToken} -> nextToken) (\s@ListInferenceSchedulers' {} a -> s {nextToken = a} :: ListInferenceSchedulers)

-- | The beginning of the name of the inference schedulers to be listed.
listInferenceSchedulers_inferenceSchedulerNameBeginsWith :: Lens.Lens' ListInferenceSchedulers (Prelude.Maybe Prelude.Text)
listInferenceSchedulers_inferenceSchedulerNameBeginsWith = Lens.lens (\ListInferenceSchedulers' {inferenceSchedulerNameBeginsWith} -> inferenceSchedulerNameBeginsWith) (\s@ListInferenceSchedulers' {} a -> s {inferenceSchedulerNameBeginsWith = a} :: ListInferenceSchedulers)

-- | Specifies the maximum number of inference schedulers to list.
listInferenceSchedulers_maxResults :: Lens.Lens' ListInferenceSchedulers (Prelude.Maybe Prelude.Natural)
listInferenceSchedulers_maxResults = Lens.lens (\ListInferenceSchedulers' {maxResults} -> maxResults) (\s@ListInferenceSchedulers' {} a -> s {maxResults = a} :: ListInferenceSchedulers)

instance Core.AWSRequest ListInferenceSchedulers where
  type
    AWSResponse ListInferenceSchedulers =
      ListInferenceSchedulersResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListInferenceSchedulersResponse'
            Prelude.<$> ( x Core..?> "InferenceSchedulerSummaries"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListInferenceSchedulers

instance Prelude.NFData ListInferenceSchedulers

instance Core.ToHeaders ListInferenceSchedulers where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSLookoutEquipmentFrontendService.ListInferenceSchedulers" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListInferenceSchedulers where
  toJSON ListInferenceSchedulers' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ModelName" Core..=) Prelude.<$> modelName,
            ("NextToken" Core..=) Prelude.<$> nextToken,
            ("InferenceSchedulerNameBeginsWith" Core..=)
              Prelude.<$> inferenceSchedulerNameBeginsWith,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListInferenceSchedulers where
  toPath = Prelude.const "/"

instance Core.ToQuery ListInferenceSchedulers where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListInferenceSchedulersResponse' smart constructor.
data ListInferenceSchedulersResponse = ListInferenceSchedulersResponse'
  { -- | Provides information about the specified inference scheduler, including
    -- data upload frequency, model name and ARN, and status.
    inferenceSchedulerSummaries :: Prelude.Maybe [InferenceSchedulerSummary],
    -- | An opaque pagination token indicating where to continue the listing of
    -- inference schedulers.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListInferenceSchedulersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'inferenceSchedulerSummaries', 'listInferenceSchedulersResponse_inferenceSchedulerSummaries' - Provides information about the specified inference scheduler, including
-- data upload frequency, model name and ARN, and status.
--
-- 'nextToken', 'listInferenceSchedulersResponse_nextToken' - An opaque pagination token indicating where to continue the listing of
-- inference schedulers.
--
-- 'httpStatus', 'listInferenceSchedulersResponse_httpStatus' - The response's http status code.
newListInferenceSchedulersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListInferenceSchedulersResponse
newListInferenceSchedulersResponse pHttpStatus_ =
  ListInferenceSchedulersResponse'
    { inferenceSchedulerSummaries =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Provides information about the specified inference scheduler, including
-- data upload frequency, model name and ARN, and status.
listInferenceSchedulersResponse_inferenceSchedulerSummaries :: Lens.Lens' ListInferenceSchedulersResponse (Prelude.Maybe [InferenceSchedulerSummary])
listInferenceSchedulersResponse_inferenceSchedulerSummaries = Lens.lens (\ListInferenceSchedulersResponse' {inferenceSchedulerSummaries} -> inferenceSchedulerSummaries) (\s@ListInferenceSchedulersResponse' {} a -> s {inferenceSchedulerSummaries = a} :: ListInferenceSchedulersResponse) Prelude.. Lens.mapping Lens.coerced

-- | An opaque pagination token indicating where to continue the listing of
-- inference schedulers.
listInferenceSchedulersResponse_nextToken :: Lens.Lens' ListInferenceSchedulersResponse (Prelude.Maybe Prelude.Text)
listInferenceSchedulersResponse_nextToken = Lens.lens (\ListInferenceSchedulersResponse' {nextToken} -> nextToken) (\s@ListInferenceSchedulersResponse' {} a -> s {nextToken = a} :: ListInferenceSchedulersResponse)

-- | The response's http status code.
listInferenceSchedulersResponse_httpStatus :: Lens.Lens' ListInferenceSchedulersResponse Prelude.Int
listInferenceSchedulersResponse_httpStatus = Lens.lens (\ListInferenceSchedulersResponse' {httpStatus} -> httpStatus) (\s@ListInferenceSchedulersResponse' {} a -> s {httpStatus = a} :: ListInferenceSchedulersResponse)

instance
  Prelude.NFData
    ListInferenceSchedulersResponse
