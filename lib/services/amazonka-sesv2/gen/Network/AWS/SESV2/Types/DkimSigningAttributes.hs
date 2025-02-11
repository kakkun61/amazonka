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
-- Module      : Network.AWS.SESV2.Types.DkimSigningAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SESV2.Types.DkimSigningAttributes where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SESV2.Types.DkimSigningKeyLength

-- | An object that contains configuration for Bring Your Own DKIM (BYODKIM),
-- or, for Easy DKIM
--
-- /See:/ 'newDkimSigningAttributes' smart constructor.
data DkimSigningAttributes = DkimSigningAttributes'
  { -- | [Easy DKIM] The key length of the future DKIM key pair to be generated.
    -- This can be changed at most once per day.
    nextSigningKeyLength :: Prelude.Maybe DkimSigningKeyLength,
    -- | [Bring Your Own DKIM] A private key that\'s used to generate a DKIM
    -- signature.
    --
    -- The private key must use 1024 or 2048-bit RSA encryption, and must be
    -- encoded using base64 encoding.
    domainSigningPrivateKey :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | [Bring Your Own DKIM] A string that\'s used to identify a public key in
    -- the DNS configuration for a domain.
    domainSigningSelector :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DkimSigningAttributes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextSigningKeyLength', 'dkimSigningAttributes_nextSigningKeyLength' - [Easy DKIM] The key length of the future DKIM key pair to be generated.
-- This can be changed at most once per day.
--
-- 'domainSigningPrivateKey', 'dkimSigningAttributes_domainSigningPrivateKey' - [Bring Your Own DKIM] A private key that\'s used to generate a DKIM
-- signature.
--
-- The private key must use 1024 or 2048-bit RSA encryption, and must be
-- encoded using base64 encoding.
--
-- 'domainSigningSelector', 'dkimSigningAttributes_domainSigningSelector' - [Bring Your Own DKIM] A string that\'s used to identify a public key in
-- the DNS configuration for a domain.
newDkimSigningAttributes ::
  DkimSigningAttributes
newDkimSigningAttributes =
  DkimSigningAttributes'
    { nextSigningKeyLength =
        Prelude.Nothing,
      domainSigningPrivateKey = Prelude.Nothing,
      domainSigningSelector = Prelude.Nothing
    }

-- | [Easy DKIM] The key length of the future DKIM key pair to be generated.
-- This can be changed at most once per day.
dkimSigningAttributes_nextSigningKeyLength :: Lens.Lens' DkimSigningAttributes (Prelude.Maybe DkimSigningKeyLength)
dkimSigningAttributes_nextSigningKeyLength = Lens.lens (\DkimSigningAttributes' {nextSigningKeyLength} -> nextSigningKeyLength) (\s@DkimSigningAttributes' {} a -> s {nextSigningKeyLength = a} :: DkimSigningAttributes)

-- | [Bring Your Own DKIM] A private key that\'s used to generate a DKIM
-- signature.
--
-- The private key must use 1024 or 2048-bit RSA encryption, and must be
-- encoded using base64 encoding.
dkimSigningAttributes_domainSigningPrivateKey :: Lens.Lens' DkimSigningAttributes (Prelude.Maybe Prelude.Text)
dkimSigningAttributes_domainSigningPrivateKey = Lens.lens (\DkimSigningAttributes' {domainSigningPrivateKey} -> domainSigningPrivateKey) (\s@DkimSigningAttributes' {} a -> s {domainSigningPrivateKey = a} :: DkimSigningAttributes) Prelude.. Lens.mapping Core._Sensitive

-- | [Bring Your Own DKIM] A string that\'s used to identify a public key in
-- the DNS configuration for a domain.
dkimSigningAttributes_domainSigningSelector :: Lens.Lens' DkimSigningAttributes (Prelude.Maybe Prelude.Text)
dkimSigningAttributes_domainSigningSelector = Lens.lens (\DkimSigningAttributes' {domainSigningSelector} -> domainSigningSelector) (\s@DkimSigningAttributes' {} a -> s {domainSigningSelector = a} :: DkimSigningAttributes)

instance Prelude.Hashable DkimSigningAttributes

instance Prelude.NFData DkimSigningAttributes

instance Core.ToJSON DkimSigningAttributes where
  toJSON DkimSigningAttributes' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextSigningKeyLength" Core..=)
              Prelude.<$> nextSigningKeyLength,
            ("DomainSigningPrivateKey" Core..=)
              Prelude.<$> domainSigningPrivateKey,
            ("DomainSigningSelector" Core..=)
              Prelude.<$> domainSigningSelector
          ]
      )
