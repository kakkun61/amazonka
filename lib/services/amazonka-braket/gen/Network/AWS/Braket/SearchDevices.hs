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
-- Module      : Network.AWS.Braket.SearchDevices
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches for devices using the specified filters.
--
-- This operation returns paginated results.
module Network.AWS.Braket.SearchDevices
  ( -- * Creating a Request
    SearchDevices (..),
    newSearchDevices,

    -- * Request Lenses
    searchDevices_nextToken,
    searchDevices_maxResults,
    searchDevices_filters,

    -- * Destructuring the Response
    SearchDevicesResponse (..),
    newSearchDevicesResponse,

    -- * Response Lenses
    searchDevicesResponse_nextToken,
    searchDevicesResponse_httpStatus,
    searchDevicesResponse_devices,
  )
where

import Network.AWS.Braket.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newSearchDevices' smart constructor.
data SearchDevices = SearchDevices'
  { -- | A token used for pagination of results returned in the response. Use the
    -- token returned from the previous request continue results where the
    -- previous request ended.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return in the response.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The filter values to use to search for a device.
    filters :: [SearchDevicesFilter]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SearchDevices' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'searchDevices_nextToken' - A token used for pagination of results returned in the response. Use the
-- token returned from the previous request continue results where the
-- previous request ended.
--
-- 'maxResults', 'searchDevices_maxResults' - The maximum number of results to return in the response.
--
-- 'filters', 'searchDevices_filters' - The filter values to use to search for a device.
newSearchDevices ::
  SearchDevices
newSearchDevices =
  SearchDevices'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      filters = Prelude.mempty
    }

-- | A token used for pagination of results returned in the response. Use the
-- token returned from the previous request continue results where the
-- previous request ended.
searchDevices_nextToken :: Lens.Lens' SearchDevices (Prelude.Maybe Prelude.Text)
searchDevices_nextToken = Lens.lens (\SearchDevices' {nextToken} -> nextToken) (\s@SearchDevices' {} a -> s {nextToken = a} :: SearchDevices)

-- | The maximum number of results to return in the response.
searchDevices_maxResults :: Lens.Lens' SearchDevices (Prelude.Maybe Prelude.Natural)
searchDevices_maxResults = Lens.lens (\SearchDevices' {maxResults} -> maxResults) (\s@SearchDevices' {} a -> s {maxResults = a} :: SearchDevices)

-- | The filter values to use to search for a device.
searchDevices_filters :: Lens.Lens' SearchDevices [SearchDevicesFilter]
searchDevices_filters = Lens.lens (\SearchDevices' {filters} -> filters) (\s@SearchDevices' {} a -> s {filters = a} :: SearchDevices) Prelude.. Lens.coerced

instance Core.AWSPager SearchDevices where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? searchDevicesResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        (rs Lens.^. searchDevicesResponse_devices) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& searchDevices_nextToken
          Lens..~ rs
          Lens.^? searchDevicesResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest SearchDevices where
  type
    AWSResponse SearchDevices =
      SearchDevicesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          SearchDevicesResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "devices" Core..!@ Prelude.mempty)
      )

instance Prelude.Hashable SearchDevices

instance Prelude.NFData SearchDevices

instance Core.ToHeaders SearchDevices where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON SearchDevices where
  toJSON SearchDevices' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nextToken" Core..=) Prelude.<$> nextToken,
            ("maxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just ("filters" Core..= filters)
          ]
      )

instance Core.ToPath SearchDevices where
  toPath = Prelude.const "/devices"

instance Core.ToQuery SearchDevices where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newSearchDevicesResponse' smart constructor.
data SearchDevicesResponse = SearchDevicesResponse'
  { -- | A token used for pagination of results, or null if there are no
    -- additional results. Use the token value in a subsequent request to
    -- continue results where the previous request ended.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | An array of @DeviceSummary@ objects for devices that match the specified
    -- filter values.
    devices :: [DeviceSummary]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SearchDevicesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'searchDevicesResponse_nextToken' - A token used for pagination of results, or null if there are no
-- additional results. Use the token value in a subsequent request to
-- continue results where the previous request ended.
--
-- 'httpStatus', 'searchDevicesResponse_httpStatus' - The response's http status code.
--
-- 'devices', 'searchDevicesResponse_devices' - An array of @DeviceSummary@ objects for devices that match the specified
-- filter values.
newSearchDevicesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  SearchDevicesResponse
newSearchDevicesResponse pHttpStatus_ =
  SearchDevicesResponse'
    { nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_,
      devices = Prelude.mempty
    }

-- | A token used for pagination of results, or null if there are no
-- additional results. Use the token value in a subsequent request to
-- continue results where the previous request ended.
searchDevicesResponse_nextToken :: Lens.Lens' SearchDevicesResponse (Prelude.Maybe Prelude.Text)
searchDevicesResponse_nextToken = Lens.lens (\SearchDevicesResponse' {nextToken} -> nextToken) (\s@SearchDevicesResponse' {} a -> s {nextToken = a} :: SearchDevicesResponse)

-- | The response's http status code.
searchDevicesResponse_httpStatus :: Lens.Lens' SearchDevicesResponse Prelude.Int
searchDevicesResponse_httpStatus = Lens.lens (\SearchDevicesResponse' {httpStatus} -> httpStatus) (\s@SearchDevicesResponse' {} a -> s {httpStatus = a} :: SearchDevicesResponse)

-- | An array of @DeviceSummary@ objects for devices that match the specified
-- filter values.
searchDevicesResponse_devices :: Lens.Lens' SearchDevicesResponse [DeviceSummary]
searchDevicesResponse_devices = Lens.lens (\SearchDevicesResponse' {devices} -> devices) (\s@SearchDevicesResponse' {} a -> s {devices = a} :: SearchDevicesResponse) Prelude.. Lens.coerced

instance Prelude.NFData SearchDevicesResponse
