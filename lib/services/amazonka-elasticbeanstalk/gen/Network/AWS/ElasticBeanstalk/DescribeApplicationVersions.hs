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
-- Module      : Network.AWS.ElasticBeanstalk.DescribeApplicationVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve a list of application versions.
--
-- This operation returns paginated results.
module Network.AWS.ElasticBeanstalk.DescribeApplicationVersions
  ( -- * Creating a Request
    DescribeApplicationVersions (..),
    newDescribeApplicationVersions,

    -- * Request Lenses
    describeApplicationVersions_versionLabels,
    describeApplicationVersions_nextToken,
    describeApplicationVersions_maxRecords,
    describeApplicationVersions_applicationName,

    -- * Destructuring the Response
    DescribeApplicationVersionsResponse (..),
    newDescribeApplicationVersionsResponse,

    -- * Response Lenses
    describeApplicationVersionsResponse_applicationVersions,
    describeApplicationVersionsResponse_nextToken,
    describeApplicationVersionsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.ElasticBeanstalk.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Request to describe application versions.
--
-- /See:/ 'newDescribeApplicationVersions' smart constructor.
data DescribeApplicationVersions = DescribeApplicationVersions'
  { -- | Specify a version label to show a specific application version.
    versionLabels :: Prelude.Maybe [Prelude.Text],
    -- | For a paginated request. Specify a token from a previous response page
    -- to retrieve the next response page. All other parameter values must be
    -- identical to the ones specified in the initial request.
    --
    -- If no @NextToken@ is specified, the first page is retrieved.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | For a paginated request. Specify a maximum number of application
    -- versions to include in each response.
    --
    -- If no @MaxRecords@ is specified, all available application versions are
    -- retrieved in a single response.
    maxRecords :: Prelude.Maybe Prelude.Natural,
    -- | Specify an application name to show only application versions for that
    -- application.
    applicationName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeApplicationVersions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'versionLabels', 'describeApplicationVersions_versionLabels' - Specify a version label to show a specific application version.
--
-- 'nextToken', 'describeApplicationVersions_nextToken' - For a paginated request. Specify a token from a previous response page
-- to retrieve the next response page. All other parameter values must be
-- identical to the ones specified in the initial request.
--
-- If no @NextToken@ is specified, the first page is retrieved.
--
-- 'maxRecords', 'describeApplicationVersions_maxRecords' - For a paginated request. Specify a maximum number of application
-- versions to include in each response.
--
-- If no @MaxRecords@ is specified, all available application versions are
-- retrieved in a single response.
--
-- 'applicationName', 'describeApplicationVersions_applicationName' - Specify an application name to show only application versions for that
-- application.
newDescribeApplicationVersions ::
  DescribeApplicationVersions
newDescribeApplicationVersions =
  DescribeApplicationVersions'
    { versionLabels =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxRecords = Prelude.Nothing,
      applicationName = Prelude.Nothing
    }

-- | Specify a version label to show a specific application version.
describeApplicationVersions_versionLabels :: Lens.Lens' DescribeApplicationVersions (Prelude.Maybe [Prelude.Text])
describeApplicationVersions_versionLabels = Lens.lens (\DescribeApplicationVersions' {versionLabels} -> versionLabels) (\s@DescribeApplicationVersions' {} a -> s {versionLabels = a} :: DescribeApplicationVersions) Prelude.. Lens.mapping Lens.coerced

-- | For a paginated request. Specify a token from a previous response page
-- to retrieve the next response page. All other parameter values must be
-- identical to the ones specified in the initial request.
--
-- If no @NextToken@ is specified, the first page is retrieved.
describeApplicationVersions_nextToken :: Lens.Lens' DescribeApplicationVersions (Prelude.Maybe Prelude.Text)
describeApplicationVersions_nextToken = Lens.lens (\DescribeApplicationVersions' {nextToken} -> nextToken) (\s@DescribeApplicationVersions' {} a -> s {nextToken = a} :: DescribeApplicationVersions)

-- | For a paginated request. Specify a maximum number of application
-- versions to include in each response.
--
-- If no @MaxRecords@ is specified, all available application versions are
-- retrieved in a single response.
describeApplicationVersions_maxRecords :: Lens.Lens' DescribeApplicationVersions (Prelude.Maybe Prelude.Natural)
describeApplicationVersions_maxRecords = Lens.lens (\DescribeApplicationVersions' {maxRecords} -> maxRecords) (\s@DescribeApplicationVersions' {} a -> s {maxRecords = a} :: DescribeApplicationVersions)

-- | Specify an application name to show only application versions for that
-- application.
describeApplicationVersions_applicationName :: Lens.Lens' DescribeApplicationVersions (Prelude.Maybe Prelude.Text)
describeApplicationVersions_applicationName = Lens.lens (\DescribeApplicationVersions' {applicationName} -> applicationName) (\s@DescribeApplicationVersions' {} a -> s {applicationName = a} :: DescribeApplicationVersions)

instance Core.AWSPager DescribeApplicationVersions where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeApplicationVersionsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeApplicationVersionsResponse_applicationVersions
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeApplicationVersions_nextToken
          Lens..~ rs
          Lens.^? describeApplicationVersionsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest DescribeApplicationVersions where
  type
    AWSResponse DescribeApplicationVersions =
      DescribeApplicationVersionsResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DescribeApplicationVersionsResult"
      ( \s h x ->
          DescribeApplicationVersionsResponse'
            Prelude.<$> ( x Core..@? "ApplicationVersions"
                            Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "member")
                        )
            Prelude.<*> (x Core..@? "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeApplicationVersions

instance Prelude.NFData DescribeApplicationVersions

instance Core.ToHeaders DescribeApplicationVersions where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeApplicationVersions where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeApplicationVersions where
  toQuery DescribeApplicationVersions' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ( "DescribeApplicationVersions" ::
                      Prelude.ByteString
                  ),
        "Version"
          Core.=: ("2010-12-01" :: Prelude.ByteString),
        "VersionLabels"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> versionLabels
            ),
        "NextToken" Core.=: nextToken,
        "MaxRecords" Core.=: maxRecords,
        "ApplicationName" Core.=: applicationName
      ]

