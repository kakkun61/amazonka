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
-- Module      : Network.AWS.AppMesh.Types.VirtualGatewayListenerTlsValidationContext
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.VirtualGatewayListenerTlsValidationContext where

import Network.AWS.AppMesh.Types.SubjectAlternativeNames
import Network.AWS.AppMesh.Types.VirtualGatewayListenerTlsValidationContextTrust
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents a virtual gateway\'s listener\'s Transport
-- Layer Security (TLS) validation context.
--
-- /See:/ 'newVirtualGatewayListenerTlsValidationContext' smart constructor.
data VirtualGatewayListenerTlsValidationContext = VirtualGatewayListenerTlsValidationContext'
  { -- | A reference to an object that represents the SANs for a virtual gateway
    -- listener\'s Transport Layer Security (TLS) validation context.
    subjectAlternativeNames :: Prelude.Maybe SubjectAlternativeNames,
    -- | A reference to where to retrieve the trust chain when validating a
    -- peer’s Transport Layer Security (TLS) certificate.
    trust :: VirtualGatewayListenerTlsValidationContextTrust
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VirtualGatewayListenerTlsValidationContext' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'subjectAlternativeNames', 'virtualGatewayListenerTlsValidationContext_subjectAlternativeNames' - A reference to an object that represents the SANs for a virtual gateway
-- listener\'s Transport Layer Security (TLS) validation context.
--
-- 'trust', 'virtualGatewayListenerTlsValidationContext_trust' - A reference to where to retrieve the trust chain when validating a
-- peer’s Transport Layer Security (TLS) certificate.
newVirtualGatewayListenerTlsValidationContext ::
  -- | 'trust'
  VirtualGatewayListenerTlsValidationContextTrust ->
  VirtualGatewayListenerTlsValidationContext
newVirtualGatewayListenerTlsValidationContext pTrust_ =
  VirtualGatewayListenerTlsValidationContext'
    { subjectAlternativeNames =
        Prelude.Nothing,
      trust = pTrust_
    }

-- | A reference to an object that represents the SANs for a virtual gateway
-- listener\'s Transport Layer Security (TLS) validation context.
virtualGatewayListenerTlsValidationContext_subjectAlternativeNames :: Lens.Lens' VirtualGatewayListenerTlsValidationContext (Prelude.Maybe SubjectAlternativeNames)
virtualGatewayListenerTlsValidationContext_subjectAlternativeNames = Lens.lens (\VirtualGatewayListenerTlsValidationContext' {subjectAlternativeNames} -> subjectAlternativeNames) (\s@VirtualGatewayListenerTlsValidationContext' {} a -> s {subjectAlternativeNames = a} :: VirtualGatewayListenerTlsValidationContext)

-- | A reference to where to retrieve the trust chain when validating a
-- peer’s Transport Layer Security (TLS) certificate.
virtualGatewayListenerTlsValidationContext_trust :: Lens.Lens' VirtualGatewayListenerTlsValidationContext VirtualGatewayListenerTlsValidationContextTrust
virtualGatewayListenerTlsValidationContext_trust = Lens.lens (\VirtualGatewayListenerTlsValidationContext' {trust} -> trust) (\s@VirtualGatewayListenerTlsValidationContext' {} a -> s {trust = a} :: VirtualGatewayListenerTlsValidationContext)

instance
  Core.FromJSON
    VirtualGatewayListenerTlsValidationContext
  where
  parseJSON =
    Core.withObject
      "VirtualGatewayListenerTlsValidationContext"
      ( \x ->
          VirtualGatewayListenerTlsValidationContext'
            Prelude.<$> (x Core..:? "subjectAlternativeNames")
              Prelude.<*> (x Core..: "trust")
      )

instance
  Prelude.Hashable
    VirtualGatewayListenerTlsValidationContext

instance
  Prelude.NFData
    VirtualGatewayListenerTlsValidationContext

instance
  Core.ToJSON
    VirtualGatewayListenerTlsValidationContext
  where
  toJSON
    VirtualGatewayListenerTlsValidationContext' {..} =
      Core.object
        ( Prelude.catMaybes
            [ ("subjectAlternativeNames" Core..=)
                Prelude.<$> subjectAlternativeNames,
              Prelude.Just ("trust" Core..= trust)
            ]
        )
