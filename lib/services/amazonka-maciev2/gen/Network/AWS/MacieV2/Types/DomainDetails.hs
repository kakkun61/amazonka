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
-- Module      : Network.AWS.MacieV2.Types.DomainDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MacieV2.Types.DomainDetails where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Provides information about the domain name of the device that an entity
-- used to perform an action on an affected resource.
--
-- /See:/ 'newDomainDetails' smart constructor.
data DomainDetails = DomainDetails'
  { -- | The name of the domain.
    domainName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DomainDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domainName', 'domainDetails_domainName' - The name of the domain.
newDomainDetails ::
  DomainDetails
newDomainDetails =
  DomainDetails' {domainName = Prelude.Nothing}

-- | The name of the domain.
domainDetails_domainName :: Lens.Lens' DomainDetails (Prelude.Maybe Prelude.Text)
domainDetails_domainName = Lens.lens (\DomainDetails' {domainName} -> domainName) (\s@DomainDetails' {} a -> s {domainName = a} :: DomainDetails)

instance Core.FromJSON DomainDetails where
  parseJSON =
    Core.withObject
      "DomainDetails"
      ( \x ->
          DomainDetails' Prelude.<$> (x Core..:? "domainName")
      )

instance Prelude.Hashable DomainDetails

instance Prelude.NFData DomainDetails
