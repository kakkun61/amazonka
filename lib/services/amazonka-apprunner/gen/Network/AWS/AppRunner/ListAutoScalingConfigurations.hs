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
-- Module      : Network.AWS.AppRunner.ListAutoScalingConfigurations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of App Runner automatic scaling configurations in your
-- Amazon Web Services account. You can query the revisions for a specific
-- configuration name or the revisions for all configurations in your
-- account. You can optionally query only the latest revision of each
-- requested name.
module Network.AWS.AppRunner.ListAutoScalingConfigurations
  ( -- * Creating a Request
    ListAutoScalingConfigurations (..),
    newListAutoScalingConfigurations,

    -- * Request Lenses
    listAutoScalingConfigurations_autoScalingConfigurationName,
    listAutoScalingConfigurations_nextToken,
    listAutoScalingConfigurations_latestOnly,
    listAutoScalingConfigurations_maxResults,

    -- * Destructuring the Response
    ListAutoScalingConfigurationsResponse (..),
    newListAutoScalingConfigurationsResponse,

    -- * Response Lenses
    listAutoScalingConfigurationsResponse_nextToken,
    listAutoScalingConfigurationsResponse_httpStatus,
    listAutoScalingConfigurationsResponse_autoScalingConfigurationSummaryList,
  )
where

import Network.AWS.AppRunner.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListAutoScalingConfigurations' smart constructor.
data ListAutoScalingConfigurations = ListAutoScalingConfigurations'
  { -- | The name of the App Runner auto scaling configuration that you want to
    -- list. If specified, App Runner lists revisions that share this name. If
    -- not specified, App Runner returns revisions of all configurations.
    autoScalingConfigurationName :: Prelude.Maybe Prelude.Text,
    -- | A token from a previous result page. It\'s used for a paginated request.
    -- The request retrieves the next result page. All other parameter values
    -- must be identical to the ones that are specified in the initial request.
    --
    -- If you don\'t specify @NextToken@, the request retrieves the first
    -- result page.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Set to @true@ to list only the latest revision for each requested
    -- configuration name.
    --
    -- Keep as @false@ to list all revisions for each requested configuration
    -- name.
    --
    -- Default: @false@
    latestOnly :: Prelude.Maybe Prelude.Bool,
    -- | The maximum number of results to include in each response (result page).
    -- It\'s used for a paginated request.
    --
    -- If you don\'t specify @MaxResults@, the request retrieves all available
    -- results in a single response.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAutoScalingConfigurations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'autoScalingConfigurationName', 'listAutoScalingConfigurations_autoScalingConfigurationName' - The name of the App Runner auto scaling configuration that you want to
-- list. If specified, App Runner lists revisions that share this name. If
-- not specified, App Runner returns revisions of all configurations.
--
-- 'nextToken', 'listAutoScalingConfigurations_nextToken' - A token from a previous result page. It\'s used for a paginated request.
-- The request retrieves the next result page. All other parameter values
-- must be identical to the ones that are specified in the initial request.
--
-- If you don\'t specify @NextToken@, the request retrieves the first
-- result page.
--
-- 'latestOnly', 'listAutoScalingConfigurations_latestOnly' - Set to @true@ to list only the latest revision for each requested
-- configuration name.
--
-- Keep as @false@ to list all revisions for each requested configuration
-- name.
--
-- Default: @false@
--
-- 'maxResults', 'listAutoScalingConfigurations_maxResults' - The maximum number of results to include in each response (result page).
-- It\'s used for a paginated request.
--
-- If you don\'t specify @MaxResults@, the request retrieves all available
-- results in a single response.
newListAutoScalingConfigurations ::
  ListAutoScalingConfigurations
newListAutoScalingConfigurations =
  ListAutoScalingConfigurations'
    { autoScalingConfigurationName =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      latestOnly = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The name of the App Runner auto scaling configuration that you want to
-- list. If specified, App Runner lists revisions that share this name. If
-- not specified, App Runner returns revisions of all configurations.
listAutoScalingConfigurations_autoScalingConfigurationName :: Lens.Lens' ListAutoScalingConfigurations (Prelude.Maybe Prelude.Text)
listAutoScalingConfigurations_autoScalingConfigurationName = Lens.lens (\ListAutoScalingConfigurations' {autoScalingConfigurationName} -> autoScalingConfigurationName) (\s@ListAutoScalingConfigurations' {} a -> s {autoScalingConfigurationName = a} :: ListAutoScalingConfigurations)

-- | A token from a previous result page. It\'s used for a paginated request.
-- The request retrieves the next result page. All other parameter values
-- must be identical to the ones that are specified in the initial request.
--
-- If you don\'t specify @NextToken@, the request retrieves the first
-- result page.
listAutoScalingConfigurations_nextToken :: Lens.Lens' ListAutoScalingConfigurations (Prelude.Maybe Prelude.Text)
listAutoScalingConfigurations_nextToken = Lens.lens (\ListAutoScalingConfigurations' {nextToken} -> nextToken) (\s@ListAutoScalingConfigurations' {} a -> s {nextToken = a} :: ListAutoScalingConfigurations)

-- | Set to @true@ to list only the latest revision for each requested
-- configuration name.
--
-- Keep as @false@ to list all revisions for each requested configuration
-- name.
--
-- Default: @false@
listAutoScalingConfigurations_latestOnly :: Lens.Lens' ListAutoScalingConfigurations (Prelude.Maybe Prelude.Bool)
listAutoScalingConfigurations_latestOnly = Lens.lens (\ListAutoScalingConfigurations' {latestOnly} -> latestOnly) (\s@ListAutoScalingConfigurations' {} a -> s {latestOnly = a} :: ListAutoScalingConfigurations)

-- | The maximum number of results to include in each response (result page).
-- It\'s used for a paginated request.
--
-- If you don\'t specify @MaxResults@, the request retrieves all available
-- results in a single response.
listAutoScalingConfigurations_maxResults :: Lens.Lens' ListAutoScalingConfigurations (Prelude.Maybe Prelude.Natural)
listAutoScalingConfigurations_maxResults = Lens.lens (\ListAutoScalingConfigurations' {maxResults} -> maxResults) (\s@ListAutoScalingConfigurations' {} a -> s {maxResults = a} :: ListAutoScalingConfigurations)

instance
  Core.AWSRequest
    ListAutoScalingConfigurations
  where
  type
    AWSResponse ListAutoScalingConfigurations =
      ListAutoScalingConfigurationsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListAutoScalingConfigurationsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Core..?> "AutoScalingConfigurationSummaryList"
                            Core..!@ Prelude.mempty
                        )
      )