-- | Result message wrapping a list of application version descriptions.
--
-- /See:/ 'newDescribeApplicationVersionsResponse' smart constructor.
data DescribeApplicationVersionsResponse = DescribeApplicationVersionsResponse'
  { -- | List of @ApplicationVersionDescription@ objects sorted in order of
    -- creation.
    applicationVersions :: Prelude.Maybe [ApplicationVersionDescription],
    -- | In a paginated request, the token that you can pass in a subsequent
    -- request to get the next response page.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeApplicationVersionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'applicationVersions', 'describeApplicationVersionsResponse_applicationVersions' - List of @ApplicationVersionDescription@ objects sorted in order of
-- creation.
--
-- 'nextToken', 'describeApplicationVersionsResponse_nextToken' - In a paginated request, the token that you can pass in a subsequent
-- request to get the next response page.
--
-- 'httpStatus', 'describeApplicationVersionsResponse_httpStatus' - The response's http status code.
newDescribeApplicationVersionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeApplicationVersionsResponse
newDescribeApplicationVersionsResponse pHttpStatus_ =
  DescribeApplicationVersionsResponse'
    { applicationVersions =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | List of @ApplicationVersionDescription@ objects sorted in order of
-- creation.
describeApplicationVersionsResponse_applicationVersions :: Lens.Lens' DescribeApplicationVersionsResponse (Prelude.Maybe [ApplicationVersionDescription])
describeApplicationVersionsResponse_applicationVersions = Lens.lens (\DescribeApplicationVersionsResponse' {applicationVersions} -> applicationVersions) (\s@DescribeApplicationVersionsResponse' {} a -> s {applicationVersions = a} :: DescribeApplicationVersionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | In a paginated request, the token that you can pass in a subsequent
-- request to get the next response page.
describeApplicationVersionsResponse_nextToken :: Lens.Lens' DescribeApplicationVersionsResponse (Prelude.Maybe Prelude.Text)
describeApplicationVersionsResponse_nextToken = Lens.lens (\DescribeApplicationVersionsResponse' {nextToken} -> nextToken) (\s@DescribeApplicationVersionsResponse' {} a -> s {nextToken = a} :: DescribeApplicationVersionsResponse)

-- | The response's http status code.
describeApplicationVersionsResponse_httpStatus :: Lens.Lens' DescribeApplicationVersionsResponse Prelude.Int
describeApplicationVersionsResponse_httpStatus = Lens.lens (\DescribeApplicationVersionsResponse' {httpStatus} -> httpStatus) (\s@DescribeApplicationVersionsResponse' {} a -> s {httpStatus = a} :: DescribeApplicationVersionsResponse)

instance
  Prelude.NFData
    DescribeApplicationVersionsResponse
