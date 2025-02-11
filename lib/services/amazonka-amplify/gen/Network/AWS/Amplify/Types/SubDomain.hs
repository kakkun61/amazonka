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
-- Module      : Network.AWS.Amplify.Types.SubDomain
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Amplify.Types.SubDomain where

import Network.AWS.Amplify.Types.SubDomainSetting
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The subdomain for the domain association.
--
-- /See:/ 'newSubDomain' smart constructor.
data SubDomain = SubDomain'
  { -- | Describes the settings for the subdomain.
    subDomainSetting :: SubDomainSetting,
    -- | The verified status of the subdomain
    verified :: Prelude.Bool,
    -- | The DNS record for the subdomain.
    dnsRecord :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SubDomain' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'subDomainSetting', 'subDomain_subDomainSetting' - Describes the settings for the subdomain.
--
-- 'verified', 'subDomain_verified' - The verified status of the subdomain
--
-- 'dnsRecord', 'subDomain_dnsRecord' - The DNS record for the subdomain.
newSubDomain ::
  -- | 'subDomainSetting'
  SubDomainSetting ->
  -- | 'verified'
  Prelude.Bool ->
  -- | 'dnsRecord'
  Prelude.Text ->
  SubDomain
newSubDomain
  pSubDomainSetting_
  pVerified_
  pDnsRecord_ =
    SubDomain'
      { subDomainSetting = pSubDomainSetting_,
        verified = pVerified_,
        dnsRecord = pDnsRecord_
      }

-- | Describes the settings for the subdomain.
subDomain_subDomainSetting :: Lens.Lens' SubDomain SubDomainSetting
subDomain_subDomainSetting = Lens.lens (\SubDomain' {subDomainSetting} -> subDomainSetting) (\s@SubDomain' {} a -> s {subDomainSetting = a} :: SubDomain)

-- | The verified status of the subdomain
subDomain_verified :: Lens.Lens' SubDomain Prelude.Bool
subDomain_verified = Lens.lens (\SubDomain' {verified} -> verified) (\s@SubDomain' {} a -> s {verified = a} :: SubDomain)

-- | The DNS record for the subdomain.
subDomain_dnsRecord :: Lens.Lens' SubDomain Prelude.Text
subDomain_dnsRecord = Lens.lens (\SubDomain' {dnsRecord} -> dnsRecord) (\s@SubDomain' {} a -> s {dnsRecord = a} :: SubDomain)

instance Core.FromJSON SubDomain where
  parseJSON =
    Core.withObject
      "SubDomain"
      ( \x ->
          SubDomain'
            Prelude.<$> (x Core..: "subDomainSetting")
            Prelude.<*> (x Core..: "verified")
            Prelude.<*> (x Core..: "dnsRecord")
      )

instance Prelude.Hashable SubDomain

instance Prelude.NFData SubDomain
