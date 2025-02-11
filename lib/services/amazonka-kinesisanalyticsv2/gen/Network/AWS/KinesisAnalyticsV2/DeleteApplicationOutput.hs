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
-- Module      : Network.AWS.KinesisAnalyticsV2.DeleteApplicationOutput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the output destination configuration from your SQL-based Kinesis
-- Data Analytics application\'s configuration. Kinesis Data Analytics will
-- no longer write data from the corresponding in-application stream to the
-- external output destination.
module Network.AWS.KinesisAnalyticsV2.DeleteApplicationOutput
  ( -- * Creating a Request
    DeleteApplicationOutput (..),
    newDeleteApplicationOutput,

    -- * Request Lenses
    deleteApplicationOutput_applicationName,
    deleteApplicationOutput_currentApplicationVersionId,
    deleteApplicationOutput_outputId,

    -- * Destructuring the Response
    DeleteApplicationOutputResponse (..),
    newDeleteApplicationOutputResponse,

    -- * Response Lenses
    deleteApplicationOutputResponse_applicationARN,
    deleteApplicationOutputResponse_applicationVersionId,
    deleteApplicationOutputResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.KinesisAnalyticsV2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteApplicationOutput' smart constructor.
data DeleteApplicationOutput = DeleteApplicationOutput'
  { -- | The application name.
    applicationName :: Prelude.Text,
    -- | The application version. You can use the DescribeApplication operation
    -- to get the current application version. If the version specified is not
    -- the current version, the @ConcurrentModificationException@ is returned.
    currentApplicationVersionId :: Prelude.Natural,
    -- | The ID of the configuration to delete. Each output configuration that is
    -- added to the application (either when the application is created or
    -- later) using the AddApplicationOutput operation has a unique ID. You
    -- need to provide the ID to uniquely identify the output configuration
    -- that you want to delete from the application configuration. You can use
    -- the DescribeApplication operation to get the specific @OutputId@.
    outputId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteApplicationOutput' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'applicationName', 'deleteApplicationOutput_applicationName' - The application name.
--
-- 'currentApplicationVersionId', 'deleteApplicationOutput_currentApplicationVersionId' - The application version. You can use the DescribeApplication operation
-- to get the current application version. If the version specified is not
-- the current version, the @ConcurrentModificationException@ is returned.
--
-- 'outputId', 'deleteApplicationOutput_outputId' - The ID of the configuration to delete. Each output configuration that is
-- added to the application (either when the application is created or
-- later) using the AddApplicationOutput operation has a unique ID. You
-- need to provide the ID to uniquely identify the output configuration
-- that you want to delete from the application configuration. You can use
-- the DescribeApplication operation to get the specific @OutputId@.
newDeleteApplicationOutput ::
  -- | 'applicationName'
  Prelude.Text ->
  -- | 'currentApplicationVersionId'
  Prelude.Natural ->
  -- | 'outputId'
  Prelude.Text ->
  DeleteApplicationOutput
newDeleteApplicationOutput
  pApplicationName_
  pCurrentApplicationVersionId_
  pOutputId_ =
    DeleteApplicationOutput'
      { applicationName =
          pApplicationName_,
        currentApplicationVersionId =
          pCurrentApplicationVersionId_,
        outputId = pOutputId_
      }

-- | The application name.
deleteApplicationOutput_applicationName :: Lens.Lens' DeleteApplicationOutput Prelude.Text
deleteApplicationOutput_applicationName = Lens.lens (\DeleteApplicationOutput' {applicationName} -> applicationName) (\s@DeleteApplicationOutput' {} a -> s {applicationName = a} :: DeleteApplicationOutput)

-- | The application version. You can use the DescribeApplication operation
-- to get the current application version. If the version specified is not
-- the current version, the @ConcurrentModificationException@ is returned.
deleteApplicationOutput_currentApplicationVersionId :: Lens.Lens' DeleteApplicationOutput Prelude.Natural
deleteApplicationOutput_currentApplicationVersionId = Lens.lens (\DeleteApplicationOutput' {currentApplicationVersionId} -> currentApplicationVersionId) (\s@DeleteApplicationOutput' {} a -> s {currentApplicationVersionId = a} :: DeleteApplicationOutput)

-- | The ID of the configuration to delete. Each output configuration that is
-- added to the application (either when the application is created or
-- later) using the AddApplicationOutput operation has a unique ID. You
-- need to provide the ID to uniquely identify the output configuration
-- that you want to delete from the application configuration. You can use
-- the DescribeApplication operation to get the specific @OutputId@.
deleteApplicationOutput_outputId :: Lens.Lens' DeleteApplicationOutput Prelude.Text
deleteApplicationOutput_outputId = Lens.lens (\DeleteApplicationOutput' {outputId} -> outputId) (\s@DeleteApplicationOutput' {} a -> s {outputId = a} :: DeleteApplicationOutput)

instance Core.AWSRequest DeleteApplicationOutput where
  type
    AWSResponse DeleteApplicationOutput =
      DeleteApplicationOutputResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteApplicationOutputResponse'
            Prelude.<$> (x Core..?> "ApplicationARN")
            Prelude.<*> (x Core..?> "ApplicationVersionId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteApplicationOutput

instance Prelude.NFData DeleteApplicationOutput

instance Core.ToHeaders DeleteApplicationOutput where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "KinesisAnalytics_20180523.DeleteApplicationOutput" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteApplicationOutput where
  toJSON DeleteApplicationOutput' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("ApplicationName" Core..= applicationName),
            Prelude.Just
              ( "CurrentApplicationVersionId"
                  Core..= currentApplicationVersionId
              ),
            Prelude.Just ("OutputId" Core..= outputId)
          ]
      )

instance Core.ToPath DeleteApplicationOutput where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteApplicationOutput where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteApplicationOutputResponse' smart constructor.
data DeleteApplicationOutputResponse = DeleteApplicationOutputResponse'
  { -- | The application Amazon Resource Name (ARN).
    applicationARN :: Prelude.Maybe Prelude.Text,
    -- | The current application version ID.
    applicationVersionId :: Prelude.Maybe Prelude.Natural,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteApplicationOutputResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'applicationARN', 'deleteApplicationOutputResponse_applicationARN' - The application Amazon Resource Name (ARN).
--
-- 'applicationVersionId', 'deleteApplicationOutputResponse_applicationVersionId' - The current application version ID.
--
-- 'httpStatus', 'deleteApplicationOutputResponse_httpStatus' - The response's http status code.
newDeleteApplicationOutputResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteApplicationOutputResponse
newDeleteApplicationOutputResponse pHttpStatus_ =
  DeleteApplicationOutputResponse'
    { applicationARN =
        Prelude.Nothing,
      applicationVersionId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The application Amazon Resource Name (ARN).
deleteApplicationOutputResponse_applicationARN :: Lens.Lens' DeleteApplicationOutputResponse (Prelude.Maybe Prelude.Text)
deleteApplicationOutputResponse_applicationARN = Lens.lens (\DeleteApplicationOutputResponse' {applicationARN} -> applicationARN) (\s@DeleteApplicationOutputResponse' {} a -> s {applicationARN = a} :: DeleteApplicationOutputResponse)

-- | The current application version ID.
deleteApplicationOutputResponse_applicationVersionId :: Lens.Lens' DeleteApplicationOutputResponse (Prelude.Maybe Prelude.Natural)
deleteApplicationOutputResponse_applicationVersionId = Lens.lens (\DeleteApplicationOutputResponse' {applicationVersionId} -> applicationVersionId) (\s@DeleteApplicationOutputResponse' {} a -> s {applicationVersionId = a} :: DeleteApplicationOutputResponse)

-- | The response's http status code.
deleteApplicationOutputResponse_httpStatus :: Lens.Lens' DeleteApplicationOutputResponse Prelude.Int
deleteApplicationOutputResponse_httpStatus = Lens.lens (\DeleteApplicationOutputResponse' {httpStatus} -> httpStatus) (\s@DeleteApplicationOutputResponse' {} a -> s {httpStatus = a} :: DeleteApplicationOutputResponse)

instance
  Prelude.NFData
    DeleteApplicationOutputResponse
