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
-- Module      : Network.AWS.RobOMaker.DescribeRobotApplication
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a robot application.
module Network.AWS.RobOMaker.DescribeRobotApplication
  ( -- * Creating a Request
    DescribeRobotApplication (..),
    newDescribeRobotApplication,

    -- * Request Lenses
    describeRobotApplication_applicationVersion,
    describeRobotApplication_application,

    -- * Destructuring the Response
    DescribeRobotApplicationResponse (..),
    newDescribeRobotApplicationResponse,

    -- * Response Lenses
    describeRobotApplicationResponse_lastUpdatedAt,
    describeRobotApplicationResponse_arn,
    describeRobotApplicationResponse_environment,
    describeRobotApplicationResponse_sources,
    describeRobotApplicationResponse_name,
    describeRobotApplicationResponse_imageDigest,
    describeRobotApplicationResponse_version,
    describeRobotApplicationResponse_robotSoftwareSuite,
    describeRobotApplicationResponse_revisionId,
    describeRobotApplicationResponse_tags,
    describeRobotApplicationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.RobOMaker.Types

-- | /See:/ 'newDescribeRobotApplication' smart constructor.
data DescribeRobotApplication = DescribeRobotApplication'
  { -- | The version of the robot application to describe.
    applicationVersion :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the robot application.
    application :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeRobotApplication' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'applicationVersion', 'describeRobotApplication_applicationVersion' - The version of the robot application to describe.
--
-- 'application', 'describeRobotApplication_application' - The Amazon Resource Name (ARN) of the robot application.
newDescribeRobotApplication ::
  -- | 'application'
  Prelude.Text ->
  DescribeRobotApplication
newDescribeRobotApplication pApplication_ =
  DescribeRobotApplication'
    { applicationVersion =
        Prelude.Nothing,
      application = pApplication_
    }

-- | The version of the robot application to describe.
describeRobotApplication_applicationVersion :: Lens.Lens' DescribeRobotApplication (Prelude.Maybe Prelude.Text)
describeRobotApplication_applicationVersion = Lens.lens (\DescribeRobotApplication' {applicationVersion} -> applicationVersion) (\s@DescribeRobotApplication' {} a -> s {applicationVersion = a} :: DescribeRobotApplication)

-- | The Amazon Resource Name (ARN) of the robot application.
describeRobotApplication_application :: Lens.Lens' DescribeRobotApplication Prelude.Text
describeRobotApplication_application = Lens.lens (\DescribeRobotApplication' {application} -> application) (\s@DescribeRobotApplication' {} a -> s {application = a} :: DescribeRobotApplication)

instance Core.AWSRequest DescribeRobotApplication where
  type
    AWSResponse DescribeRobotApplication =
      DescribeRobotApplicationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeRobotApplicationResponse'
            Prelude.<$> (x Core..?> "lastUpdatedAt")
            Prelude.<*> (x Core..?> "arn")
            Prelude.<*> (x Core..?> "environment")
            Prelude.<*> (x Core..?> "sources" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "name")
            Prelude.<*> (x Core..?> "imageDigest")
            Prelude.<*> (x Core..?> "version")
            Prelude.<*> (x Core..?> "robotSoftwareSuite")
            Prelude.<*> (x Core..?> "revisionId")
            Prelude.<*> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeRobotApplication

instance Prelude.NFData DescribeRobotApplication

instance Core.ToHeaders DescribeRobotApplication where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeRobotApplication where
  toJSON DescribeRobotApplication' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("applicationVersion" Core..=)
              Prelude.<$> applicationVersion,
            Prelude.Just ("application" Core..= application)
          ]
      )

instance Core.ToPath DescribeRobotApplication where
  toPath = Prelude.const "/describeRobotApplication"

