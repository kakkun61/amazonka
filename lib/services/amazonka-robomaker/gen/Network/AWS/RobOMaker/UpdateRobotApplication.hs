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
-- Module      : Network.AWS.RobOMaker.UpdateRobotApplication
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a robot application.
module Network.AWS.RobOMaker.UpdateRobotApplication
  ( -- * Creating a Request
    UpdateRobotApplication (..),
    newUpdateRobotApplication,

    -- * Request Lenses
    updateRobotApplication_currentRevisionId,
    updateRobotApplication_environment,
    updateRobotApplication_sources,
    updateRobotApplication_application,
    updateRobotApplication_robotSoftwareSuite,

    -- * Destructuring the Response
    UpdateRobotApplicationResponse (..),
    newUpdateRobotApplicationResponse,

    -- * Response Lenses
    updateRobotApplicationResponse_lastUpdatedAt,
    updateRobotApplicationResponse_arn,
    updateRobotApplicationResponse_environment,
    updateRobotApplicationResponse_sources,
    updateRobotApplicationResponse_name,
    updateRobotApplicationResponse_version,
    updateRobotApplicationResponse_robotSoftwareSuite,
    updateRobotApplicationResponse_revisionId,
    updateRobotApplicationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.RobOMaker.Types

-- | /See:/ 'newUpdateRobotApplication' smart constructor.
data UpdateRobotApplication = UpdateRobotApplication'
  { -- | The revision id for the robot application.
    currentRevisionId :: Prelude.Maybe Prelude.Text,
    -- | The object that contains the Docker image URI for your robot
    -- application.
    environment :: Prelude.Maybe Environment,
    -- | The sources of the robot application.
    sources :: Prelude.Maybe [SourceConfig],
    -- | The application information for the robot application.
    application :: Prelude.Text,
    -- | The robot software suite (ROS distribution) used by the robot
    -- application.
    robotSoftwareSuite :: RobotSoftwareSuite
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateRobotApplication' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'currentRevisionId', 'updateRobotApplication_currentRevisionId' - The revision id for the robot application.
--
-- 'environment', 'updateRobotApplication_environment' - The object that contains the Docker image URI for your robot
-- application.
--
-- 'sources', 'updateRobotApplication_sources' - The sources of the robot application.
--
-- 'application', 'updateRobotApplication_application' - The application information for the robot application.
--
-- 'robotSoftwareSuite', 'updateRobotApplication_robotSoftwareSuite' - The robot software suite (ROS distribution) used by the robot
-- application.
newUpdateRobotApplication ::
  -- | 'application'
  Prelude.Text ->
  -- | 'robotSoftwareSuite'
  RobotSoftwareSuite ->
  UpdateRobotApplication
newUpdateRobotApplication
  pApplication_
  pRobotSoftwareSuite_ =
    UpdateRobotApplication'
      { currentRevisionId =
          Prelude.Nothing,
        environment = Prelude.Nothing,
        sources = Prelude.Nothing,
        application = pApplication_,
        robotSoftwareSuite = pRobotSoftwareSuite_
      }

-- | The revision id for the robot application.
updateRobotApplication_currentRevisionId :: Lens.Lens' UpdateRobotApplication (Prelude.Maybe Prelude.Text)
updateRobotApplication_currentRevisionId = Lens.lens (\UpdateRobotApplication' {currentRevisionId} -> currentRevisionId) (\s@UpdateRobotApplication' {} a -> s {currentRevisionId = a} :: UpdateRobotApplication)

-- | The object that contains the Docker image URI for your robot
-- application.
updateRobotApplication_environment :: Lens.Lens' UpdateRobotApplication (Prelude.Maybe Environment)
updateRobotApplication_environment = Lens.lens (\UpdateRobotApplication' {environment} -> environment) (\s@UpdateRobotApplication' {} a -> s {environment = a} :: UpdateRobotApplication)

-- | The sources of the robot application.
updateRobotApplication_sources :: Lens.Lens' UpdateRobotApplication (Prelude.Maybe [SourceConfig])
updateRobotApplication_sources = Lens.lens (\UpdateRobotApplication' {sources} -> sources) (\s@UpdateRobotApplication' {} a -> s {sources = a} :: UpdateRobotApplication) Prelude.. Lens.mapping Lens.coerced

-- | The application information for the robot application.
updateRobotApplication_application :: Lens.Lens' UpdateRobotApplication Prelude.Text
updateRobotApplication_application = Lens.lens (\UpdateRobotApplication' {application} -> application) (\s@UpdateRobotApplication' {} a -> s {application = a} :: UpdateRobotApplication)

-- | The robot software suite (ROS distribution) used by the robot
-- application.
updateRobotApplication_robotSoftwareSuite :: Lens.Lens' UpdateRobotApplication RobotSoftwareSuite
updateRobotApplication_robotSoftwareSuite = Lens.lens (\UpdateRobotApplication' {robotSoftwareSuite} -> robotSoftwareSuite) (\s@UpdateRobotApplication' {} a -> s {robotSoftwareSuite = a} :: UpdateRobotApplication)

instance Core.AWSRequest UpdateRobotApplication where
  type
    AWSResponse UpdateRobotApplication =
      UpdateRobotApplicationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateRobotApplicationResponse'
            Prelude.<$> (x Core..?> "lastUpdatedAt")
            Prelude.<*> (x Core..?> "arn")
            Prelude.<*> (x Core..?> "environment")
            Prelude.<*> (x Core..?> "sources" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "name")
            Prelude.<*> (x Core..?> "version")
            Prelude.<*> (x Core..?> "robotSoftwareSuite")
            Prelude.<*> (x Core..?> "revisionId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateRobotApplication

instance Prelude.NFData UpdateRobotApplication

instance Core.ToHeaders UpdateRobotApplication where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateRobotApplication where
  toJSON UpdateRobotApplication' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("currentRevisionId" Core..=)
              Prelude.<$> currentRevisionId,
            ("environment" Core..=) Prelude.<$> environment,
            ("sources" Core..=) Prelude.<$> sources,
            Prelude.Just ("application" Core..= application),
            Prelude.Just
              ("robotSoftwareSuite" Core..= robotSoftwareSuite)
          ]
      )

instance Core.ToPath UpdateRobotApplication where
  toPath = Prelude.const "/updateRobotApplication"

instance Core.ToQuery UpdateRobotApplication where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateRobotApplicationResponse' smart constructor.
data UpdateRobotApplicationResponse = UpdateRobotApplicationResponse'
  { -- | The time, in milliseconds since the epoch, when the robot application
    -- was last updated.
    lastUpdatedAt :: Prelude.Maybe Core.POSIX,
    -- | The Amazon Resource Name (ARN) of the updated robot application.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The object that contains the Docker image URI for your robot
    -- application.
    environment :: Prelude.Maybe Environment,
    -- | The sources of the robot application.
    sources :: Prelude.Maybe [Source],
    -- | The name of the robot application.
    name :: Prelude.Maybe Prelude.Text,
    -- | The version of the robot application.
    version :: Prelude.Maybe Prelude.Text,
    -- | The robot software suite (ROS distribution) used by the robot
    -- application.
    robotSoftwareSuite :: Prelude.Maybe RobotSoftwareSuite,
    -- | The revision id of the robot application.
    revisionId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateRobotApplicationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastUpdatedAt', 'updateRobotApplicationResponse_lastUpdatedAt' - The time, in milliseconds since the epoch, when the robot application
-- was last updated.
--
-- 'arn', 'updateRobotApplicationResponse_arn' - The Amazon Resource Name (ARN) of the updated robot application.
--
-- 'environment', 'updateRobotApplicationResponse_environment' - The object that contains the Docker image URI for your robot
-- application.
--
-- 'sources', 'updateRobotApplicationResponse_sources' - The sources of the robot application.
--
-- 'name', 'updateRobotApplicationResponse_name' - The name of the robot application.
--
-- 'version', 'updateRobotApplicationResponse_version' - The version of the robot application.
--
-- 'robotSoftwareSuite', 'updateRobotApplicationResponse_robotSoftwareSuite' - The robot software suite (ROS distribution) used by the robot
-- application.
--
-- 'revisionId', 'updateRobotApplicationResponse_revisionId' - The revision id of the robot application.
--
-- 'httpStatus', 'updateRobotApplicationResponse_httpStatus' - The response's http status code.
newUpdateRobotApplicationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateRobotApplicationResponse
newUpdateRobotApplicationResponse pHttpStatus_ =
  UpdateRobotApplicationResponse'
    { lastUpdatedAt =
        Prelude.Nothing,
      arn = Prelude.Nothing,
      environment = Prelude.Nothing,
      sources = Prelude.Nothing,
      name = Prelude.Nothing,
      version = Prelude.Nothing,
      robotSoftwareSuite = Prelude.Nothing,
      revisionId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The time, in milliseconds since the epoch, when the robot application
-- was last updated.
updateRobotApplicationResponse_lastUpdatedAt :: Lens.Lens' UpdateRobotApplicationResponse (Prelude.Maybe Prelude.UTCTime)
updateRobotApplicationResponse_lastUpdatedAt = Lens.lens (\UpdateRobotApplicationResponse' {lastUpdatedAt} -> lastUpdatedAt) (\s@UpdateRobotApplicationResponse' {} a -> s {lastUpdatedAt = a} :: UpdateRobotApplicationResponse) Prelude.. Lens.mapping Core._Time

-- | The Amazon Resource Name (ARN) of the updated robot application.
updateRobotApplicationResponse_arn :: Lens.Lens' UpdateRobotApplicationResponse (Prelude.Maybe Prelude.Text)
updateRobotApplicationResponse_arn = Lens.lens (\UpdateRobotApplicationResponse' {arn} -> arn) (\s@UpdateRobotApplicationResponse' {} a -> s {arn = a} :: UpdateRobotApplicationResponse)

-- | The object that contains the Docker image URI for your robot
-- application.
updateRobotApplicationResponse_environment :: Lens.Lens' UpdateRobotApplicationResponse (Prelude.Maybe Environment)
updateRobotApplicationResponse_environment = Lens.lens (\UpdateRobotApplicationResponse' {environment} -> environment) (\s@UpdateRobotApplicationResponse' {} a -> s {environment = a} :: UpdateRobotApplicationResponse)

-- | The sources of the robot application.
updateRobotApplicationResponse_sources :: Lens.Lens' UpdateRobotApplicationResponse (Prelude.Maybe [Source])
updateRobotApplicationResponse_sources = Lens.lens (\UpdateRobotApplicationResponse' {sources} -> sources) (\s@UpdateRobotApplicationResponse' {} a -> s {sources = a} :: UpdateRobotApplicationResponse) Prelude.. Lens.mapping Lens.coerced

-- | The name of the robot application.
updateRobotApplicationResponse_name :: Lens.Lens' UpdateRobotApplicationResponse (Prelude.Maybe Prelude.Text)
updateRobotApplicationResponse_name = Lens.lens (\UpdateRobotApplicationResponse' {name} -> name) (\s@UpdateRobotApplicationResponse' {} a -> s {name = a} :: UpdateRobotApplicationResponse)

-- | The version of the robot application.
updateRobotApplicationResponse_version :: Lens.Lens' UpdateRobotApplicationResponse (Prelude.Maybe Prelude.Text)
updateRobotApplicationResponse_version = Lens.lens (\UpdateRobotApplicationResponse' {version} -> version) (\s@UpdateRobotApplicationResponse' {} a -> s {version = a} :: UpdateRobotApplicationResponse)

-- | The robot software suite (ROS distribution) used by the robot
-- application.
updateRobotApplicationResponse_robotSoftwareSuite :: Lens.Lens' UpdateRobotApplicationResponse (Prelude.Maybe RobotSoftwareSuite)
updateRobotApplicationResponse_robotSoftwareSuite = Lens.lens (\UpdateRobotApplicationResponse' {robotSoftwareSuite} -> robotSoftwareSuite) (\s@UpdateRobotApplicationResponse' {} a -> s {robotSoftwareSuite = a} :: UpdateRobotApplicationResponse)

-- | The revision id of the robot application.
updateRobotApplicationResponse_revisionId :: Lens.Lens' UpdateRobotApplicationResponse (Prelude.Maybe Prelude.Text)
updateRobotApplicationResponse_revisionId = Lens.lens (\UpdateRobotApplicationResponse' {revisionId} -> revisionId) (\s@UpdateRobotApplicationResponse' {} a -> s {revisionId = a} :: UpdateRobotApplicationResponse)

-- | The response's http status code.
updateRobotApplicationResponse_httpStatus :: Lens.Lens' UpdateRobotApplicationResponse Prelude.Int
updateRobotApplicationResponse_httpStatus = Lens.lens (\UpdateRobotApplicationResponse' {httpStatus} -> httpStatus) (\s@UpdateRobotApplicationResponse' {} a -> s {httpStatus = a} :: UpdateRobotApplicationResponse)

instance
  Prelude.NFData
    UpdateRobotApplicationResponse
