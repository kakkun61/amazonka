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
-- Module      : Network.AWS.MediaConvert.Types.SrtDestinationSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.SrtDestinationSettings where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaConvert.Types.SrtStylePassthrough
import qualified Network.AWS.Prelude as Prelude

-- | Settings related to SRT captions. SRT is a sidecar format that holds
-- captions in a file that is separate from the video container. Set up
-- sidecar captions in the same output group, but different output from
-- your video. When you work directly in your JSON job specification,
-- include this object and any required children when you set
-- destinationType to SRT.
--
-- /See:/ 'newSrtDestinationSettings' smart constructor.
data SrtDestinationSettings = SrtDestinationSettings'
  { -- | Set Style passthrough (StylePassthrough) to ENABLED to use the available
    -- style, color, and position information from your input captions.
    -- MediaConvert uses default settings for any missing style and position
    -- information in your input captions. Set Style passthrough to DISABLED,
    -- or leave blank, to ignore the style and position information from your
    -- input captions and use simplified output captions.
    stylePassthrough :: Prelude.Maybe SrtStylePassthrough
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SrtDestinationSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'stylePassthrough', 'srtDestinationSettings_stylePassthrough' - Set Style passthrough (StylePassthrough) to ENABLED to use the available
-- style, color, and position information from your input captions.
-- MediaConvert uses default settings for any missing style and position
-- information in your input captions. Set Style passthrough to DISABLED,
-- or leave blank, to ignore the style and position information from your
-- input captions and use simplified output captions.
newSrtDestinationSettings ::
  SrtDestinationSettings
newSrtDestinationSettings =
  SrtDestinationSettings'
    { stylePassthrough =
        Prelude.Nothing
    }

-- | Set Style passthrough (StylePassthrough) to ENABLED to use the available
-- style, color, and position information from your input captions.
-- MediaConvert uses default settings for any missing style and position
-- information in your input captions. Set Style passthrough to DISABLED,
-- or leave blank, to ignore the style and position information from your
-- input captions and use simplified output captions.
srtDestinationSettings_stylePassthrough :: Lens.Lens' SrtDestinationSettings (Prelude.Maybe SrtStylePassthrough)
srtDestinationSettings_stylePassthrough = Lens.lens (\SrtDestinationSettings' {stylePassthrough} -> stylePassthrough) (\s@SrtDestinationSettings' {} a -> s {stylePassthrough = a} :: SrtDestinationSettings)

instance Core.FromJSON SrtDestinationSettings where
  parseJSON =
    Core.withObject
      "SrtDestinationSettings"
      ( \x ->
          SrtDestinationSettings'
            Prelude.<$> (x Core..:? "stylePassthrough")
      )

instance Prelude.Hashable SrtDestinationSettings

instance Prelude.NFData SrtDestinationSettings

instance Core.ToJSON SrtDestinationSettings where
  toJSON SrtDestinationSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("stylePassthrough" Core..=)
              Prelude.<$> stylePassthrough
          ]
      )
