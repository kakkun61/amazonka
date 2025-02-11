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
-- Module      : Network.AWS.IoTEvents.Types.AlarmAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTEvents.Types.AlarmAction where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTEvents.Types.DynamoDBAction
import Network.AWS.IoTEvents.Types.DynamoDBv2Action
import Network.AWS.IoTEvents.Types.FirehoseAction
import Network.AWS.IoTEvents.Types.IotEventsAction
import Network.AWS.IoTEvents.Types.IotSiteWiseAction
import Network.AWS.IoTEvents.Types.IotTopicPublishAction
import Network.AWS.IoTEvents.Types.LambdaAction
import Network.AWS.IoTEvents.Types.SNSTopicPublishAction
import Network.AWS.IoTEvents.Types.SqsAction
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Specifies one of the following actions to receive notifications when the
-- alarm state changes.
--
-- /See:/ 'newAlarmAction' smart constructor.
data AlarmAction = AlarmAction'
  { iotTopicPublish :: Prelude.Maybe IotTopicPublishAction,
    dynamoDBv2 :: Prelude.Maybe DynamoDBv2Action,
    sns :: Prelude.Maybe SNSTopicPublishAction,
    dynamoDB :: Prelude.Maybe DynamoDBAction,
    firehose :: Prelude.Maybe FirehoseAction,
    iotSiteWise :: Prelude.Maybe IotSiteWiseAction,
    lambda :: Prelude.Maybe LambdaAction,
    iotEvents :: Prelude.Maybe IotEventsAction,
    sqs :: Prelude.Maybe SqsAction
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AlarmAction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'iotTopicPublish', 'alarmAction_iotTopicPublish' - Undocumented member.
--
-- 'dynamoDBv2', 'alarmAction_dynamoDBv2' - Undocumented member.
--
-- 'sns', 'alarmAction_sns' - Undocumented member.
--
-- 'dynamoDB', 'alarmAction_dynamoDB' - Undocumented member.
--
-- 'firehose', 'alarmAction_firehose' - Undocumented member.
--
-- 'iotSiteWise', 'alarmAction_iotSiteWise' - Undocumented member.
--
-- 'lambda', 'alarmAction_lambda' - Undocumented member.
--
-- 'iotEvents', 'alarmAction_iotEvents' - Undocumented member.
--
-- 'sqs', 'alarmAction_sqs' - Undocumented member.
newAlarmAction ::
  AlarmAction
newAlarmAction =
  AlarmAction'
    { iotTopicPublish = Prelude.Nothing,
      dynamoDBv2 = Prelude.Nothing,
      sns = Prelude.Nothing,
      dynamoDB = Prelude.Nothing,
      firehose = Prelude.Nothing,
      iotSiteWise = Prelude.Nothing,
      lambda = Prelude.Nothing,
      iotEvents = Prelude.Nothing,
      sqs = Prelude.Nothing
    }

-- | Undocumented member.
alarmAction_iotTopicPublish :: Lens.Lens' AlarmAction (Prelude.Maybe IotTopicPublishAction)
alarmAction_iotTopicPublish = Lens.lens (\AlarmAction' {iotTopicPublish} -> iotTopicPublish) (\s@AlarmAction' {} a -> s {iotTopicPublish = a} :: AlarmAction)

-- | Undocumented member.
alarmAction_dynamoDBv2 :: Lens.Lens' AlarmAction (Prelude.Maybe DynamoDBv2Action)
alarmAction_dynamoDBv2 = Lens.lens (\AlarmAction' {dynamoDBv2} -> dynamoDBv2) (\s@AlarmAction' {} a -> s {dynamoDBv2 = a} :: AlarmAction)

-- | Undocumented member.
alarmAction_sns :: Lens.Lens' AlarmAction (Prelude.Maybe SNSTopicPublishAction)
alarmAction_sns = Lens.lens (\AlarmAction' {sns} -> sns) (\s@AlarmAction' {} a -> s {sns = a} :: AlarmAction)

-- | Undocumented member.
alarmAction_dynamoDB :: Lens.Lens' AlarmAction (Prelude.Maybe DynamoDBAction)
alarmAction_dynamoDB = Lens.lens (\AlarmAction' {dynamoDB} -> dynamoDB) (\s@AlarmAction' {} a -> s {dynamoDB = a} :: AlarmAction)

-- | Undocumented member.
alarmAction_firehose :: Lens.Lens' AlarmAction (Prelude.Maybe FirehoseAction)
alarmAction_firehose = Lens.lens (\AlarmAction' {firehose} -> firehose) (\s@AlarmAction' {} a -> s {firehose = a} :: AlarmAction)

-- | Undocumented member.
alarmAction_iotSiteWise :: Lens.Lens' AlarmAction (Prelude.Maybe IotSiteWiseAction)
alarmAction_iotSiteWise = Lens.lens (\AlarmAction' {iotSiteWise} -> iotSiteWise) (\s@AlarmAction' {} a -> s {iotSiteWise = a} :: AlarmAction)

-- | Undocumented member.
alarmAction_lambda :: Lens.Lens' AlarmAction (Prelude.Maybe LambdaAction)
alarmAction_lambda = Lens.lens (\AlarmAction' {lambda} -> lambda) (\s@AlarmAction' {} a -> s {lambda = a} :: AlarmAction)

-- | Undocumented member.
alarmAction_iotEvents :: Lens.Lens' AlarmAction (Prelude.Maybe IotEventsAction)
alarmAction_iotEvents = Lens.lens (\AlarmAction' {iotEvents} -> iotEvents) (\s@AlarmAction' {} a -> s {iotEvents = a} :: AlarmAction)

-- | Undocumented member.
alarmAction_sqs :: Lens.Lens' AlarmAction (Prelude.Maybe SqsAction)
alarmAction_sqs = Lens.lens (\AlarmAction' {sqs} -> sqs) (\s@AlarmAction' {} a -> s {sqs = a} :: AlarmAction)

instance Core.FromJSON AlarmAction where
  parseJSON =
    Core.withObject
      "AlarmAction"
      ( \x ->
          AlarmAction'
            Prelude.<$> (x Core..:? "iotTopicPublish")
            Prelude.<*> (x Core..:? "dynamoDBv2")
            Prelude.<*> (x Core..:? "sns")
            Prelude.<*> (x Core..:? "dynamoDB")
            Prelude.<*> (x Core..:? "firehose")
            Prelude.<*> (x Core..:? "iotSiteWise")
            Prelude.<*> (x Core..:? "lambda")
            Prelude.<*> (x Core..:? "iotEvents")
            Prelude.<*> (x Core..:? "sqs")
      )

instance Prelude.Hashable AlarmAction

instance Prelude.NFData AlarmAction

instance Core.ToJSON AlarmAction where
  toJSON AlarmAction' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("iotTopicPublish" Core..=)
              Prelude.<$> iotTopicPublish,
            ("dynamoDBv2" Core..=) Prelude.<$> dynamoDBv2,
            ("sns" Core..=) Prelude.<$> sns,
            ("dynamoDB" Core..=) Prelude.<$> dynamoDB,
            ("firehose" Core..=) Prelude.<$> firehose,
            ("iotSiteWise" Core..=) Prelude.<$> iotSiteWise,
            ("lambda" Core..=) Prelude.<$> lambda,
            ("iotEvents" Core..=) Prelude.<$> iotEvents,
            ("sqs" Core..=) Prelude.<$> sqs
          ]
      )
