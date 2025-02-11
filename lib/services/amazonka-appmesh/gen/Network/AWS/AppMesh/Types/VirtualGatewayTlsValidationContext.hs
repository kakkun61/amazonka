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
-- Module      : Network.AWS.AppMesh.Types.VirtualGatewayTlsValidationContext
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.VirtualGatewayTlsValidationContext where

import Network.AWS.AppMesh.Types.SubjectAlternativeNames
import Network.AWS.AppMesh.Types.VirtualGatewayTlsValidationContextTrust
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents a Transport Layer Security (TLS) validation
-- context.
--
-- /See:/ 'newVirtualGatewayTlsValidationContext' smart constructor.
data VirtualGatewayTlsValidationContext = VirtualGatewayTlsValidationContext'
  { -- | A reference to an object that represents the SANs for a virtual
    -- gateway\'s listener\'s Transport Layer Security (TLS) validation
    -- context.
    subjectAlternativeNames :: Prelude.Maybe SubjectAlternativeNames,
    -- | A reference to where to retrieve the trust chain when validating a
    -- peer’s Transport Layer Security (TLS) certificate.
    trust :: VirtualGatewayTlsValidationContextTrust
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VirtualGatewayTlsValidationContext' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'subjectAlternativeNames', 'virtualGatewayTlsValidationContext_subjectAlternativeNames' - A reference to an object that represents the SANs for a virtual
-- gateway\'s listener\'s Transport Layer Security (TLS) validation
-- context.
--
-- 'trust', 'virtualGatewayTlsValidationContext_trust' - A reference to where to retrieve the trust chain when validating a
-- peer’s Transport Layer Security (TLS) certificate.
newVirtualGatewayTlsValidationContext ::
  -- | 'trust'
  VirtualGatewayTlsValidationContextTrust ->
  VirtualGatewayTlsValidationContext
newVirtualGatewayTlsValidationContext pTrust_ =
  VirtualGatewayTlsValidationContext'
    { subjectAlternativeNames =
        Prelude.Nothing,
      trust = pTrust_
    }

-- | A reference to an object that represents the SANs for a virtual
-- gateway\'s listener\'s Transport Layer Security (TLS) validation
-- context.
virtualGatewayTlsValidationContext_subjectAlternativeNames :: Lens.Lens' VirtualGatewayTlsValidationContext (Prelude.Maybe SubjectAlternativeNames)
virtualGatewayTlsValidationContext_subjectAlternativeNames = Lens.lens (\VirtualGatewayTlsValidationContext' {subjectAlternativeNames} -> subjectAlternativeNames) (\s@VirtualGatewayTlsValidationContext' {} a -> s {subjectAlternativeNames = a} :: VirtualGatewayTlsValidationContext)

-- | A reference to where to retrieve the trust chain when validating a
-- peer’s Transport Layer Security (TLS) certificate.
virtualGatewayTlsValidationContext_trust :: Lens.Lens' VirtualGatewayTlsValidationContext VirtualGatewayTlsValidationContextTrust
virtualGatewayTlsValidationContext_trust = Lens.lens (\VirtualGatewayTlsValidationContext' {trust} -> trust) (\s@VirtualGatewayTlsValidationContext' {} a -> s {trust = a} :: VirtualGatewayTlsValidationContext)

instance
  Core.FromJSON
    VirtualGatewayTlsValidationContext
  where
  parseJSON =
    Core.withObject
      "VirtualGatewayTlsValidationContext"
      ( \x ->
          VirtualGatewayTlsValidationContext'
            Prelude.<$> (x Core..:? "subjectAlternativeNames")
            Prelude.<*> (x Core..: "trust")
      )

instance
  Prelude.Hashable
    VirtualGatewayTlsValidationContext

instance
  Prelude.NFData
    VirtualGatewayTlsValidationContext

instance
  Core.ToJSON
    VirtualGatewayTlsValidationContext
  where
  toJSON VirtualGatewayTlsValidationContext' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("subjectAlternativeNames" Core..=)
              Prelude.<$> subjectAlternativeNames,
            Prelude.Just ("trust" Core..= trust)
          ]
      )
