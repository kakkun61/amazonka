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
-- Module      : Network.AWS.Amplify.UpdateBranch
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a branch for an Amplify app.
module Network.AWS.Amplify.UpdateBranch
  ( -- * Creating a Request
    UpdateBranch (..),
    newUpdateBranch,

    -- * Request Lenses
    updateBranch_framework,
    updateBranch_ttl,
    updateBranch_enableNotification,
    updateBranch_stage,
    updateBranch_backendEnvironmentArn,
    updateBranch_enablePullRequestPreview,
    updateBranch_basicAuthCredentials,
    updateBranch_buildSpec,
    updateBranch_enablePerformanceMode,
    updateBranch_displayName,
    updateBranch_environmentVariables,
    updateBranch_enableAutoBuild,
    updateBranch_enableBasicAuth,
    updateBranch_pullRequestEnvironmentName,
    updateBranch_description,
    updateBranch_appId,
    updateBranch_branchName,

    -- * Destructuring the Response
    UpdateBranchResponse (..),
    newUpdateBranchResponse,

    -- * Response Lenses
    updateBranchResponse_httpStatus,
    updateBranchResponse_branch,
  )
where

import Network.AWS.Amplify.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The request structure for the update branch request.
--
-- /See:/ 'newUpdateBranch' smart constructor.
data UpdateBranch = UpdateBranch'
  { -- | The framework for the branch.
    framework :: Prelude.Maybe Prelude.Text,
    -- | The content Time to Live (TTL) for the website in seconds.
    ttl :: Prelude.Maybe Prelude.Text,
    -- | Enables notifications for the branch.
    enableNotification :: Prelude.Maybe Prelude.Bool,
    -- | Describes the current stage for the branch.
    stage :: Prelude.Maybe Stage,
    -- | The Amazon Resource Name (ARN) for a backend environment that is part of
    -- an Amplify app.
    backendEnvironmentArn :: Prelude.Maybe Prelude.Text,
    -- | Enables pull request previews for this branch.
    enablePullRequestPreview :: Prelude.Maybe Prelude.Bool,
    -- | The basic authorization credentials for the branch.
    basicAuthCredentials :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The build specification (build spec) for the branch.
    buildSpec :: Prelude.Maybe Prelude.Text,
    -- | Enables performance mode for the branch.
    --
    -- Performance mode optimizes for faster hosting performance by keeping
    -- content cached at the edge for a longer interval. When performance mode
    -- is enabled, hosting configuration or code changes can take up to 10
    -- minutes to roll out.
    enablePerformanceMode :: Prelude.Maybe Prelude.Bool,
    -- | The display name for a branch. This is used as the default domain
    -- prefix.
    displayName :: Prelude.Maybe Prelude.Text,
    -- | The environment variables for the branch.
    environmentVariables :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Enables auto building for the branch.
    enableAutoBuild :: Prelude.Maybe Prelude.Bool,
    -- | Enables basic authorization for the branch.
    enableBasicAuth :: Prelude.Maybe Prelude.Bool,
    -- | The Amplify environment name for the pull request.
    pullRequestEnvironmentName :: Prelude.Maybe Prelude.Text,
    -- | The description for the branch.
    description :: Prelude.Maybe Prelude.Text,
    -- | The unique ID for an Amplify app.
    appId :: Prelude.Text,
    -- | The name for the branch.
    branchName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateBranch' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'framework', 'updateBranch_framework' - The framework for the branch.
--
-- 'ttl', 'updateBranch_ttl' - The content Time to Live (TTL) for the website in seconds.
--
-- 'enableNotification', 'updateBranch_enableNotification' - Enables notifications for the branch.
--
-- 'stage', 'updateBranch_stage' - Describes the current stage for the branch.
--
-- 'backendEnvironmentArn', 'updateBranch_backendEnvironmentArn' - The Amazon Resource Name (ARN) for a backend environment that is part of
-- an Amplify app.
--
-- 'enablePullRequestPreview', 'updateBranch_enablePullRequestPreview' - Enables pull request previews for this branch.
--
-- 'basicAuthCredentials', 'updateBranch_basicAuthCredentials' - The basic authorization credentials for the branch.
--
-- 'buildSpec', 'updateBranch_buildSpec' - The build specification (build spec) for the branch.
--
-- 'enablePerformanceMode', 'updateBranch_enablePerformanceMode' - Enables performance mode for the branch.
--
-- Performance mode optimizes for faster hosting performance by keeping
-- content cached at the edge for a longer interval. When performance mode
-- is enabled, hosting configuration or code changes can take up to 10
-- minutes to roll out.
--
-- 'displayName', 'updateBranch_displayName' - The display name for a branch. This is used as the default domain
-- prefix.
--
-- 'environmentVariables', 'updateBranch_environmentVariables' - The environment variables for the branch.
--
-- 'enableAutoBuild', 'updateBranch_enableAutoBuild' - Enables auto building for the branch.
--
-- 'enableBasicAuth', 'updateBranch_enableBasicAuth' - Enables basic authorization for the branch.
--
-- 'pullRequestEnvironmentName', 'updateBranch_pullRequestEnvironmentName' - The Amplify environment name for the pull request.
--
-- 'description', 'updateBranch_description' - The description for the branch.
--
-- 'appId', 'updateBranch_appId' - The unique ID for an Amplify app.
--
-- 'branchName', 'updateBranch_branchName' - The name for the branch.
newUpdateBranch ::
  -- | 'appId'
  Prelude.Text ->
  -- | 'branchName'
  Prelude.Text ->
  UpdateBranch
newUpdateBranch pAppId_ pBranchName_ =
  UpdateBranch'
    { framework = Prelude.Nothing,
      ttl = Prelude.Nothing,
      enableNotification = Prelude.Nothing,
      stage = Prelude.Nothing,
      backendEnvironmentArn = Prelude.Nothing,
      enablePullRequestPreview = Prelude.Nothing,
      basicAuthCredentials = Prelude.Nothing,
      buildSpec = Prelude.Nothing,
      enablePerformanceMode = Prelude.Nothing,
      displayName = Prelude.Nothing,
      environmentVariables = Prelude.Nothing,
      enableAutoBuild = Prelude.Nothing,
      enableBasicAuth = Prelude.Nothing,
      pullRequestEnvironmentName = Prelude.Nothing,
      description = Prelude.Nothing,
      appId = pAppId_,
      branchName = pBranchName_
    }

-- | The framework for the branch.
updateBranch_framework :: Lens.Lens' UpdateBranch (Prelude.Maybe Prelude.Text)
updateBranch_framework = Lens.lens (\UpdateBranch' {framework} -> framework) (\s@UpdateBranch' {} a -> s {framework = a} :: UpdateBranch)

-- | The content Time to Live (TTL) for the website in seconds.
updateBranch_ttl :: Lens.Lens' UpdateBranch (Prelude.Maybe Prelude.Text)
updateBranch_ttl = Lens.lens (\UpdateBranch' {ttl} -> ttl) (\s@UpdateBranch' {} a -> s {ttl = a} :: UpdateBranch)

-- | Enables notifications for the branch.
updateBranch_enableNotification :: Lens.Lens' UpdateBranch (Prelude.Maybe Prelude.Bool)
updateBranch_enableNotification = Lens.lens (\UpdateBranch' {enableNotification} -> enableNotification) (\s@UpdateBranch' {} a -> s {enableNotification = a} :: UpdateBranch)

-- | Describes the current stage for the branch.
updateBranch_stage :: Lens.Lens' UpdateBranch (Prelude.Maybe Stage)
updateBranch_stage = Lens.lens (\UpdateBranch' {stage} -> stage) (\s@UpdateBranch' {} a -> s {stage = a} :: UpdateBranch)

-- | The Amazon Resource Name (ARN) for a backend environment that is part of
-- an Amplify app.
updateBranch_backendEnvironmentArn :: Lens.Lens' UpdateBranch (Prelude.Maybe Prelude.Text)
updateBranch_backendEnvironmentArn = Lens.lens (\UpdateBranch' {backendEnvironmentArn} -> backendEnvironmentArn) (\s@UpdateBranch' {} a -> s {backendEnvironmentArn = a} :: UpdateBranch)

-- | Enables pull request previews for this branch.
updateBranch_enablePullRequestPreview :: Lens.Lens' UpdateBranch (Prelude.Maybe Prelude.Bool)
updateBranch_enablePullRequestPreview = Lens.lens (\UpdateBranch' {enablePullRequestPreview} -> enablePullRequestPreview) (\s@UpdateBranch' {} a -> s {enablePullRequestPreview = a} :: UpdateBranch)

-- | The basic authorization credentials for the branch.
updateBranch_basicAuthCredentials :: Lens.Lens' UpdateBranch (Prelude.Maybe Prelude.Text)
updateBranch_basicAuthCredentials = Lens.lens (\UpdateBranch' {basicAuthCredentials} -> basicAuthCredentials) (\s@UpdateBranch' {} a -> s {basicAuthCredentials = a} :: UpdateBranch) Prelude.. Lens.mapping Core._Sensitive

-- | The build specification (build spec) for the branch.
updateBranch_buildSpec :: Lens.Lens' UpdateBranch (Prelude.Maybe Prelude.Text)
updateBranch_buildSpec = Lens.lens (\UpdateBranch' {buildSpec} -> buildSpec) (\s@UpdateBranch' {} a -> s {buildSpec = a} :: UpdateBranch)

-- | Enables performance mode for the branch.
--
-- Performance mode optimizes for faster hosting performance by keeping
-- content cached at the edge for a longer interval. When performance mode
-- is enabled, hosting configuration or code changes can take up to 10
-- minutes to roll out.
updateBranch_enablePerformanceMode :: Lens.Lens' UpdateBranch (Prelude.Maybe Prelude.Bool)
updateBranch_enablePerformanceMode = Lens.lens (\UpdateBranch' {enablePerformanceMode} -> enablePerformanceMode) (\s@UpdateBranch' {} a -> s {enablePerformanceMode = a} :: UpdateBranch)

-- | The display name for a branch. This is used as the default domain
-- prefix.
updateBranch_displayName :: Lens.Lens' UpdateBranch (Prelude.Maybe Prelude.Text)
updateBranch_displayName = Lens.lens (\UpdateBranch' {displayName} -> displayName) (\s@UpdateBranch' {} a -> s {displayName = a} :: UpdateBranch)

-- | The environment variables for the branch.
updateBranch_environmentVariables :: Lens.Lens' UpdateBranch (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
updateBranch_environmentVariables = Lens.lens (\UpdateBranch' {environmentVariables} -> environmentVariables) (\s@UpdateBranch' {} a -> s {environmentVariables = a} :: UpdateBranch) Prelude.. Lens.mapping Lens.coerced

-- | Enables auto building for the branch.
updateBranch_enableAutoBuild :: Lens.Lens' UpdateBranch (Prelude.Maybe Prelude.Bool)
updateBranch_enableAutoBuild = Lens.lens (\UpdateBranch' {enableAutoBuild} -> enableAutoBuild) (\s@UpdateBranch' {} a -> s {enableAutoBuild = a} :: UpdateBranch)

-- | Enables basic authorization for the branch.
updateBranch_enableBasicAuth :: Lens.Lens' UpdateBranch (Prelude.Maybe Prelude.Bool)
updateBranch_enableBasicAuth = Lens.lens (\UpdateBranch' {enableBasicAuth} -> enableBasicAuth) (\s@UpdateBranch' {} a -> s {enableBasicAuth = a} :: UpdateBranch)

-- | The Amplify environment name for the pull request.
updateBranch_pullRequestEnvironmentName :: Lens.Lens' UpdateBranch (Prelude.Maybe Prelude.Text)
updateBranch_pullRequestEnvironmentName = Lens.lens (\UpdateBranch' {pullRequestEnvironmentName} -> pullRequestEnvironmentName) (\s@UpdateBranch' {} a -> s {pullRequestEnvironmentName = a} :: UpdateBranch)

-- | The description for the branch.
updateBranch_description :: Lens.Lens' UpdateBranch (Prelude.Maybe Prelude.Text)
updateBranch_description = Lens.lens (\UpdateBranch' {description} -> description) (\s@UpdateBranch' {} a -> s {description = a} :: UpdateBranch)

-- | The unique ID for an Amplify app.
updateBranch_appId :: Lens.Lens' UpdateBranch Prelude.Text
updateBranch_appId = Lens.lens (\UpdateBranch' {appId} -> appId) (\s@UpdateBranch' {} a -> s {appId = a} :: UpdateBranch)

-- | The name for the branch.
updateBranch_branchName :: Lens.Lens' UpdateBranch Prelude.Text
updateBranch_branchName = Lens.lens (\UpdateBranch' {branchName} -> branchName) (\s@UpdateBranch' {} a -> s {branchName = a} :: UpdateBranch)

instance Core.AWSRequest UpdateBranch where
  type AWSResponse UpdateBranch = UpdateBranchResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateBranchResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "branch")
      )

