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
-- Module      : Network.AWS.AppMesh.Types.TlsValidationContextSdsTrust
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.TlsValidationContextSdsTrust where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents a Transport Layer Security (TLS) Secret
-- Discovery Service validation context trust. The proxy must be configured
-- with a local SDS provider via a Unix Domain Socket. See App Mesh
-- <https://docs.aws.amazon.com/app-mesh/latest/userguide/tls.html TLS documentation>
-- for more info.
--
-- /See:/ 'newTlsValidationContextSdsTrust' smart constructor.
data TlsValidationContextSdsTrust = TlsValidationContextSdsTrust'
  { -- | A reference to an object that represents the name of the secret for a
    -- Transport Layer Security (TLS) Secret Discovery Service validation
    -- context trust.
    secretName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TlsValidationContextSdsTrust' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'secretName', 'tlsValidationContextSdsTrust_secretName' - A reference to an object that represents the name of the secret for a
-- Transport Layer Security (TLS) Secret Discovery Service validation
-- context trust.
newTlsValidationContextSdsTrust ::
  -- | 'secretName'
  Prelude.Text ->
  TlsValidationContextSdsTrust
newTlsValidationContextSdsTrust pSecretName_ =
  TlsValidationContextSdsTrust'
    { secretName =
        pSecretName_
    }

-- | A reference to an object that represents the name of the secret for a
-- Transport Layer Security (TLS) Secret Discovery Service validation
-- context trust.
tlsValidationContextSdsTrust_secretName :: Lens.Lens' TlsValidationContextSdsTrust Prelude.Text
tlsValidationContextSdsTrust_secretName = Lens.lens (\TlsValidationContextSdsTrust' {secretName} -> secretName) (\s@TlsValidationContextSdsTrust' {} a -> s {secretName = a} :: TlsValidationContextSdsTrust)

instance Core.FromJSON TlsValidationContextSdsTrust where
  parseJSON =
    Core.withObject
      "TlsValidationContextSdsTrust"
      ( \x ->
          TlsValidationContextSdsTrust'
            Prelude.<$> (x Core..: "secretName")
      )

instance
  Prelude.Hashable
    TlsValidationContextSdsTrust

instance Prelude.NFData TlsValidationContextSdsTrust

instance Core.ToJSON TlsValidationContextSdsTrust where
  toJSON TlsValidationContextSdsTrust' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("secretName" Core..= secretName)]
      )
