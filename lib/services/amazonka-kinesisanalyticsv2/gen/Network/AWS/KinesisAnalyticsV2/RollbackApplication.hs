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
-- Module      : Network.AWS.KinesisAnalyticsV2.RollbackApplication
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reverts the application to the previous running version. You can roll
-- back an application if you suspect it is stuck in a transient status.
--
-- You can roll back an application only if it is in the @UPDATING@ or
-- @AUTOSCALING@ status.
--
-- When you rollback an application, it loads state data from the last
-- successful snapshot. If the application has no snapshots, Kinesis Data
-- Analytics rejects the rollback request.
--
-- This action is not supported for Kinesis Data Analytics for SQL
-- applications.
module Network.AWS.KinesisAnalyticsV2.RollbackApplication
  ( -- * Creating a Request
    RollbackApplication (..),
    newRollbackApplication,

    -- * Request Lenses
    rollbackApplication_applicationName,
    rollbackApplication_currentApplicationVersionId,

    -- * Destructuring the Response
    RollbackApplicationResponse (..),
    newRollbackApplicationResponse,

    -- * Response Lenses
    rollbackApplicationResponse_httpStatus,
    rollbackApplicationResponse_applicationDetail,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.KinesisAnalyticsV2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newRollbackApplication' smart constructor.
data RollbackApplication = RollbackApplication'
  { -- | The name of the application.
    applicationName :: Prelude.Text,
    -- | The current application version ID. You can retrieve the application
    -- version ID using DescribeApplication.
    currentApplicationVersionId :: Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RollbackApplication' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'applicationName', 'rollbackApplication_applicationName' - The name of the application.
--
-- 'currentApplicationVersionId', 'rollbackApplication_currentApplicationVersionId' - The current application version ID. You can retrieve the application
-- version ID using DescribeApplication.
newRollbackApplication ::
  -- | 'applicationName'
  Prelude.Text ->
  -- | 'currentApplicationVersionId'
  Prelude.Natural ->
  RollbackApplication
newRollbackApplication
  pApplicationName_
  pCurrentApplicationVersionId_ =
    RollbackApplication'
      { applicationName =
          pApplicationName_,
        currentApplicationVersionId =
          pCurrentApplicationVersionId_
      }

-- | The name of the application.
rollbackApplication_applicationName :: Lens.Lens' RollbackApplication Prelude.Text
rollbackApplication_applicationName = Lens.lens (\RollbackApplication' {applicationName} -> applicationName) (\s@RollbackApplication' {} a -> s {applicationName = a} :: RollbackApplication)

-- | The current application version ID. You can retrieve the application
-- version ID using DescribeApplication.
rollbackApplication_currentApplicationVersionId :: Lens.Lens' RollbackApplication Prelude.Natural
rollbackApplication_currentApplicationVersionId = Lens.lens (\RollbackApplication' {currentApplicationVersionId} -> currentApplicationVersionId) (\s@RollbackApplication' {} a -> s {currentApplicationVersionId = a} :: RollbackApplication)

instance Core.AWSRequest RollbackApplication where
  type
    AWSResponse RollbackApplication =
      RollbackApplicationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          RollbackApplicationResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "ApplicationDetail")
      )

instance Prelude.Hashable RollbackApplication

instance Prelude.NFData RollbackApplication

instance Core.ToHeaders RollbackApplication where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "KinesisAnalytics_20180523.RollbackApplication" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON RollbackApplication where
  toJSON RollbackApplication' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("ApplicationName" Core..= applicationName),
            Prelude.Just
              ( "CurrentApplicationVersionId"
                  Core..= currentApplicationVersionId
              )
          ]
      )

instance Core.ToPath RollbackApplication where
  toPath = Prelude.const "/"

instance Core.ToQuery RollbackApplication where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newRollbackApplicationResponse' smart constructor.
data RollbackApplicationResponse = RollbackApplicationResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    applicationDetail :: ApplicationDetail
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RollbackApplicationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'rollbackApplicationResponse_httpStatus' - The response's http status code.
--
-- 'applicationDetail', 'rollbackApplicationResponse_applicationDetail' - Undocumented member.
newRollbackApplicationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'applicationDetail'
  ApplicationDetail ->
  RollbackApplicationResponse
newRollbackApplicationResponse
  pHttpStatus_
  pApplicationDetail_ =
    RollbackApplicationResponse'
      { httpStatus =
          pHttpStatus_,
        applicationDetail = pApplicationDetail_
      }

-- | The response's http status code.
rollbackApplicationResponse_httpStatus :: Lens.Lens' RollbackApplicationResponse Prelude.Int
rollbackApplicationResponse_httpStatus = Lens.lens (\RollbackApplicationResponse' {httpStatus} -> httpStatus) (\s@RollbackApplicationResponse' {} a -> s {httpStatus = a} :: RollbackApplicationResponse)

-- | Undocumented member.
rollbackApplicationResponse_applicationDetail :: Lens.Lens' RollbackApplicationResponse ApplicationDetail
rollbackApplicationResponse_applicationDetail = Lens.lens (\RollbackApplicationResponse' {applicationDetail} -> applicationDetail) (\s@RollbackApplicationResponse' {} a -> s {applicationDetail = a} :: RollbackApplicationResponse)

instance Prelude.NFData RollbackApplicationResponse
