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
-- Module      : Network.AWS.SecurityHub.Types.AwsLambdaFunctionDeadLetterConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsLambdaFunctionDeadLetterConfig where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The dead-letter queue for failed asynchronous invocations.
--
-- /See:/ 'newAwsLambdaFunctionDeadLetterConfig' smart constructor.
data AwsLambdaFunctionDeadLetterConfig = AwsLambdaFunctionDeadLetterConfig'
  { -- | The ARN of an SQS queue or SNS topic.
    targetArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsLambdaFunctionDeadLetterConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'targetArn', 'awsLambdaFunctionDeadLetterConfig_targetArn' - The ARN of an SQS queue or SNS topic.
newAwsLambdaFunctionDeadLetterConfig ::
  AwsLambdaFunctionDeadLetterConfig
newAwsLambdaFunctionDeadLetterConfig =
  AwsLambdaFunctionDeadLetterConfig'
    { targetArn =
        Prelude.Nothing
    }

-- | The ARN of an SQS queue or SNS topic.
awsLambdaFunctionDeadLetterConfig_targetArn :: Lens.Lens' AwsLambdaFunctionDeadLetterConfig (Prelude.Maybe Prelude.Text)
awsLambdaFunctionDeadLetterConfig_targetArn = Lens.lens (\AwsLambdaFunctionDeadLetterConfig' {targetArn} -> targetArn) (\s@AwsLambdaFunctionDeadLetterConfig' {} a -> s {targetArn = a} :: AwsLambdaFunctionDeadLetterConfig)

instance
  Core.FromJSON
    AwsLambdaFunctionDeadLetterConfig
  where
  parseJSON =
    Core.withObject
      "AwsLambdaFunctionDeadLetterConfig"
      ( \x ->
          AwsLambdaFunctionDeadLetterConfig'
            Prelude.<$> (x Core..:? "TargetArn")
      )

instance
  Prelude.Hashable
    AwsLambdaFunctionDeadLetterConfig

instance
  Prelude.NFData
    AwsLambdaFunctionDeadLetterConfig

instance
  Core.ToJSON
    AwsLambdaFunctionDeadLetterConfig
  where
  toJSON AwsLambdaFunctionDeadLetterConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [("TargetArn" Core..=) Prelude.<$> targetArn]
      )