instance
  Prelude.Hashable
    ListAutoScalingConfigurations

instance Prelude.NFData ListAutoScalingConfigurations

instance Core.ToHeaders ListAutoScalingConfigurations where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AppRunner.ListAutoScalingConfigurations" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListAutoScalingConfigurations where
  toJSON ListAutoScalingConfigurations' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("AutoScalingConfigurationName" Core..=)
              Prelude.<$> autoScalingConfigurationName,
            ("NextToken" Core..=) Prelude.<$> nextToken,
            ("LatestOnly" Core..=) Prelude.<$> latestOnly,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListAutoScalingConfigurations where
  toPath = Prelude.const "/"

instance Core.ToQuery ListAutoScalingConfigurations where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListAutoScalingConfigurationsResponse' smart constructor.
data ListAutoScalingConfigurationsResponse = ListAutoScalingConfigurationsResponse'
  { -- | The token that you can pass in a subsequent request to get the next
    -- result page. It\'s returned in a paginated request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A list of summary information records for auto scaling configurations.
    -- In a paginated request, the request returns up to @MaxResults@ records
    -- for each call.
    autoScalingConfigurationSummaryList :: [AutoScalingConfigurationSummary]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAutoScalingConfigurationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listAutoScalingConfigurationsResponse_nextToken' - The token that you can pass in a subsequent request to get the next
-- result page. It\'s returned in a paginated request.
--
-- 'httpStatus', 'listAutoScalingConfigurationsResponse_httpStatus' - The response's http status code.
--
-- 'autoScalingConfigurationSummaryList', 'listAutoScalingConfigurationsResponse_autoScalingConfigurationSummaryList' - A list of summary information records for auto scaling configurations.
-- In a paginated request, the request returns up to @MaxResults@ records
-- for each call.
newListAutoScalingConfigurationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListAutoScalingConfigurationsResponse
newListAutoScalingConfigurationsResponse pHttpStatus_ =
  ListAutoScalingConfigurationsResponse'
    { nextToken =
        Prelude.Nothing,
      httpStatus = pHttpStatus_,
      autoScalingConfigurationSummaryList =
        Prelude.mempty
    }

-- | The token that you can pass in a subsequent request to get the next
-- result page. It\'s returned in a paginated request.
listAutoScalingConfigurationsResponse_nextToken :: Lens.Lens' ListAutoScalingConfigurationsResponse (Prelude.Maybe Prelude.Text)
listAutoScalingConfigurationsResponse_nextToken = Lens.lens (\ListAutoScalingConfigurationsResponse' {nextToken} -> nextToken) (\s@ListAutoScalingConfigurationsResponse' {} a -> s {nextToken = a} :: ListAutoScalingConfigurationsResponse)

-- | The response's http status code.
listAutoScalingConfigurationsResponse_httpStatus :: Lens.Lens' ListAutoScalingConfigurationsResponse Prelude.Int
listAutoScalingConfigurationsResponse_httpStatus = Lens.lens (\ListAutoScalingConfigurationsResponse' {httpStatus} -> httpStatus) (\s@ListAutoScalingConfigurationsResponse' {} a -> s {httpStatus = a} :: ListAutoScalingConfigurationsResponse)

-- | A list of summary information records for auto scaling configurations.
-- In a paginated request, the request returns up to @MaxResults@ records
-- for each call.
listAutoScalingConfigurationsResponse_autoScalingConfigurationSummaryList :: Lens.Lens' ListAutoScalingConfigurationsResponse [AutoScalingConfigurationSummary]
listAutoScalingConfigurationsResponse_autoScalingConfigurationSummaryList = Lens.lens (\ListAutoScalingConfigurationsResponse' {autoScalingConfigurationSummaryList} -> autoScalingConfigurationSummaryList) (\s@ListAutoScalingConfigurationsResponse' {} a -> s {autoScalingConfigurationSummaryList = a} :: ListAutoScalingConfigurationsResponse) Prelude.. Lens.coerced

instance
  Prelude.NFData
    ListAutoScalingConfigurationsResponse
