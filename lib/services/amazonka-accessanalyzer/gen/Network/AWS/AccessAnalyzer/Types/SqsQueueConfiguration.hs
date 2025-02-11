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
-- Module      : Network.AWS.AccessAnalyzer.Types.SqsQueueConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AccessAnalyzer.Types.SqsQueueConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The proposed access control configuration for an Amazon SQS queue. You
-- can propose a configuration for a new Amazon SQS queue or an existing
-- Amazon SQS queue that you own by specifying the Amazon SQS policy. If
-- the configuration is for an existing Amazon SQS queue and you do not
-- specify the Amazon SQS policy, the access preview uses the existing
-- Amazon SQS policy for the queue. If the access preview is for a new
-- resource and you do not specify the policy, the access preview assumes
-- an Amazon SQS queue without a policy. To propose deletion of an existing
-- Amazon SQS queue policy, you can specify an empty string for the Amazon
-- SQS policy. For more information about Amazon SQS policy limits, see
-- <https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/quotas-policies.html Quotas related to policies>.
--
-- /See:/ 'newSqsQueueConfiguration' smart constructor.
data SqsQueueConfiguration = SqsQueueConfiguration'
  { -- | The proposed resource policy for the Amazon SQS queue.
    queuePolicy :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SqsQueueConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'queuePolicy', 'sqsQueueConfiguration_queuePolicy' - The proposed resource policy for the Amazon SQS queue.
newSqsQueueConfiguration ::
  SqsQueueConfiguration
newSqsQueueConfiguration =
  SqsQueueConfiguration'
    { queuePolicy =
        Prelude.Nothing
    }

-- | The proposed resource policy for the Amazon SQS queue.
sqsQueueConfiguration_queuePolicy :: Lens.Lens' SqsQueueConfiguration (Prelude.Maybe Prelude.Text)
sqsQueueConfiguration_queuePolicy = Lens.lens (\SqsQueueConfiguration' {queuePolicy} -> queuePolicy) (\s@SqsQueueConfiguration' {} a -> s {queuePolicy = a} :: SqsQueueConfiguration)

instance Core.FromJSON SqsQueueConfiguration where
  parseJSON =
    Core.withObject
      "SqsQueueConfiguration"
      ( \x ->
          SqsQueueConfiguration'
            Prelude.<$> (x Core..:? "queuePolicy")
      )

instance Prelude.Hashable SqsQueueConfiguration

instance Prelude.NFData SqsQueueConfiguration

instance Core.ToJSON SqsQueueConfiguration where
  toJSON SqsQueueConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [("queuePolicy" Core..=) Prelude.<$> queuePolicy]
      )
