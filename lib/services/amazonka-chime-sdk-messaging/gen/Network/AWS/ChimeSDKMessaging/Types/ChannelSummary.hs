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
-- Module      : Network.AWS.ChimeSDKMessaging.Types.ChannelSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ChimeSDKMessaging.Types.ChannelSummary where

import Network.AWS.ChimeSDKMessaging.Types.ChannelMode
import Network.AWS.ChimeSDKMessaging.Types.ChannelPrivacy
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Summary of the details of a @Channel@.
--
-- /See:/ 'newChannelSummary' smart constructor.
data ChannelSummary = ChannelSummary'
  { -- | The mode of the channel.
    mode :: Prelude.Maybe ChannelMode,
    -- | The ARN of the channel.
    channelArn :: Prelude.Maybe Prelude.Text,
    -- | The privacy setting of the channel.
    privacy :: Prelude.Maybe ChannelPrivacy,
    -- | The time at which the last message in a channel was sent.
    lastMessageTimestamp :: Prelude.Maybe Core.POSIX,
    -- | The name of the channel.
    name :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The metadata of the channel.
    metadata :: Prelude.Maybe (Core.Sensitive Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ChannelSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'mode', 'channelSummary_mode' - The mode of the channel.
--
-- 'channelArn', 'channelSummary_channelArn' - The ARN of the channel.
--
-- 'privacy', 'channelSummary_privacy' - The privacy setting of the channel.
--
-- 'lastMessageTimestamp', 'channelSummary_lastMessageTimestamp' - The time at which the last message in a channel was sent.
--
-- 'name', 'channelSummary_name' - The name of the channel.
--
-- 'metadata', 'channelSummary_metadata' - The metadata of the channel.
newChannelSummary ::
  ChannelSummary
newChannelSummary =
  ChannelSummary'
    { mode = Prelude.Nothing,
      channelArn = Prelude.Nothing,
      privacy = Prelude.Nothing,
      lastMessageTimestamp = Prelude.Nothing,
      name = Prelude.Nothing,
      metadata = Prelude.Nothing
    }

-- | The mode of the channel.
channelSummary_mode :: Lens.Lens' ChannelSummary (Prelude.Maybe ChannelMode)
channelSummary_mode = Lens.lens (\ChannelSummary' {mode} -> mode) (\s@ChannelSummary' {} a -> s {mode = a} :: ChannelSummary)

-- | The ARN of the channel.
channelSummary_channelArn :: Lens.Lens' ChannelSummary (Prelude.Maybe Prelude.Text)
channelSummary_channelArn = Lens.lens (\ChannelSummary' {channelArn} -> channelArn) (\s@ChannelSummary' {} a -> s {channelArn = a} :: ChannelSummary)

-- | The privacy setting of the channel.
channelSummary_privacy :: Lens.Lens' ChannelSummary (Prelude.Maybe ChannelPrivacy)
channelSummary_privacy = Lens.lens (\ChannelSummary' {privacy} -> privacy) (\s@ChannelSummary' {} a -> s {privacy = a} :: ChannelSummary)

-- | The time at which the last message in a channel was sent.
channelSummary_lastMessageTimestamp :: Lens.Lens' ChannelSummary (Prelude.Maybe Prelude.UTCTime)
channelSummary_lastMessageTimestamp = Lens.lens (\ChannelSummary' {lastMessageTimestamp} -> lastMessageTimestamp) (\s@ChannelSummary' {} a -> s {lastMessageTimestamp = a} :: ChannelSummary) Prelude.. Lens.mapping Core._Time

-- | The name of the channel.
channelSummary_name :: Lens.Lens' ChannelSummary (Prelude.Maybe Prelude.Text)
channelSummary_name = Lens.lens (\ChannelSummary' {name} -> name) (\s@ChannelSummary' {} a -> s {name = a} :: ChannelSummary) Prelude.. Lens.mapping Core._Sensitive

-- | The metadata of the channel.
channelSummary_metadata :: Lens.Lens' ChannelSummary (Prelude.Maybe Prelude.Text)
channelSummary_metadata = Lens.lens (\ChannelSummary' {metadata} -> metadata) (\s@ChannelSummary' {} a -> s {metadata = a} :: ChannelSummary) Prelude.. Lens.mapping Core._Sensitive

instance Core.FromJSON ChannelSummary where
  parseJSON =
    Core.withObject
      "ChannelSummary"
      ( \x ->
          ChannelSummary'
            Prelude.<$> (x Core..:? "Mode")
            Prelude.<*> (x Core..:? "ChannelArn")
            Prelude.<*> (x Core..:? "Privacy")
            Prelude.<*> (x Core..:? "LastMessageTimestamp")
            Prelude.<*> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "Metadata")
      )

instance Prelude.Hashable ChannelSummary

instance Prelude.NFData ChannelSummary
