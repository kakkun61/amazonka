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
-- Module      : Network.AWS.MigrationHubConfig.DescribeHomeRegionControls
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API permits filtering on the @ControlId@ and @HomeRegion@ fields.
module Network.AWS.MigrationHubConfig.DescribeHomeRegionControls
  ( -- * Creating a Request
    DescribeHomeRegionControls (..),
    newDescribeHomeRegionControls,

    -- * Request Lenses
    describeHomeRegionControls_nextToken,
    describeHomeRegionControls_homeRegion,
    describeHomeRegionControls_controlId,
    describeHomeRegionControls_maxResults,
    describeHomeRegionControls_target,

    -- * Destructuring the Response
    DescribeHomeRegionControlsResponse (..),
    newDescribeHomeRegionControlsResponse,

    -- * Response Lenses
    describeHomeRegionControlsResponse_nextToken,
    describeHomeRegionControlsResponse_homeRegionControls,
    describeHomeRegionControlsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MigrationHubConfig.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeHomeRegionControls' smart constructor.
data DescribeHomeRegionControls = DescribeHomeRegionControls'
  { -- | If a @NextToken@ was returned by a previous call, more results are
    -- available. To retrieve the next page of results, make the call again
    -- using the returned token in @NextToken@.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The name of the home region you\'d like to view.
    homeRegion :: Prelude.Maybe Prelude.Text,
    -- | The @ControlID@ is a unique identifier string of your
    -- @HomeRegionControl@ object.
    controlId :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of filtering results to display per page.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The target parameter specifies the identifier to which the home region
    -- is applied, which is always of type @ACCOUNT@. It applies the home
    -- region to the current @ACCOUNT@.
    target :: Prelude.Maybe Target
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeHomeRegionControls' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeHomeRegionControls_nextToken' - If a @NextToken@ was returned by a previous call, more results are
-- available. To retrieve the next page of results, make the call again
-- using the returned token in @NextToken@.
--
-- 'homeRegion', 'describeHomeRegionControls_homeRegion' - The name of the home region you\'d like to view.
--
-- 'controlId', 'describeHomeRegionControls_controlId' - The @ControlID@ is a unique identifier string of your
-- @HomeRegionControl@ object.
--
-- 'maxResults', 'describeHomeRegionControls_maxResults' - The maximum number of filtering results to display per page.
--
-- 'target', 'describeHomeRegionControls_target' - The target parameter specifies the identifier to which the home region
-- is applied, which is always of type @ACCOUNT@. It applies the home
-- region to the current @ACCOUNT@.
newDescribeHomeRegionControls ::
  DescribeHomeRegionControls
newDescribeHomeRegionControls =
  DescribeHomeRegionControls'
    { nextToken =
        Prelude.Nothing,
      homeRegion = Prelude.Nothing,
      controlId = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      target = Prelude.Nothing
    }

-- | If a @NextToken@ was returned by a previous call, more results are
-- available. To retrieve the next page of results, make the call again
-- using the returned token in @NextToken@.
describeHomeRegionControls_nextToken :: Lens.Lens' DescribeHomeRegionControls (Prelude.Maybe Prelude.Text)
describeHomeRegionControls_nextToken = Lens.lens (\DescribeHomeRegionControls' {nextToken} -> nextToken) (\s@DescribeHomeRegionControls' {} a -> s {nextToken = a} :: DescribeHomeRegionControls)

-- | The name of the home region you\'d like to view.
describeHomeRegionControls_homeRegion :: Lens.Lens' DescribeHomeRegionControls (Prelude.Maybe Prelude.Text)
describeHomeRegionControls_homeRegion = Lens.lens (\DescribeHomeRegionControls' {homeRegion} -> homeRegion) (\s@DescribeHomeRegionControls' {} a -> s {homeRegion = a} :: DescribeHomeRegionControls)

-- | The @ControlID@ is a unique identifier string of your
-- @HomeRegionControl@ object.
describeHomeRegionControls_controlId :: Lens.Lens' DescribeHomeRegionControls (Prelude.Maybe Prelude.Text)
describeHomeRegionControls_controlId = Lens.lens (\DescribeHomeRegionControls' {controlId} -> controlId) (\s@DescribeHomeRegionControls' {} a -> s {controlId = a} :: DescribeHomeRegionControls)

-- | The maximum number of filtering results to display per page.
describeHomeRegionControls_maxResults :: Lens.Lens' DescribeHomeRegionControls (Prelude.Maybe Prelude.Natural)
describeHomeRegionControls_maxResults = Lens.lens (\DescribeHomeRegionControls' {maxResults} -> maxResults) (\s@DescribeHomeRegionControls' {} a -> s {maxResults = a} :: DescribeHomeRegionControls)

-- | The target parameter specifies the identifier to which the home region
-- is applied, which is always of type @ACCOUNT@. It applies the home
-- region to the current @ACCOUNT@.
describeHomeRegionControls_target :: Lens.Lens' DescribeHomeRegionControls (Prelude.Maybe Target)
describeHomeRegionControls_target = Lens.lens (\DescribeHomeRegionControls' {target} -> target) (\s@DescribeHomeRegionControls' {} a -> s {target = a} :: DescribeHomeRegionControls)

instance Core.AWSRequest DescribeHomeRegionControls where
  type
    AWSResponse DescribeHomeRegionControls =
      DescribeHomeRegionControlsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeHomeRegionControlsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "HomeRegionControls"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeHomeRegionControls

instance Prelude.NFData DescribeHomeRegionControls

instance Core.ToHeaders DescribeHomeRegionControls where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSMigrationHubMultiAccountService.DescribeHomeRegionControls" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeHomeRegionControls where
  toJSON DescribeHomeRegionControls' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("HomeRegion" Core..=) Prelude.<$> homeRegion,
            ("ControlId" Core..=) Prelude.<$> controlId,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            ("Target" Core..=) Prelude.<$> target
          ]
      )

