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
-- Module      : Network.AWS.Chime.Types.SelectedVideoStreams
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Chime.Types.SelectedVideoStreams where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The video streams to capture for a specified media capture pipeline. The
-- total number of video streams can\'t exceed 25.
--
-- /See:/ 'newSelectedVideoStreams' smart constructor.
data SelectedVideoStreams = SelectedVideoStreams'
  { -- | The attendee IDs of the streams selected for a media capture pipeline.
    attendeeIds :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | The external user IDs of the streams selected for a media capture
    -- pipeline.
    externalUserIds :: Prelude.Maybe (Prelude.NonEmpty (Core.Sensitive Prelude.Text))
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SelectedVideoStreams' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'attendeeIds', 'selectedVideoStreams_attendeeIds' - The attendee IDs of the streams selected for a media capture pipeline.
--
-- 'externalUserIds', 'selectedVideoStreams_externalUserIds' - The external user IDs of the streams selected for a media capture
-- pipeline.
newSelectedVideoStreams ::
  SelectedVideoStreams
newSelectedVideoStreams =
  SelectedVideoStreams'
    { attendeeIds =
        Prelude.Nothing,
      externalUserIds = Prelude.Nothing
    }

-- | The attendee IDs of the streams selected for a media capture pipeline.
selectedVideoStreams_attendeeIds :: Lens.Lens' SelectedVideoStreams (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
selectedVideoStreams_attendeeIds = Lens.lens (\SelectedVideoStreams' {attendeeIds} -> attendeeIds) (\s@SelectedVideoStreams' {} a -> s {attendeeIds = a} :: SelectedVideoStreams) Prelude.. Lens.mapping Lens.coerced

-- | The external user IDs of the streams selected for a media capture
-- pipeline.
selectedVideoStreams_externalUserIds :: Lens.Lens' SelectedVideoStreams (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
selectedVideoStreams_externalUserIds = Lens.lens (\SelectedVideoStreams' {externalUserIds} -> externalUserIds) (\s@SelectedVideoStreams' {} a -> s {externalUserIds = a} :: SelectedVideoStreams) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON SelectedVideoStreams where
  parseJSON =
    Core.withObject
      "SelectedVideoStreams"
      ( \x ->
          SelectedVideoStreams'
            Prelude.<$> (x Core..:? "AttendeeIds")
            Prelude.<*> (x Core..:? "ExternalUserIds")
      )

instance Prelude.Hashable SelectedVideoStreams

instance Prelude.NFData SelectedVideoStreams

instance Core.ToJSON SelectedVideoStreams where
  toJSON SelectedVideoStreams' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("AttendeeIds" Core..=) Prelude.<$> attendeeIds,
            ("ExternalUserIds" Core..=)
              Prelude.<$> externalUserIds
          ]
      )
