{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppSync.Types.GraphqlApi
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.GraphqlApi where

import Network.AWS.AppSync.Types.AdditionalAuthenticationProvider
import Network.AWS.AppSync.Types.AuthenticationType
import Network.AWS.AppSync.Types.LambdaAuthorizerConfig
import Network.AWS.AppSync.Types.LogConfig
import Network.AWS.AppSync.Types.OpenIDConnectConfig
import Network.AWS.AppSync.Types.UserPoolConfig
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes a GraphQL API.
--
-- /See:/ 'newGraphqlApi' smart constructor.
data GraphqlApi = GraphqlApi'
  { -- | A flag representing whether X-Ray tracing is enabled for this
    -- @GraphqlApi@.
    xrayEnabled :: Prelude.Maybe Prelude.Bool,
    -- | The ARN.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The API ID.
    apiId :: Prelude.Maybe Prelude.Text,
    -- | The URIs.
    uris :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The OpenID Connect configuration.
    openIDConnectConfig :: Prelude.Maybe OpenIDConnectConfig,
    -- | The ARN of the WAF ACL associated with this @GraphqlApi@, if one exists.
    wafWebAclArn :: Prelude.Maybe Prelude.Text,
    -- | A list of additional authentication providers for the @GraphqlApi@ API.
    additionalAuthenticationProviders :: Prelude.Maybe [AdditionalAuthenticationProvider],
    -- | Configuration for Amazon Web Services Lambda function authorization.
    lambdaAuthorizerConfig :: Prelude.Maybe LambdaAuthorizerConfig,
    -- | The API name.
    name :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Cognito user pool configuration.
    userPoolConfig :: Prelude.Maybe UserPoolConfig,
    -- | The authentication type.
    authenticationType :: Prelude.Maybe AuthenticationType,
    -- | The Amazon CloudWatch Logs configuration.
    logConfig :: Prelude.Maybe LogConfig,
    -- | The tags.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GraphqlApi' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'xrayEnabled', 'graphqlApi_xrayEnabled' - A flag representing whether X-Ray tracing is enabled for this
-- @GraphqlApi@.
--
-- 'arn', 'graphqlApi_arn' - The ARN.
--
-- 'apiId', 'graphqlApi_apiId' - The API ID.
--
-- 'uris', 'graphqlApi_uris' - The URIs.
--
-- 'openIDConnectConfig', 'graphqlApi_openIDConnectConfig' - The OpenID Connect configuration.
--
-- 'wafWebAclArn', 'graphqlApi_wafWebAclArn' - The ARN of the WAF ACL associated with this @GraphqlApi@, if one exists.
--
-- 'additionalAuthenticationProviders', 'graphqlApi_additionalAuthenticationProviders' - A list of additional authentication providers for the @GraphqlApi@ API.
--
-- 'lambdaAuthorizerConfig', 'graphqlApi_lambdaAuthorizerConfig' - Configuration for Amazon Web Services Lambda function authorization.
--
-- 'name', 'graphqlApi_name' - The API name.
--
-- 'userPoolConfig', 'graphqlApi_userPoolConfig' - The Amazon Cognito user pool configuration.
--
-- 'authenticationType', 'graphqlApi_authenticationType' - The authentication type.
--
-- 'logConfig', 'graphqlApi_logConfig' - The Amazon CloudWatch Logs configuration.
--
-- 'tags', 'graphqlApi_tags' - The tags.
newGraphqlApi ::
  GraphqlApi
newGraphqlApi =
  GraphqlApi'
    { xrayEnabled = Prelude.Nothing,
      arn = Prelude.Nothing,
      apiId = Prelude.Nothing,
      uris = Prelude.Nothing,
      openIDConnectConfig = Prelude.Nothing,
      wafWebAclArn = Prelude.Nothing,
      additionalAuthenticationProviders = Prelude.Nothing,
      lambdaAuthorizerConfig = Prelude.Nothing,
      name = Prelude.Nothing,
      userPoolConfig = Prelude.Nothing,
      authenticationType = Prelude.Nothing,
      logConfig = Prelude.Nothing,
      tags = Prelude.Nothing
    }

-- | A flag representing whether X-Ray tracing is enabled for this
-- @GraphqlApi@.
graphqlApi_xrayEnabled :: Lens.Lens' GraphqlApi (Prelude.Maybe Prelude.Bool)
graphqlApi_xrayEnabled = Lens.lens (\GraphqlApi' {xrayEnabled} -> xrayEnabled) (\s@GraphqlApi' {} a -> s {xrayEnabled = a} :: GraphqlApi)

-- | The ARN.
graphqlApi_arn :: Lens.Lens' GraphqlApi (Prelude.Maybe Prelude.Text)
graphqlApi_arn = Lens.lens (\GraphqlApi' {arn} -> arn) (\s@GraphqlApi' {} a -> s {arn = a} :: GraphqlApi)

-- | The API ID.
graphqlApi_apiId :: Lens.Lens' GraphqlApi (Prelude.Maybe Prelude.Text)
graphqlApi_apiId = Lens.lens (\GraphqlApi' {apiId} -> apiId) (\s@GraphqlApi' {} a -> s {apiId = a} :: GraphqlApi)

-- | The URIs.
graphqlApi_uris :: Lens.Lens' GraphqlApi (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
graphqlApi_uris = Lens.lens (\GraphqlApi' {uris} -> uris) (\s@GraphqlApi' {} a -> s {uris = a} :: GraphqlApi) Prelude.. Lens.mapping Lens.coerced

-- | The OpenID Connect configuration.
graphqlApi_openIDConnectConfig :: Lens.Lens' GraphqlApi (Prelude.Maybe OpenIDConnectConfig)
graphqlApi_openIDConnectConfig = Lens.lens (\GraphqlApi' {openIDConnectConfig} -> openIDConnectConfig) (\s@GraphqlApi' {} a -> s {openIDConnectConfig = a} :: GraphqlApi)

-- | The ARN of the WAF ACL associated with this @GraphqlApi@, if one exists.
graphqlApi_wafWebAclArn :: Lens.Lens' GraphqlApi (Prelude.Maybe Prelude.Text)
graphqlApi_wafWebAclArn = Lens.lens (\GraphqlApi' {wafWebAclArn} -> wafWebAclArn) (\s@GraphqlApi' {} a -> s {wafWebAclArn = a} :: GraphqlApi)

-- | A list of additional authentication providers for the @GraphqlApi@ API.
graphqlApi_additionalAuthenticationProviders :: Lens.Lens' GraphqlApi (Prelude.Maybe [AdditionalAuthenticationProvider])
graphqlApi_additionalAuthenticationProviders = Lens.lens (\GraphqlApi' {additionalAuthenticationProviders} -> additionalAuthenticationProviders) (\s@GraphqlApi' {} a -> s {additionalAuthenticationProviders = a} :: GraphqlApi) Prelude.. Lens.mapping Lens.coerced

-- | Configuration for Amazon Web Services Lambda function authorization.
graphqlApi_lambdaAuthorizerConfig :: Lens.Lens' GraphqlApi (Prelude.Maybe LambdaAuthorizerConfig)
graphqlApi_lambdaAuthorizerConfig = Lens.lens (\GraphqlApi' {lambdaAuthorizerConfig} -> lambdaAuthorizerConfig) (\s@GraphqlApi' {} a -> s {lambdaAuthorizerConfig = a} :: GraphqlApi)

-- | The API name.
graphqlApi_name :: Lens.Lens' GraphqlApi (Prelude.Maybe Prelude.Text)
graphqlApi_name = Lens.lens (\GraphqlApi' {name} -> name) (\s@GraphqlApi' {} a -> s {name = a} :: GraphqlApi)

-- | The Amazon Cognito user pool configuration.
graphqlApi_userPoolConfig :: Lens.Lens' GraphqlApi (Prelude.Maybe UserPoolConfig)
graphqlApi_userPoolConfig = Lens.lens (\GraphqlApi' {userPoolConfig} -> userPoolConfig) (\s@GraphqlApi' {} a -> s {userPoolConfig = a} :: GraphqlApi)

-- | The authentication type.
graphqlApi_authenticationType :: Lens.Lens' GraphqlApi (Prelude.Maybe AuthenticationType)
graphqlApi_authenticationType = Lens.lens (\GraphqlApi' {authenticationType} -> authenticationType) (\s@GraphqlApi' {} a -> s {authenticationType = a} :: GraphqlApi)

-- | The Amazon CloudWatch Logs configuration.
graphqlApi_logConfig :: Lens.Lens' GraphqlApi (Prelude.Maybe LogConfig)
graphqlApi_logConfig = Lens.lens (\GraphqlApi' {logConfig} -> logConfig) (\s@GraphqlApi' {} a -> s {logConfig = a} :: GraphqlApi)

-- | The tags.
graphqlApi_tags :: Lens.Lens' GraphqlApi (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
graphqlApi_tags = Lens.lens (\GraphqlApi' {tags} -> tags) (\s@GraphqlApi' {} a -> s {tags = a} :: GraphqlApi) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON GraphqlApi where
  parseJSON =
    Core.withObject
      "GraphqlApi"
      ( \x ->
          GraphqlApi'
            Prelude.<$> (x Core..:? "xrayEnabled")
            Prelude.<*> (x Core..:? "arn")
            Prelude.<*> (x Core..:? "apiId")
            Prelude.<*> (x Core..:? "uris" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "openIDConnectConfig")
            Prelude.<*> (x Core..:? "wafWebAclArn")
            Prelude.<*> ( x Core..:? "additionalAuthenticationProviders"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "lambdaAuthorizerConfig")
            Prelude.<*> (x Core..:? "name")
            Prelude.<*> (x Core..:? "userPoolConfig")
            Prelude.<*> (x Core..:? "authenticationType")
            Prelude.<*> (x Core..:? "logConfig")
            Prelude.<*> (x Core..:? "tags" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable GraphqlApi

instance Prelude.NFData GraphqlApi
