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
-- Module      : Network.AWS.CloudWatchEvents.Types.ConnectionAuthResponseParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.ConnectionAuthResponseParameters where

import Network.AWS.CloudWatchEvents.Types.ConnectionApiKeyAuthResponseParameters
import Network.AWS.CloudWatchEvents.Types.ConnectionBasicAuthResponseParameters
import Network.AWS.CloudWatchEvents.Types.ConnectionHttpParameters
import Network.AWS.CloudWatchEvents.Types.ConnectionOAuthResponseParameters
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains the authorization parameters to use for the connection.
--
-- /See:/ 'newConnectionAuthResponseParameters' smart constructor.
data ConnectionAuthResponseParameters = ConnectionAuthResponseParameters'
  { -- | The OAuth parameters to use for authorization.
    oAuthParameters :: Prelude.Maybe ConnectionOAuthResponseParameters,
    -- | Additional parameters for the connection that are passed through with
    -- every invocation to the HTTP endpoint.
    invocationHttpParameters :: Prelude.Maybe ConnectionHttpParameters,
    -- | The API Key parameters to use for authorization.
    apiKeyAuthParameters :: Prelude.Maybe ConnectionApiKeyAuthResponseParameters,
    -- | The authorization parameters for Basic authorization.
    basicAuthParameters :: Prelude.Maybe ConnectionBasicAuthResponseParameters
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConnectionAuthResponseParameters' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'oAuthParameters', 'connectionAuthResponseParameters_oAuthParameters' - The OAuth parameters to use for authorization.
--
-- 'invocationHttpParameters', 'connectionAuthResponseParameters_invocationHttpParameters' - Additional parameters for the connection that are passed through with
-- every invocation to the HTTP endpoint.
--
-- 'apiKeyAuthParameters', 'connectionAuthResponseParameters_apiKeyAuthParameters' - The API Key parameters to use for authorization.
--
-- 'basicAuthParameters', 'connectionAuthResponseParameters_basicAuthParameters' - The authorization parameters for Basic authorization.
newConnectionAuthResponseParameters ::
  ConnectionAuthResponseParameters
newConnectionAuthResponseParameters =
  ConnectionAuthResponseParameters'
    { oAuthParameters =
        Prelude.Nothing,
      invocationHttpParameters =
        Prelude.Nothing,
      apiKeyAuthParameters = Prelude.Nothing,
      basicAuthParameters = Prelude.Nothing
    }

-- | The OAuth parameters to use for authorization.
connectionAuthResponseParameters_oAuthParameters :: Lens.Lens' ConnectionAuthResponseParameters (Prelude.Maybe ConnectionOAuthResponseParameters)
connectionAuthResponseParameters_oAuthParameters = Lens.lens (\ConnectionAuthResponseParameters' {oAuthParameters} -> oAuthParameters) (\s@ConnectionAuthResponseParameters' {} a -> s {oAuthParameters = a} :: ConnectionAuthResponseParameters)

-- | Additional parameters for the connection that are passed through with
-- every invocation to the HTTP endpoint.
connectionAuthResponseParameters_invocationHttpParameters :: Lens.Lens' ConnectionAuthResponseParameters (Prelude.Maybe ConnectionHttpParameters)
connectionAuthResponseParameters_invocationHttpParameters = Lens.lens (\ConnectionAuthResponseParameters' {invocationHttpParameters} -> invocationHttpParameters) (\s@ConnectionAuthResponseParameters' {} a -> s {invocationHttpParameters = a} :: ConnectionAuthResponseParameters)

-- | The API Key parameters to use for authorization.
connectionAuthResponseParameters_apiKeyAuthParameters :: Lens.Lens' ConnectionAuthResponseParameters (Prelude.Maybe ConnectionApiKeyAuthResponseParameters)
connectionAuthResponseParameters_apiKeyAuthParameters = Lens.lens (\ConnectionAuthResponseParameters' {apiKeyAuthParameters} -> apiKeyAuthParameters) (\s@ConnectionAuthResponseParameters' {} a -> s {apiKeyAuthParameters = a} :: ConnectionAuthResponseParameters)

-- | The authorization parameters for Basic authorization.
connectionAuthResponseParameters_basicAuthParameters :: Lens.Lens' ConnectionAuthResponseParameters (Prelude.Maybe ConnectionBasicAuthResponseParameters)
connectionAuthResponseParameters_basicAuthParameters = Lens.lens (\ConnectionAuthResponseParameters' {basicAuthParameters} -> basicAuthParameters) (\s@ConnectionAuthResponseParameters' {} a -> s {basicAuthParameters = a} :: ConnectionAuthResponseParameters)

instance
  Core.FromJSON
    ConnectionAuthResponseParameters
  where
  parseJSON =
    Core.withObject
      "ConnectionAuthResponseParameters"
      ( \x ->
          ConnectionAuthResponseParameters'
            Prelude.<$> (x Core..:? "OAuthParameters")
            Prelude.<*> (x Core..:? "InvocationHttpParameters")
            Prelude.<*> (x Core..:? "ApiKeyAuthParameters")
            Prelude.<*> (x Core..:? "BasicAuthParameters")
      )

instance
  Prelude.Hashable
    ConnectionAuthResponseParameters

instance
  Prelude.NFData
    ConnectionAuthResponseParameters
