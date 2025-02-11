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
-- Module      : Network.AWS.AppMesh.Types.VirtualGatewayListenerTlsSdsCertificate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.VirtualGatewayListenerTlsSdsCertificate where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents the virtual gateway\'s listener\'s Secret
-- Discovery Service certificate.The proxy must be configured with a local
-- SDS provider via a Unix Domain Socket. See App
-- Mesh<https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html TLS documentation>
-- for more info.
--
-- /See:/ 'newVirtualGatewayListenerTlsSdsCertificate' smart constructor.
data VirtualGatewayListenerTlsSdsCertificate = VirtualGatewayListenerTlsSdsCertificate'
  { -- | A reference to an object that represents the name of the secret secret
    -- requested from the Secret Discovery Service provider representing
    -- Transport Layer Security (TLS) materials like a certificate or
    -- certificate chain.
    secretName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VirtualGatewayListenerTlsSdsCertificate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'secretName', 'virtualGatewayListenerTlsSdsCertificate_secretName' - A reference to an object that represents the name of the secret secret
-- requested from the Secret Discovery Service provider representing
-- Transport Layer Security (TLS) materials like a certificate or
-- certificate chain.
newVirtualGatewayListenerTlsSdsCertificate ::
  -- | 'secretName'
  Prelude.Text ->
  VirtualGatewayListenerTlsSdsCertificate
newVirtualGatewayListenerTlsSdsCertificate
  pSecretName_ =
    VirtualGatewayListenerTlsSdsCertificate'
      { secretName =
          pSecretName_
      }

-- | A reference to an object that represents the name of the secret secret
-- requested from the Secret Discovery Service provider representing
-- Transport Layer Security (TLS) materials like a certificate or
-- certificate chain.
virtualGatewayListenerTlsSdsCertificate_secretName :: Lens.Lens' VirtualGatewayListenerTlsSdsCertificate Prelude.Text
virtualGatewayListenerTlsSdsCertificate_secretName = Lens.lens (\VirtualGatewayListenerTlsSdsCertificate' {secretName} -> secretName) (\s@VirtualGatewayListenerTlsSdsCertificate' {} a -> s {secretName = a} :: VirtualGatewayListenerTlsSdsCertificate)

instance
  Core.FromJSON
    VirtualGatewayListenerTlsSdsCertificate
  where
  parseJSON =
    Core.withObject
      "VirtualGatewayListenerTlsSdsCertificate"
      ( \x ->
          VirtualGatewayListenerTlsSdsCertificate'
            Prelude.<$> (x Core..: "secretName")
      )

instance
  Prelude.Hashable
    VirtualGatewayListenerTlsSdsCertificate

instance
  Prelude.NFData
    VirtualGatewayListenerTlsSdsCertificate

instance
  Core.ToJSON
    VirtualGatewayListenerTlsSdsCertificate
  where
  toJSON VirtualGatewayListenerTlsSdsCertificate' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("secretName" Core..= secretName)]
      )
