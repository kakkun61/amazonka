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
-- Module      : Network.AWS.IoT1ClickProjects.DescribeProject
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an object describing a project.
module Network.AWS.IoT1ClickProjects.DescribeProject
  ( -- * Creating a Request
    DescribeProject (..),
    newDescribeProject,

    -- * Request Lenses
    describeProject_projectName,

    -- * Destructuring the Response
    DescribeProjectResponse (..),
    newDescribeProjectResponse,

    -- * Response Lenses
    describeProjectResponse_httpStatus,
    describeProjectResponse_project,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoT1ClickProjects.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeProject' smart constructor.
data DescribeProject = DescribeProject'
  { -- | The name of the project to be described.
    projectName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeProject' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'projectName', 'describeProject_projectName' - The name of the project to be described.
newDescribeProject ::
  -- | 'projectName'
  Prelude.Text ->
  DescribeProject
newDescribeProject pProjectName_ =
  DescribeProject' {projectName = pProjectName_}

-- | The name of the project to be described.
describeProject_projectName :: Lens.Lens' DescribeProject Prelude.Text
describeProject_projectName = Lens.lens (\DescribeProject' {projectName} -> projectName) (\s@DescribeProject' {} a -> s {projectName = a} :: DescribeProject)

instance Core.AWSRequest DescribeProject where
  type
    AWSResponse DescribeProject =
      DescribeProjectResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeProjectResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "project")
      )

instance Prelude.Hashable DescribeProject

instance Prelude.NFData DescribeProject

instance Core.ToHeaders DescribeProject where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeProject where
  toPath DescribeProject' {..} =
    Prelude.mconcat
      ["/projects/", Core.toBS projectName]

instance Core.ToQuery DescribeProject where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeProjectResponse' smart constructor.
data DescribeProjectResponse = DescribeProjectResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | An object describing the project.
    project :: ProjectDescription
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeProjectResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'describeProjectResponse_httpStatus' - The response's http status code.
--
-- 'project', 'describeProjectResponse_project' - An object describing the project.
newDescribeProjectResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'project'
  ProjectDescription ->
  DescribeProjectResponse
newDescribeProjectResponse pHttpStatus_ pProject_ =
  DescribeProjectResponse'
    { httpStatus = pHttpStatus_,
      project = pProject_
    }

-- | The response's http status code.
describeProjectResponse_httpStatus :: Lens.Lens' DescribeProjectResponse Prelude.Int
describeProjectResponse_httpStatus = Lens.lens (\DescribeProjectResponse' {httpStatus} -> httpStatus) (\s@DescribeProjectResponse' {} a -> s {httpStatus = a} :: DescribeProjectResponse)

-- | An object describing the project.
describeProjectResponse_project :: Lens.Lens' DescribeProjectResponse ProjectDescription
describeProjectResponse_project = Lens.lens (\DescribeProjectResponse' {project} -> project) (\s@DescribeProjectResponse' {} a -> s {project = a} :: DescribeProjectResponse)

instance Prelude.NFData DescribeProjectResponse
