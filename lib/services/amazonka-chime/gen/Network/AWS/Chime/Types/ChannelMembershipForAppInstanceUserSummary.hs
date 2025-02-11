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
-- Module      : Network.AWS.Chime.Types.ChannelMembershipForAppInstanceUserSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Chime.Types.ChannelMembershipForAppInstanceUserSummary where

import Network.AWS.Chime.Types.AppInstanceUserMembershipSummary
import Network.AWS.Chime.Types.ChannelSummary
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Summary of the channel membership details of an @AppInstanceUser@.
--
-- /See:/ 'newChannelMembershipForAppInstanceUserSummary' smart constructor.
data ChannelMembershipForAppInstanceUserSummary = ChannelMembershipForAppInstanceUserSummary'
  { appInstanceUserMembershipSummary :: Prelude.Maybe AppInstanceUserMembershipSummary,
    channelSummary :: Prelude.Maybe ChannelSummary
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ChannelMembershipForAppInstanceUserSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appInstanceUserMembershipSummary', 'channelMembershipForAppInstanceUserSummary_appInstanceUserMembershipSummary' - Undocumented member.
--
-- 'channelSummary', 'channelMembershipForAppInstanceUserSummary_channelSummary' - Undocumented member.
newChannelMembershipForAppInstanceUserSummary ::
  ChannelMembershipForAppInstanceUserSummary
newChannelMembershipForAppInstanceUserSummary =
  ChannelMembershipForAppInstanceUserSummary'
    { appInstanceUserMembershipSummary =
        Prelude.Nothing,
      channelSummary =
        Prelude.Nothing
    }

-- | Undocumented member.
channelMembershipForAppInstanceUserSummary_appInstanceUserMembershipSummary :: Lens.Lens' ChannelMembershipForAppInstanceUserSummary (Prelude.Maybe AppInstanceUserMembershipSummary)
channelMembershipForAppInstanceUserSummary_appInstanceUserMembershipSummary = Lens.lens (\ChannelMembershipForAppInstanceUserSummary' {appInstanceUserMembershipSummary} -> appInstanceUserMembershipSummary) (\s@ChannelMembershipForAppInstanceUserSummary' {} a -> s {appInstanceUserMembershipSummary = a} :: ChannelMembershipForAppInstanceUserSummary)

-- | Undocumented member.
channelMembershipForAppInstanceUserSummary_channelSummary :: Lens.Lens' ChannelMembershipForAppInstanceUserSummary (Prelude.Maybe ChannelSummary)
channelMembershipForAppInstanceUserSummary_channelSummary = Lens.lens (\ChannelMembershipForAppInstanceUserSummary' {channelSummary} -> channelSummary) (\s@ChannelMembershipForAppInstanceUserSummary' {} a -> s {channelSummary = a} :: ChannelMembershipForAppInstanceUserSummary)

instance
  Core.FromJSON
    ChannelMembershipForAppInstanceUserSummary
  where
  parseJSON =
    Core.withObject
      "ChannelMembershipForAppInstanceUserSummary"
      ( \x ->
          ChannelMembershipForAppInstanceUserSummary'
            Prelude.<$> (x Core..:? "AppInstanceUserMembershipSummary")
              Prelude.<*> (x Core..:? "ChannelSummary")
      )

instance
  Prelude.Hashable
    ChannelMembershipForAppInstanceUserSummary

instance
  Prelude.NFData
    ChannelMembershipForAppInstanceUserSummary
