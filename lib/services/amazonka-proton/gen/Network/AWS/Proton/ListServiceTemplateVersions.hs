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
-- Module      : Network.AWS.Proton.ListServiceTemplateVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List major or minor versions of a service template with detail data.
--
-- This operation returns paginated results.
module Network.AWS.Proton.ListServiceTemplateVersions
  ( -- * Creating a Request
    ListServiceTemplateVersions (..),
    newListServiceTemplateVersions,

    -- * Request Lenses
    listServiceTemplateVersions_majorVersion,
    listServiceTemplateVersions_nextToken,
    listServiceTemplateVersions_maxResults,
    listServiceTemplateVersions_templateName,

    -- * Destructuring the Response
    ListServiceTemplateVersionsResponse (..),
    newListServiceTemplateVersionsResponse,

    -- * Response Lenses
    listServiceTemplateVersionsResponse_nextToken,
    listServiceTemplateVersionsResponse_httpStatus,
    listServiceTemplateVersionsResponse_templateVersions,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Proton.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListServiceTemplateVersions' smart constructor.
data ListServiceTemplateVersions = ListServiceTemplateVersions'
  { -- | To view a list of minor of versions under a major version of a service
    -- template, include @majorVersion@.
    --
    -- To view a list of major versions of a service template, /exclude/
    -- @majorVersion@.
    majorVersion :: Prelude.Maybe Prelude.Text,
    -- | A token to indicate the location of the next major or minor version in
    -- the array of major or minor versions of a service template, after the
    -- list of major or minor versions that was previously requested.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of major or minor versions of a service template to
    -- list.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The name of the service template.
    templateName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListServiceTemplateVersions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'majorVersion', 'listServiceTemplateVersions_majorVersion' - To view a list of minor of versions under a major version of a service
-- template, include @majorVersion@.
--
-- To view a list of major versions of a service template, /exclude/
-- @majorVersion@.
--
-- 'nextToken', 'listServiceTemplateVersions_nextToken' - A token to indicate the location of the next major or minor version in
-- the array of major or minor versions of a service template, after the
-- list of major or minor versions that was previously requested.
--
-- 'maxResults', 'listServiceTemplateVersions_maxResults' - The maximum number of major or minor versions of a service template to
-- list.
--
-- 'templateName', 'listServiceTemplateVersions_templateName' - The name of the service template.
newListServiceTemplateVersions ::
  -- | 'templateName'
  Prelude.Text ->
  ListServiceTemplateVersions
newListServiceTemplateVersions pTemplateName_ =
  ListServiceTemplateVersions'
    { majorVersion =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      templateName = pTemplateName_
    }

-- | To view a list of minor of versions under a major version of a service
-- template, include @majorVersion@.
--
-- To view a list of major versions of a service template, /exclude/
-- @majorVersion@.
listServiceTemplateVersions_majorVersion :: Lens.Lens' ListServiceTemplateVersions (Prelude.Maybe Prelude.Text)
listServiceTemplateVersions_majorVersion = Lens.lens (\ListServiceTemplateVersions' {majorVersion} -> majorVersion) (\s@ListServiceTemplateVersions' {} a -> s {majorVersion = a} :: ListServiceTemplateVersions)

-- | A token to indicate the location of the next major or minor version in
-- the array of major or minor versions of a service template, after the
-- list of major or minor versions that was previously requested.
listServiceTemplateVersions_nextToken :: Lens.Lens' ListServiceTemplateVersions (Prelude.Maybe Prelude.Text)
listServiceTemplateVersions_nextToken = Lens.lens (\ListServiceTemplateVersions' {nextToken} -> nextToken) (\s@ListServiceTemplateVersions' {} a -> s {nextToken = a} :: ListServiceTemplateVersions)

-- | The maximum number of major or minor versions of a service template to
-- list.
listServiceTemplateVersions_maxResults :: Lens.Lens' ListServiceTemplateVersions (Prelude.Maybe Prelude.Natural)
listServiceTemplateVersions_maxResults = Lens.lens (\ListServiceTemplateVersions' {maxResults} -> maxResults) (\s@ListServiceTemplateVersions' {} a -> s {maxResults = a} :: ListServiceTemplateVersions)

-- | The name of the service template.
listServiceTemplateVersions_templateName :: Lens.Lens' ListServiceTemplateVersions Prelude.Text
listServiceTemplateVersions_templateName = Lens.lens (\ListServiceTemplateVersions' {templateName} -> templateName) (\s@ListServiceTemplateVersions' {} a -> s {templateName = a} :: ListServiceTemplateVersions)

instance Core.AWSPager ListServiceTemplateVersions where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listServiceTemplateVersionsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^. listServiceTemplateVersionsResponse_templateVersions
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listServiceTemplateVersions_nextToken
          Lens..~ rs
          Lens.^? listServiceTemplateVersionsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListServiceTemplateVersions where
  type
    AWSResponse ListServiceTemplateVersions =
      ListServiceTemplateVersionsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListServiceTemplateVersionsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Core..?> "templateVersions"
                            Core..!@ Prelude.mempty
                        )
      )

