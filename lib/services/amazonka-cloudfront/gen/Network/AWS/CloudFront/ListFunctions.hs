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
-- Module      : Network.AWS.CloudFront.ListFunctions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of all CloudFront functions in your account.
--
-- You can optionally apply a filter to return only the functions that are
-- in the specified stage, either @DEVELOPMENT@ or @LIVE@.
--
-- You can optionally specify the maximum number of items to receive in the
-- response. If the total number of items in the list exceeds the maximum
-- that you specify, or the default maximum, the response is paginated. To
-- get the next page of items, send a subsequent request that specifies the
-- @NextMarker@ value from the current response as the @Marker@ value in
-- the subsequent request.
module Network.AWS.CloudFront.ListFunctions
  ( -- * Creating a Request
    ListFunctions (..),
    newListFunctions,

    -- * Request Lenses
    listFunctions_stage,
    listFunctions_marker,
    listFunctions_maxItems,

    -- * Destructuring the Response
    ListFunctionsResponse (..),
    newListFunctionsResponse,

    -- * Response Lenses
    listFunctionsResponse_functionList,
    listFunctionsResponse_httpStatus,
  )
where

import Network.AWS.CloudFront.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListFunctions' smart constructor.
data ListFunctions = ListFunctions'
  { -- | An optional filter to return only the functions that are in the
    -- specified stage, either @DEVELOPMENT@ or @LIVE@.
    stage :: Prelude.Maybe FunctionStage,
    -- | Use this field when paginating results to indicate where to begin in
    -- your list of functions. The response includes functions in the list that
    -- occur after the marker. To get the next page of the list, set this
    -- field’s value to the value of @NextMarker@ from the current page’s
    -- response.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of functions that you want in the response.
    maxItems :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListFunctions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'stage', 'listFunctions_stage' - An optional filter to return only the functions that are in the
-- specified stage, either @DEVELOPMENT@ or @LIVE@.
--
-- 'marker', 'listFunctions_marker' - Use this field when paginating results to indicate where to begin in
-- your list of functions. The response includes functions in the list that
-- occur after the marker. To get the next page of the list, set this
-- field’s value to the value of @NextMarker@ from the current page’s
-- response.
--
-- 'maxItems', 'listFunctions_maxItems' - The maximum number of functions that you want in the response.
newListFunctions ::
  ListFunctions
newListFunctions =
  ListFunctions'
    { stage = Prelude.Nothing,
      marker = Prelude.Nothing,
      maxItems = Prelude.Nothing
    }

-- | An optional filter to return only the functions that are in the
-- specified stage, either @DEVELOPMENT@ or @LIVE@.
listFunctions_stage :: Lens.Lens' ListFunctions (Prelude.Maybe FunctionStage)
listFunctions_stage = Lens.lens (\ListFunctions' {stage} -> stage) (\s@ListFunctions' {} a -> s {stage = a} :: ListFunctions)

-- | Use this field when paginating results to indicate where to begin in
-- your list of functions. The response includes functions in the list that
-- occur after the marker. To get the next page of the list, set this
-- field’s value to the value of @NextMarker@ from the current page’s
-- response.
listFunctions_marker :: Lens.Lens' ListFunctions (Prelude.Maybe Prelude.Text)
listFunctions_marker = Lens.lens (\ListFunctions' {marker} -> marker) (\s@ListFunctions' {} a -> s {marker = a} :: ListFunctions)

-- | The maximum number of functions that you want in the response.
listFunctions_maxItems :: Lens.Lens' ListFunctions (Prelude.Maybe Prelude.Text)
listFunctions_maxItems = Lens.lens (\ListFunctions' {maxItems} -> maxItems) (\s@ListFunctions' {} a -> s {maxItems = a} :: ListFunctions)

instance Core.AWSRequest ListFunctions where
  type
    AWSResponse ListFunctions =
      ListFunctionsResponse
  request = Request.get defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          ListFunctionsResponse'
            Prelude.<$> (Core.parseXML x)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListFunctions

instance Prelude.NFData ListFunctions

instance Core.ToHeaders ListFunctions where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ListFunctions where
  toPath = Prelude.const "/2020-05-31/function"

instance Core.ToQuery ListFunctions where
  toQuery ListFunctions' {..} =
    Prelude.mconcat
      [ "Stage" Core.=: stage,
        "Marker" Core.=: marker,
        "MaxItems" Core.=: maxItems
      ]

-- | /See:/ 'newListFunctionsResponse' smart constructor.
data ListFunctionsResponse = ListFunctionsResponse'
  { -- | A list of CloudFront functions.
    functionList :: Prelude.Maybe FunctionList,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListFunctionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'functionList', 'listFunctionsResponse_functionList' - A list of CloudFront functions.
--
-- 'httpStatus', 'listFunctionsResponse_httpStatus' - The response's http status code.
newListFunctionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListFunctionsResponse
newListFunctionsResponse pHttpStatus_ =
  ListFunctionsResponse'
    { functionList =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of CloudFront functions.
listFunctionsResponse_functionList :: Lens.Lens' ListFunctionsResponse (Prelude.Maybe FunctionList)
listFunctionsResponse_functionList = Lens.lens (\ListFunctionsResponse' {functionList} -> functionList) (\s@ListFunctionsResponse' {} a -> s {functionList = a} :: ListFunctionsResponse)

-- | The response's http status code.
listFunctionsResponse_httpStatus :: Lens.Lens' ListFunctionsResponse Prelude.Int
listFunctionsResponse_httpStatus = Lens.lens (\ListFunctionsResponse' {httpStatus} -> httpStatus) (\s@ListFunctionsResponse' {} a -> s {httpStatus = a} :: ListFunctionsResponse)

instance Prelude.NFData ListFunctionsResponse
