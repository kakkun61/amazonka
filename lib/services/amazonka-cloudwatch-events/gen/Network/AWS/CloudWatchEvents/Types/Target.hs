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
-- Module      : Network.AWS.CloudWatchEvents.Types.Target
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.Target where

import Network.AWS.CloudWatchEvents.Types.BatchParameters
import Network.AWS.CloudWatchEvents.Types.DeadLetterConfig
import Network.AWS.CloudWatchEvents.Types.EcsParameters
import Network.AWS.CloudWatchEvents.Types.HttpParameters
import Network.AWS.CloudWatchEvents.Types.InputTransformer
import Network.AWS.CloudWatchEvents.Types.KinesisParameters
import Network.AWS.CloudWatchEvents.Types.RedshiftDataParameters
import Network.AWS.CloudWatchEvents.Types.RetryPolicy
import Network.AWS.CloudWatchEvents.Types.RunCommandParameters
import Network.AWS.CloudWatchEvents.Types.SageMakerPipelineParameters
import Network.AWS.CloudWatchEvents.Types.SqsParameters
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Targets are the resources to be invoked when a rule is triggered. For a
-- complete list of services and resources that can be set as a target, see
-- <https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutTargets.html PutTargets>.
--
-- If you are setting the event bus of another account as the target, and
-- that account granted permission to your account through an organization
-- instead of directly by the account ID, then you must specify a @RoleArn@
-- with proper permissions in the @Target@ structure. For more information,
-- see
-- <https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-cross-account-event-delivery.html Sending and Receiving Events Between Amazon Web Services Accounts>
-- in the /Amazon EventBridge User Guide/.
--
-- /See:/ 'newTarget' smart constructor.
data Target = Target'
  { -- | Parameters used when you are using the rule to invoke Amazon EC2 Run
    -- Command.
    runCommandParameters :: Prelude.Maybe RunCommandParameters,
    -- | Contains the HTTP parameters to use when the target is a API Gateway
    -- REST endpoint or EventBridge ApiDestination.
    --
    -- If you specify an API Gateway REST API or EventBridge ApiDestination as
    -- a target, you can use this parameter to specify headers, path
    -- parameters, and query string keys\/values as part of your target
    -- invoking request. If you\'re using ApiDestinations, the corresponding
    -- Connection can also have these values configured. In case of any
    -- conflicting keys, values from the Connection take precedence.
    httpParameters :: Prelude.Maybe HttpParameters,
    -- | The custom parameter you can use to control the shard assignment, when
    -- the target is a Kinesis data stream. If you do not include this
    -- parameter, the default is to use the @eventId@ as the partition key.
    kinesisParameters :: Prelude.Maybe KinesisParameters,
    -- | Settings to enable you to provide custom input to a target based on
    -- certain event data. You can extract one or more key-value pairs from the
    -- event and then use that data to send customized input to the target.
    inputTransformer :: Prelude.Maybe InputTransformer,
    -- | The @DeadLetterConfig@ that defines the target queue to send dead-letter
    -- queue events to.
    deadLetterConfig :: Prelude.Maybe DeadLetterConfig,
    -- | Contains the SageMaker Model Building Pipeline parameters to start
    -- execution of a SageMaker Model Building Pipeline.
    --
    -- If you specify a SageMaker Model Building Pipeline as a target, you can
    -- use this to specify parameters to start a pipeline execution based on
    -- EventBridge events.
    sageMakerPipelineParameters :: Prelude.Maybe SageMakerPipelineParameters,
    -- | Contains the message group ID to use when the target is a FIFO queue.
    --
    -- If you specify an SQS FIFO queue as a target, the queue must have
    -- content-based deduplication enabled.
    sqsParameters :: Prelude.Maybe SqsParameters,
    -- | Valid JSON text passed to the target. In this case, nothing from the
    -- event itself is passed to the target. For more information, see
    -- <http://www.rfc-editor.org/rfc/rfc7159.txt The JavaScript Object Notation (JSON) Data Interchange Format>.
    input :: Prelude.Maybe Prelude.Text,
    -- | If the event target is an Batch job, this contains the job definition,
    -- job name, and other parameters. For more information, see
    -- <https://docs.aws.amazon.com/batch/latest/userguide/jobs.html Jobs> in
    -- the /Batch User Guide/.
    batchParameters :: Prelude.Maybe BatchParameters,
    -- | Contains the Amazon Redshift Data API parameters to use when the target
    -- is a Amazon Redshift cluster.
    --
    -- If you specify a Amazon Redshift Cluster as a Target, you can use this
    -- to specify parameters to invoke the Amazon Redshift Data API
    -- ExecuteStatement based on EventBridge events.
    redshiftDataParameters :: Prelude.Maybe RedshiftDataParameters,
    -- | Contains the Amazon ECS task definition and task count to be used, if
    -- the event target is an Amazon ECS task. For more information about
    -- Amazon ECS tasks, see
    -- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html Task Definitions>
    -- in the /Amazon EC2 Container Service Developer Guide/.
    ecsParameters :: Prelude.Maybe EcsParameters,
    -- | The @RetryPolicy@ object that contains the retry policy configuration to
    -- use for the dead-letter queue.
    retryPolicy :: Prelude.Maybe RetryPolicy,
    -- | The value of the JSONPath that is used for extracting part of the
    -- matched event when passing it to the target. You must use JSON dot
    -- notation, not bracket notation. For more information about JSON paths,
    -- see <http://goessner.net/articles/JsonPath/ JSONPath>.
    inputPath :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the IAM role to be used for this
    -- target when the rule is triggered. If one rule triggers multiple
    -- targets, you can use a different IAM role for each target.
    roleArn :: Prelude.Maybe Prelude.Text,
    -- | The ID of the target. We recommend using a memorable and unique string.
    id :: Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the target.
    arn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Target' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'runCommandParameters', 'target_runCommandParameters' - Parameters used when you are using the rule to invoke Amazon EC2 Run
-- Command.
--
-- 'httpParameters', 'target_httpParameters' - Contains the HTTP parameters to use when the target is a API Gateway
-- REST endpoint or EventBridge ApiDestination.
--
-- If you specify an API Gateway REST API or EventBridge ApiDestination as
-- a target, you can use this parameter to specify headers, path
-- parameters, and query string keys\/values as part of your target
-- invoking request. If you\'re using ApiDestinations, the corresponding
-- Connection can also have these values configured. In case of any
-- conflicting keys, values from the Connection take precedence.
--
-- 'kinesisParameters', 'target_kinesisParameters' - The custom parameter you can use to control the shard assignment, when
-- the target is a Kinesis data stream. If you do not include this
-- parameter, the default is to use the @eventId@ as the partition key.
--
-- 'inputTransformer', 'target_inputTransformer' - Settings to enable you to provide custom input to a target based on
-- certain event data. You can extract one or more key-value pairs from the
-- event and then use that data to send customized input to the target.
--
-- 'deadLetterConfig', 'target_deadLetterConfig' - The @DeadLetterConfig@ that defines the target queue to send dead-letter
-- queue events to.
--
-- 'sageMakerPipelineParameters', 'target_sageMakerPipelineParameters' - Contains the SageMaker Model Building Pipeline parameters to start
-- execution of a SageMaker Model Building Pipeline.
--
-- If you specify a SageMaker Model Building Pipeline as a target, you can
-- use this to specify parameters to start a pipeline execution based on
-- EventBridge events.
--
-- 'sqsParameters', 'target_sqsParameters' - Contains the message group ID to use when the target is a FIFO queue.
--
-- If you specify an SQS FIFO queue as a target, the queue must have
-- content-based deduplication enabled.
--
-- 'input', 'target_input' - Valid JSON text passed to the target. In this case, nothing from the
-- event itself is passed to the target. For more information, see
-- <http://www.rfc-editor.org/rfc/rfc7159.txt The JavaScript Object Notation (JSON) Data Interchange Format>.
--
-- 'batchParameters', 'target_batchParameters' - If the event target is an Batch job, this contains the job definition,
-- job name, and other parameters. For more information, see
-- <https://docs.aws.amazon.com/batch/latest/userguide/jobs.html Jobs> in
-- the /Batch User Guide/.
--
-- 'redshiftDataParameters', 'target_redshiftDataParameters' - Contains the Amazon Redshift Data API parameters to use when the target
-- is a Amazon Redshift cluster.
--
-- If you specify a Amazon Redshift Cluster as a Target, you can use this
-- to specify parameters to invoke the Amazon Redshift Data API
-- ExecuteStatement based on EventBridge events.
--
-- 'ecsParameters', 'target_ecsParameters' - Contains the Amazon ECS task definition and task count to be used, if
-- the event target is an Amazon ECS task. For more information about
-- Amazon ECS tasks, see
-- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html Task Definitions>
-- in the /Amazon EC2 Container Service Developer Guide/.
--
-- 'retryPolicy', 'target_retryPolicy' - The @RetryPolicy@ object that contains the retry policy configuration to
-- use for the dead-letter queue.
--
-- 'inputPath', 'target_inputPath' - The value of the JSONPath that is used for extracting part of the
-- matched event when passing it to the target. You must use JSON dot
-- notation, not bracket notation. For more information about JSON paths,
-- see <http://goessner.net/articles/JsonPath/ JSONPath>.
--
-- 'roleArn', 'target_roleArn' - The Amazon Resource Name (ARN) of the IAM role to be used for this
-- target when the rule is triggered. If one rule triggers multiple
-- targets, you can use a different IAM role for each target.
--
-- 'id', 'target_id' - The ID of the target. We recommend using a memorable and unique string.
--
-- 'arn', 'target_arn' - The Amazon Resource Name (ARN) of the target.
newTarget ::
  -- | 'id'
  Prelude.Text ->
  -- | 'arn'
  Prelude.Text ->
  Target
newTarget pId_ pArn_ =
  Target'
    { runCommandParameters = Prelude.Nothing,
      httpParameters = Prelude.Nothing,
      kinesisParameters = Prelude.Nothing,
      inputTransformer = Prelude.Nothing,
      deadLetterConfig = Prelude.Nothing,
      sageMakerPipelineParameters = Prelude.Nothing,
      sqsParameters = Prelude.Nothing,
      input = Prelude.Nothing,
      batchParameters = Prelude.Nothing,
      redshiftDataParameters = Prelude.Nothing,
      ecsParameters = Prelude.Nothing,
      retryPolicy = Prelude.Nothing,
      inputPath = Prelude.Nothing,
      roleArn = Prelude.Nothing,
      id = pId_,
      arn = pArn_
    }

-- | Parameters used when you are using the rule to invoke Amazon EC2 Run
-- Command.
target_runCommandParameters :: Lens.Lens' Target (Prelude.Maybe RunCommandParameters)
target_runCommandParameters = Lens.lens (\Target' {runCommandParameters} -> runCommandParameters) (\s@Target' {} a -> s {runCommandParameters = a} :: Target)

-- | Contains the HTTP parameters to use when the target is a API Gateway
-- REST endpoint or EventBridge ApiDestination.
--
-- If you specify an API Gateway REST API or EventBridge ApiDestination as
-- a target, you can use this parameter to specify headers, path
-- parameters, and query string keys\/values as part of your target
-- invoking request. If you\'re using ApiDestinations, the corresponding
-- Connection can also have these values configured. In case of any
-- conflicting keys, values from the Connection take precedence.
target_httpParameters :: Lens.Lens' Target (Prelude.Maybe HttpParameters)
target_httpParameters = Lens.lens (\Target' {httpParameters} -> httpParameters) (\s@Target' {} a -> s {httpParameters = a} :: Target)

-- | The custom parameter you can use to control the shard assignment, when
-- the target is a Kinesis data stream. If you do not include this
-- parameter, the default is to use the @eventId@ as the partition key.
target_kinesisParameters :: Lens.Lens' Target (Prelude.Maybe KinesisParameters)
target_kinesisParameters = Lens.lens (\Target' {kinesisParameters} -> kinesisParameters) (\s@Target' {} a -> s {kinesisParameters = a} :: Target)

-- | Settings to enable you to provide custom input to a target based on
-- certain event data. You can extract one or more key-value pairs from the
-- event and then use that data to send customized input to the target.
target_inputTransformer :: Lens.Lens' Target (Prelude.Maybe InputTransformer)
target_inputTransformer = Lens.lens (\Target' {inputTransformer} -> inputTransformer) (\s@Target' {} a -> s {inputTransformer = a} :: Target)

-- | The @DeadLetterConfig@ that defines the target queue to send dead-letter
-- queue events to.
target_deadLetterConfig :: Lens.Lens' Target (Prelude.Maybe DeadLetterConfig)
target_deadLetterConfig = Lens.lens (\Target' {deadLetterConfig} -> deadLetterConfig) (\s@Target' {} a -> s {deadLetterConfig = a} :: Target)

-- | Contains the SageMaker Model Building Pipeline parameters to start
-- execution of a SageMaker Model Building Pipeline.
--
-- If you specify a SageMaker Model Building Pipeline as a target, you can
-- use this to specify parameters to start a pipeline execution based on
-- EventBridge events.
target_sageMakerPipelineParameters :: Lens.Lens' Target (Prelude.Maybe SageMakerPipelineParameters)
target_sageMakerPipelineParameters = Lens.lens (\Target' {sageMakerPipelineParameters} -> sageMakerPipelineParameters) (\s@Target' {} a -> s {sageMakerPipelineParameters = a} :: Target)

-- | Contains the message group ID to use when the target is a FIFO queue.
--
-- If you specify an SQS FIFO queue as a target, the queue must have
-- content-based deduplication enabled.
target_sqsParameters :: Lens.Lens' Target (Prelude.Maybe SqsParameters)
target_sqsParameters = Lens.lens (\Target' {sqsParameters} -> sqsParameters) (\s@Target' {} a -> s {sqsParameters = a} :: Target)

-- | Valid JSON text passed to the target. In this case, nothing from the
-- event itself is passed to the target. For more information, see
-- <http://www.rfc-editor.org/rfc/rfc7159.txt The JavaScript Object Notation (JSON) Data Interchange Format>.
target_input :: Lens.Lens' Target (Prelude.Maybe Prelude.Text)
target_input = Lens.lens (\Target' {input} -> input) (\s@Target' {} a -> s {input = a} :: Target)

-- | If the event target is an Batch job, this contains the job definition,
-- job name, and other parameters. For more information, see
-- <https://docs.aws.amazon.com/batch/latest/userguide/jobs.html Jobs> in
-- the /Batch User Guide/.
target_batchParameters :: Lens.Lens' Target (Prelude.Maybe BatchParameters)
target_batchParameters = Lens.lens (\Target' {batchParameters} -> batchParameters) (\s@Target' {} a -> s {batchParameters = a} :: Target)

-- | Contains the Amazon Redshift Data API parameters to use when the target
-- is a Amazon Redshift cluster.
--
-- If you specify a Amazon Redshift Cluster as a Target, you can use this
-- to specify parameters to invoke the Amazon Redshift Data API
-- ExecuteStatement based on EventBridge events.
target_redshiftDataParameters :: Lens.Lens' Target (Prelude.Maybe RedshiftDataParameters)
target_redshiftDataParameters = Lens.lens (\Target' {redshiftDataParameters} -> redshiftDataParameters) (\s@Target' {} a -> s {redshiftDataParameters = a} :: Target)

-- | Contains the Amazon ECS task definition and task count to be used, if
-- the event target is an Amazon ECS task. For more information about
-- Amazon ECS tasks, see
-- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html Task Definitions>
-- in the /Amazon EC2 Container Service Developer Guide/.
target_ecsParameters :: Lens.Lens' Target (Prelude.Maybe EcsParameters)
target_ecsParameters = Lens.lens (\Target' {ecsParameters} -> ecsParameters) (\s@Target' {} a -> s {ecsParameters = a} :: Target)

-- | The @RetryPolicy@ object that contains the retry policy configuration to
-- use for the dead-letter queue.
target_retryPolicy :: Lens.Lens' Target (Prelude.Maybe RetryPolicy)
target_retryPolicy = Lens.lens (\Target' {retryPolicy} -> retryPolicy) (\s@Target' {} a -> s {retryPolicy = a} :: Target)

-- | The value of the JSONPath that is used for extracting part of the
-- matched event when passing it to the target. You must use JSON dot
-- notation, not bracket notation. For more information about JSON paths,
-- see <http://goessner.net/articles/JsonPath/ JSONPath>.
target_inputPath :: Lens.Lens' Target (Prelude.Maybe Prelude.Text)
target_inputPath = Lens.lens (\Target' {inputPath} -> inputPath) (\s@Target' {} a -> s {inputPath = a} :: Target)

-- | The Amazon Resource Name (ARN) of the IAM role to be used for this
-- target when the rule is triggered. If one rule triggers multiple
-- targets, you can use a different IAM role for each target.
target_roleArn :: Lens.Lens' Target (Prelude.Maybe Prelude.Text)
target_roleArn = Lens.lens (\Target' {roleArn} -> roleArn) (\s@Target' {} a -> s {roleArn = a} :: Target)

-- | The ID of the target. We recommend using a memorable and unique string.
target_id :: Lens.Lens' Target Prelude.Text
target_id = Lens.lens (\Target' {id} -> id) (\s@Target' {} a -> s {id = a} :: Target)

-- | The Amazon Resource Name (ARN) of the target.
target_arn :: Lens.Lens' Target Prelude.Text
target_arn = Lens.lens (\Target' {arn} -> arn) (\s@Target' {} a -> s {arn = a} :: Target)

instance Core.FromJSON Target where
  parseJSON =
    Core.withObject
      "Target"
      ( \x ->
          Target'
            Prelude.<$> (x Core..:? "RunCommandParameters")
            Prelude.<*> (x Core..:? "HttpParameters")
            Prelude.<*> (x Core..:? "KinesisParameters")
            Prelude.<*> (x Core..:? "InputTransformer")
            Prelude.<*> (x Core..:? "DeadLetterConfig")
            Prelude.<*> (x Core..:? "SageMakerPipelineParameters")
            Prelude.<*> (x Core..:? "SqsParameters")
            Prelude.<*> (x Core..:? "Input")
            Prelude.<*> (x Core..:? "BatchParameters")
            Prelude.<*> (x Core..:? "RedshiftDataParameters")
            Prelude.<*> (x Core..:? "EcsParameters")
            Prelude.<*> (x Core..:? "RetryPolicy")
            Prelude.<*> (x Core..:? "InputPath")
            Prelude.<*> (x Core..:? "RoleArn")
            Prelude.<*> (x Core..: "Id")
            Prelude.<*> (x Core..: "Arn")
      )

instance Prelude.Hashable Target

instance Prelude.NFData Target

instance Core.ToJSON Target where
  toJSON Target' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("RunCommandParameters" Core..=)
              Prelude.<$> runCommandParameters,
            ("HttpParameters" Core..=)
              Prelude.<$> httpParameters,
            ("KinesisParameters" Core..=)
              Prelude.<$> kinesisParameters,
            ("InputTransformer" Core..=)
              Prelude.<$> inputTransformer,
            ("DeadLetterConfig" Core..=)
              Prelude.<$> deadLetterConfig,
            ("SageMakerPipelineParameters" Core..=)
              Prelude.<$> sageMakerPipelineParameters,
            ("SqsParameters" Core..=) Prelude.<$> sqsParameters,
            ("Input" Core..=) Prelude.<$> input,
            ("BatchParameters" Core..=)
              Prelude.<$> batchParameters,
            ("RedshiftDataParameters" Core..=)
              Prelude.<$> redshiftDataParameters,
            ("EcsParameters" Core..=) Prelude.<$> ecsParameters,
            ("RetryPolicy" Core..=) Prelude.<$> retryPolicy,
            ("InputPath" Core..=) Prelude.<$> inputPath,
            ("RoleArn" Core..=) Prelude.<$> roleArn,
            Prelude.Just ("Id" Core..= id),
            Prelude.Just ("Arn" Core..= arn)
          ]
      )
