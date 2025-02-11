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
-- Module      : Network.AWS.Chime.Types.ChannelBan
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Chime.Types.ChannelBan where

import Network.AWS.Chime.Types.Identity
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The details of a channel ban.
--
-- /See:/ 'newChannelBan' smart constructor.
data ChannelBan = ChannelBan'
  { -- | The @AppInstanceUser@ who created the ban.
    createdBy :: Prelude.Maybe Identity,
    -- | The ARN of the channel from which a member is being banned.
    channelArn :: Prelude.Maybe Prelude.Text,
    -- | The member being banned from the channel.
    member :: Prelude.Maybe Identity,
    -- | The time at which the ban was created.
    createdTimestamp :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ChannelBan' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'createdBy', 'channelBan_createdBy' - The @AppInstanceUser@ who created the ban.
--
-- 'channelArn', 'channelBan_channelArn' - The ARN of the channel from which a member is being banned.
--
-- 'member', 'channelBan_member' - The member being banned from the channel.
--
-- 'createdTimestamp', 'channelBan_createdTimestamp' - The time at which the ban was created.
newChannelBan ::
  ChannelBan
newChannelBan =
  ChannelBan'
    { createdBy = Prelude.Nothing,
      channelArn = Prelude.Nothing,
      member = Prelude.Nothing,
      createdTimestamp = Prelude.Nothing
    }

-- | The @AppInstanceUser@ who created the ban.
channelBan_createdBy :: Lens.Lens' ChannelBan (Prelude.Maybe Identity)
channelBan_createdBy = Lens.lens (\ChannelBan' {createdBy} -> createdBy) (\s@ChannelBan' {} a -> s {createdBy = a} :: ChannelBan)

-- | The ARN of the channel from which a member is being banned.
channelBan_channelArn :: Lens.Lens' ChannelBan (Prelude.Maybe Prelude.Text)
channelBan_channelArn = Lens.lens (\ChannelBan' {channelArn} -> channelArn) (\s@ChannelBan' {} a -> s {channelArn = a} :: ChannelBan)

-- | The member being banned from the channel.
channelBan_member :: Lens.Lens' ChannelBan (Prelude.Maybe Identity)
channelBan_member = Lens.lens (\ChannelBan' {member} -> member) (\s@ChannelBan' {} a -> s {member = a} :: ChannelBan)

-- | The time at which the ban was created.
channelBan_createdTimestamp :: Lens.Lens' ChannelBan (Prelude.Maybe Prelude.UTCTime)
channelBan_createdTimestamp = Lens.lens (\ChannelBan' {createdTimestamp} -> createdTimestamp) (\s@ChannelBan' {} a -> s {createdTimestamp = a} :: ChannelBan) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON ChannelBan where
  parseJSON =
    Core.withObject
      "ChannelBan"
      ( \x ->
          ChannelBan'
            Prelude.<$> (x Core..:? "CreatedBy")
            Prelude.<*> (x Core..:? "ChannelArn")
            Prelude.<*> (x Core..:? "Member")
            Prelude.<*> (x Core..:? "CreatedTimestamp")
      )

instance Prelude.Hashable ChannelBan

instance Prelude.NFData ChannelBan
