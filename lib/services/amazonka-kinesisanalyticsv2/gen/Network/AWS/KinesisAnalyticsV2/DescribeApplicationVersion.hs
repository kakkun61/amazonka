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
-- Module      : Network.AWS.KinesisAnalyticsV2.DescribeApplicationVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a detailed description of a specified version of the
-- application. To see a list of all the versions of an application, invoke
-- the ListApplicationVersions operation.
--
-- This operation is supported only for Amazon Kinesis Data Analytics for
-- Apache Flink.
module Network.AWS.KinesisAnalyticsV2.DescribeApplicationVersion
  ( -- * Creating a Request
    DescribeApplicationVersion (..),
    newDescribeApplicationVersion,

    -- * Request Lenses
    describeApplicationVersion_applicationName,
    describeApplicationVersion_applicationVersionId,

    -- * Destructuring the Response
    DescribeApplicationVersionResponse (..),
    newDescribeApplicationVersionResponse,

    -- * Response Lenses
    describeApplicationVersionResponse_applicationVersionDetail,
    describeApplicationVersionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.KinesisAnalyticsV2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeApplicationVersion' smart constructor.
data DescribeApplicationVersion = DescribeApplicationVersion'
  { -- | The name of the application for which you want to get the version
    -- description.
    applicationName :: Prelude.Text,
    -- | The ID of the application version for which you want to get the
    -- description.
    applicationVersionId :: Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeApplicationVersion' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'applicationName', 'describeApplicationVersion_applicationName' - The name of the application for which you want to get the version
-- description.
--
-- 'applicationVersionId', 'describeApplicationVersion_applicationVersionId' - The ID of the application version for which you want to get the
-- description.
newDescribeApplicationVersion ::
  -- | 'applicationName'
  Prelude.Text ->
  -- | 'applicationVersionId'
  Prelude.Natural ->
  DescribeApplicationVersion
newDescribeApplicationVersion
  pApplicationName_
  pApplicationVersionId_ =
    DescribeApplicationVersion'
      { applicationName =
          pApplicationName_,
        applicationVersionId = pApplicationVersionId_
      }

-- | The name of the application for which you want to get the version
-- description.
describeApplicationVersion_applicationName :: Lens.Lens' DescribeApplicationVersion Prelude.Text
describeApplicationVersion_applicationName = Lens.lens (\DescribeApplicationVersion' {applicationName} -> applicationName) (\s@DescribeApplicationVersion' {} a -> s {applicationName = a} :: DescribeApplicationVersion)

-- | The ID of the application version for which you want to get the
-- description.
describeApplicationVersion_applicationVersionId :: Lens.Lens' DescribeApplicationVersion Prelude.Natural
describeApplicationVersion_applicationVersionId = Lens.lens (\DescribeApplicationVersion' {applicationVersionId} -> applicationVersionId) (\s@DescribeApplicationVersion' {} a -> s {applicationVersionId = a} :: DescribeApplicationVersion)

instance Core.AWSRequest DescribeApplicationVersion where
  type
    AWSResponse DescribeApplicationVersion =
      DescribeApplicationVersionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeApplicationVersionResponse'
            Prelude.<$> (x Core..?> "ApplicationVersionDetail")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeApplicationVersion

instance Prelude.NFData DescribeApplicationVersion

instance Core.ToHeaders DescribeApplicationVersion where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "KinesisAnalytics_20180523.DescribeApplicationVersion" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeApplicationVersion where
  toJSON DescribeApplicationVersion' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("ApplicationName" Core..= applicationName),
            Prelude.Just
              ( "ApplicationVersionId"
                  Core..= applicationVersionId
              )
          ]
      )

instance Core.ToPath DescribeApplicationVersion where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeApplicationVersion where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeApplicationVersionResponse' smart constructor.
data DescribeApplicationVersionResponse = DescribeApplicationVersionResponse'
  { applicationVersionDetail :: Prelude.Maybe ApplicationDetail,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeApplicationVersionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'applicationVersionDetail', 'describeApplicationVersionResponse_applicationVersionDetail' - Undocumented member.
--
-- 'httpStatus', 'describeApplicationVersionResponse_httpStatus' - The response's http status code.
newDescribeApplicationVersionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeApplicationVersionResponse
newDescribeApplicationVersionResponse pHttpStatus_ =
  DescribeApplicationVersionResponse'
    { applicationVersionDetail =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
describeApplicationVersionResponse_applicationVersionDetail :: Lens.Lens' DescribeApplicationVersionResponse (Prelude.Maybe ApplicationDetail)
describeApplicationVersionResponse_applicationVersionDetail = Lens.lens (\DescribeApplicationVersionResponse' {applicationVersionDetail} -> applicationVersionDetail) (\s@DescribeApplicationVersionResponse' {} a -> s {applicationVersionDetail = a} :: DescribeApplicationVersionResponse)

-- | The response's http status code.
describeApplicationVersionResponse_httpStatus :: Lens.Lens' DescribeApplicationVersionResponse Prelude.Int
describeApplicationVersionResponse_httpStatus = Lens.lens (\DescribeApplicationVersionResponse' {httpStatus} -> httpStatus) (\s@DescribeApplicationVersionResponse' {} a -> s {httpStatus = a} :: DescribeApplicationVersionResponse)

instance
  Prelude.NFData
    DescribeApplicationVersionResponse
