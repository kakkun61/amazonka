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
-- Module      : Network.AWS.AppMesh.Types.VirtualGatewayClientPolicyTls
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.VirtualGatewayClientPolicyTls where

import Network.AWS.AppMesh.Types.VirtualGatewayClientTlsCertificate
import Network.AWS.AppMesh.Types.VirtualGatewayTlsValidationContext
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents a Transport Layer Security (TLS) client
-- policy.
--
-- /See:/ 'newVirtualGatewayClientPolicyTls' smart constructor.
data VirtualGatewayClientPolicyTls = VirtualGatewayClientPolicyTls'
  { -- | One or more ports that the policy is enforced for.
    ports :: Prelude.Maybe [Prelude.Natural],
    -- | A reference to an object that represents a virtual gateway\'s client\'s
    -- Transport Layer Security (TLS) certificate.
    certificate :: Prelude.Maybe VirtualGatewayClientTlsCertificate,
    -- | Whether the policy is enforced. The default is @True@, if a value isn\'t
    -- specified.
    enforce :: Prelude.Maybe Prelude.Bool,
    -- | A reference to an object that represents a Transport Layer Security
    -- (TLS) validation context.
    validation :: VirtualGatewayTlsValidationContext
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VirtualGatewayClientPolicyTls' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ports', 'virtualGatewayClientPolicyTls_ports' - One or more ports that the policy is enforced for.
--
-- 'certificate', 'virtualGatewayClientPolicyTls_certificate' - A reference to an object that represents a virtual gateway\'s client\'s
-- Transport Layer Security (TLS) certificate.
--
-- 'enforce', 'virtualGatewayClientPolicyTls_enforce' - Whether the policy is enforced. The default is @True@, if a value isn\'t
-- specified.
--
-- 'validation', 'virtualGatewayClientPolicyTls_validation' - A reference to an object that represents a Transport Layer Security
-- (TLS) validation context.
newVirtualGatewayClientPolicyTls ::
  -- | 'validation'
  VirtualGatewayTlsValidationContext ->
  VirtualGatewayClientPolicyTls
newVirtualGatewayClientPolicyTls pValidation_ =
  VirtualGatewayClientPolicyTls'
    { ports =
        Prelude.Nothing,
      certificate = Prelude.Nothing,
      enforce = Prelude.Nothing,
      validation = pValidation_
    }

-- | One or more ports that the policy is enforced for.
virtualGatewayClientPolicyTls_ports :: Lens.Lens' VirtualGatewayClientPolicyTls (Prelude.Maybe [Prelude.Natural])
virtualGatewayClientPolicyTls_ports = Lens.lens (\VirtualGatewayClientPolicyTls' {ports} -> ports) (\s@VirtualGatewayClientPolicyTls' {} a -> s {ports = a} :: VirtualGatewayClientPolicyTls) Prelude.. Lens.mapping Lens.coerced

-- | A reference to an object that represents a virtual gateway\'s client\'s
-- Transport Layer Security (TLS) certificate.
virtualGatewayClientPolicyTls_certificate :: Lens.Lens' VirtualGatewayClientPolicyTls (Prelude.Maybe VirtualGatewayClientTlsCertificate)
virtualGatewayClientPolicyTls_certificate = Lens.lens (\VirtualGatewayClientPolicyTls' {certificate} -> certificate) (\s@VirtualGatewayClientPolicyTls' {} a -> s {certificate = a} :: VirtualGatewayClientPolicyTls)

-- | Whether the policy is enforced. The default is @True@, if a value isn\'t
-- specified.
virtualGatewayClientPolicyTls_enforce :: Lens.Lens' VirtualGatewayClientPolicyTls (Prelude.Maybe Prelude.Bool)
virtualGatewayClientPolicyTls_enforce = Lens.lens (\VirtualGatewayClientPolicyTls' {enforce} -> enforce) (\s@VirtualGatewayClientPolicyTls' {} a -> s {enforce = a} :: VirtualGatewayClientPolicyTls)

-- | A reference to an object that represents a Transport Layer Security
-- (TLS) validation context.
virtualGatewayClientPolicyTls_validation :: Lens.Lens' VirtualGatewayClientPolicyTls VirtualGatewayTlsValidationContext
virtualGatewayClientPolicyTls_validation = Lens.lens (\VirtualGatewayClientPolicyTls' {validation} -> validation) (\s@VirtualGatewayClientPolicyTls' {} a -> s {validation = a} :: VirtualGatewayClientPolicyTls)

instance Core.FromJSON VirtualGatewayClientPolicyTls where
  parseJSON =
    Core.withObject
      "VirtualGatewayClientPolicyTls"
      ( \x ->
          VirtualGatewayClientPolicyTls'
            Prelude.<$> (x Core..:? "ports" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "certificate")
            Prelude.<*> (x Core..:? "enforce")
            Prelude.<*> (x Core..: "validation")
      )

instance
  Prelude.Hashable
    VirtualGatewayClientPolicyTls

instance Prelude.NFData VirtualGatewayClientPolicyTls

instance Core.ToJSON VirtualGatewayClientPolicyTls where
  toJSON VirtualGatewayClientPolicyTls' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ports" Core..=) Prelude.<$> ports,
            ("certificate" Core..=) Prelude.<$> certificate,
            ("enforce" Core..=) Prelude.<$> enforce,
            Prelude.Just ("validation" Core..= validation)
          ]
      )
