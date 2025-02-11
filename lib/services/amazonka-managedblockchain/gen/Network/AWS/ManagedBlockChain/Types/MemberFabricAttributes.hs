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
-- Module      : Network.AWS.ManagedBlockChain.Types.MemberFabricAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ManagedBlockChain.Types.MemberFabricAttributes where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Attributes of Hyperledger Fabric for a member in a Managed Blockchain
-- network using the Hyperledger Fabric framework.
--
-- /See:/ 'newMemberFabricAttributes' smart constructor.
data MemberFabricAttributes = MemberFabricAttributes'
  { -- | The endpoint used to access the member\'s certificate authority.
    caEndpoint :: Prelude.Maybe Prelude.Text,
    -- | The user name for the initial administrator user for the member.
    adminUsername :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MemberFabricAttributes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'caEndpoint', 'memberFabricAttributes_caEndpoint' - The endpoint used to access the member\'s certificate authority.
--
-- 'adminUsername', 'memberFabricAttributes_adminUsername' - The user name for the initial administrator user for the member.
newMemberFabricAttributes ::
  MemberFabricAttributes
newMemberFabricAttributes =
  MemberFabricAttributes'
    { caEndpoint =
        Prelude.Nothing,
      adminUsername = Prelude.Nothing
    }

-- | The endpoint used to access the member\'s certificate authority.
memberFabricAttributes_caEndpoint :: Lens.Lens' MemberFabricAttributes (Prelude.Maybe Prelude.Text)
memberFabricAttributes_caEndpoint = Lens.lens (\MemberFabricAttributes' {caEndpoint} -> caEndpoint) (\s@MemberFabricAttributes' {} a -> s {caEndpoint = a} :: MemberFabricAttributes)

-- | The user name for the initial administrator user for the member.
memberFabricAttributes_adminUsername :: Lens.Lens' MemberFabricAttributes (Prelude.Maybe Prelude.Text)
memberFabricAttributes_adminUsername = Lens.lens (\MemberFabricAttributes' {adminUsername} -> adminUsername) (\s@MemberFabricAttributes' {} a -> s {adminUsername = a} :: MemberFabricAttributes)

instance Core.FromJSON MemberFabricAttributes where
  parseJSON =
    Core.withObject
      "MemberFabricAttributes"
      ( \x ->
          MemberFabricAttributes'
            Prelude.<$> (x Core..:? "CaEndpoint")
            Prelude.<*> (x Core..:? "AdminUsername")
      )

instance Prelude.Hashable MemberFabricAttributes

instance Prelude.NFData MemberFabricAttributes
