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
-- Module      : Network.AWS.ApiGatewayV2.Types.TlsConfigInput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ApiGatewayV2.Types.TlsConfigInput where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The TLS configuration for a private integration. If you specify a TLS
-- configuration, private integration traffic uses the HTTPS protocol.
-- Supported only for HTTP APIs.
--
-- /See:/ 'newTlsConfigInput' smart constructor.
data TlsConfigInput = TlsConfigInput'
  { -- | If you specify a server name, API Gateway uses it to verify the hostname
    -- on the integration\'s certificate. The server name is also included in
    -- the TLS handshake to support Server Name Indication (SNI) or virtual
    -- hosting.
    serverNameToVerify :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TlsConfigInput' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'serverNameToVerify', 'tlsConfigInput_serverNameToVerify' - If you specify a server name, API Gateway uses it to verify the hostname
-- on the integration\'s certificate. The server name is also included in
-- the TLS handshake to support Server Name Indication (SNI) or virtual
-- hosting.
newTlsConfigInput ::
  TlsConfigInput
newTlsConfigInput =
  TlsConfigInput'
    { serverNameToVerify =
        Prelude.Nothing
    }

-- | If you specify a server name, API Gateway uses it to verify the hostname
-- on the integration\'s certificate. The server name is also included in
-- the TLS handshake to support Server Name Indication (SNI) or virtual
-- hosting.
tlsConfigInput_serverNameToVerify :: Lens.Lens' TlsConfigInput (Prelude.Maybe Prelude.Text)
tlsConfigInput_serverNameToVerify = Lens.lens (\TlsConfigInput' {serverNameToVerify} -> serverNameToVerify) (\s@TlsConfigInput' {} a -> s {serverNameToVerify = a} :: TlsConfigInput)

instance Prelude.Hashable TlsConfigInput

instance Prelude.NFData TlsConfigInput

instance Core.ToJSON TlsConfigInput where
  toJSON TlsConfigInput' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("serverNameToVerify" Core..=)
              Prelude.<$> serverNameToVerify
          ]
      )
