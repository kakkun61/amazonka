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
-- Module      : Network.AWS.KinesisAnalyticsV2.DeleteApplicationInputProcessingConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an InputProcessingConfiguration from an input.
module Network.AWS.KinesisAnalyticsV2.DeleteApplicationInputProcessingConfiguration
  ( -- * Creating a Request
    DeleteApplicationInputProcessingConfiguration (..),
    newDeleteApplicationInputProcessingConfiguration,

    -- * Request Lenses
    deleteApplicationInputProcessingConfiguration_applicationName,
    deleteApplicationInputProcessingConfiguration_currentApplicationVersionId,
    deleteApplicationInputProcessingConfiguration_inputId,

    -- * Destructuring the Response
    DeleteApplicationInputProcessingConfigurationResponse (..),
    newDeleteApplicationInputProcessingConfigurationResponse,

    -- * Response Lenses
    deleteApplicationInputProcessingConfigurationResponse_applicationARN,
    deleteApplicationInputProcessingConfigurationResponse_applicationVersionId,
    deleteApplicationInputProcessingConfigurationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.KinesisAnalyticsV2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteApplicationInputProcessingConfiguration' smart constructor.
data DeleteApplicationInputProcessingConfiguration = DeleteApplicationInputProcessingConfiguration'
  { -- | The name of the application.
    applicationName :: Prelude.Text,
    -- | The application version. You can use the DescribeApplication operation
    -- to get the current application version. If the version specified is not
    -- the current version, the @ConcurrentModificationException@ is returned.
    currentApplicationVersionId :: Prelude.Natural,
    -- | The ID of the input configuration from which to delete the input
    -- processing configuration. You can get a list of the input IDs for an
    -- application by using the DescribeApplication operation.
    inputId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteApplicationInputProcessingConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'applicationName', 'deleteApplicationInputProcessingConfiguration_applicationName' - The name of the application.
--
-- 'currentApplicationVersionId', 'deleteApplicationInputProcessingConfiguration_currentApplicationVersionId' - The application version. You can use the DescribeApplication operation
-- to get the current application version. If the version specified is not
-- the current version, the @ConcurrentModificationException@ is returned.
--
-- 'inputId', 'deleteApplicationInputProcessingConfiguration_inputId' - The ID of the input configuration from which to delete the input
-- processing configuration. You can get a list of the input IDs for an
-- application by using the DescribeApplication operation.
newDeleteApplicationInputProcessingConfiguration ::
  -- | 'applicationName'
  Prelude.Text ->
  -- | 'currentApplicationVersionId'
  Prelude.Natural ->
  -- | 'inputId'
  Prelude.Text ->
  DeleteApplicationInputProcessingConfiguration
newDeleteApplicationInputProcessingConfiguration
  pApplicationName_
  pCurrentApplicationVersionId_
  pInputId_ =
    DeleteApplicationInputProcessingConfiguration'
      { applicationName =
          pApplicationName_,
        currentApplicationVersionId =
          pCurrentApplicationVersionId_,
        inputId = pInputId_
      }

-- | The name of the application.
deleteApplicationInputProcessingConfiguration_applicationName :: Lens.Lens' DeleteApplicationInputProcessingConfiguration Prelude.Text
deleteApplicationInputProcessingConfiguration_applicationName = Lens.lens (\DeleteApplicationInputProcessingConfiguration' {applicationName} -> applicationName) (\s@DeleteApplicationInputProcessingConfiguration' {} a -> s {applicationName = a} :: DeleteApplicationInputProcessingConfiguration)

-- | The application version. You can use the DescribeApplication operation
-- to get the current application version. If the version specified is not
-- the current version, the @ConcurrentModificationException@ is returned.
deleteApplicationInputProcessingConfiguration_currentApplicationVersionId :: Lens.Lens' DeleteApplicationInputProcessingConfiguration Prelude.Natural
deleteApplicationInputProcessingConfiguration_currentApplicationVersionId = Lens.lens (\DeleteApplicationInputProcessingConfiguration' {currentApplicationVersionId} -> currentApplicationVersionId) (\s@DeleteApplicationInputProcessingConfiguration' {} a -> s {currentApplicationVersionId = a} :: DeleteApplicationInputProcessingConfiguration)

-- | The ID of the input configuration from which to delete the input
-- processing configuration. You can get a list of the input IDs for an
-- application by using the DescribeApplication operation.
deleteApplicationInputProcessingConfiguration_inputId :: Lens.Lens' DeleteApplicationInputProcessingConfiguration Prelude.Text
deleteApplicationInputProcessingConfiguration_inputId = Lens.lens (\DeleteApplicationInputProcessingConfiguration' {inputId} -> inputId) (\s@DeleteApplicationInputProcessingConfiguration' {} a -> s {inputId = a} :: DeleteApplicationInputProcessingConfiguration)

instance
  Core.AWSRequest
    DeleteApplicationInputProcessingConfiguration
  where
  type
    AWSResponse
      DeleteApplicationInputProcessingConfiguration =
      DeleteApplicationInputProcessingConfigurationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteApplicationInputProcessingConfigurationResponse'
            Prelude.<$> (x Core..?> "ApplicationARN")
              Prelude.<*> (x Core..?> "ApplicationVersionId")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DeleteApplicationInputProcessingConfiguration

instance
  Prelude.NFData
    DeleteApplicationInputProcessingConfiguration

instance
  Core.ToHeaders
    DeleteApplicationInputProcessingConfiguration
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "KinesisAnalytics_20180523.DeleteApplicationInputProcessingConfiguration" ::
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
    DeleteApplicationInputProcessingConfiguration
  where
  toJSON
    DeleteApplicationInputProcessingConfiguration' {..} =
      Core.object
        ( Prelude.catMaybes
            [ Prelude.Just
                ("ApplicationName" Core..= applicationName),
              Prelude.Just
                ( "CurrentApplicationVersionId"
                    Core..= currentApplicationVersionId
                ),
              Prelude.Just ("InputId" Core..= inputId)
            ]
        )

instance
  Core.ToPath
    DeleteApplicationInputProcessingConfiguration
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    DeleteApplicationInputProcessingConfiguration
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteApplicationInputProcessingConfigurationResponse' smart constructor.
data DeleteApplicationInputProcessingConfigurationResponse = DeleteApplicationInputProcessingConfigurationResponse'
  { -- | The Amazon Resource Name (ARN) of the application.
    applicationARN :: Prelude.Maybe Prelude.Text,
    -- | The current application version ID.
    applicationVersionId :: Prelude.Maybe Prelude.Natural,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteApplicationInputProcessingConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'applicationARN', 'deleteApplicationInputProcessingConfigurationResponse_applicationARN' - The Amazon Resource Name (ARN) of the application.
--
-- 'applicationVersionId', 'deleteApplicationInputProcessingConfigurationResponse_applicationVersionId' - The current application version ID.
--
-- 'httpStatus', 'deleteApplicationInputProcessingConfigurationResponse_httpStatus' - The response's http status code.
newDeleteApplicationInputProcessingConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteApplicationInputProcessingConfigurationResponse
newDeleteApplicationInputProcessingConfigurationResponse
  pHttpStatus_ =
    DeleteApplicationInputProcessingConfigurationResponse'
      { applicationARN =
          Prelude.Nothing,
        applicationVersionId =
          Prelude.Nothing,
        httpStatus =
          pHttpStatus_
      }

-- | The Amazon Resource Name (ARN) of the application.
deleteApplicationInputProcessingConfigurationResponse_applicationARN :: Lens.Lens' DeleteApplicationInputProcessingConfigurationResponse (Prelude.Maybe Prelude.Text)
deleteApplicationInputProcessingConfigurationResponse_applicationARN = Lens.lens (\DeleteApplicationInputProcessingConfigurationResponse' {applicationARN} -> applicationARN) (\s@DeleteApplicationInputProcessingConfigurationResponse' {} a -> s {applicationARN = a} :: DeleteApplicationInputProcessingConfigurationResponse)

-- | The current application version ID.
deleteApplicationInputProcessingConfigurationResponse_applicationVersionId :: Lens.Lens' DeleteApplicationInputProcessingConfigurationResponse (Prelude.Maybe Prelude.Natural)
deleteApplicationInputProcessingConfigurationResponse_applicationVersionId = Lens.lens (\DeleteApplicationInputProcessingConfigurationResponse' {applicationVersionId} -> applicationVersionId) (\s@DeleteApplicationInputProcessingConfigurationResponse' {} a -> s {applicationVersionId = a} :: DeleteApplicationInputProcessingConfigurationResponse)

-- | The response's http status code.
deleteApplicationInputProcessingConfigurationResponse_httpStatus :: Lens.Lens' DeleteApplicationInputProcessingConfigurationResponse Prelude.Int
deleteApplicationInputProcessingConfigurationResponse_httpStatus = Lens.lens (\DeleteApplicationInputProcessingConfigurationResponse' {httpStatus} -> httpStatus) (\s@DeleteApplicationInputProcessingConfigurationResponse' {} a -> s {httpStatus = a} :: DeleteApplicationInputProcessingConfigurationResponse)

instance
  Prelude.NFData
    DeleteApplicationInputProcessingConfigurationResponse
