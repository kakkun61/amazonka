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
-- Module      : Network.AWS.AppMesh.Types.VirtualGatewayListenerTls
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.VirtualGatewayListenerTls where

import Network.AWS.AppMesh.Types.VirtualGatewayListenerTlsCertificate
import Network.AWS.AppMesh.Types.VirtualGatewayListenerTlsMode
import Network.AWS.AppMesh.Types.VirtualGatewayListenerTlsValidationContext
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents the Transport Layer Security (TLS) properties
-- for a listener.
--
-- /See:/ 'newVirtualGatewayListenerTls' smart constructor.
data VirtualGatewayListenerTls = VirtualGatewayListenerTls'
  { -- | A reference to an object that represents a virtual gateway\'s
    -- listener\'s Transport Layer Security (TLS) validation context.
    validation :: Prelude.Maybe VirtualGatewayListenerTlsValidationContext,
    -- | An object that represents a Transport Layer Security (TLS) certificate.
    certificate :: VirtualGatewayListenerTlsCertificate,
    -- | Specify one of the following modes.
    --
    -- -   ____STRICT – Listener only accepts connections with TLS enabled.
    --
    -- -   ____PERMISSIVE – Listener accepts connections with or without TLS
    --     enabled.
    --
    -- -   ____DISABLED – Listener only accepts connections without TLS.
    mode :: VirtualGatewayListenerTlsMode
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VirtualGatewayListenerTls' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'validation', 'virtualGatewayListenerTls_validation' - A reference to an object that represents a virtual gateway\'s
-- listener\'s Transport Layer Security (TLS) validation context.
--
-- 'certificate', 'virtualGatewayListenerTls_certificate' - An object that represents a Transport Layer Security (TLS) certificate.
--
-- 'mode', 'virtualGatewayListenerTls_mode' - Specify one of the following modes.
--
-- -   ____STRICT – Listener only accepts connections with TLS enabled.
--
-- -   ____PERMISSIVE – Listener accepts connections with or without TLS
--     enabled.
--
-- -   ____DISABLED – Listener only accepts connections without TLS.
newVirtualGatewayListenerTls ::
  -- | 'certificate'
  VirtualGatewayListenerTlsCertificate ->
  -- | 'mode'
  VirtualGatewayListenerTlsMode ->
  VirtualGatewayListenerTls
newVirtualGatewayListenerTls pCertificate_ pMode_ =
  VirtualGatewayListenerTls'
    { validation =
        Prelude.Nothing,
      certificate = pCertificate_,
      mode = pMode_
    }

-- | A reference to an object that represents a virtual gateway\'s
-- listener\'s Transport Layer Security (TLS) validation context.
virtualGatewayListenerTls_validation :: Lens.Lens' VirtualGatewayListenerTls (Prelude.Maybe VirtualGatewayListenerTlsValidationContext)
virtualGatewayListenerTls_validation = Lens.lens (\VirtualGatewayListenerTls' {validation} -> validation) (\s@VirtualGatewayListenerTls' {} a -> s {validation = a} :: VirtualGatewayListenerTls)

-- | An object that represents a Transport Layer Security (TLS) certificate.
virtualGatewayListenerTls_certificate :: Lens.Lens' VirtualGatewayListenerTls VirtualGatewayListenerTlsCertificate
virtualGatewayListenerTls_certificate = Lens.lens (\VirtualGatewayListenerTls' {certificate} -> certificate) (\s@VirtualGatewayListenerTls' {} a -> s {certificate = a} :: VirtualGatewayListenerTls)

-- | Specify one of the following modes.
--
-- -   ____STRICT – Listener only accepts connections with TLS enabled.
--
-- -   ____PERMISSIVE – Listener accepts connections with or without TLS
--     enabled.
--
-- -   ____DISABLED – Listener only accepts connections without TLS.
virtualGatewayListenerTls_mode :: Lens.Lens' VirtualGatewayListenerTls VirtualGatewayListenerTlsMode
virtualGatewayListenerTls_mode = Lens.lens (\VirtualGatewayListenerTls' {mode} -> mode) (\s@VirtualGatewayListenerTls' {} a -> s {mode = a} :: VirtualGatewayListenerTls)

instance Core.FromJSON VirtualGatewayListenerTls where
  parseJSON =
    Core.withObject
      "VirtualGatewayListenerTls"
      ( \x ->
          VirtualGatewayListenerTls'
            Prelude.<$> (x Core..:? "validation")
            Prelude.<*> (x Core..: "certificate")
            Prelude.<*> (x Core..: "mode")
      )

instance Prelude.Hashable VirtualGatewayListenerTls

instance Prelude.NFData VirtualGatewayListenerTls

instance Core.ToJSON VirtualGatewayListenerTls where
  toJSON VirtualGatewayListenerTls' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("validation" Core..=) Prelude.<$> validation,
            Prelude.Just ("certificate" Core..= certificate),
            Prelude.Just ("mode" Core..= mode)
          ]
      )
