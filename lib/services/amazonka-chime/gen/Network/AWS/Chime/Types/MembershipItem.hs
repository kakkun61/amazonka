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
-- Module      : Network.AWS.Chime.Types.MembershipItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Chime.Types.MembershipItem where

import Network.AWS.Chime.Types.RoomMembershipRole
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Membership details, such as member ID and member role.
--
-- /See:/ 'newMembershipItem' smart constructor.
data MembershipItem = MembershipItem'
  { -- | The member ID.
    memberId :: Prelude.Maybe Prelude.Text,
    -- | The member role.
    role' :: Prelude.Maybe RoomMembershipRole
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MembershipItem' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'memberId', 'membershipItem_memberId' - The member ID.
--
-- 'role'', 'membershipItem_role' - The member role.
newMembershipItem ::
  MembershipItem
newMembershipItem =
  MembershipItem'
    { memberId = Prelude.Nothing,
      role' = Prelude.Nothing
    }

-- | The member ID.
membershipItem_memberId :: Lens.Lens' MembershipItem (Prelude.Maybe Prelude.Text)
membershipItem_memberId = Lens.lens (\MembershipItem' {memberId} -> memberId) (\s@MembershipItem' {} a -> s {memberId = a} :: MembershipItem)

-- | The member role.
membershipItem_role :: Lens.Lens' MembershipItem (Prelude.Maybe RoomMembershipRole)
membershipItem_role = Lens.lens (\MembershipItem' {role'} -> role') (\s@MembershipItem' {} a -> s {role' = a} :: MembershipItem)

instance Prelude.Hashable MembershipItem

instance Prelude.NFData MembershipItem

instance Core.ToJSON MembershipItem where
  toJSON MembershipItem' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("MemberId" Core..=) Prelude.<$> memberId,
            ("Role" Core..=) Prelude.<$> role'
          ]
      )
