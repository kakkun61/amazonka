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
-- Module      : Network.AWS.HoneyCode.GetScreenData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The GetScreenData API allows retrieval of data from a screen in a
-- Honeycode app. The API allows setting local variables in the screen to
-- filter, sort or otherwise affect what will be displayed on the screen.
module Network.AWS.HoneyCode.GetScreenData
  ( -- * Creating a Request
    GetScreenData (..),
    newGetScreenData,

    -- * Request Lenses
    getScreenData_variables,
    getScreenData_nextToken,
    getScreenData_maxResults,
    getScreenData_workbookId,
    getScreenData_appId,
    getScreenData_screenId,

    -- * Destructuring the Response
    GetScreenDataResponse (..),
    newGetScreenDataResponse,

    -- * Response Lenses
    getScreenDataResponse_nextToken,
    getScreenDataResponse_httpStatus,
    getScreenDataResponse_results,
    getScreenDataResponse_workbookCursor,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.HoneyCode.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetScreenData' smart constructor.
data GetScreenData = GetScreenData'
  { -- | Variables are optional and are needed only if the screen requires them
    -- to render correctly. Variables are specified as a map where the key is
    -- the name of the variable as defined on the screen. The value is an
    -- object which currently has only one property, rawValue, which holds the
    -- value of the variable to be passed to the screen.
    variables :: Prelude.Maybe (Core.Sensitive (Prelude.HashMap Prelude.Text (Core.Sensitive VariableValue))),
    -- | This parameter is optional. If a nextToken is not specified, the API
    -- returns the first page of data.
    --
    -- Pagination tokens expire after 1 hour. If you use a token that was
    -- returned more than an hour back, the API will throw ValidationException.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The number of results to be returned on a single page. Specify a number
    -- between 1 and 100. The maximum value is 100.
    --
    -- This parameter is optional. If you don\'t specify this parameter, the
    -- default page size is 100.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The ID of the workbook that contains the screen.
    workbookId :: Prelude.Text,
    -- | The ID of the app that contains the screem.
    appId :: Prelude.Text,
    -- | The ID of the screen.
    screenId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetScreenData' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'variables', 'getScreenData_variables' - Variables are optional and are needed only if the screen requires them
-- to render correctly. Variables are specified as a map where the key is
-- the name of the variable as defined on the screen. The value is an
-- object which currently has only one property, rawValue, which holds the
-- value of the variable to be passed to the screen.
--
-- 'nextToken', 'getScreenData_nextToken' - This parameter is optional. If a nextToken is not specified, the API
-- returns the first page of data.
--
-- Pagination tokens expire after 1 hour. If you use a token that was
-- returned more than an hour back, the API will throw ValidationException.
--
-- 'maxResults', 'getScreenData_maxResults' - The number of results to be returned on a single page. Specify a number
-- between 1 and 100. The maximum value is 100.
--
-- This parameter is optional. If you don\'t specify this parameter, the
-- default page size is 100.
--
-- 'workbookId', 'getScreenData_workbookId' - The ID of the workbook that contains the screen.
--
-- 'appId', 'getScreenData_appId' - The ID of the app that contains the screem.
--
-- 'screenId', 'getScreenData_screenId' - The ID of the screen.
newGetScreenData ::
  -- | 'workbookId'
  Prelude.Text ->
  -- | 'appId'
  Prelude.Text ->
  -- | 'screenId'
  Prelude.Text ->
  GetScreenData
newGetScreenData pWorkbookId_ pAppId_ pScreenId_ =
  GetScreenData'
    { variables = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      workbookId = pWorkbookId_,
      appId = pAppId_,
      screenId = pScreenId_
    }

-- | Variables are optional and are needed only if the screen requires them
-- to render correctly. Variables are specified as a map where the key is
-- the name of the variable as defined on the screen. The value is an
-- object which currently has only one property, rawValue, which holds the
-- value of the variable to be passed to the screen.
getScreenData_variables :: Lens.Lens' GetScreenData (Prelude.Maybe (Prelude.HashMap Prelude.Text VariableValue))
getScreenData_variables = Lens.lens (\GetScreenData' {variables} -> variables) (\s@GetScreenData' {} a -> s {variables = a} :: GetScreenData) Prelude.. Lens.mapping (Core._Sensitive Prelude.. Lens.coerced)

-- | This parameter is optional. If a nextToken is not specified, the API
-- returns the first page of data.
--
-- Pagination tokens expire after 1 hour. If you use a token that was
-- returned more than an hour back, the API will throw ValidationException.
getScreenData_nextToken :: Lens.Lens' GetScreenData (Prelude.Maybe Prelude.Text)
getScreenData_nextToken = Lens.lens (\GetScreenData' {nextToken} -> nextToken) (\s@GetScreenData' {} a -> s {nextToken = a} :: GetScreenData)

-- | The number of results to be returned on a single page. Specify a number
-- between 1 and 100. The maximum value is 100.
--
-- This parameter is optional. If you don\'t specify this parameter, the
-- default page size is 100.
getScreenData_maxResults :: Lens.Lens' GetScreenData (Prelude.Maybe Prelude.Natural)
getScreenData_maxResults = Lens.lens (\GetScreenData' {maxResults} -> maxResults) (\s@GetScreenData' {} a -> s {maxResults = a} :: GetScreenData)

-- | The ID of the workbook that contains the screen.
getScreenData_workbookId :: Lens.Lens' GetScreenData Prelude.Text
getScreenData_workbookId = Lens.lens (\GetScreenData' {workbookId} -> workbookId) (\s@GetScreenData' {} a -> s {workbookId = a} :: GetScreenData)

-- | The ID of the app that contains the screem.
getScreenData_appId :: Lens.Lens' GetScreenData Prelude.Text
getScreenData_appId = Lens.lens (\GetScreenData' {appId} -> appId) (\s@GetScreenData' {} a -> s {appId = a} :: GetScreenData)

-- | The ID of the screen.
getScreenData_screenId :: Lens.Lens' GetScreenData Prelude.Text
getScreenData_screenId = Lens.lens (\GetScreenData' {screenId} -> screenId) (\s@GetScreenData' {} a -> s {screenId = a} :: GetScreenData)

instance Core.AWSRequest GetScreenData where
  type
    AWSResponse GetScreenData =
      GetScreenDataResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetScreenDataResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "results" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..:> "workbookCursor")
      )

