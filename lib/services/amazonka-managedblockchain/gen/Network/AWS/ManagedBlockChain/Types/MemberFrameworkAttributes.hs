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
-- Module      : Network.AWS.ManagedBlockChain.Types.MemberFrameworkAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ManagedBlockChain.Types.MemberFrameworkAttributes where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.ManagedBlockChain.Types.MemberFabricAttributes
import qualified Network.AWS.Prelude as Prelude

-- | Attributes relevant to a member for the blockchain framework that the
-- Managed Blockchain network uses.
--
-- /See:/ 'newMemberFrameworkAttributes' smart constructor.
data MemberFrameworkAttributes = MemberFrameworkAttributes'
  { -- | Attributes of Hyperledger Fabric relevant to a member on a Managed
    -- Blockchain network that uses Hyperledger Fabric.
    fabric :: Prelude.Maybe MemberFabricAttributes
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MemberFrameworkAttributes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'fabric', 'memberFrameworkAttributes_fabric' - Attributes of Hyperledger Fabric relevant to a member on a Managed
-- Blockchain network that uses Hyperledger Fabric.
newMemberFrameworkAttributes ::
  MemberFrameworkAttributes
newMemberFrameworkAttributes =
  MemberFrameworkAttributes'
    { fabric =
        Prelude.Nothing
    }

-- | Attributes of Hyperledger Fabric relevant to a member on a Managed
-- Blockchain network that uses Hyperledger Fabric.
memberFrameworkAttributes_fabric :: Lens.Lens' MemberFrameworkAttributes (Prelude.Maybe MemberFabricAttributes)
memberFrameworkAttributes_fabric = Lens.lens (\MemberFrameworkAttributes' {fabric} -> fabric) (\s@MemberFrameworkAttributes' {} a -> s {fabric = a} :: MemberFrameworkAttributes)

instance Core.FromJSON MemberFrameworkAttributes where
  parseJSON =
    Core.withObject
      "MemberFrameworkAttributes"
      ( \x ->
          MemberFrameworkAttributes'
            Prelude.<$> (x Core..:? "Fabric")
      )

instance Prelude.Hashable MemberFrameworkAttributes

instance Prelude.NFData MemberFrameworkAttributes
