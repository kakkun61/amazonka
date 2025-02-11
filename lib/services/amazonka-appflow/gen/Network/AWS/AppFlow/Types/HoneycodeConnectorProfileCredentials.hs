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
-- Module      : Network.AWS.AppFlow.Types.HoneycodeConnectorProfileCredentials
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppFlow.Types.HoneycodeConnectorProfileCredentials where

import Network.AWS.AppFlow.Types.ConnectorOAuthRequest
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The connector-specific credentials required when using Amazon Honeycode.
--
-- /See:/ 'newHoneycodeConnectorProfileCredentials' smart constructor.
data HoneycodeConnectorProfileCredentials = HoneycodeConnectorProfileCredentials'
  { -- | The credentials used to access protected Amazon Honeycode resources.
    accessToken :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The credentials used to acquire new access tokens.
    refreshToken :: Prelude.Maybe Prelude.Text,
    oAuthRequest :: Prelude.Maybe ConnectorOAuthRequest
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'HoneycodeConnectorProfileCredentials' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accessToken', 'honeycodeConnectorProfileCredentials_accessToken' - The credentials used to access protected Amazon Honeycode resources.
--
-- 'refreshToken', 'honeycodeConnectorProfileCredentials_refreshToken' - The credentials used to acquire new access tokens.
--
-- 'oAuthRequest', 'honeycodeConnectorProfileCredentials_oAuthRequest' - Undocumented member.
newHoneycodeConnectorProfileCredentials ::
  HoneycodeConnectorProfileCredentials
newHoneycodeConnectorProfileCredentials =
  HoneycodeConnectorProfileCredentials'
    { accessToken =
        Prelude.Nothing,
      refreshToken = Prelude.Nothing,
      oAuthRequest = Prelude.Nothing
    }

-- | The credentials used to access protected Amazon Honeycode resources.
honeycodeConnectorProfileCredentials_accessToken :: Lens.Lens' HoneycodeConnectorProfileCredentials (Prelude.Maybe Prelude.Text)
honeycodeConnectorProfileCredentials_accessToken = Lens.lens (\HoneycodeConnectorProfileCredentials' {accessToken} -> accessToken) (\s@HoneycodeConnectorProfileCredentials' {} a -> s {accessToken = a} :: HoneycodeConnectorProfileCredentials) Prelude.. Lens.mapping Core._Sensitive

-- | The credentials used to acquire new access tokens.
honeycodeConnectorProfileCredentials_refreshToken :: Lens.Lens' HoneycodeConnectorProfileCredentials (Prelude.Maybe Prelude.Text)
honeycodeConnectorProfileCredentials_refreshToken = Lens.lens (\HoneycodeConnectorProfileCredentials' {refreshToken} -> refreshToken) (\s@HoneycodeConnectorProfileCredentials' {} a -> s {refreshToken = a} :: HoneycodeConnectorProfileCredentials)

-- | Undocumented member.
honeycodeConnectorProfileCredentials_oAuthRequest :: Lens.Lens' HoneycodeConnectorProfileCredentials (Prelude.Maybe ConnectorOAuthRequest)
honeycodeConnectorProfileCredentials_oAuthRequest = Lens.lens (\HoneycodeConnectorProfileCredentials' {oAuthRequest} -> oAuthRequest) (\s@HoneycodeConnectorProfileCredentials' {} a -> s {oAuthRequest = a} :: HoneycodeConnectorProfileCredentials)

instance
  Prelude.Hashable
    HoneycodeConnectorProfileCredentials

instance
  Prelude.NFData
    HoneycodeConnectorProfileCredentials

instance
  Core.ToJSON
    HoneycodeConnectorProfileCredentials
  where
  toJSON HoneycodeConnectorProfileCredentials' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("accessToken" Core..=) Prelude.<$> accessToken,
            ("refreshToken" Core..=) Prelude.<$> refreshToken,
            ("oAuthRequest" Core..=) Prelude.<$> oAuthRequest
          ]
      )
