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
-- Module      : Network.AWS.Amplify.CreateApp
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Amplify app.
module Network.AWS.Amplify.CreateApp
  ( -- * Creating a Request
    CreateApp (..),
    newCreateApp,

    -- * Request Lenses
    createApp_enableBranchAutoBuild,
    createApp_oauthToken,
    createApp_accessToken,
    createApp_customHeaders,
    createApp_platform,
    createApp_basicAuthCredentials,
    createApp_repository,
    createApp_buildSpec,
    createApp_enableBranchAutoDeletion,
    createApp_customRules,
    createApp_iamServiceRoleArn,
    createApp_autoBranchCreationPatterns,
    createApp_autoBranchCreationConfig,
    createApp_environmentVariables,
    createApp_enableAutoBranchCreation,
    createApp_enableBasicAuth,
    createApp_description,
    createApp_tags,
    createApp_name,

    -- * Destructuring the Response
    CreateAppResponse (..),
    newCreateAppResponse,

    -- * Response Lenses
    createAppResponse_httpStatus,
    createAppResponse_app,
  )
where

import Network.AWS.Amplify.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The request structure used to create apps in Amplify.
--
-- /See:/ 'newCreateApp' smart constructor.
data CreateApp = CreateApp'
  { -- | Enables the auto building of branches for an Amplify app.
    enableBranchAutoBuild :: Prelude.Maybe Prelude.Bool,
    -- | The OAuth token for a third-party source control system for an Amplify
    -- app. The OAuth token is used to create a webhook and a read-only deploy
    -- key. The OAuth token is not stored.
    oauthToken :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The personal access token for a third-party source control system for an
    -- Amplify app. The personal access token is used to create a webhook and a
    -- read-only deploy key. The token is not stored.
    accessToken :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The custom HTTP headers for an Amplify app.
    customHeaders :: Prelude.Maybe Prelude.Text,
    -- | The platform or framework for an Amplify app.
    platform :: Prelude.Maybe Platform,
    -- | The credentials for basic authorization for an Amplify app.
    basicAuthCredentials :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The repository for an Amplify app.
    repository :: Prelude.Maybe Prelude.Text,
    -- | The build specification (build spec) for an Amplify app.
    buildSpec :: Prelude.Maybe Prelude.Text,
    -- | Automatically disconnects a branch in the Amplify Console when you
    -- delete a branch from your Git repository.
    enableBranchAutoDeletion :: Prelude.Maybe Prelude.Bool,
    -- | The custom rewrite and redirect rules for an Amplify app.
    customRules :: Prelude.Maybe [CustomRule],
    -- | The AWS Identity and Access Management (IAM) service role for an Amplify
    -- app.
    iamServiceRoleArn :: Prelude.Maybe Prelude.Text,
    -- | The automated branch creation glob patterns for an Amplify app.
    autoBranchCreationPatterns :: Prelude.Maybe [Prelude.Text],
    -- | The automated branch creation configuration for an Amplify app.
    autoBranchCreationConfig :: Prelude.Maybe AutoBranchCreationConfig,
    -- | The environment variables map for an Amplify app.
    environmentVariables :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Enables automated branch creation for an Amplify app.
    enableAutoBranchCreation :: Prelude.Maybe Prelude.Bool,
    -- | Enables basic authorization for an Amplify app. This will apply to all
    -- branches that are part of this app.
    enableBasicAuth :: Prelude.Maybe Prelude.Bool,
    -- | The description for an Amplify app.
    description :: Prelude.Maybe Prelude.Text,
    -- | The tag for an Amplify app.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name for an Amplify app.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateApp' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'enableBranchAutoBuild', 'createApp_enableBranchAutoBuild' - Enables the auto building of branches for an Amplify app.
--
-- 'oauthToken', 'createApp_oauthToken' - The OAuth token for a third-party source control system for an Amplify
-- app. The OAuth token is used to create a webhook and a read-only deploy
-- key. The OAuth token is not stored.
--
-- 'accessToken', 'createApp_accessToken' - The personal access token for a third-party source control system for an
-- Amplify app. The personal access token is used to create a webhook and a
-- read-only deploy key. The token is not stored.
--
-- 'customHeaders', 'createApp_customHeaders' - The custom HTTP headers for an Amplify app.
--
-- 'platform', 'createApp_platform' - The platform or framework for an Amplify app.
--
-- 'basicAuthCredentials', 'createApp_basicAuthCredentials' - The credentials for basic authorization for an Amplify app.
--
-- 'repository', 'createApp_repository' - The repository for an Amplify app.
--
-- 'buildSpec', 'createApp_buildSpec' - The build specification (build spec) for an Amplify app.
--
-- 'enableBranchAutoDeletion', 'createApp_enableBranchAutoDeletion' - Automatically disconnects a branch in the Amplify Console when you
-- delete a branch from your Git repository.
--
-- 'customRules', 'createApp_customRules' - The custom rewrite and redirect rules for an Amplify app.
--
-- 'iamServiceRoleArn', 'createApp_iamServiceRoleArn' - The AWS Identity and Access Management (IAM) service role for an Amplify
-- app.
--
-- 'autoBranchCreationPatterns', 'createApp_autoBranchCreationPatterns' - The automated branch creation glob patterns for an Amplify app.
--
-- 'autoBranchCreationConfig', 'createApp_autoBranchCreationConfig' - The automated branch creation configuration for an Amplify app.
--
-- 'environmentVariables', 'createApp_environmentVariables' - The environment variables map for an Amplify app.
--
-- 'enableAutoBranchCreation', 'createApp_enableAutoBranchCreation' - Enables automated branch creation for an Amplify app.
--
-- 'enableBasicAuth', 'createApp_enableBasicAuth' - Enables basic authorization for an Amplify app. This will apply to all
-- branches that are part of this app.
--
-- 'description', 'createApp_description' - The description for an Amplify app.
--
-- 'tags', 'createApp_tags' - The tag for an Amplify app.
--
-- 'name', 'createApp_name' - The name for an Amplify app.
newCreateApp ::
  -- | 'name'
  Prelude.Text ->
  CreateApp
newCreateApp pName_ =
  CreateApp'
    { enableBranchAutoBuild = Prelude.Nothing,
      oauthToken = Prelude.Nothing,
      accessToken = Prelude.Nothing,
      customHeaders = Prelude.Nothing,
      platform = Prelude.Nothing,
      basicAuthCredentials = Prelude.Nothing,
      repository = Prelude.Nothing,
      buildSpec = Prelude.Nothing,
      enableBranchAutoDeletion = Prelude.Nothing,
      customRules = Prelude.Nothing,
      iamServiceRoleArn = Prelude.Nothing,
      autoBranchCreationPatterns = Prelude.Nothing,
      autoBranchCreationConfig = Prelude.Nothing,
      environmentVariables = Prelude.Nothing,
      enableAutoBranchCreation = Prelude.Nothing,
      enableBasicAuth = Prelude.Nothing,
      description = Prelude.Nothing,
      tags = Prelude.Nothing,
      name = pName_
    }

-- | Enables the auto building of branches for an Amplify app.
createApp_enableBranchAutoBuild :: Lens.Lens' CreateApp (Prelude.Maybe Prelude.Bool)
createApp_enableBranchAutoBuild = Lens.lens (\CreateApp' {enableBranchAutoBuild} -> enableBranchAutoBuild) (\s@CreateApp' {} a -> s {enableBranchAutoBuild = a} :: CreateApp)

-- | The OAuth token for a third-party source control system for an Amplify
-- app. The OAuth token is used to create a webhook and a read-only deploy
-- key. The OAuth token is not stored.
createApp_oauthToken :: Lens.Lens' CreateApp (Prelude.Maybe Prelude.Text)
createApp_oauthToken = Lens.lens (\CreateApp' {oauthToken} -> oauthToken) (\s@CreateApp' {} a -> s {oauthToken = a} :: CreateApp) Prelude.. Lens.mapping Core._Sensitive

-- | The personal access token for a third-party source control system for an
-- Amplify app. The personal access token is used to create a webhook and a
-- read-only deploy key. The token is not stored.
createApp_accessToken :: Lens.Lens' CreateApp (Prelude.Maybe Prelude.Text)
createApp_accessToken = Lens.lens (\CreateApp' {accessToken} -> accessToken) (\s@CreateApp' {} a -> s {accessToken = a} :: CreateApp) Prelude.. Lens.mapping Core._Sensitive

-- | The custom HTTP headers for an Amplify app.
createApp_customHeaders :: Lens.Lens' CreateApp (Prelude.Maybe Prelude.Text)
createApp_customHeaders = Lens.lens (\CreateApp' {customHeaders} -> customHeaders) (\s@CreateApp' {} a -> s {customHeaders = a} :: CreateApp)

-- | The platform or framework for an Amplify app.
createApp_platform :: Lens.Lens' CreateApp (Prelude.Maybe Platform)
createApp_platform = Lens.lens (\CreateApp' {platform} -> platform) (\s@CreateApp' {} a -> s {platform = a} :: CreateApp)

-- | The credentials for basic authorization for an Amplify app.
createApp_basicAuthCredentials :: Lens.Lens' CreateApp (Prelude.Maybe Prelude.Text)
createApp_basicAuthCredentials = Lens.lens (\CreateApp' {basicAuthCredentials} -> basicAuthCredentials) (\s@CreateApp' {} a -> s {basicAuthCredentials = a} :: CreateApp) Prelude.. Lens.mapping Core._Sensitive

-- | The repository for an Amplify app.
createApp_repository :: Lens.Lens' CreateApp (Prelude.Maybe Prelude.Text)
createApp_repository = Lens.lens (\CreateApp' {repository} -> repository) (\s@CreateApp' {} a -> s {repository = a} :: CreateApp)

-- | The build specification (build spec) for an Amplify app.
createApp_buildSpec :: Lens.Lens' CreateApp (Prelude.Maybe Prelude.Text)
createApp_buildSpec = Lens.lens (\CreateApp' {buildSpec} -> buildSpec) (\s@CreateApp' {} a -> s {buildSpec = a} :: CreateApp)

-- | Automatically disconnects a branch in the Amplify Console when you
-- delete a branch from your Git repository.
createApp_enableBranchAutoDeletion :: Lens.Lens' CreateApp (Prelude.Maybe Prelude.Bool)
createApp_enableBranchAutoDeletion = Lens.lens (\CreateApp' {enableBranchAutoDeletion} -> enableBranchAutoDeletion) (\s@CreateApp' {} a -> s {enableBranchAutoDeletion = a} :: CreateApp)

-- | The custom rewrite and redirect rules for an Amplify app.
createApp_customRules :: Lens.Lens' CreateApp (Prelude.Maybe [CustomRule])
createApp_customRules = Lens.lens (\CreateApp' {customRules} -> customRules) (\s@CreateApp' {} a -> s {customRules = a} :: CreateApp) Prelude.. Lens.mapping Lens.coerced

-- | The AWS Identity and Access Management (IAM) service role for an Amplify
-- app.
createApp_iamServiceRoleArn :: Lens.Lens' CreateApp (Prelude.Maybe Prelude.Text)
createApp_iamServiceRoleArn = Lens.lens (\CreateApp' {iamServiceRoleArn} -> iamServiceRoleArn) (\s@CreateApp' {} a -> s {iamServiceRoleArn = a} :: CreateApp)

-- | The automated branch creation glob patterns for an Amplify app.
createApp_autoBranchCreationPatterns :: Lens.Lens' CreateApp (Prelude.Maybe [Prelude.Text])
createApp_autoBranchCreationPatterns = Lens.lens (\CreateApp' {autoBranchCreationPatterns} -> autoBranchCreationPatterns) (\s@CreateApp' {} a -> s {autoBranchCreationPatterns = a} :: CreateApp) Prelude.. Lens.mapping Lens.coerced

-- | The automated branch creation configuration for an Amplify app.
createApp_autoBranchCreationConfig :: Lens.Lens' CreateApp (Prelude.Maybe AutoBranchCreationConfig)
createApp_autoBranchCreationConfig = Lens.lens (\CreateApp' {autoBranchCreationConfig} -> autoBranchCreationConfig) (\s@CreateApp' {} a -> s {autoBranchCreationConfig = a} :: CreateApp)

-- | The environment variables map for an Amplify app.
createApp_environmentVariables :: Lens.Lens' CreateApp (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createApp_environmentVariables = Lens.lens (\CreateApp' {environmentVariables} -> environmentVariables) (\s@CreateApp' {} a -> s {environmentVariables = a} :: CreateApp) Prelude.. Lens.mapping Lens.coerced

-- | Enables automated branch creation for an Amplify app.
createApp_enableAutoBranchCreation :: Lens.Lens' CreateApp (Prelude.Maybe Prelude.Bool)
createApp_enableAutoBranchCreation = Lens.lens (\CreateApp' {enableAutoBranchCreation} -> enableAutoBranchCreation) (\s@CreateApp' {} a -> s {enableAutoBranchCreation = a} :: CreateApp)

-- | Enables basic authorization for an Amplify app. This will apply to all
-- branches that are part of this app.
createApp_enableBasicAuth :: Lens.Lens' CreateApp (Prelude.Maybe Prelude.Bool)
createApp_enableBasicAuth = Lens.lens (\CreateApp' {enableBasicAuth} -> enableBasicAuth) (\s@CreateApp' {} a -> s {enableBasicAuth = a} :: CreateApp)

-- | The description for an Amplify app.
createApp_description :: Lens.Lens' CreateApp (Prelude.Maybe Prelude.Text)
createApp_description = Lens.lens (\CreateApp' {description} -> description) (\s@CreateApp' {} a -> s {description = a} :: CreateApp)

-- | The tag for an Amplify app.
createApp_tags :: Lens.Lens' CreateApp (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createApp_tags = Lens.lens (\CreateApp' {tags} -> tags) (\s@CreateApp' {} a -> s {tags = a} :: CreateApp) Prelude.. Lens.mapping Lens.coerced

-- | The name for an Amplify app.
createApp_name :: Lens.Lens' CreateApp Prelude.Text
createApp_name = Lens.lens (\CreateApp' {name} -> name) (\s@CreateApp' {} a -> s {name = a} :: CreateApp)

instance Core.AWSRequest CreateApp where
  type AWSResponse CreateApp = CreateAppResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateAppResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "app")
      )

