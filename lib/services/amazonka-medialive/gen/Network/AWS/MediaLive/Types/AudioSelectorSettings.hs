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
-- Module      : Network.AWS.MediaLive.Types.AudioSelectorSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.AudioSelectorSettings where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaLive.Types.AudioHlsRenditionSelection
import Network.AWS.MediaLive.Types.AudioLanguageSelection
import Network.AWS.MediaLive.Types.AudioPidSelection
import Network.AWS.MediaLive.Types.AudioTrackSelection
import qualified Network.AWS.Prelude as Prelude

-- | Audio Selector Settings
--
-- /See:/ 'newAudioSelectorSettings' smart constructor.
data AudioSelectorSettings = AudioSelectorSettings'
  { audioLanguageSelection :: Prelude.Maybe AudioLanguageSelection,
    audioTrackSelection :: Prelude.Maybe AudioTrackSelection,
    audioHlsRenditionSelection :: Prelude.Maybe AudioHlsRenditionSelection,
    audioPidSelection :: Prelude.Maybe AudioPidSelection
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AudioSelectorSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'audioLanguageSelection', 'audioSelectorSettings_audioLanguageSelection' - Undocumented member.
--
-- 'audioTrackSelection', 'audioSelectorSettings_audioTrackSelection' - Undocumented member.
--
-- 'audioHlsRenditionSelection', 'audioSelectorSettings_audioHlsRenditionSelection' - Undocumented member.
--
-- 'audioPidSelection', 'audioSelectorSettings_audioPidSelection' - Undocumented member.
newAudioSelectorSettings ::
  AudioSelectorSettings
newAudioSelectorSettings =
  AudioSelectorSettings'
    { audioLanguageSelection =
        Prelude.Nothing,
      audioTrackSelection = Prelude.Nothing,
      audioHlsRenditionSelection = Prelude.Nothing,
      audioPidSelection = Prelude.Nothing
    }

-- | Undocumented member.
audioSelectorSettings_audioLanguageSelection :: Lens.Lens' AudioSelectorSettings (Prelude.Maybe AudioLanguageSelection)
audioSelectorSettings_audioLanguageSelection = Lens.lens (\AudioSelectorSettings' {audioLanguageSelection} -> audioLanguageSelection) (\s@AudioSelectorSettings' {} a -> s {audioLanguageSelection = a} :: AudioSelectorSettings)

-- | Undocumented member.
audioSelectorSettings_audioTrackSelection :: Lens.Lens' AudioSelectorSettings (Prelude.Maybe AudioTrackSelection)
audioSelectorSettings_audioTrackSelection = Lens.lens (\AudioSelectorSettings' {audioTrackSelection} -> audioTrackSelection) (\s@AudioSelectorSettings' {} a -> s {audioTrackSelection = a} :: AudioSelectorSettings)

-- | Undocumented member.
audioSelectorSettings_audioHlsRenditionSelection :: Lens.Lens' AudioSelectorSettings (Prelude.Maybe AudioHlsRenditionSelection)
audioSelectorSettings_audioHlsRenditionSelection = Lens.lens (\AudioSelectorSettings' {audioHlsRenditionSelection} -> audioHlsRenditionSelection) (\s@AudioSelectorSettings' {} a -> s {audioHlsRenditionSelection = a} :: AudioSelectorSettings)

-- | Undocumented member.
audioSelectorSettings_audioPidSelection :: Lens.Lens' AudioSelectorSettings (Prelude.Maybe AudioPidSelection)
audioSelectorSettings_audioPidSelection = Lens.lens (\AudioSelectorSettings' {audioPidSelection} -> audioPidSelection) (\s@AudioSelectorSettings' {} a -> s {audioPidSelection = a} :: AudioSelectorSettings)

instance Core.FromJSON AudioSelectorSettings where
  parseJSON =
    Core.withObject
      "AudioSelectorSettings"
      ( \x ->
          AudioSelectorSettings'
            Prelude.<$> (x Core..:? "audioLanguageSelection")
            Prelude.<*> (x Core..:? "audioTrackSelection")
            Prelude.<*> (x Core..:? "audioHlsRenditionSelection")
            Prelude.<*> (x Core..:? "audioPidSelection")
      )

instance Prelude.Hashable AudioSelectorSettings

instance Prelude.NFData AudioSelectorSettings

instance Core.ToJSON AudioSelectorSettings where
  toJSON AudioSelectorSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("audioLanguageSelection" Core..=)
              Prelude.<$> audioLanguageSelection,
            ("audioTrackSelection" Core..=)
              Prelude.<$> audioTrackSelection,
            ("audioHlsRenditionSelection" Core..=)
              Prelude.<$> audioHlsRenditionSelection,
            ("audioPidSelection" Core..=)
              Prelude.<$> audioPidSelection
          ]
      )