instance Core.ToPath DescribeHomeRegionControls where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeHomeRegionControls where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeHomeRegionControlsResponse' smart constructor.
data DescribeHomeRegionControlsResponse = DescribeHomeRegionControlsResponse'
  { -- | If a @NextToken@ was returned by a previous call, more results are
    -- available. To retrieve the next page of results, make the call again
    -- using the returned token in @NextToken@.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | An array that contains your @HomeRegionControl@ objects.
    homeRegionControls :: Prelude.Maybe [HomeRegionControl],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeHomeRegionControlsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeHomeRegionControlsResponse_nextToken' - If a @NextToken@ was returned by a previous call, more results are
-- available. To retrieve the next page of results, make the call again
-- using the returned token in @NextToken@.
--
-- 'homeRegionControls', 'describeHomeRegionControlsResponse_homeRegionControls' - An array that contains your @HomeRegionControl@ objects.
--
-- 'httpStatus', 'describeHomeRegionControlsResponse_httpStatus' - The response's http status code.
newDescribeHomeRegionControlsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeHomeRegionControlsResponse
newDescribeHomeRegionControlsResponse pHttpStatus_ =
  DescribeHomeRegionControlsResponse'
    { nextToken =
        Prelude.Nothing,
      homeRegionControls = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If a @NextToken@ was returned by a previous call, more results are
-- available. To retrieve the next page of results, make the call again
-- using the returned token in @NextToken@.
describeHomeRegionControlsResponse_nextToken :: Lens.Lens' DescribeHomeRegionControlsResponse (Prelude.Maybe Prelude.Text)
describeHomeRegionControlsResponse_nextToken = Lens.lens (\DescribeHomeRegionControlsResponse' {nextToken} -> nextToken) (\s@DescribeHomeRegionControlsResponse' {} a -> s {nextToken = a} :: DescribeHomeRegionControlsResponse)

-- | An array that contains your @HomeRegionControl@ objects.
describeHomeRegionControlsResponse_homeRegionControls :: Lens.Lens' DescribeHomeRegionControlsResponse (Prelude.Maybe [HomeRegionControl])
describeHomeRegionControlsResponse_homeRegionControls = Lens.lens (\DescribeHomeRegionControlsResponse' {homeRegionControls} -> homeRegionControls) (\s@DescribeHomeRegionControlsResponse' {} a -> s {homeRegionControls = a} :: DescribeHomeRegionControlsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeHomeRegionControlsResponse_httpStatus :: Lens.Lens' DescribeHomeRegionControlsResponse Prelude.Int
describeHomeRegionControlsResponse_httpStatus = Lens.lens (\DescribeHomeRegionControlsResponse' {httpStatus} -> httpStatus) (\s@DescribeHomeRegionControlsResponse' {} a -> s {httpStatus = a} :: DescribeHomeRegionControlsResponse)

instance
  Prelude.NFData
    DescribeHomeRegionControlsResponse
