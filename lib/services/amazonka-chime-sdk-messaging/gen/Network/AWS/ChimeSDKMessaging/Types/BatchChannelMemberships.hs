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
-- Module      : Network.AWS.ChimeSDKMessaging.Types.BatchChannelMemberships
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ChimeSDKMessaging.Types.BatchChannelMemberships where

import Network.AWS.ChimeSDKMessaging.Types.ChannelMembershipType
import Network.AWS.ChimeSDKMessaging.Types.Identity
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The membership information, including member ARNs, the channel ARN, and
-- membership types.
--
-- /See:/ 'newBatchChannelMemberships' smart constructor.
data BatchChannelMemberships = BatchChannelMemberships'
  { -- | The users successfully added to the request.
    members :: Prelude.Maybe [Identity],
    -- | The ARN of the channel to which you\'re adding users.
    channelArn :: Prelude.Maybe Prelude.Text,
    -- | The membership types set for the channel users.
    type' :: Prelude.Maybe ChannelMembershipType,
    -- | The identifier of the member who invited another member.
    invitedBy :: Prelude.Maybe Identity
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchChannelMemberships' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'members', 'batchChannelMemberships_members' - The users successfully added to the request.
--
-- 'channelArn', 'batchChannelMemberships_channelArn' - The ARN of the channel to which you\'re adding users.
--
-- 'type'', 'batchChannelMemberships_type' - The membership types set for the channel users.
--
-- 'invitedBy', 'batchChannelMemberships_invitedBy' - The identifier of the member who invited another member.
newBatchChannelMemberships ::
  BatchChannelMemberships
newBatchChannelMemberships =
  BatchChannelMemberships'
    { members = Prelude.Nothing,
      channelArn = Prelude.Nothing,
      type' = Prelude.Nothing,
      invitedBy = Prelude.Nothing
    }

-- | The users successfully added to the request.
batchChannelMemberships_members :: Lens.Lens' BatchChannelMemberships (Prelude.Maybe [Identity])
batchChannelMemberships_members = Lens.lens (\BatchChannelMemberships' {members} -> members) (\s@BatchChannelMemberships' {} a -> s {members = a} :: BatchChannelMemberships) Prelude.. Lens.mapping Lens.coerced

-- | The ARN of the channel to which you\'re adding users.
batchChannelMemberships_channelArn :: Lens.Lens' BatchChannelMemberships (Prelude.Maybe Prelude.Text)
batchChannelMemberships_channelArn = Lens.lens (\BatchChannelMemberships' {channelArn} -> channelArn) (\s@BatchChannelMemberships' {} a -> s {channelArn = a} :: BatchChannelMemberships)

-- | The membership types set for the channel users.
batchChannelMemberships_type :: Lens.Lens' BatchChannelMemberships (Prelude.Maybe ChannelMembershipType)
batchChannelMemberships_type = Lens.lens (\BatchChannelMemberships' {type'} -> type') (\s@BatchChannelMemberships' {} a -> s {type' = a} :: BatchChannelMemberships)

-- | The identifier of the member who invited another member.
batchChannelMemberships_invitedBy :: Lens.Lens' BatchChannelMemberships (Prelude.Maybe Identity)
batchChannelMemberships_invitedBy = Lens.lens (\BatchChannelMemberships' {invitedBy} -> invitedBy) (\s@BatchChannelMemberships' {} a -> s {invitedBy = a} :: BatchChannelMemberships)

instance Core.FromJSON BatchChannelMemberships where
  parseJSON =
    Core.withObject
      "BatchChannelMemberships"
      ( \x ->
          BatchChannelMemberships'
            Prelude.<$> (x Core..:? "Members" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "ChannelArn")
            Prelude.<*> (x Core..:? "Type")
            Prelude.<*> (x Core..:? "InvitedBy")
      )

instance Prelude.Hashable BatchChannelMemberships

instance Prelude.NFData BatchChannelMemberships
