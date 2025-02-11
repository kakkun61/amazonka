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
-- Module      : Network.AWS.MediaTailor.Types.ResponseOutputItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaTailor.Types.ResponseOutputItem where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaTailor.Types.DashPlaylistSettings
import Network.AWS.MediaTailor.Types.HlsPlaylistSettings
import qualified Network.AWS.Prelude as Prelude

-- | This response includes only the \"property\" : \"type\" property.
--
-- /See:/ 'newResponseOutputItem' smart constructor.
data ResponseOutputItem = ResponseOutputItem'
  { -- | HLS manifest configuration settings.
    hlsPlaylistSettings :: Prelude.Maybe HlsPlaylistSettings,
    -- | DASH manifest configuration settings.
    dashPlaylistSettings :: Prelude.Maybe DashPlaylistSettings,
    -- | The name of the manifest for the channel that will appear in the channel
    -- output\'s playback URL.
    manifestName :: Prelude.Text,
    -- | The URL used for playback by content players.
    playbackUrl :: Prelude.Text,
    -- | A string used to associate a package configuration source group with a
    -- channel output.
    sourceGroup :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ResponseOutputItem' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'hlsPlaylistSettings', 'responseOutputItem_hlsPlaylistSettings' - HLS manifest configuration settings.
--
-- 'dashPlaylistSettings', 'responseOutputItem_dashPlaylistSettings' - DASH manifest configuration settings.
--
-- 'manifestName', 'responseOutputItem_manifestName' - The name of the manifest for the channel that will appear in the channel
-- output\'s playback URL.
--
-- 'playbackUrl', 'responseOutputItem_playbackUrl' - The URL used for playback by content players.
--
-- 'sourceGroup', 'responseOutputItem_sourceGroup' - A string used to associate a package configuration source group with a
-- channel output.
newResponseOutputItem ::
  -- | 'manifestName'
  Prelude.Text ->
  -- | 'playbackUrl'
  Prelude.Text ->
  -- | 'sourceGroup'
  Prelude.Text ->
  ResponseOutputItem
newResponseOutputItem
  pManifestName_
  pPlaybackUrl_
  pSourceGroup_ =
    ResponseOutputItem'
      { hlsPlaylistSettings =
          Prelude.Nothing,
        dashPlaylistSettings = Prelude.Nothing,
        manifestName = pManifestName_,
        playbackUrl = pPlaybackUrl_,
        sourceGroup = pSourceGroup_
      }

-- | HLS manifest configuration settings.
responseOutputItem_hlsPlaylistSettings :: Lens.Lens' ResponseOutputItem (Prelude.Maybe HlsPlaylistSettings)
responseOutputItem_hlsPlaylistSettings = Lens.lens (\ResponseOutputItem' {hlsPlaylistSettings} -> hlsPlaylistSettings) (\s@ResponseOutputItem' {} a -> s {hlsPlaylistSettings = a} :: ResponseOutputItem)

-- | DASH manifest configuration settings.
responseOutputItem_dashPlaylistSettings :: Lens.Lens' ResponseOutputItem (Prelude.Maybe DashPlaylistSettings)
responseOutputItem_dashPlaylistSettings = Lens.lens (\ResponseOutputItem' {dashPlaylistSettings} -> dashPlaylistSettings) (\s@ResponseOutputItem' {} a -> s {dashPlaylistSettings = a} :: ResponseOutputItem)

-- | The name of the manifest for the channel that will appear in the channel
-- output\'s playback URL.
responseOutputItem_manifestName :: Lens.Lens' ResponseOutputItem Prelude.Text
responseOutputItem_manifestName = Lens.lens (\ResponseOutputItem' {manifestName} -> manifestName) (\s@ResponseOutputItem' {} a -> s {manifestName = a} :: ResponseOutputItem)

-- | The URL used for playback by content players.
responseOutputItem_playbackUrl :: Lens.Lens' ResponseOutputItem Prelude.Text
responseOutputItem_playbackUrl = Lens.lens (\ResponseOutputItem' {playbackUrl} -> playbackUrl) (\s@ResponseOutputItem' {} a -> s {playbackUrl = a} :: ResponseOutputItem)

-- | A string used to associate a package configuration source group with a
-- channel output.
responseOutputItem_sourceGroup :: Lens.Lens' ResponseOutputItem Prelude.Text
responseOutputItem_sourceGroup = Lens.lens (\ResponseOutputItem' {sourceGroup} -> sourceGroup) (\s@ResponseOutputItem' {} a -> s {sourceGroup = a} :: ResponseOutputItem)

instance Core.FromJSON ResponseOutputItem where
  parseJSON =
    Core.withObject
      "ResponseOutputItem"
      ( \x ->
          ResponseOutputItem'
            Prelude.<$> (x Core..:? "HlsPlaylistSettings")
            Prelude.<*> (x Core..:? "DashPlaylistSettings")
            Prelude.<*> (x Core..: "ManifestName")
            Prelude.<*> (x Core..: "PlaybackUrl")
            Prelude.<*> (x Core..: "SourceGroup")
      )

instance Prelude.Hashable ResponseOutputItem

instance Prelude.NFData ResponseOutputItem