instance Prelude.Hashable UpdateBranch

instance Prelude.NFData UpdateBranch

instance Core.ToHeaders UpdateBranch where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateBranch where
  toJSON UpdateBranch' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("framework" Core..=) Prelude.<$> framework,
            ("ttl" Core..=) Prelude.<$> ttl,
            ("enableNotification" Core..=)
              Prelude.<$> enableNotification,
            ("stage" Core..=) Prelude.<$> stage,
            ("backendEnvironmentArn" Core..=)
              Prelude.<$> backendEnvironmentArn,
            ("enablePullRequestPreview" Core..=)
              Prelude.<$> enablePullRequestPreview,
            ("basicAuthCredentials" Core..=)
              Prelude.<$> basicAuthCredentials,
            ("buildSpec" Core..=) Prelude.<$> buildSpec,
            ("enablePerformanceMode" Core..=)
              Prelude.<$> enablePerformanceMode,
            ("displayName" Core..=) Prelude.<$> displayName,
            ("environmentVariables" Core..=)
              Prelude.<$> environmentVariables,
            ("enableAutoBuild" Core..=)
              Prelude.<$> enableAutoBuild,
            ("enableBasicAuth" Core..=)
              Prelude.<$> enableBasicAuth,
            ("pullRequestEnvironmentName" Core..=)
              Prelude.<$> pullRequestEnvironmentName,
            ("description" Core..=) Prelude.<$> description
          ]
      )