instance Prelude.Hashable GetScreenData

instance Prelude.NFData GetScreenData

instance Core.ToHeaders GetScreenData where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetScreenData where
  toJSON GetScreenData' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("variables" Core..=) Prelude.<$> variables,
            ("nextToken" Core..=) Prelude.<$> nextToken,
            ("maxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just ("workbookId" Core..= workbookId),
            Prelude.Just ("appId" Core..= appId),
            Prelude.Just ("screenId" Core..= screenId)
          ]
      )

instance Core.ToPath GetScreenData where
  toPath = Prelude.const "/screendata"

instance Core.ToQuery GetScreenData where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetScreenDataResponse' smart constructor.
data GetScreenDataResponse = GetScreenDataResponse'
  { -- | Provides the pagination token to load the next page if there are more
    -- results matching the request. If a pagination token is not present in
    -- the response, it means that all data matching the query has been loaded.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A map of all the rows on the screen keyed by block name.
    results :: Prelude.HashMap Prelude.Text ResultSet,
    -- | Indicates the cursor of the workbook at which the data returned by this
    -- workbook is read. Workbook cursor keeps increasing with every update and
    -- the increments are not sequential.
    workbookCursor :: Prelude.Integer
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetScreenDataResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getScreenDataResponse_nextToken' - Provides the pagination token to load the next page if there are more
-- results matching the request. If a pagination token is not present in
-- the response, it means that all data matching the query has been loaded.
--
-- 'httpStatus', 'getScreenDataResponse_httpStatus' - The response's http status code.
--
-- 'results', 'getScreenDataResponse_results' - A map of all the rows on the screen keyed by block name.
--
-- 'workbookCursor', 'getScreenDataResponse_workbookCursor' - Indicates the cursor of the workbook at which the data returned by this
-- workbook is read. Workbook cursor keeps increasing with every update and
-- the increments are not sequential.
newGetScreenDataResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'workbookCursor'
  Prelude.Integer ->
  GetScreenDataResponse
newGetScreenDataResponse
  pHttpStatus_
  pWorkbookCursor_ =
    GetScreenDataResponse'
      { nextToken = Prelude.Nothing,
        httpStatus = pHttpStatus_,
        results = Prelude.mempty,
        workbookCursor = pWorkbookCursor_
      }

-- | Provides the pagination token to load the next page if there are more
-- results matching the request. If a pagination token is not present in
-- the response, it means that all data matching the query has been loaded.
getScreenDataResponse_nextToken :: Lens.Lens' GetScreenDataResponse (Prelude.Maybe Prelude.Text)
getScreenDataResponse_nextToken = Lens.lens (\GetScreenDataResponse' {nextToken} -> nextToken) (\s@GetScreenDataResponse' {} a -> s {nextToken = a} :: GetScreenDataResponse)

-- | The response's http status code.
getScreenDataResponse_httpStatus :: Lens.Lens' GetScreenDataResponse Prelude.Int
getScreenDataResponse_httpStatus = Lens.lens (\GetScreenDataResponse' {httpStatus} -> httpStatus) (\s@GetScreenDataResponse' {} a -> s {httpStatus = a} :: GetScreenDataResponse)

-- | A map of all the rows on the screen keyed by block name.
getScreenDataResponse_results :: Lens.Lens' GetScreenDataResponse (Prelude.HashMap Prelude.Text ResultSet)
getScreenDataResponse_results = Lens.lens (\GetScreenDataResponse' {results} -> results) (\s@GetScreenDataResponse' {} a -> s {results = a} :: GetScreenDataResponse) Prelude.. Lens.coerced

-- | Indicates the cursor of the workbook at which the data returned by this
-- workbook is read. Workbook cursor keeps increasing with every update and
-- the increments are not sequential.
getScreenDataResponse_workbookCursor :: Lens.Lens' GetScreenDataResponse Prelude.Integer
getScreenDataResponse_workbookCursor = Lens.lens (\GetScreenDataResponse' {workbookCursor} -> workbookCursor) (\s@GetScreenDataResponse' {} a -> s {workbookCursor = a} :: GetScreenDataResponse)

instance Prelude.NFData GetScreenDataResponse
