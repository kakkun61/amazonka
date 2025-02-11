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
-- Module      : Network.AWS.AppMesh.Types.TlsValidationContext
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.TlsValidationContext where

import Network.AWS.AppMesh.Types.SubjectAlternativeNames
import Network.AWS.AppMesh.Types.TlsValidationContextTrust
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents how the proxy will validate its peer during
-- Transport Layer Security (TLS) negotiation.
--
-- /See:/ 'newTlsValidationContext' smart constructor.
data TlsValidationContext = TlsValidationContext'
  { -- | A reference to an object that represents the SANs for a Transport Layer
    -- Security (TLS) validation context.
    subjectAlternativeNames :: Prelude.Maybe SubjectAlternativeNames,
    -- | A reference to where to retrieve the trust chain when validating a
    -- peer’s Transport Layer Security (TLS) certificate.
    trust :: TlsValidationContextTrust
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TlsValidationContext' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'subjectAlternativeNames', 'tlsValidationContext_subjectAlternativeNames' - A reference to an object that represents the SANs for a Transport Layer
-- Security (TLS) validation context.
--
-- 'trust', 'tlsValidationContext_trust' - A reference to where to retrieve the trust chain when validating a
-- peer’s Transport Layer Security (TLS) certificate.
newTlsValidationContext ::
  -- | 'trust'
  TlsValidationContextTrust ->
  TlsValidationContext
newTlsValidationContext pTrust_ =
  TlsValidationContext'
    { subjectAlternativeNames =
        Prelude.Nothing,
      trust = pTrust_
    }

-- | A reference to an object that represents the SANs for a Transport Layer
-- Security (TLS) validation context.
tlsValidationContext_subjectAlternativeNames :: Lens.Lens' TlsValidationContext (Prelude.Maybe SubjectAlternativeNames)
tlsValidationContext_subjectAlternativeNames = Lens.lens (\TlsValidationContext' {subjectAlternativeNames} -> subjectAlternativeNames) (\s@TlsValidationContext' {} a -> s {subjectAlternativeNames = a} :: TlsValidationContext)

-- | A reference to where to retrieve the trust chain when validating a
-- peer’s Transport Layer Security (TLS) certificate.
tlsValidationContext_trust :: Lens.Lens' TlsValidationContext TlsValidationContextTrust
tlsValidationContext_trust = Lens.lens (\TlsValidationContext' {trust} -> trust) (\s@TlsValidationContext' {} a -> s {trust = a} :: TlsValidationContext)

instance Core.FromJSON TlsValidationContext where
  parseJSON =
    Core.withObject
      "TlsValidationContext"
      ( \x ->
          TlsValidationContext'
            Prelude.<$> (x Core..:? "subjectAlternativeNames")
            Prelude.<*> (x Core..: "trust")
      )

instance Prelude.Hashable TlsValidationContext

instance Prelude.NFData TlsValidationContext

instance Core.ToJSON TlsValidationContext where
  toJSON TlsValidationContext' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("subjectAlternativeNames" Core..=)
              Prelude.<$> subjectAlternativeNames,
            Prelude.Just ("trust" Core..= trust)
          ]
      )
