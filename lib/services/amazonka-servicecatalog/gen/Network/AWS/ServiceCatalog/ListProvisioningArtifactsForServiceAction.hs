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
-- Module      : Network.AWS.ServiceCatalog.ListProvisioningArtifactsForServiceAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all provisioning artifacts (also known as versions) for the
-- specified self-service action.
--
-- This operation returns paginated results.
module Network.AWS.ServiceCatalog.ListProvisioningArtifactsForServiceAction
  ( -- * Creating a Request
    ListProvisioningArtifactsForServiceAction (..),
    newListProvisioningArtifactsForServiceAction,

    -- * Request Lenses
    listProvisioningArtifactsForServiceAction_acceptLanguage,
    listProvisioningArtifactsForServiceAction_pageToken,
    listProvisioningArtifactsForServiceAction_pageSize,
    listProvisioningArtifactsForServiceAction_serviceActionId,

    -- * Destructuring the Response
    ListProvisioningArtifactsForServiceActionResponse (..),
    newListProvisioningArtifactsForServiceActionResponse,

    -- * Response Lenses
    listProvisioningArtifactsForServiceActionResponse_nextPageToken,
    listProvisioningArtifactsForServiceActionResponse_provisioningArtifactViews,
    listProvisioningArtifactsForServiceActionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'newListProvisioningArtifactsForServiceAction' smart constructor.
data ListProvisioningArtifactsForServiceAction = ListProvisioningArtifactsForServiceAction'
  { -- | The language code.
    --
    -- -   @en@ - English (default)
    --
    -- -   @jp@ - Japanese
    --
    -- -   @zh@ - Chinese
    acceptLanguage :: Prelude.Maybe Prelude.Text,
    -- | The page token for the next set of results. To retrieve the first set of
    -- results, use null.
    pageToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of items to return with this call.
    pageSize :: Prelude.Maybe Prelude.Natural,
    -- | The self-service action identifier. For example, @act-fs7abcd89wxyz@.
    serviceActionId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListProvisioningArtifactsForServiceAction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'acceptLanguage', 'listProvisioningArtifactsForServiceAction_acceptLanguage' - The language code.
--
-- -   @en@ - English (default)
--
-- -   @jp@ - Japanese
--
-- -   @zh@ - Chinese
--
-- 'pageToken', 'listProvisioningArtifactsForServiceAction_pageToken' - The page token for the next set of results. To retrieve the first set of
-- results, use null.
--
-- 'pageSize', 'listProvisioningArtifactsForServiceAction_pageSize' - The maximum number of items to return with this call.
--
-- 'serviceActionId', 'listProvisioningArtifactsForServiceAction_serviceActionId' - The self-service action identifier. For example, @act-fs7abcd89wxyz@.
newListProvisioningArtifactsForServiceAction ::
  -- | 'serviceActionId'
  Prelude.Text ->
  ListProvisioningArtifactsForServiceAction
newListProvisioningArtifactsForServiceAction
  pServiceActionId_ =
    ListProvisioningArtifactsForServiceAction'
      { acceptLanguage =
          Prelude.Nothing,
        pageToken = Prelude.Nothing,
        pageSize = Prelude.Nothing,
        serviceActionId =
          pServiceActionId_
      }

-- | The language code.
--
-- -   @en@ - English (default)
--
-- -   @jp@ - Japanese
--
-- -   @zh@ - Chinese
listProvisioningArtifactsForServiceAction_acceptLanguage :: Lens.Lens' ListProvisioningArtifactsForServiceAction (Prelude.Maybe Prelude.Text)
listProvisioningArtifactsForServiceAction_acceptLanguage = Lens.lens (\ListProvisioningArtifactsForServiceAction' {acceptLanguage} -> acceptLanguage) (\s@ListProvisioningArtifactsForServiceAction' {} a -> s {acceptLanguage = a} :: ListProvisioningArtifactsForServiceAction)

-- | The page token for the next set of results. To retrieve the first set of
-- results, use null.
listProvisioningArtifactsForServiceAction_pageToken :: Lens.Lens' ListProvisioningArtifactsForServiceAction (Prelude.Maybe Prelude.Text)
listProvisioningArtifactsForServiceAction_pageToken = Lens.lens (\ListProvisioningArtifactsForServiceAction' {pageToken} -> pageToken) (\s@ListProvisioningArtifactsForServiceAction' {} a -> s {pageToken = a} :: ListProvisioningArtifactsForServiceAction)

-- | The maximum number of items to return with this call.
listProvisioningArtifactsForServiceAction_pageSize :: Lens.Lens' ListProvisioningArtifactsForServiceAction (Prelude.Maybe Prelude.Natural)
listProvisioningArtifactsForServiceAction_pageSize = Lens.lens (\ListProvisioningArtifactsForServiceAction' {pageSize} -> pageSize) (\s@ListProvisioningArtifactsForServiceAction' {} a -> s {pageSize = a} :: ListProvisioningArtifactsForServiceAction)

-- | The self-service action identifier. For example, @act-fs7abcd89wxyz@.
listProvisioningArtifactsForServiceAction_serviceActionId :: Lens.Lens' ListProvisioningArtifactsForServiceAction Prelude.Text
listProvisioningArtifactsForServiceAction_serviceActionId = Lens.lens (\ListProvisioningArtifactsForServiceAction' {serviceActionId} -> serviceActionId) (\s@ListProvisioningArtifactsForServiceAction' {} a -> s {serviceActionId = a} :: ListProvisioningArtifactsForServiceAction)

instance
  Core.AWSPager
    ListProvisioningArtifactsForServiceAction
  where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listProvisioningArtifactsForServiceActionResponse_nextPageToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listProvisioningArtifactsForServiceActionResponse_provisioningArtifactViews
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listProvisioningArtifactsForServiceAction_pageToken
          Lens..~ rs
            Lens.^? listProvisioningArtifactsForServiceActionResponse_nextPageToken
              Prelude.. Lens._Just

instance
  Core.AWSRequest
    ListProvisioningArtifactsForServiceAction
  where
  type
    AWSResponse
      ListProvisioningArtifactsForServiceAction =
      ListProvisioningArtifactsForServiceActionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListProvisioningArtifactsForServiceActionResponse'
            Prelude.<$> (x Core..?> "NextPageToken")
              Prelude.<*> ( x Core..?> "ProvisioningArtifactViews"
                              Core..!@ Prelude.mempty
                          )
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    ListProvisioningArtifactsForServiceAction

instance
  Prelude.NFData
    ListProvisioningArtifactsForServiceAction

instance
  Core.ToHeaders
    ListProvisioningArtifactsForServiceAction
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWS242ServiceCatalogService.ListProvisioningArtifactsForServiceAction" ::
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
    ListProvisioningArtifactsForServiceAction
  where
  toJSON ListProvisioningArtifactsForServiceAction' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("AcceptLanguage" Core..=)
              Prelude.<$> acceptLanguage,
            ("PageToken" Core..=) Prelude.<$> pageToken,
            ("PageSize" Core..=) Prelude.<$> pageSize,
            Prelude.Just
              ("ServiceActionId" Core..= serviceActionId)
          ]
      )