instance Core.ToPath UpdateBranch where
  toPath UpdateBranch' {..} =
    Prelude.mconcat
      [ "/apps/",
        Core.toBS appId,
        "/branches/",
        Core.toBS branchName
      ]

instance Core.ToQuery UpdateBranch where
  toQuery = Prelude.const Prelude.mempty

-- | The result structure for the update branch request.
--
-- /See:/ 'newUpdateBranchResponse' smart constructor.
data UpdateBranchResponse = UpdateBranchResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The branch for an Amplify app, which maps to a third-party repository
    -- branch.
    branch :: Branch
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateBranchResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateBranchResponse_httpStatus' - The response's http status code.
--
-- 'branch', 'updateBranchResponse_branch' - The branch for an Amplify app, which maps to a third-party repository
-- branch.
newUpdateBranchResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'branch'
  Branch ->
  UpdateBranchResponse
newUpdateBranchResponse pHttpStatus_ pBranch_ =
  UpdateBranchResponse'
    { httpStatus = pHttpStatus_,
      branch = pBranch_
    }

-- | The response's http status code.
updateBranchResponse_httpStatus :: Lens.Lens' UpdateBranchResponse Prelude.Int
updateBranchResponse_httpStatus = Lens.lens (\UpdateBranchResponse' {httpStatus} -> httpStatus) (\s@UpdateBranchResponse' {} a -> s {httpStatus = a} :: UpdateBranchResponse)

-- | The branch for an Amplify app, which maps to a third-party repository
-- branch.
updateBranchResponse_branch :: Lens.Lens' UpdateBranchResponse Branch
updateBranchResponse_branch = Lens.lens (\UpdateBranchResponse' {branch} -> branch) (\s@UpdateBranchResponse' {} a -> s {branch = a} :: UpdateBranchResponse)

instance Prelude.NFData UpdateBranchResponse
