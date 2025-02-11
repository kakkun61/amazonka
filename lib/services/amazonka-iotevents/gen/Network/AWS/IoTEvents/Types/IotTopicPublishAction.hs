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
-- Module      : Network.AWS.IoTEvents.Types.IotTopicPublishAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTEvents.Types.IotTopicPublishAction where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTEvents.Types.Payload
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information required to publish the MQTT message through the AWS IoT
-- message broker.
--
-- /See:/ 'newIotTopicPublishAction' smart constructor.
data IotTopicPublishAction = IotTopicPublishAction'
  { -- | You can configure the action payload when you publish a message to an
    -- AWS IoT Core topic.
    payload :: Prelude.Maybe Payload,
    -- | The MQTT topic of the message. You can use a string expression that
    -- includes variables (@$variable.\<variable-name>@) and input values
    -- (@$input.\<input-name>.\<path-to-datum>@) as the topic string.
    mqttTopic :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'IotTopicPublishAction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'payload', 'iotTopicPublishAction_payload' - You can configure the action payload when you publish a message to an
-- AWS IoT Core topic.
--
-- 'mqttTopic', 'iotTopicPublishAction_mqttTopic' - The MQTT topic of the message. You can use a string expression that
-- includes variables (@$variable.\<variable-name>@) and input values
-- (@$input.\<input-name>.\<path-to-datum>@) as the topic string.
newIotTopicPublishAction ::
  -- | 'mqttTopic'
  Prelude.Text ->
  IotTopicPublishAction
newIotTopicPublishAction pMqttTopic_ =
  IotTopicPublishAction'
    { payload = Prelude.Nothing,
      mqttTopic = pMqttTopic_
    }

-- | You can configure the action payload when you publish a message to an
-- AWS IoT Core topic.
iotTopicPublishAction_payload :: Lens.Lens' IotTopicPublishAction (Prelude.Maybe Payload)
iotTopicPublishAction_payload = Lens.lens (\IotTopicPublishAction' {payload} -> payload) (\s@IotTopicPublishAction' {} a -> s {payload = a} :: IotTopicPublishAction)

-- | The MQTT topic of the message. You can use a string expression that
-- includes variables (@$variable.\<variable-name>@) and input values
-- (@$input.\<input-name>.\<path-to-datum>@) as the topic string.
iotTopicPublishAction_mqttTopic :: Lens.Lens' IotTopicPublishAction Prelude.Text
iotTopicPublishAction_mqttTopic = Lens.lens (\IotTopicPublishAction' {mqttTopic} -> mqttTopic) (\s@IotTopicPublishAction' {} a -> s {mqttTopic = a} :: IotTopicPublishAction)

instance Core.FromJSON IotTopicPublishAction where
  parseJSON =
    Core.withObject
      "IotTopicPublishAction"
      ( \x ->
          IotTopicPublishAction'
            Prelude.<$> (x Core..:? "payload")
            Prelude.<*> (x Core..: "mqttTopic")
      )

instance Prelude.Hashable IotTopicPublishAction

instance Prelude.NFData IotTopicPublishAction

instance Core.ToJSON IotTopicPublishAction where
  toJSON IotTopicPublishAction' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("payload" Core..=) Prelude.<$> payload,
            Prelude.Just ("mqttTopic" Core..= mqttTopic)
          ]
      )
