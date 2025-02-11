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
-- Module      : Network.AWS.AppFlow.Types.OAuthProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppFlow.Types.OAuthProperties where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The OAuth properties required for OAuth type authentication.
--
-- /See:/ 'newOAuthProperties' smart constructor.
data OAuthProperties = OAuthProperties'
  { -- | The token url required to fetch access\/refresh tokens using
    -- authorization code and also to refresh expired access token using
    -- refresh token.
    tokenUrl :: Prelude.Text,
    -- | The authorization code url required to redirect to SAP Login Page to
    -- fetch authorization code for OAuth type authentication.
    authCodeUrl :: Prelude.Text,
    -- | The OAuth scopes required for OAuth type authentication.
    oAuthScopes :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'OAuthProperties' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tokenUrl', 'oAuthProperties_tokenUrl' - The token url required to fetch access\/refresh tokens using
-- authorization code and also to refresh expired access token using
-- refresh token.
--
-- 'authCodeUrl', 'oAuthProperties_authCodeUrl' - The authorization code url required to redirect to SAP Login Page to
-- fetch authorization code for OAuth type authentication.
--
-- 'oAuthScopes', 'oAuthProperties_oAuthScopes' - The OAuth scopes required for OAuth type authentication.
newOAuthProperties ::
  -- | 'tokenUrl'
  Prelude.Text ->
  -- | 'authCodeUrl'
  Prelude.Text ->
  OAuthProperties
newOAuthProperties pTokenUrl_ pAuthCodeUrl_ =
  OAuthProperties'
    { tokenUrl = pTokenUrl_,
      authCodeUrl = pAuthCodeUrl_,
      oAuthScopes = Prelude.mempty
    }

-- | The token url required to fetch access\/refresh tokens using
-- authorization code and also to refresh expired access token using
-- refresh token.
oAuthProperties_tokenUrl :: Lens.Lens' OAuthProperties Prelude.Text
oAuthProperties_tokenUrl = Lens.lens (\OAuthProperties' {tokenUrl} -> tokenUrl) (\s@OAuthProperties' {} a -> s {tokenUrl = a} :: OAuthProperties)

-- | The authorization code url required to redirect to SAP Login Page to
-- fetch authorization code for OAuth type authentication.
oAuthProperties_authCodeUrl :: Lens.Lens' OAuthProperties Prelude.Text
oAuthProperties_authCodeUrl = Lens.lens (\OAuthProperties' {authCodeUrl} -> authCodeUrl) (\s@OAuthProperties' {} a -> s {authCodeUrl = a} :: OAuthProperties)

-- | The OAuth scopes required for OAuth type authentication.
oAuthProperties_oAuthScopes :: Lens.Lens' OAuthProperties [Prelude.Text]
oAuthProperties_oAuthScopes = Lens.lens (\OAuthProperties' {oAuthScopes} -> oAuthScopes) (\s@OAuthProperties' {} a -> s {oAuthScopes = a} :: OAuthProperties) Prelude.. Lens.coerced

instance Core.FromJSON OAuthProperties where
  parseJSON =
    Core.withObject
      "OAuthProperties"
      ( \x ->
          OAuthProperties'
            Prelude.<$> (x Core..: "tokenUrl")
            Prelude.<*> (x Core..: "authCodeUrl")
            Prelude.<*> (x Core..:? "oAuthScopes" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable OAuthProperties

instance Prelude.NFData OAuthProperties

instance Core.ToJSON OAuthProperties where
  toJSON OAuthProperties' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("tokenUrl" Core..= tokenUrl),
            Prelude.Just ("authCodeUrl" Core..= authCodeUrl),
            Prelude.Just ("oAuthScopes" Core..= oAuthScopes)
          ]
      )
