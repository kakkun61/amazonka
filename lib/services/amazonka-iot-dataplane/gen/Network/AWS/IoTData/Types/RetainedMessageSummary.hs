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
-- Module      : Network.AWS.IoTData.Types.RetainedMessageSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTData.Types.RetainedMessageSummary where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about a single retained message.
--
-- /See:/ 'newRetainedMessageSummary' smart constructor.
data RetainedMessageSummary = RetainedMessageSummary'
  { -- | The Epoch date and time, in milliseconds, when the retained message was
    -- stored by IoT.
    lastModifiedTime :: Prelude.Maybe Prelude.Integer,
    -- | The topic name to which the retained message was published.
    topic :: Prelude.Maybe Prelude.Text,
    -- | The quality of service (QoS) level used to publish the retained message.
    qos :: Prelude.Maybe Prelude.Natural,
    -- | The size of the retained message\'s payload in bytes.
    payloadSize :: Prelude.Maybe Prelude.Integer
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RetainedMessageSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastModifiedTime', 'retainedMessageSummary_lastModifiedTime' - The Epoch date and time, in milliseconds, when the retained message was
-- stored by IoT.
--
-- 'topic', 'retainedMessageSummary_topic' - The topic name to which the retained message was published.
--
-- 'qos', 'retainedMessageSummary_qos' - The quality of service (QoS) level used to publish the retained message.
--
-- 'payloadSize', 'retainedMessageSummary_payloadSize' - The size of the retained message\'s payload in bytes.
newRetainedMessageSummary ::
  RetainedMessageSummary
newRetainedMessageSummary =
  RetainedMessageSummary'
    { lastModifiedTime =
        Prelude.Nothing,
      topic = Prelude.Nothing,
      qos = Prelude.Nothing,
      payloadSize = Prelude.Nothing
    }

-- | The Epoch date and time, in milliseconds, when the retained message was
-- stored by IoT.
retainedMessageSummary_lastModifiedTime :: Lens.Lens' RetainedMessageSummary (Prelude.Maybe Prelude.Integer)
retainedMessageSummary_lastModifiedTime = Lens.lens (\RetainedMessageSummary' {lastModifiedTime} -> lastModifiedTime) (\s@RetainedMessageSummary' {} a -> s {lastModifiedTime = a} :: RetainedMessageSummary)

-- | The topic name to which the retained message was published.
retainedMessageSummary_topic :: Lens.Lens' RetainedMessageSummary (Prelude.Maybe Prelude.Text)
retainedMessageSummary_topic = Lens.lens (\RetainedMessageSummary' {topic} -> topic) (\s@RetainedMessageSummary' {} a -> s {topic = a} :: RetainedMessageSummary)

-- | The quality of service (QoS) level used to publish the retained message.
retainedMessageSummary_qos :: Lens.Lens' RetainedMessageSummary (Prelude.Maybe Prelude.Natural)
retainedMessageSummary_qos = Lens.lens (\RetainedMessageSummary' {qos} -> qos) (\s@RetainedMessageSummary' {} a -> s {qos = a} :: RetainedMessageSummary)

-- | The size of the retained message\'s payload in bytes.
retainedMessageSummary_payloadSize :: Lens.Lens' RetainedMessageSummary (Prelude.Maybe Prelude.Integer)
retainedMessageSummary_payloadSize = Lens.lens (\RetainedMessageSummary' {payloadSize} -> payloadSize) (\s@RetainedMessageSummary' {} a -> s {payloadSize = a} :: RetainedMessageSummary)

instance Core.FromJSON RetainedMessageSummary where
  parseJSON =
    Core.withObject
      "RetainedMessageSummary"
      ( \x ->
          RetainedMessageSummary'
            Prelude.<$> (x Core..:? "lastModifiedTime")
            Prelude.<*> (x Core..:? "topic")
            Prelude.<*> (x Core..:? "qos")
            Prelude.<*> (x Core..:? "payloadSize")
      )

instance Prelude.Hashable RetainedMessageSummary

instance Prelude.NFData RetainedMessageSummary
