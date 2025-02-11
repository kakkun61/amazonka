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
-- Module      : Network.AWS.MediaLive.Types.AudioWatermarkSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.AudioWatermarkSettings where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaLive.Types.NielsenWatermarksSettings
import qualified Network.AWS.Prelude as Prelude

-- | Audio Watermark Settings
--
-- /See:/ 'newAudioWatermarkSettings' smart constructor.
data AudioWatermarkSettings = AudioWatermarkSettings'
  { -- | Settings to configure Nielsen Watermarks in the audio encode
    nielsenWatermarksSettings :: Prelude.Maybe NielsenWatermarksSettings
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AudioWatermarkSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nielsenWatermarksSettings', 'audioWatermarkSettings_nielsenWatermarksSettings' - Settings to configure Nielsen Watermarks in the audio encode
newAudioWatermarkSettings ::
  AudioWatermarkSettings
newAudioWatermarkSettings =
  AudioWatermarkSettings'
    { nielsenWatermarksSettings =
        Prelude.Nothing
    }

-- | Settings to configure Nielsen Watermarks in the audio encode
audioWatermarkSettings_nielsenWatermarksSettings :: Lens.Lens' AudioWatermarkSettings (Prelude.Maybe NielsenWatermarksSettings)
audioWatermarkSettings_nielsenWatermarksSettings = Lens.lens (\AudioWatermarkSettings' {nielsenWatermarksSettings} -> nielsenWatermarksSettings) (\s@AudioWatermarkSettings' {} a -> s {nielsenWatermarksSettings = a} :: AudioWatermarkSettings)

instance Core.FromJSON AudioWatermarkSettings where
  parseJSON =
    Core.withObject
      "AudioWatermarkSettings"
      ( \x ->
          AudioWatermarkSettings'
            Prelude.<$> (x Core..:? "nielsenWatermarksSettings")
      )

instance Prelude.Hashable AudioWatermarkSettings

instance Prelude.NFData AudioWatermarkSettings

instance Core.ToJSON AudioWatermarkSettings where
  toJSON AudioWatermarkSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("nielsenWatermarksSettings" Core..=)
              Prelude.<$> nielsenWatermarksSettings
          ]
      )
