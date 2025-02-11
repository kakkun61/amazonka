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
-- Module      : Network.AWS.ConnectContactLens.Types.CharacterOffsets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ConnectContactLens.Types.CharacterOffsets where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | For characters that were detected as issues, where they occur in the
-- transcript.
--
-- /See:/ 'newCharacterOffsets' smart constructor.
data CharacterOffsets = CharacterOffsets'
  { -- | The beginning of the issue.
    beginOffsetChar :: Prelude.Natural,
    -- | The end of the issue.
    endOffsetChar :: Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CharacterOffsets' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'beginOffsetChar', 'characterOffsets_beginOffsetChar' - The beginning of the issue.
--
-- 'endOffsetChar', 'characterOffsets_endOffsetChar' - The end of the issue.
newCharacterOffsets ::
  -- | 'beginOffsetChar'
  Prelude.Natural ->
  -- | 'endOffsetChar'
  Prelude.Natural ->
  CharacterOffsets
newCharacterOffsets pBeginOffsetChar_ pEndOffsetChar_ =
  CharacterOffsets'
    { beginOffsetChar =
        pBeginOffsetChar_,
      endOffsetChar = pEndOffsetChar_
    }

-- | The beginning of the issue.
characterOffsets_beginOffsetChar :: Lens.Lens' CharacterOffsets Prelude.Natural
characterOffsets_beginOffsetChar = Lens.lens (\CharacterOffsets' {beginOffsetChar} -> beginOffsetChar) (\s@CharacterOffsets' {} a -> s {beginOffsetChar = a} :: CharacterOffsets)

-- | The end of the issue.
characterOffsets_endOffsetChar :: Lens.Lens' CharacterOffsets Prelude.Natural
characterOffsets_endOffsetChar = Lens.lens (\CharacterOffsets' {endOffsetChar} -> endOffsetChar) (\s@CharacterOffsets' {} a -> s {endOffsetChar = a} :: CharacterOffsets)

instance Core.FromJSON CharacterOffsets where
  parseJSON =
    Core.withObject
      "CharacterOffsets"
      ( \x ->
          CharacterOffsets'
            Prelude.<$> (x Core..: "BeginOffsetChar")
            Prelude.<*> (x Core..: "EndOffsetChar")
      )

instance Prelude.Hashable CharacterOffsets

instance Prelude.NFData CharacterOffsets
