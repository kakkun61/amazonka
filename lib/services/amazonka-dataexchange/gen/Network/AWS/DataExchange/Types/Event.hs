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
-- Module      : Network.AWS.DataExchange.Types.Event
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DataExchange.Types.Event where

import qualified Network.AWS.Core as Core
import Network.AWS.DataExchange.Types.RevisionPublished
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | What occurs to start an action.
--
-- /See:/ 'newEvent' smart constructor.
data Event = Event'
  { -- | What occurs to start the revision publish action.
    revisionPublished :: Prelude.Maybe RevisionPublished
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Event' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'revisionPublished', 'event_revisionPublished' - What occurs to start the revision publish action.
newEvent ::
  Event
newEvent =
  Event' {revisionPublished = Prelude.Nothing}

-- | What occurs to start the revision publish action.
event_revisionPublished :: Lens.Lens' Event (Prelude.Maybe RevisionPublished)
event_revisionPublished = Lens.lens (\Event' {revisionPublished} -> revisionPublished) (\s@Event' {} a -> s {revisionPublished = a} :: Event)

instance Core.FromJSON Event where
  parseJSON =
    Core.withObject
      "Event"
      ( \x ->
          Event' Prelude.<$> (x Core..:? "RevisionPublished")
      )

instance Prelude.Hashable Event

instance Prelude.NFData Event

instance Core.ToJSON Event where
  toJSON Event' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("RevisionPublished" Core..=)
              Prelude.<$> revisionPublished
          ]
      )
