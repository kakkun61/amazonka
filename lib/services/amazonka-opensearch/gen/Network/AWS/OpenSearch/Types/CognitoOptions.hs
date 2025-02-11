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
-- Module      : Network.AWS.OpenSearch.Types.CognitoOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpenSearch.Types.CognitoOptions where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Options to specify the Cognito user and identity pools for OpenSearch
-- Dashboards authentication. For more information, see
-- <http://docs.aws.amazon.com/opensearch-service/latest/developerguide/cognito-auth.html Configuring Amazon Cognito authentication for OpenSearch Dashboards>.
--
-- /See:/ 'newCognitoOptions' smart constructor.
data CognitoOptions = CognitoOptions'
  { -- | The Cognito identity pool ID for OpenSearch Dashboards authentication.
    identityPoolId :: Prelude.Maybe Prelude.Text,
    -- | The option to enable Cognito for OpenSearch Dashboards authentication.
    enabled :: Prelude.Maybe Prelude.Bool,
    -- | The Cognito user pool ID for OpenSearch Dashboards authentication.
    userPoolId :: Prelude.Maybe Prelude.Text,
    -- | The role ARN that provides OpenSearch permissions for accessing Cognito
    -- resources.
    roleArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CognitoOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'identityPoolId', 'cognitoOptions_identityPoolId' - The Cognito identity pool ID for OpenSearch Dashboards authentication.
--
-- 'enabled', 'cognitoOptions_enabled' - The option to enable Cognito for OpenSearch Dashboards authentication.
--
-- 'userPoolId', 'cognitoOptions_userPoolId' - The Cognito user pool ID for OpenSearch Dashboards authentication.
--
-- 'roleArn', 'cognitoOptions_roleArn' - The role ARN that provides OpenSearch permissions for accessing Cognito
-- resources.
newCognitoOptions ::
  CognitoOptions
newCognitoOptions =
  CognitoOptions'
    { identityPoolId = Prelude.Nothing,
      enabled = Prelude.Nothing,
      userPoolId = Prelude.Nothing,
      roleArn = Prelude.Nothing
    }

-- | The Cognito identity pool ID for OpenSearch Dashboards authentication.
cognitoOptions_identityPoolId :: Lens.Lens' CognitoOptions (Prelude.Maybe Prelude.Text)
cognitoOptions_identityPoolId = Lens.lens (\CognitoOptions' {identityPoolId} -> identityPoolId) (\s@CognitoOptions' {} a -> s {identityPoolId = a} :: CognitoOptions)

-- | The option to enable Cognito for OpenSearch Dashboards authentication.
cognitoOptions_enabled :: Lens.Lens' CognitoOptions (Prelude.Maybe Prelude.Bool)
cognitoOptions_enabled = Lens.lens (\CognitoOptions' {enabled} -> enabled) (\s@CognitoOptions' {} a -> s {enabled = a} :: CognitoOptions)

-- | The Cognito user pool ID for OpenSearch Dashboards authentication.
cognitoOptions_userPoolId :: Lens.Lens' CognitoOptions (Prelude.Maybe Prelude.Text)
cognitoOptions_userPoolId = Lens.lens (\CognitoOptions' {userPoolId} -> userPoolId) (\s@CognitoOptions' {} a -> s {userPoolId = a} :: CognitoOptions)

-- | The role ARN that provides OpenSearch permissions for accessing Cognito
-- resources.
cognitoOptions_roleArn :: Lens.Lens' CognitoOptions (Prelude.Maybe Prelude.Text)
cognitoOptions_roleArn = Lens.lens (\CognitoOptions' {roleArn} -> roleArn) (\s@CognitoOptions' {} a -> s {roleArn = a} :: CognitoOptions)

instance Core.FromJSON CognitoOptions where
  parseJSON =
    Core.withObject
      "CognitoOptions"
      ( \x ->
          CognitoOptions'
            Prelude.<$> (x Core..:? "IdentityPoolId")
            Prelude.<*> (x Core..:? "Enabled")
            Prelude.<*> (x Core..:? "UserPoolId")
            Prelude.<*> (x Core..:? "RoleArn")
      )

instance Prelude.Hashable CognitoOptions

instance Prelude.NFData CognitoOptions

instance Core.ToJSON CognitoOptions where
  toJSON CognitoOptions' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("IdentityPoolId" Core..=)
              Prelude.<$> identityPoolId,
            ("Enabled" Core..=) Prelude.<$> enabled,
            ("UserPoolId" Core..=) Prelude.<$> userPoolId,
            ("RoleArn" Core..=) Prelude.<$> roleArn
          ]
      )
