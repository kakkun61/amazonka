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
-- Module      : Network.AWS.CloudWatchEvents.Types.PutPartnerEventsRequestEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.PutPartnerEventsRequestEntry where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The details about an event generated by an SaaS partner.
--
-- /See:/ 'newPutPartnerEventsRequestEntry' smart constructor.
data PutPartnerEventsRequestEntry = PutPartnerEventsRequestEntry'
  { -- | The date and time of the event.
    time :: Prelude.Maybe Core.POSIX,
    -- | A free-form string used to decide what fields to expect in the event
    -- detail.
    detailType :: Prelude.Maybe Prelude.Text,
    -- | Amazon Web Services resources, identified by Amazon Resource Name (ARN),
    -- which the event primarily concerns. Any number, including zero, may be
    -- present.
    resources :: Prelude.Maybe [Prelude.Text],
    -- | The event source that is generating the entry.
    source :: Prelude.Maybe Prelude.Text,
    -- | A valid JSON string. There is no other schema imposed. The JSON string
    -- may contain fields and nested subobjects.
    detail :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutPartnerEventsRequestEntry' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'time', 'putPartnerEventsRequestEntry_time' - The date and time of the event.
--
-- 'detailType', 'putPartnerEventsRequestEntry_detailType' - A free-form string used to decide what fields to expect in the event
-- detail.
--
-- 'resources', 'putPartnerEventsRequestEntry_resources' - Amazon Web Services resources, identified by Amazon Resource Name (ARN),
-- which the event primarily concerns. Any number, including zero, may be
-- present.
--
-- 'source', 'putPartnerEventsRequestEntry_source' - The event source that is generating the entry.
--
-- 'detail', 'putPartnerEventsRequestEntry_detail' - A valid JSON string. There is no other schema imposed. The JSON string
-- may contain fields and nested subobjects.
newPutPartnerEventsRequestEntry ::
  PutPartnerEventsRequestEntry
newPutPartnerEventsRequestEntry =
  PutPartnerEventsRequestEntry'
    { time =
        Prelude.Nothing,
      detailType = Prelude.Nothing,
      resources = Prelude.Nothing,
      source = Prelude.Nothing,
      detail = Prelude.Nothing
    }

-- | The date and time of the event.
putPartnerEventsRequestEntry_time :: Lens.Lens' PutPartnerEventsRequestEntry (Prelude.Maybe Prelude.UTCTime)
putPartnerEventsRequestEntry_time = Lens.lens (\PutPartnerEventsRequestEntry' {time} -> time) (\s@PutPartnerEventsRequestEntry' {} a -> s {time = a} :: PutPartnerEventsRequestEntry) Prelude.. Lens.mapping Core._Time

-- | A free-form string used to decide what fields to expect in the event
-- detail.
putPartnerEventsRequestEntry_detailType :: Lens.Lens' PutPartnerEventsRequestEntry (Prelude.Maybe Prelude.Text)
putPartnerEventsRequestEntry_detailType = Lens.lens (\PutPartnerEventsRequestEntry' {detailType} -> detailType) (\s@PutPartnerEventsRequestEntry' {} a -> s {detailType = a} :: PutPartnerEventsRequestEntry)

-- | Amazon Web Services resources, identified by Amazon Resource Name (ARN),
-- which the event primarily concerns. Any number, including zero, may be
-- present.
putPartnerEventsRequestEntry_resources :: Lens.Lens' PutPartnerEventsRequestEntry (Prelude.Maybe [Prelude.Text])
putPartnerEventsRequestEntry_resources = Lens.lens (\PutPartnerEventsRequestEntry' {resources} -> resources) (\s@PutPartnerEventsRequestEntry' {} a -> s {resources = a} :: PutPartnerEventsRequestEntry) Prelude.. Lens.mapping Lens.coerced

-- | The event source that is generating the entry.
putPartnerEventsRequestEntry_source :: Lens.Lens' PutPartnerEventsRequestEntry (Prelude.Maybe Prelude.Text)
putPartnerEventsRequestEntry_source = Lens.lens (\PutPartnerEventsRequestEntry' {source} -> source) (\s@PutPartnerEventsRequestEntry' {} a -> s {source = a} :: PutPartnerEventsRequestEntry)

-- | A valid JSON string. There is no other schema imposed. The JSON string
-- may contain fields and nested subobjects.
putPartnerEventsRequestEntry_detail :: Lens.Lens' PutPartnerEventsRequestEntry (Prelude.Maybe Prelude.Text)
putPartnerEventsRequestEntry_detail = Lens.lens (\PutPartnerEventsRequestEntry' {detail} -> detail) (\s@PutPartnerEventsRequestEntry' {} a -> s {detail = a} :: PutPartnerEventsRequestEntry)

instance
  Prelude.Hashable
    PutPartnerEventsRequestEntry

instance Prelude.NFData PutPartnerEventsRequestEntry

instance Core.ToJSON PutPartnerEventsRequestEntry where
  toJSON PutPartnerEventsRequestEntry' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Time" Core..=) Prelude.<$> time,
            ("DetailType" Core..=) Prelude.<$> detailType,
            ("Resources" Core..=) Prelude.<$> resources,
            ("Source" Core..=) Prelude.<$> source,
            ("Detail" Core..=) Prelude.<$> detail
          ]
      )
