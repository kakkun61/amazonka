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
-- Module      : Network.AWS.Grafana.Types.AuthenticationDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Grafana.Types.AuthenticationDescription where

import qualified Network.AWS.Core as Core
import Network.AWS.Grafana.Types.AuthenticationProviderTypes
import Network.AWS.Grafana.Types.AwsSsoAuthentication
import Network.AWS.Grafana.Types.SamlAuthentication
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A structure containing information about the user authentication methods
-- used by the workspace.
--
-- /See:/ 'newAuthenticationDescription' smart constructor.
data AuthenticationDescription = AuthenticationDescription'
  { -- | A structure containing information about how this workspace works with
    -- Amazon Web Services SSO.
    awsSso :: Prelude.Maybe AwsSsoAuthentication,
    -- | A structure containing information about how this workspace works with
    -- SAML, including what attributes within the assertion are to be mapped to
    -- user information in the workspace.
    saml :: Prelude.Maybe SamlAuthentication,
    -- | Specifies whether this workspace uses Amazon Web Services SSO, SAML, or
    -- both methods to authenticate users to use the Grafana console in the
    -- Amazon Managed Grafana workspace.
    providers :: [AuthenticationProviderTypes]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AuthenticationDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'awsSso', 'authenticationDescription_awsSso' - A structure containing information about how this workspace works with
-- Amazon Web Services SSO.
--
-- 'saml', 'authenticationDescription_saml' - A structure containing information about how this workspace works with
-- SAML, including what attributes within the assertion are to be mapped to
-- user information in the workspace.
--
-- 'providers', 'authenticationDescription_providers' - Specifies whether this workspace uses Amazon Web Services SSO, SAML, or
-- both methods to authenticate users to use the Grafana console in the
-- Amazon Managed Grafana workspace.
newAuthenticationDescription ::
  AuthenticationDescription
newAuthenticationDescription =
  AuthenticationDescription'
    { awsSso =
        Prelude.Nothing,
      saml = Prelude.Nothing,
      providers = Prelude.mempty
    }

-- | A structure containing information about how this workspace works with
-- Amazon Web Services SSO.
authenticationDescription_awsSso :: Lens.Lens' AuthenticationDescription (Prelude.Maybe AwsSsoAuthentication)
authenticationDescription_awsSso = Lens.lens (\AuthenticationDescription' {awsSso} -> awsSso) (\s@AuthenticationDescription' {} a -> s {awsSso = a} :: AuthenticationDescription)

-- | A structure containing information about how this workspace works with
-- SAML, including what attributes within the assertion are to be mapped to
-- user information in the workspace.
authenticationDescription_saml :: Lens.Lens' AuthenticationDescription (Prelude.Maybe SamlAuthentication)
authenticationDescription_saml = Lens.lens (\AuthenticationDescription' {saml} -> saml) (\s@AuthenticationDescription' {} a -> s {saml = a} :: AuthenticationDescription)

-- | Specifies whether this workspace uses Amazon Web Services SSO, SAML, or
-- both methods to authenticate users to use the Grafana console in the
-- Amazon Managed Grafana workspace.
authenticationDescription_providers :: Lens.Lens' AuthenticationDescription [AuthenticationProviderTypes]
authenticationDescription_providers = Lens.lens (\AuthenticationDescription' {providers} -> providers) (\s@AuthenticationDescription' {} a -> s {providers = a} :: AuthenticationDescription) Prelude.. Lens.coerced

instance Core.FromJSON AuthenticationDescription where
  parseJSON =
    Core.withObject
      "AuthenticationDescription"
      ( \x ->
          AuthenticationDescription'
            Prelude.<$> (x Core..:? "awsSso")
            Prelude.<*> (x Core..:? "saml")
            Prelude.<*> (x Core..:? "providers" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable AuthenticationDescription

instance Prelude.NFData AuthenticationDescription
