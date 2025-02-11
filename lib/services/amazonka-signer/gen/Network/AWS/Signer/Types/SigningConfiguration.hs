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
-- Module      : Network.AWS.Signer.Types.SigningConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Signer.Types.SigningConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Signer.Types.EncryptionAlgorithmOptions
import Network.AWS.Signer.Types.HashAlgorithmOptions

-- | The configuration of a code signing operation.
--
-- /See:/ 'newSigningConfiguration' smart constructor.
data SigningConfiguration = SigningConfiguration'
  { -- | The encryption algorithm options that are available for a code signing
    -- job.
    encryptionAlgorithmOptions :: EncryptionAlgorithmOptions,
    -- | The hash algorithm options that are available for a code signing job.
    hashAlgorithmOptions :: HashAlgorithmOptions
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SigningConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'encryptionAlgorithmOptions', 'signingConfiguration_encryptionAlgorithmOptions' - The encryption algorithm options that are available for a code signing
-- job.
--
-- 'hashAlgorithmOptions', 'signingConfiguration_hashAlgorithmOptions' - The hash algorithm options that are available for a code signing job.
newSigningConfiguration ::
  -- | 'encryptionAlgorithmOptions'
  EncryptionAlgorithmOptions ->
  -- | 'hashAlgorithmOptions'
  HashAlgorithmOptions ->
  SigningConfiguration
newSigningConfiguration
  pEncryptionAlgorithmOptions_
  pHashAlgorithmOptions_ =
    SigningConfiguration'
      { encryptionAlgorithmOptions =
          pEncryptionAlgorithmOptions_,
        hashAlgorithmOptions = pHashAlgorithmOptions_
      }

-- | The encryption algorithm options that are available for a code signing
-- job.
signingConfiguration_encryptionAlgorithmOptions :: Lens.Lens' SigningConfiguration EncryptionAlgorithmOptions
signingConfiguration_encryptionAlgorithmOptions = Lens.lens (\SigningConfiguration' {encryptionAlgorithmOptions} -> encryptionAlgorithmOptions) (\s@SigningConfiguration' {} a -> s {encryptionAlgorithmOptions = a} :: SigningConfiguration)

-- | The hash algorithm options that are available for a code signing job.
signingConfiguration_hashAlgorithmOptions :: Lens.Lens' SigningConfiguration HashAlgorithmOptions
signingConfiguration_hashAlgorithmOptions = Lens.lens (\SigningConfiguration' {hashAlgorithmOptions} -> hashAlgorithmOptions) (\s@SigningConfiguration' {} a -> s {hashAlgorithmOptions = a} :: SigningConfiguration)

instance Core.FromJSON SigningConfiguration where
  parseJSON =
    Core.withObject
      "SigningConfiguration"
      ( \x ->
          SigningConfiguration'
            Prelude.<$> (x Core..: "encryptionAlgorithmOptions")
            Prelude.<*> (x Core..: "hashAlgorithmOptions")
      )

instance Prelude.Hashable SigningConfiguration

instance Prelude.NFData SigningConfiguration