instance Core.ToQuery DescribeRobotApplication where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeRobotApplicationResponse' smart constructor.
data DescribeRobotApplicationResponse = DescribeRobotApplicationResponse'
  { -- | The time, in milliseconds since the epoch, when the robot application
    -- was last updated.
    lastUpdatedAt :: Prelude.Maybe Core.POSIX,
    -- | The Amazon Resource Name (ARN) of the robot application.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The object that contains the Docker image URI used to create the robot
    -- application.
    environment :: Prelude.Maybe Environment,
    -- | The sources of the robot application.
    sources :: Prelude.Maybe [Source],
    -- | The name of the robot application.
    name :: Prelude.Maybe Prelude.Text,
    -- | A SHA256 identifier for the Docker image that you use for your robot
    -- application.
    imageDigest :: Prelude.Maybe Prelude.Text,
    -- | The version of the robot application.
    version :: Prelude.Maybe Prelude.Text,
    -- | The robot software suite (ROS distribution) used by the robot
    -- application.
    robotSoftwareSuite :: Prelude.Maybe RobotSoftwareSuite,
    -- | The revision id of the robot application.
    revisionId :: Prelude.Maybe Prelude.Text,
    -- | The list of all tags added to the specified robot application.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeRobotApplicationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastUpdatedAt', 'describeRobotApplicationResponse_lastUpdatedAt' - The time, in milliseconds since the epoch, when the robot application
-- was last updated.
--
-- 'arn', 'describeRobotApplicationResponse_arn' - The Amazon Resource Name (ARN) of the robot application.
--
-- 'environment', 'describeRobotApplicationResponse_environment' - The object that contains the Docker image URI used to create the robot
-- application.
--
-- 'sources', 'describeRobotApplicationResponse_sources' - The sources of the robot application.
--
-- 'name', 'describeRobotApplicationResponse_name' - The name of the robot application.
--
-- 'imageDigest', 'describeRobotApplicationResponse_imageDigest' - A SHA256 identifier for the Docker image that you use for your robot
-- application.
--
-- 'version', 'describeRobotApplicationResponse_version' - The version of the robot application.
--
-- 'robotSoftwareSuite', 'describeRobotApplicationResponse_robotSoftwareSuite' - The robot software suite (ROS distribution) used by the robot
-- application.
--
-- 'revisionId', 'describeRobotApplicationResponse_revisionId' - The revision id of the robot application.
--
-- 'tags', 'describeRobotApplicationResponse_tags' - The list of all tags added to the specified robot application.
--
-- 'httpStatus', 'describeRobotApplicationResponse_httpStatus' - The response's http status code.
newDescribeRobotApplicationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeRobotApplicationResponse
newDescribeRobotApplicationResponse pHttpStatus_ =
  DescribeRobotApplicationResponse'
    { lastUpdatedAt =
        Prelude.Nothing,
      arn = Prelude.Nothing,
      environment = Prelude.Nothing,
      sources = Prelude.Nothing,
      name = Prelude.Nothing,
      imageDigest = Prelude.Nothing,
      version = Prelude.Nothing,
      robotSoftwareSuite = Prelude.Nothing,
      revisionId = Prelude.Nothing,
      tags = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The time, in milliseconds since the epoch, when the robot application
-- was last updated.
describeRobotApplicationResponse_lastUpdatedAt :: Lens.Lens' DescribeRobotApplicationResponse (Prelude.Maybe Prelude.UTCTime)
describeRobotApplicationResponse_lastUpdatedAt = Lens.lens (\DescribeRobotApplicationResponse' {lastUpdatedAt} -> lastUpdatedAt) (\s@DescribeRobotApplicationResponse' {} a -> s {lastUpdatedAt = a} :: DescribeRobotApplicationResponse) Prelude.. Lens.mapping Core._Time

-- | The Amazon Resource Name (ARN) of the robot application.
describeRobotApplicationResponse_arn :: Lens.Lens' DescribeRobotApplicationResponse (Prelude.Maybe Prelude.Text)
describeRobotApplicationResponse_arn = Lens.lens (\DescribeRobotApplicationResponse' {arn} -> arn) (\s@DescribeRobotApplicationResponse' {} a -> s {arn = a} :: DescribeRobotApplicationResponse)

-- | The object that contains the Docker image URI used to create the robot
-- application.
describeRobotApplicationResponse_environment :: Lens.Lens' DescribeRobotApplicationResponse (Prelude.Maybe Environment)
describeRobotApplicationResponse_environment = Lens.lens (\DescribeRobotApplicationResponse' {environment} -> environment) (\s@DescribeRobotApplicationResponse' {} a -> s {environment = a} :: DescribeRobotApplicationResponse)

-- | The sources of the robot application.
describeRobotApplicationResponse_sources :: Lens.Lens' DescribeRobotApplicationResponse (Prelude.Maybe [Source])
describeRobotApplicationResponse_sources = Lens.lens (\DescribeRobotApplicationResponse' {sources} -> sources) (\s@DescribeRobotApplicationResponse' {} a -> s {sources = a} :: DescribeRobotApplicationResponse) Prelude.. Lens.mapping Lens.coerced

-- | The name of the robot application.
describeRobotApplicationResponse_name :: Lens.Lens' DescribeRobotApplicationResponse (Prelude.Maybe Prelude.Text)
describeRobotApplicationResponse_name = Lens.lens (\DescribeRobotApplicationResponse' {name} -> name) (\s@DescribeRobotApplicationResponse' {} a -> s {name = a} :: DescribeRobotApplicationResponse)

-- | A SHA256 identifier for the Docker image that you use for your robot
-- application.
describeRobotApplicationResponse_imageDigest :: Lens.Lens' DescribeRobotApplicationResponse (Prelude.Maybe Prelude.Text)
describeRobotApplicationResponse_imageDigest = Lens.lens (\DescribeRobotApplicationResponse' {imageDigest} -> imageDigest) (\s@DescribeRobotApplicationResponse' {} a -> s {imageDigest = a} :: DescribeRobotApplicationResponse)

-- | The version of the robot application.
describeRobotApplicationResponse_version :: Lens.Lens' DescribeRobotApplicationResponse (Prelude.Maybe Prelude.Text)
describeRobotApplicationResponse_version = Lens.lens (\DescribeRobotApplicationResponse' {version} -> version) (\s@DescribeRobotApplicationResponse' {} a -> s {version = a} :: DescribeRobotApplicationResponse)

-- | The robot software suite (ROS distribution) used by the robot
-- application.
describeRobotApplicationResponse_robotSoftwareSuite :: Lens.Lens' DescribeRobotApplicationResponse (Prelude.Maybe RobotSoftwareSuite)
describeRobotApplicationResponse_robotSoftwareSuite = Lens.lens (\DescribeRobotApplicationResponse' {robotSoftwareSuite} -> robotSoftwareSuite) (\s@DescribeRobotApplicationResponse' {} a -> s {robotSoftwareSuite = a} :: DescribeRobotApplicationResponse)

-- | The revision id of the robot application.
describeRobotApplicationResponse_revisionId :: Lens.Lens' DescribeRobotApplicationResponse (Prelude.Maybe Prelude.Text)
describeRobotApplicationResponse_revisionId = Lens.lens (\DescribeRobotApplicationResponse' {revisionId} -> revisionId) (\s@DescribeRobotApplicationResponse' {} a -> s {revisionId = a} :: DescribeRobotApplicationResponse)

-- | The list of all tags added to the specified robot application.
describeRobotApplicationResponse_tags :: Lens.Lens' DescribeRobotApplicationResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
describeRobotApplicationResponse_tags = Lens.lens (\DescribeRobotApplicationResponse' {tags} -> tags) (\s@DescribeRobotApplicationResponse' {} a -> s {tags = a} :: DescribeRobotApplicationResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeRobotApplicationResponse_httpStatus :: Lens.Lens' DescribeRobotApplicationResponse Prelude.Int
describeRobotApplicationResponse_httpStatus = Lens.lens (\DescribeRobotApplicationResponse' {httpStatus} -> httpStatus) (\s@DescribeRobotApplicationResponse' {} a -> s {httpStatus = a} :: DescribeRobotApplicationResponse)

instance
  Prelude.NFData
    DescribeRobotApplicationResponse
