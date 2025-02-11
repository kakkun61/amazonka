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
-- Module      : Network.AWS.AuditManager.ListAssessmentFrameworks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of the frameworks available in the Audit Manager
-- framework library.
module Network.AWS.AuditManager.ListAssessmentFrameworks
  ( -- * Creating a Request
    ListAssessmentFrameworks (..),
    newListAssessmentFrameworks,

    -- * Request Lenses
    listAssessmentFrameworks_nextToken,
    listAssessmentFrameworks_maxResults,
    listAssessmentFrameworks_frameworkType,

    -- * Destructuring the Response
    ListAssessmentFrameworksResponse (..),
    newListAssessmentFrameworksResponse,

    -- * Response Lenses
    listAssessmentFrameworksResponse_nextToken,
    listAssessmentFrameworksResponse_frameworkMetadataList,
    listAssessmentFrameworksResponse_httpStatus,
  )
where

import Network.AWS.AuditManager.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListAssessmentFrameworks' smart constructor.
data ListAssessmentFrameworks = ListAssessmentFrameworks'
  { -- | The pagination token used to fetch the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Represents the maximum number of results per page, or per API request
    -- call.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The type of framework, such as standard or custom.
    frameworkType :: FrameworkType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAssessmentFrameworks' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listAssessmentFrameworks_nextToken' - The pagination token used to fetch the next set of results.
--
-- 'maxResults', 'listAssessmentFrameworks_maxResults' - Represents the maximum number of results per page, or per API request
-- call.
--
-- 'frameworkType', 'listAssessmentFrameworks_frameworkType' - The type of framework, such as standard or custom.
newListAssessmentFrameworks ::
  -- | 'frameworkType'
  FrameworkType ->
  ListAssessmentFrameworks
newListAssessmentFrameworks pFrameworkType_ =
  ListAssessmentFrameworks'
    { nextToken =
        Prelude.Nothing,
      maxResults = Prelude.Nothing,
      frameworkType = pFrameworkType_
    }

-- | The pagination token used to fetch the next set of results.
listAssessmentFrameworks_nextToken :: Lens.Lens' ListAssessmentFrameworks (Prelude.Maybe Prelude.Text)
listAssessmentFrameworks_nextToken = Lens.lens (\ListAssessmentFrameworks' {nextToken} -> nextToken) (\s@ListAssessmentFrameworks' {} a -> s {nextToken = a} :: ListAssessmentFrameworks)

-- | Represents the maximum number of results per page, or per API request
-- call.
listAssessmentFrameworks_maxResults :: Lens.Lens' ListAssessmentFrameworks (Prelude.Maybe Prelude.Natural)
listAssessmentFrameworks_maxResults = Lens.lens (\ListAssessmentFrameworks' {maxResults} -> maxResults) (\s@ListAssessmentFrameworks' {} a -> s {maxResults = a} :: ListAssessmentFrameworks)

-- | The type of framework, such as standard or custom.
listAssessmentFrameworks_frameworkType :: Lens.Lens' ListAssessmentFrameworks FrameworkType
listAssessmentFrameworks_frameworkType = Lens.lens (\ListAssessmentFrameworks' {frameworkType} -> frameworkType) (\s@ListAssessmentFrameworks' {} a -> s {frameworkType = a} :: ListAssessmentFrameworks)

instance Core.AWSRequest ListAssessmentFrameworks where
  type
    AWSResponse ListAssessmentFrameworks =
      ListAssessmentFrameworksResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListAssessmentFrameworksResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> ( x Core..?> "frameworkMetadataList"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListAssessmentFrameworks

instance Prelude.NFData ListAssessmentFrameworks

instance Core.ToHeaders ListAssessmentFrameworks where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListAssessmentFrameworks where
  toPath = Prelude.const "/assessmentFrameworks"

instance Core.ToQuery ListAssessmentFrameworks where
  toQuery ListAssessmentFrameworks' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults,
        "frameworkType" Core.=: frameworkType
      ]

-- | /See:/ 'newListAssessmentFrameworksResponse' smart constructor.
data ListAssessmentFrameworksResponse = ListAssessmentFrameworksResponse'
  { -- | The pagination token used to fetch the next set of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The list of metadata objects for the specified framework.
    frameworkMetadataList :: Prelude.Maybe [AssessmentFrameworkMetadata],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAssessmentFrameworksResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listAssessmentFrameworksResponse_nextToken' - The pagination token used to fetch the next set of results.
--
-- 'frameworkMetadataList', 'listAssessmentFrameworksResponse_frameworkMetadataList' - The list of metadata objects for the specified framework.
--
-- 'httpStatus', 'listAssessmentFrameworksResponse_httpStatus' - The response's http status code.
newListAssessmentFrameworksResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListAssessmentFrameworksResponse
newListAssessmentFrameworksResponse pHttpStatus_ =
  ListAssessmentFrameworksResponse'
    { nextToken =
        Prelude.Nothing,
      frameworkMetadataList = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The pagination token used to fetch the next set of results.
listAssessmentFrameworksResponse_nextToken :: Lens.Lens' ListAssessmentFrameworksResponse (Prelude.Maybe Prelude.Text)
listAssessmentFrameworksResponse_nextToken = Lens.lens (\ListAssessmentFrameworksResponse' {nextToken} -> nextToken) (\s@ListAssessmentFrameworksResponse' {} a -> s {nextToken = a} :: ListAssessmentFrameworksResponse)

-- | The list of metadata objects for the specified framework.
listAssessmentFrameworksResponse_frameworkMetadataList :: Lens.Lens' ListAssessmentFrameworksResponse (Prelude.Maybe [AssessmentFrameworkMetadata])
listAssessmentFrameworksResponse_frameworkMetadataList = Lens.lens (\ListAssessmentFrameworksResponse' {frameworkMetadataList} -> frameworkMetadataList) (\s@ListAssessmentFrameworksResponse' {} a -> s {frameworkMetadataList = a} :: ListAssessmentFrameworksResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listAssessmentFrameworksResponse_httpStatus :: Lens.Lens' ListAssessmentFrameworksResponse Prelude.Int
listAssessmentFrameworksResponse_httpStatus = Lens.lens (\ListAssessmentFrameworksResponse' {httpStatus} -> httpStatus) (\s@ListAssessmentFrameworksResponse' {} a -> s {httpStatus = a} :: ListAssessmentFrameworksResponse)

instance
  Prelude.NFData
    ListAssessmentFrameworksResponse
