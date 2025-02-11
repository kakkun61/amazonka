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
-- Module      : Network.AWS.ChimeSDKMessaging.Types.ChannelModeratorSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ChimeSDKMessaging.Types.ChannelModeratorSummary where

import Network.AWS.ChimeSDKMessaging.Types.Identity
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Summary of the details of a @ChannelModerator@.
--
-- /See:/ 'newChannelModeratorSummary' smart constructor.
data ChannelModeratorSummary = ChannelModeratorSummary'
  { -- | The data for a moderator.
    moderator :: Prelude.Maybe Identity
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ChannelModeratorSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'moderator', 'channelModeratorSummary_moderator' - The data for a moderator.
newChannelModeratorSummary ::
  ChannelModeratorSummary
newChannelModeratorSummary =
  ChannelModeratorSummary'
    { moderator =
        Prelude.Nothing
    }

-- | The data for a moderator.
channelModeratorSummary_moderator :: Lens.Lens' ChannelModeratorSummary (Prelude.Maybe Identity)
channelModeratorSummary_moderator = Lens.lens (\ChannelModeratorSummary' {moderator} -> moderator) (\s@ChannelModeratorSummary' {} a -> s {moderator = a} :: ChannelModeratorSummary)

instance Core.FromJSON ChannelModeratorSummary where
  parseJSON =
    Core.withObject
      "ChannelModeratorSummary"
      ( \x ->
          ChannelModeratorSummary'
            Prelude.<$> (x Core..:? "Moderator")
      )

instance Prelude.Hashable ChannelModeratorSummary

instance Prelude.NFData ChannelModeratorSummary
