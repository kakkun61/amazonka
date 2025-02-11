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
-- Module      : Network.AWS.CodeStarNotifications.Types.EventTypeSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeStarNotifications.Types.EventTypeSummary where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Returns information about an event that has triggered a notification
-- rule.
--
-- /See:/ 'newEventTypeSummary' smart constructor.
data EventTypeSummary = EventTypeSummary'
  { -- | The resource type of the event.
    resourceType :: Prelude.Maybe Prelude.Text,
    -- | The name of the event.
    eventTypeName :: Prelude.Maybe Prelude.Text,
    -- | The system-generated ID of the event.
    eventTypeId :: Prelude.Maybe Prelude.Text,
    -- | The name of the service for which the event applies.
    serviceName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EventTypeSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceType', 'eventTypeSummary_resourceType' - The resource type of the event.
--
-- 'eventTypeName', 'eventTypeSummary_eventTypeName' - The name of the event.
--
-- 'eventTypeId', 'eventTypeSummary_eventTypeId' - The system-generated ID of the event.
--
-- 'serviceName', 'eventTypeSummary_serviceName' - The name of the service for which the event applies.
newEventTypeSummary ::
  EventTypeSummary
newEventTypeSummary =
  EventTypeSummary'
    { resourceType = Prelude.Nothing,
      eventTypeName = Prelude.Nothing,
      eventTypeId = Prelude.Nothing,
      serviceName = Prelude.Nothing
    }

-- | The resource type of the event.
eventTypeSummary_resourceType :: Lens.Lens' EventTypeSummary (Prelude.Maybe Prelude.Text)
eventTypeSummary_resourceType = Lens.lens (\EventTypeSummary' {resourceType} -> resourceType) (\s@EventTypeSummary' {} a -> s {resourceType = a} :: EventTypeSummary)

-- | The name of the event.
eventTypeSummary_eventTypeName :: Lens.Lens' EventTypeSummary (Prelude.Maybe Prelude.Text)
eventTypeSummary_eventTypeName = Lens.lens (\EventTypeSummary' {eventTypeName} -> eventTypeName) (\s@EventTypeSummary' {} a -> s {eventTypeName = a} :: EventTypeSummary)

-- | The system-generated ID of the event.
eventTypeSummary_eventTypeId :: Lens.Lens' EventTypeSummary (Prelude.Maybe Prelude.Text)
eventTypeSummary_eventTypeId = Lens.lens (\EventTypeSummary' {eventTypeId} -> eventTypeId) (\s@EventTypeSummary' {} a -> s {eventTypeId = a} :: EventTypeSummary)

-- | The name of the service for which the event applies.
eventTypeSummary_serviceName :: Lens.Lens' EventTypeSummary (Prelude.Maybe Prelude.Text)
eventTypeSummary_serviceName = Lens.lens (\EventTypeSummary' {serviceName} -> serviceName) (\s@EventTypeSummary' {} a -> s {serviceName = a} :: EventTypeSummary)

instance Core.FromJSON EventTypeSummary where
  parseJSON =
    Core.withObject
      "EventTypeSummary"
      ( \x ->
          EventTypeSummary'
            Prelude.<$> (x Core..:? "ResourceType")
            Prelude.<*> (x Core..:? "EventTypeName")
            Prelude.<*> (x Core..:? "EventTypeId")
            Prelude.<*> (x Core..:? "ServiceName")
      )

instance Prelude.Hashable EventTypeSummary

instance Prelude.NFData EventTypeSummary