instance Prelude.Hashable CreateApp

instance Prelude.NFData CreateApp

instance Core.ToHeaders CreateApp where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateApp where
  toJSON CreateApp' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("enableBranchAutoBuild" Core..=)
              Prelude.<$> enableBranchAutoBuild,
            ("oauthToken" Core..=) Prelude.<$> oauthToken,
            ("accessToken" Core..=) Prelude.<$> accessToken,
            ("customHeaders" Core..=) Prelude.<$> customHeaders,
            ("platform" Core..=) Prelude.<$> platform,
            ("basicAuthCredentials" Core..=)
              Prelude.<$> basicAuthCredentials,
            ("repository" Core..=) Prelude.<$> repository,
            ("buildSpec" Core..=) Prelude.<$> buildSpec,
            ("enableBranchAutoDeletion" Core..=)
              Prelude.<$> enableBranchAutoDeletion,
            ("customRules" Core..=) Prelude.<$> customRules,
            ("iamServiceRoleArn" Core..=)
              Prelude.<$> iamServiceRoleArn,
            ("autoBranchCreationPatterns" Core..=)
              Prelude.<$> autoBranchCreationPatterns,
            ("autoBranchCreationConfig" Core..=)
              Prelude.<$> autoBranchCreationConfig,
            ("environmentVariables" Core..=)
              Prelude.<$> environmentVariables,
            ("enableAutoBranchCreation" Core..=)
              Prelude.<$> enableAutoBranchCreation,
            ("enableBasicAuth" Core..=)
              Prelude.<$> enableBasicAuth,
            ("description" Core..=) Prelude.<$> description,
            ("tags" Core..=) Prelude.<$> tags,
            Prelude.Just ("name" Core..= name)
          ]
      )

instance Core.ToPath CreateApp where
  toPath = Prelude.const "/apps"

instance Core.ToQuery CreateApp where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateAppResponse' smart constructor.
data CreateAppResponse = CreateAppResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    app :: App
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateAppResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createAppResponse_httpStatus' - The response's http status code.
--
-- 'app', 'createAppResponse_app' - Undocumented member.
newCreateAppResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'app'
  App ->
  CreateAppResponse
newCreateAppResponse pHttpStatus_ pApp_ =
  CreateAppResponse'
    { httpStatus = pHttpStatus_,
      app = pApp_
    }

-- | The response's http status code.
createAppResponse_httpStatus :: Lens.Lens' CreateAppResponse Prelude.Int
createAppResponse_httpStatus = Lens.lens (\CreateAppResponse' {httpStatus} -> httpStatus) (\s@CreateAppResponse' {} a -> s {httpStatus = a} :: CreateAppResponse)

-- | Undocumented member.
createAppResponse_app :: Lens.Lens' CreateAppResponse App
createAppResponse_app = Lens.lens (\CreateAppResponse' {app} -> app) (\s@CreateAppResponse' {} a -> s {app = a} :: CreateAppResponse)

instance Prelude.NFData CreateAppResponse
