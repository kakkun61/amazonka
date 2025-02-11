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
-- Module      : Network.AWS.AppFlow.Types.MarketoConnectorProfileCredentials
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppFlow.Types.MarketoConnectorProfileCredentials where

import Network.AWS.AppFlow.Types.ConnectorOAuthRequest
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The connector-specific profile credentials required by Marketo.
--
-- /See:/ 'newMarketoConnectorProfileCredentials' smart constructor.
data MarketoConnectorProfileCredentials = MarketoConnectorProfileCredentials'
  { -- | The credentials used to access protected Marketo resources.
    accessToken :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The OAuth requirement needed to request security tokens from the
    -- connector endpoint.
    oAuthRequest :: Prelude.Maybe ConnectorOAuthRequest,
    -- | The identifier for the desired client.
    clientId :: Prelude.Text,
    -- | The client secret used by the OAuth client to authenticate to the
    -- authorization server.
    clientSecret :: Core.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MarketoConnectorProfileCredentials' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accessToken', 'marketoConnectorProfileCredentials_accessToken' - The credentials used to access protected Marketo resources.
--
-- 'oAuthRequest', 'marketoConnectorProfileCredentials_oAuthRequest' - The OAuth requirement needed to request security tokens from the
-- connector endpoint.
--
-- 'clientId', 'marketoConnectorProfileCredentials_clientId' - The identifier for the desired client.
--
-- 'clientSecret', 'marketoConnectorProfileCredentials_clientSecret' - The client secret used by the OAuth client to authenticate to the
-- authorization server.
newMarketoConnectorProfileCredentials ::
  -- | 'clientId'
  Prelude.Text ->
  -- | 'clientSecret'
  Prelude.Text ->
  MarketoConnectorProfileCredentials
newMarketoConnectorProfileCredentials
  pClientId_
  pClientSecret_ =
    MarketoConnectorProfileCredentials'
      { accessToken =
          Prelude.Nothing,
        oAuthRequest = Prelude.Nothing,
        clientId = pClientId_,
        clientSecret =
          Core._Sensitive Lens.# pClientSecret_
      }

-- | The credentials used to access protected Marketo resources.
marketoConnectorProfileCredentials_accessToken :: Lens.Lens' MarketoConnectorProfileCredentials (Prelude.Maybe Prelude.Text)
marketoConnectorProfileCredentials_accessToken = Lens.lens (\MarketoConnectorProfileCredentials' {accessToken} -> accessToken) (\s@MarketoConnectorProfileCredentials' {} a -> s {accessToken = a} :: MarketoConnectorProfileCredentials) Prelude.. Lens.mapping Core._Sensitive

-- | The OAuth requirement needed to request security tokens from the
-- connector endpoint.
marketoConnectorProfileCredentials_oAuthRequest :: Lens.Lens' MarketoConnectorProfileCredentials (Prelude.Maybe ConnectorOAuthRequest)
marketoConnectorProfileCredentials_oAuthRequest = Lens.lens (\MarketoConnectorProfileCredentials' {oAuthRequest} -> oAuthRequest) (\s@MarketoConnectorProfileCredentials' {} a -> s {oAuthRequest = a} :: MarketoConnectorProfileCredentials)

-- | The identifier for the desired client.
marketoConnectorProfileCredentials_clientId :: Lens.Lens' MarketoConnectorProfileCredentials Prelude.Text
marketoConnectorProfileCredentials_clientId = Lens.lens (\MarketoConnectorProfileCredentials' {clientId} -> clientId) (\s@MarketoConnectorProfileCredentials' {} a -> s {clientId = a} :: MarketoConnectorProfileCredentials)

-- | The client secret used by the OAuth client to authenticate to the
-- authorization server.
marketoConnectorProfileCredentials_clientSecret :: Lens.Lens' MarketoConnectorProfileCredentials Prelude.Text
marketoConnectorProfileCredentials_clientSecret = Lens.lens (\MarketoConnectorProfileCredentials' {clientSecret} -> clientSecret) (\s@MarketoConnectorProfileCredentials' {} a -> s {clientSecret = a} :: MarketoConnectorProfileCredentials) Prelude.. Core._Sensitive

instance
  Prelude.Hashable
    MarketoConnectorProfileCredentials

instance
  Prelude.NFData
    MarketoConnectorProfileCredentials

instance
  Core.ToJSON
    MarketoConnectorProfileCredentials
  where
  toJSON MarketoConnectorProfileCredentials' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("accessToken" Core..=) Prelude.<$> accessToken,
            ("oAuthRequest" Core..=) Prelude.<$> oAuthRequest,
            Prelude.Just ("clientId" Core..= clientId),
            Prelude.Just ("clientSecret" Core..= clientSecret)
          ]
      )
