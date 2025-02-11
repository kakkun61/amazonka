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
-- Module      : Network.AWS.SecurityHub.Types.NoteUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.NoteUpdate where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The updated note.
--
-- /See:/ 'newNoteUpdate' smart constructor.
data NoteUpdate = NoteUpdate'
  { -- | The updated note text.
    text :: Prelude.Text,
    -- | The principal that updated the note.
    updatedBy :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'NoteUpdate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'text', 'noteUpdate_text' - The updated note text.
--
-- 'updatedBy', 'noteUpdate_updatedBy' - The principal that updated the note.
newNoteUpdate ::
  -- | 'text'
  Prelude.Text ->
  -- | 'updatedBy'
  Prelude.Text ->
  NoteUpdate
newNoteUpdate pText_ pUpdatedBy_ =
  NoteUpdate' {text = pText_, updatedBy = pUpdatedBy_}

-- | The updated note text.
noteUpdate_text :: Lens.Lens' NoteUpdate Prelude.Text
noteUpdate_text = Lens.lens (\NoteUpdate' {text} -> text) (\s@NoteUpdate' {} a -> s {text = a} :: NoteUpdate)

-- | The principal that updated the note.
noteUpdate_updatedBy :: Lens.Lens' NoteUpdate Prelude.Text
noteUpdate_updatedBy = Lens.lens (\NoteUpdate' {updatedBy} -> updatedBy) (\s@NoteUpdate' {} a -> s {updatedBy = a} :: NoteUpdate)

instance Prelude.Hashable NoteUpdate

instance Prelude.NFData NoteUpdate

instance Core.ToJSON NoteUpdate where
  toJSON NoteUpdate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Text" Core..= text),
            Prelude.Just ("UpdatedBy" Core..= updatedBy)
          ]
      )