instance Prelude.Hashable ListServiceTemplateVersions

instance Prelude.NFData ListServiceTemplateVersions

instance Core.ToHeaders ListServiceTemplateVersions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AwsProton20200720.ListServiceTemplateVersions" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListServiceTemplateVersions where
  toJSON ListServiceTemplateVersions' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("majorVersion" Core..=) Prelude.<$> majorVersion,
            ("nextToken" Core..=) Prelude.<$> nextToken,
            ("maxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just ("templateName" Core..= templateName)
          ]
      )

instance Core.ToPath ListServiceTemplateVersions where
  toPath = Prelude.const "/"

instance Core.ToQuery ListServiceTemplateVersions where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListServiceTemplateVersionsResponse' smart constructor.
data ListServiceTemplateVersionsResponse = ListServiceTemplateVersionsResponse'
  { -- | A token to indicate the location of the next major or minor version in
    -- the array of major or minor versions of a service template, after the
    -- list of major or minor versions that was previously requested.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | An array of major or minor versions of a service template with detail
    -- data.
    templateVersions :: [ServiceTemplateVersionSummary]
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListServiceTemplateVersionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listServiceTemplateVersionsResponse_nextToken' - A token to indicate the location of the next major or minor version in
-- the array of major or minor versions of a service template, after the
-- list of major or minor versions that was previously requested.
--
-- 'httpStatus', 'listServiceTemplateVersionsResponse_httpStatus' - The response's http status code.
--
-- 'templateVersions', 'listServiceTemplateVersionsResponse_templateVersions' - An array of major or minor versions of a service template with detail
-- data.
newListServiceTemplateVersionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListServiceTemplateVersionsResponse
newListServiceTemplateVersionsResponse pHttpStatus_ =
  ListServiceTemplateVersionsResponse'
    { nextToken =
        Prelude.Nothing,
      httpStatus = pHttpStatus_,
      templateVersions = Prelude.mempty
    }

-- | A token to indicate the location of the next major or minor version in
-- the array of major or minor versions of a service template, after the
-- list of major or minor versions that was previously requested.
listServiceTemplateVersionsResponse_nextToken :: Lens.Lens' ListServiceTemplateVersionsResponse (Prelude.Maybe Prelude.Text)
listServiceTemplateVersionsResponse_nextToken = Lens.lens (\ListServiceTemplateVersionsResponse' {nextToken} -> nextToken) (\s@ListServiceTemplateVersionsResponse' {} a -> s {nextToken = a} :: ListServiceTemplateVersionsResponse)

-- | The response's http status code.
listServiceTemplateVersionsResponse_httpStatus :: Lens.Lens' ListServiceTemplateVersionsResponse Prelude.Int
listServiceTemplateVersionsResponse_httpStatus = Lens.lens (\ListServiceTemplateVersionsResponse' {httpStatus} -> httpStatus) (\s@ListServiceTemplateVersionsResponse' {} a -> s {httpStatus = a} :: ListServiceTemplateVersionsResponse)

-- | An array of major or minor versions of a service template with detail
-- data.
listServiceTemplateVersionsResponse_templateVersions :: Lens.Lens' ListServiceTemplateVersionsResponse [ServiceTemplateVersionSummary]
listServiceTemplateVersionsResponse_templateVersions = Lens.lens (\ListServiceTemplateVersionsResponse' {templateVersions} -> templateVersions) (\s@ListServiceTemplateVersionsResponse' {} a -> s {templateVersions = a} :: ListServiceTemplateVersionsResponse) Prelude.. Lens.coerced

instance
  Prelude.NFData
    ListServiceTemplateVersionsResponse
