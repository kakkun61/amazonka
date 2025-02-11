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
-- Module      : Network.AWS.Transcribe.Types.Subtitles
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transcribe.Types.Subtitles where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Transcribe.Types.SubtitleFormat

-- | Generate subtitles for your batch transcription job.
--
-- /See:/ 'newSubtitles' smart constructor.
data Subtitles = Subtitles'
  { -- | Specify the output format for your subtitle file.
    formats :: Prelude.Maybe [SubtitleFormat]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Subtitles' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'formats', 'subtitles_formats' - Specify the output format for your subtitle file.
newSubtitles ::
  Subtitles
newSubtitles = Subtitles' {formats = Prelude.Nothing}

-- | Specify the output format for your subtitle file.
subtitles_formats :: Lens.Lens' Subtitles (Prelude.Maybe [SubtitleFormat])
subtitles_formats = Lens.lens (\Subtitles' {formats} -> formats) (\s@Subtitles' {} a -> s {formats = a} :: Subtitles) Prelude.. Lens.mapping Lens.coerced

instance Prelude.Hashable Subtitles

instance Prelude.NFData Subtitles

instance Core.ToJSON Subtitles where
  toJSON Subtitles' {..} =
    Core.object
      ( Prelude.catMaybes
          [("Formats" Core..=) Prelude.<$> formats]
      )
