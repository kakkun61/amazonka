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
-- Module      : Network.AWS.Chime.Types.ChannelBanSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Chime.Types.ChannelBanSummary where

import Network.AWS.Chime.Types.Identity
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Summary of the details of a @ChannelBan@.
--
-- /See:/ 'newChannelBanSummary' smart constructor.
data ChannelBanSummary = ChannelBanSummary'
  { -- | The member being banned from a channel.
    member :: Prelude.Maybe Identity
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ChannelBanSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'member', 'channelBanSummary_member' - The member being banned from a channel.
newChannelBanSummary ::
  ChannelBanSummary
newChannelBanSummary =
  ChannelBanSummary' {member = Prelude.Nothing}

-- | The member being banned from a channel.
channelBanSummary_member :: Lens.Lens' ChannelBanSummary (Prelude.Maybe Identity)
channelBanSummary_member = Lens.lens (\ChannelBanSummary' {member} -> member) (\s@ChannelBanSummary' {} a -> s {member = a} :: ChannelBanSummary)

instance Core.FromJSON ChannelBanSummary where
  parseJSON =
    Core.withObject
      "ChannelBanSummary"
      ( \x ->
          ChannelBanSummary' Prelude.<$> (x Core..:? "Member")
      )

instance Prelude.Hashable ChannelBanSummary

instance Prelude.NFData ChannelBanSummary