instance
  Core.ToPath
    ListProvisioningArtifactsForServiceAction
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    ListProvisioningArtifactsForServiceAction
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListProvisioningArtifactsForServiceActionResponse' smart constructor.
data ListProvisioningArtifactsForServiceActionResponse = ListProvisioningArtifactsForServiceActionResponse'
  { -- | The page token to use to retrieve the next set of results. If there are
    -- no additional results, this value is null.
    nextPageToken :: Prelude.Maybe Prelude.Text,
    -- | An array of objects with information about product views and
    -- provisioning artifacts.
    provisioningArtifactViews :: Prelude.Maybe [ProvisioningArtifactView],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListProvisioningArtifactsForServiceActionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextPageToken', 'listProvisioningArtifactsForServiceActionResponse_nextPageToken' - The page token to use to retrieve the next set of results. If there are
-- no additional results, this value is null.
--
-- 'provisioningArtifactViews', 'listProvisioningArtifactsForServiceActionResponse_provisioningArtifactViews' - An array of objects with information about product views and
-- provisioning artifacts.
--
-- 'httpStatus', 'listProvisioningArtifactsForServiceActionResponse_httpStatus' - The response's http status code.
newListProvisioningArtifactsForServiceActionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListProvisioningArtifactsForServiceActionResponse
newListProvisioningArtifactsForServiceActionResponse
  pHttpStatus_ =
    ListProvisioningArtifactsForServiceActionResponse'
      { nextPageToken =
          Prelude.Nothing,
        provisioningArtifactViews =
          Prelude.Nothing,
        httpStatus =
          pHttpStatus_
      }

-- | The page token to use to retrieve the next set of results. If there are
-- no additional results, this value is null.
listProvisioningArtifactsForServiceActionResponse_nextPageToken :: Lens.Lens' ListProvisioningArtifactsForServiceActionResponse (Prelude.Maybe Prelude.Text)
listProvisioningArtifactsForServiceActionResponse_nextPageToken = Lens.lens (\ListProvisioningArtifactsForServiceActionResponse' {nextPageToken} -> nextPageToken) (\s@ListProvisioningArtifactsForServiceActionResponse' {} a -> s {nextPageToken = a} :: ListProvisioningArtifactsForServiceActionResponse)

-- | An array of objects with information about product views and
-- provisioning artifacts.
listProvisioningArtifactsForServiceActionResponse_provisioningArtifactViews :: Lens.Lens' ListProvisioningArtifactsForServiceActionResponse (Prelude.Maybe [ProvisioningArtifactView])
listProvisioningArtifactsForServiceActionResponse_provisioningArtifactViews = Lens.lens (\ListProvisioningArtifactsForServiceActionResponse' {provisioningArtifactViews} -> provisioningArtifactViews) (\s@ListProvisioningArtifactsForServiceActionResponse' {} a -> s {provisioningArtifactViews = a} :: ListProvisioningArtifactsForServiceActionResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listProvisioningArtifactsForServiceActionResponse_httpStatus :: Lens.Lens' ListProvisioningArtifactsForServiceActionResponse Prelude.Int
listProvisioningArtifactsForServiceActionResponse_httpStatus = Lens.lens (\ListProvisioningArtifactsForServiceActionResponse' {httpStatus} -> httpStatus) (\s@ListProvisioningArtifactsForServiceActionResponse' {} a -> s {httpStatus = a} :: ListProvisioningArtifactsForServiceActionResponse)

instance
  Prelude.NFData
    ListProvisioningArtifactsForServiceActionResponse
