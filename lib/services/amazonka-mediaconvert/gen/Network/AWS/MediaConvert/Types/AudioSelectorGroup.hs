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
-- Module      : Network.AWS.MediaConvert.Types.AudioSelectorGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AudioSelectorGroup where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Use audio selector groups to combine multiple sidecar audio inputs so
-- that you can assign them to a single output audio tab
-- (AudioDescription). Note that, if you\'re working with embedded audio,
-- it\'s simpler to assign multiple input tracks into a single audio
-- selector rather than use an audio selector group.
--
-- /See:/ 'newAudioSelectorGroup' smart constructor.
data AudioSelectorGroup = AudioSelectorGroup'
  { -- | Name of an Audio Selector within the same input to include in the group.
    -- Audio selector names are standardized, based on their order within the
    -- input (e.g., \"Audio Selector 1\"). The audio selector name parameter
    -- can be repeated to add any number of audio selectors to the group.
    audioSelectorNames :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AudioSelectorGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'audioSelectorNames', 'audioSelectorGroup_audioSelectorNames' - Name of an Audio Selector within the same input to include in the group.
-- Audio selector names are standardized, based on their order within the
-- input (e.g., \"Audio Selector 1\"). The audio selector name parameter
-- can be repeated to add any number of audio selectors to the group.
newAudioSelectorGroup ::
  AudioSelectorGroup
newAudioSelectorGroup =
  AudioSelectorGroup'
    { audioSelectorNames =
        Prelude.Nothing
    }

-- | Name of an Audio Selector within the same input to include in the group.
-- Audio selector names are standardized, based on their order within the
-- input (e.g., \"Audio Selector 1\"). The audio selector name parameter
-- can be repeated to add any number of audio selectors to the group.
audioSelectorGroup_audioSelectorNames :: Lens.Lens' AudioSelectorGroup (Prelude.Maybe [Prelude.Text])
audioSelectorGroup_audioSelectorNames = Lens.lens (\AudioSelectorGroup' {audioSelectorNames} -> audioSelectorNames) (\s@AudioSelectorGroup' {} a -> s {audioSelectorNames = a} :: AudioSelectorGroup) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON AudioSelectorGroup where
  parseJSON =
    Core.withObject
      "AudioSelectorGroup"
      ( \x ->
          AudioSelectorGroup'
            Prelude.<$> ( x Core..:? "audioSelectorNames"
                            Core..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable AudioSelectorGroup

instance Prelude.NFData AudioSelectorGroup

instance Core.ToJSON AudioSelectorGroup where
  toJSON AudioSelectorGroup' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("audioSelectorNames" Core..=)
              Prelude.<$> audioSelectorNames
          ]
      )
