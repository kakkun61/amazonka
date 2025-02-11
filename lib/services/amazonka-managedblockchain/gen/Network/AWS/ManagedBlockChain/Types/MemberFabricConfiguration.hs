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
-- Module      : Network.AWS.ManagedBlockChain.Types.MemberFabricConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ManagedBlockChain.Types.MemberFabricConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Configuration properties for Hyperledger Fabric for a member in a
-- Managed Blockchain network using the Hyperledger Fabric framework.
--
-- /See:/ 'newMemberFabricConfiguration' smart constructor.
data MemberFabricConfiguration = MemberFabricConfiguration'
  { -- | The user name for the member\'s initial administrative user.
    adminUsername :: Prelude.Text,
    -- | The password for the member\'s initial administrative user. The
    -- @AdminPassword@ must be at least eight characters long and no more than
    -- 32 characters. It must contain at least one uppercase letter, one
    -- lowercase letter, and one digit. It cannot have a single quotation mark
    -- (‘), a double quotation marks (“), a forward slash(\/), a backward
    -- slash(\\), \@, or a space.
    adminPassword :: Core.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MemberFabricConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'adminUsername', 'memberFabricConfiguration_adminUsername' - The user name for the member\'s initial administrative user.
--
-- 'adminPassword', 'memberFabricConfiguration_adminPassword' - The password for the member\'s initial administrative user. The
-- @AdminPassword@ must be at least eight characters long and no more than
-- 32 characters. It must contain at least one uppercase letter, one
-- lowercase letter, and one digit. It cannot have a single quotation mark
-- (‘), a double quotation marks (“), a forward slash(\/), a backward
-- slash(\\), \@, or a space.
newMemberFabricConfiguration ::
  -- | 'adminUsername'
  Prelude.Text ->
  -- | 'adminPassword'
  Prelude.Text ->
  MemberFabricConfiguration
newMemberFabricConfiguration
  pAdminUsername_
  pAdminPassword_ =
    MemberFabricConfiguration'
      { adminUsername =
          pAdminUsername_,
        adminPassword =
          Core._Sensitive Lens.# pAdminPassword_
      }

-- | The user name for the member\'s initial administrative user.
memberFabricConfiguration_adminUsername :: Lens.Lens' MemberFabricConfiguration Prelude.Text
memberFabricConfiguration_adminUsername = Lens.lens (\MemberFabricConfiguration' {adminUsername} -> adminUsername) (\s@MemberFabricConfiguration' {} a -> s {adminUsername = a} :: MemberFabricConfiguration)

-- | The password for the member\'s initial administrative user. The
-- @AdminPassword@ must be at least eight characters long and no more than
-- 32 characters. It must contain at least one uppercase letter, one
-- lowercase letter, and one digit. It cannot have a single quotation mark
-- (‘), a double quotation marks (“), a forward slash(\/), a backward
-- slash(\\), \@, or a space.
memberFabricConfiguration_adminPassword :: Lens.Lens' MemberFabricConfiguration Prelude.Text
memberFabricConfiguration_adminPassword = Lens.lens (\MemberFabricConfiguration' {adminPassword} -> adminPassword) (\s@MemberFabricConfiguration' {} a -> s {adminPassword = a} :: MemberFabricConfiguration) Prelude.. Core._Sensitive

instance Prelude.Hashable MemberFabricConfiguration

instance Prelude.NFData MemberFabricConfiguration

instance Core.ToJSON MemberFabricConfiguration where
  toJSON MemberFabricConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("AdminUsername" Core..= adminUsername),
            Prelude.Just
              ("AdminPassword" Core..= adminPassword)
          ]
      )
