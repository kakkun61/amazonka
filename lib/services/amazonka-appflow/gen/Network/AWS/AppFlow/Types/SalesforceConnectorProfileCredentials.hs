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
-- Module      : Network.AWS.AppFlow.Types.SalesforceConnectorProfileCredentials
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppFlow.Types.SalesforceConnectorProfileCredentials where

import Network.AWS.AppFlow.Types.ConnectorOAuthRequest
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The connector-specific profile credentials required when using
-- Salesforce.
--
-- /See:/ 'newSalesforceConnectorProfileCredentials' smart constructor.
data SalesforceConnectorProfileCredentials = SalesforceConnectorProfileCredentials'
  { -- | The credentials used to access protected Salesforce resources.
    accessToken :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The credentials used to acquire new access tokens.
    refreshToken :: Prelude.Maybe Prelude.Text,
    -- | The OAuth requirement needed to request security tokens from the
    -- connector endpoint.
    oAuthRequest :: Prelude.Maybe ConnectorOAuthRequest,
    -- | The secret manager ARN, which contains the client ID and client secret
    -- of the connected app.
    clientCredentialsArn :: Prelude.Maybe (Core.Sensitive Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SalesforceConnectorProfileCredentials' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accessToken', 'salesforceConnectorProfileCredentials_accessToken' - The credentials used to access protected Salesforce resources.
--
-- 'refreshToken', 'salesforceConnectorProfileCredentials_refreshToken' - The credentials used to acquire new access tokens.
--
-- 'oAuthRequest', 'salesforceConnectorProfileCredentials_oAuthRequest' - The OAuth requirement needed to request security tokens from the
-- connector endpoint.
--
-- 'clientCredentialsArn', 'salesforceConnectorProfileCredentials_clientCredentialsArn' - The secret manager ARN, which contains the client ID and client secret
-- of the connected app.
newSalesforceConnectorProfileCredentials ::
  SalesforceConnectorProfileCredentials
newSalesforceConnectorProfileCredentials =
  SalesforceConnectorProfileCredentials'
    { accessToken =
        Prelude.Nothing,
      refreshToken = Prelude.Nothing,
      oAuthRequest = Prelude.Nothing,
      clientCredentialsArn =
        Prelude.Nothing
    }

-- | The credentials used to access protected Salesforce resources.
salesforceConnectorProfileCredentials_accessToken :: Lens.Lens' SalesforceConnectorProfileCredentials (Prelude.Maybe Prelude.Text)
salesforceConnectorProfileCredentials_accessToken = Lens.lens (\SalesforceConnectorProfileCredentials' {accessToken} -> accessToken) (\s@SalesforceConnectorProfileCredentials' {} a -> s {accessToken = a} :: SalesforceConnectorProfileCredentials) Prelude.. Lens.mapping Core._Sensitive

-- | The credentials used to acquire new access tokens.
salesforceConnectorProfileCredentials_refreshToken :: Lens.Lens' SalesforceConnectorProfileCredentials (Prelude.Maybe Prelude.Text)
salesforceConnectorProfileCredentials_refreshToken = Lens.lens (\SalesforceConnectorProfileCredentials' {refreshToken} -> refreshToken) (\s@SalesforceConnectorProfileCredentials' {} a -> s {refreshToken = a} :: SalesforceConnectorProfileCredentials)

-- | The OAuth requirement needed to request security tokens from the
-- connector endpoint.
salesforceConnectorProfileCredentials_oAuthRequest :: Lens.Lens' SalesforceConnectorProfileCredentials (Prelude.Maybe ConnectorOAuthRequest)
salesforceConnectorProfileCredentials_oAuthRequest = Lens.lens (\SalesforceConnectorProfileCredentials' {oAuthRequest} -> oAuthRequest) (\s@SalesforceConnectorProfileCredentials' {} a -> s {oAuthRequest = a} :: SalesforceConnectorProfileCredentials)

-- | The secret manager ARN, which contains the client ID and client secret
-- of the connected app.
salesforceConnectorProfileCredentials_clientCredentialsArn :: Lens.Lens' SalesforceConnectorProfileCredentials (Prelude.Maybe Prelude.Text)
salesforceConnectorProfileCredentials_clientCredentialsArn = Lens.lens (\SalesforceConnectorProfileCredentials' {clientCredentialsArn} -> clientCredentialsArn) (\s@SalesforceConnectorProfileCredentials' {} a -> s {clientCredentialsArn = a} :: SalesforceConnectorProfileCredentials) Prelude.. Lens.mapping Core._Sensitive

instance
  Prelude.Hashable
    SalesforceConnectorProfileCredentials

instance
  Prelude.NFData
    SalesforceConnectorProfileCredentials

instance
  Core.ToJSON
    SalesforceConnectorProfileCredentials
  where
  toJSON SalesforceConnectorProfileCredentials' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("accessToken" Core..=) Prelude.<$> accessToken,
            ("refreshToken" Core..=) Prelude.<$> refreshToken,
            ("oAuthRequest" Core..=) Prelude.<$> oAuthRequest,
            ("clientCredentialsArn" Core..=)
              Prelude.<$> clientCredentialsArn
          ]
      )
