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
-- Module      : Network.AWS.SageMaker.Types.AlgorithmSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AlgorithmSpecification where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SageMaker.Types.MetricDefinition
import Network.AWS.SageMaker.Types.TrainingInputMode

-- | Specifies the training algorithm to use in a CreateTrainingJob request.
--
-- For more information about algorithms provided by Amazon SageMaker, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/algos.html Algorithms>.
-- For information about using your own algorithms, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms.html Using Your Own Algorithms with Amazon SageMaker>.
--
-- /See:/ 'newAlgorithmSpecification' smart constructor.
data AlgorithmSpecification = AlgorithmSpecification'
  { -- | To generate and save time-series metrics during training, set to @true@.
    -- The default is @false@ and time-series metrics aren\'t generated except
    -- in the following cases:
    --
    -- -   You use one of the Amazon SageMaker built-in algorithms
    --
    -- -   You use one of the following
    --     <https://docs.aws.amazon.com/sagemaker/latest/dg/pre-built-containers-frameworks-deep-learning.html Prebuilt Amazon SageMaker Docker Images>:
    --
    --     -   Tensorflow (version >= 1.15)
    --
    --     -   MXNet (version >= 1.6)
    --
    --     -   PyTorch (version >= 1.3)
    --
    -- -   You specify at least one MetricDefinition
    enableSageMakerMetricsTimeSeries :: Prelude.Maybe Prelude.Bool,
    -- | The name of the algorithm resource to use for the training job. This
    -- must be an algorithm resource that you created or subscribe to on Amazon
    -- Web Services Marketplace. If you specify a value for this parameter, you
    -- can\'t specify a value for @TrainingImage@.
    algorithmName :: Prelude.Maybe Prelude.Text,
    -- | The registry path of the Docker image that contains the training
    -- algorithm. For information about docker registry paths for built-in
    -- algorithms, see
    -- <https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-algo-docker-registry-paths.html Algorithms Provided by Amazon SageMaker: Common Parameters>.
    -- Amazon SageMaker supports both @registry\/repository[:tag]@ and
    -- @registry\/repository[\@digest]@ image path formats. For more
    -- information, see
    -- <https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms.html Using Your Own Algorithms with Amazon SageMaker>.
    trainingImage :: Prelude.Maybe Prelude.Text,
    -- | A list of metric definition objects. Each object specifies the metric
    -- name and regular expressions used to parse algorithm logs. Amazon
    -- SageMaker publishes each metric to Amazon CloudWatch.
    metricDefinitions :: Prelude.Maybe [MetricDefinition],
    trainingInputMode :: TrainingInputMode
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AlgorithmSpecification' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'enableSageMakerMetricsTimeSeries', 'algorithmSpecification_enableSageMakerMetricsTimeSeries' - To generate and save time-series metrics during training, set to @true@.
-- The default is @false@ and time-series metrics aren\'t generated except
-- in the following cases:
--
-- -   You use one of the Amazon SageMaker built-in algorithms
--
-- -   You use one of the following
--     <https://docs.aws.amazon.com/sagemaker/latest/dg/pre-built-containers-frameworks-deep-learning.html Prebuilt Amazon SageMaker Docker Images>:
--
--     -   Tensorflow (version >= 1.15)
--
--     -   MXNet (version >= 1.6)
--
--     -   PyTorch (version >= 1.3)
--
-- -   You specify at least one MetricDefinition
--
-- 'algorithmName', 'algorithmSpecification_algorithmName' - The name of the algorithm resource to use for the training job. This
-- must be an algorithm resource that you created or subscribe to on Amazon
-- Web Services Marketplace. If you specify a value for this parameter, you
-- can\'t specify a value for @TrainingImage@.
--
-- 'trainingImage', 'algorithmSpecification_trainingImage' - The registry path of the Docker image that contains the training
-- algorithm. For information about docker registry paths for built-in
-- algorithms, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-algo-docker-registry-paths.html Algorithms Provided by Amazon SageMaker: Common Parameters>.
-- Amazon SageMaker supports both @registry\/repository[:tag]@ and
-- @registry\/repository[\@digest]@ image path formats. For more
-- information, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms.html Using Your Own Algorithms with Amazon SageMaker>.
--
-- 'metricDefinitions', 'algorithmSpecification_metricDefinitions' - A list of metric definition objects. Each object specifies the metric
-- name and regular expressions used to parse algorithm logs. Amazon
-- SageMaker publishes each metric to Amazon CloudWatch.
--
-- 'trainingInputMode', 'algorithmSpecification_trainingInputMode' - Undocumented member.
newAlgorithmSpecification ::
  -- | 'trainingInputMode'
  TrainingInputMode ->
  AlgorithmSpecification
newAlgorithmSpecification pTrainingInputMode_ =
  AlgorithmSpecification'
    { enableSageMakerMetricsTimeSeries =
        Prelude.Nothing,
      algorithmName = Prelude.Nothing,
      trainingImage = Prelude.Nothing,
      metricDefinitions = Prelude.Nothing,
      trainingInputMode = pTrainingInputMode_
    }

-- | To generate and save time-series metrics during training, set to @true@.
-- The default is @false@ and time-series metrics aren\'t generated except
-- in the following cases:
--
-- -   You use one of the Amazon SageMaker built-in algorithms
--
-- -   You use one of the following
--     <https://docs.aws.amazon.com/sagemaker/latest/dg/pre-built-containers-frameworks-deep-learning.html Prebuilt Amazon SageMaker Docker Images>:
--
--     -   Tensorflow (version >= 1.15)
--
--     -   MXNet (version >= 1.6)
--
--     -   PyTorch (version >= 1.3)
--
-- -   You specify at least one MetricDefinition
algorithmSpecification_enableSageMakerMetricsTimeSeries :: Lens.Lens' AlgorithmSpecification (Prelude.Maybe Prelude.Bool)
algorithmSpecification_enableSageMakerMetricsTimeSeries = Lens.lens (\AlgorithmSpecification' {enableSageMakerMetricsTimeSeries} -> enableSageMakerMetricsTimeSeries) (\s@AlgorithmSpecification' {} a -> s {enableSageMakerMetricsTimeSeries = a} :: AlgorithmSpecification)

-- | The name of the algorithm resource to use for the training job. This
-- must be an algorithm resource that you created or subscribe to on Amazon
-- Web Services Marketplace. If you specify a value for this parameter, you
-- can\'t specify a value for @TrainingImage@.
algorithmSpecification_algorithmName :: Lens.Lens' AlgorithmSpecification (Prelude.Maybe Prelude.Text)
algorithmSpecification_algorithmName = Lens.lens (\AlgorithmSpecification' {algorithmName} -> algorithmName) (\s@AlgorithmSpecification' {} a -> s {algorithmName = a} :: AlgorithmSpecification)

-- | The registry path of the Docker image that contains the training
-- algorithm. For information about docker registry paths for built-in
-- algorithms, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-algo-docker-registry-paths.html Algorithms Provided by Amazon SageMaker: Common Parameters>.
-- Amazon SageMaker supports both @registry\/repository[:tag]@ and
-- @registry\/repository[\@digest]@ image path formats. For more
-- information, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms.html Using Your Own Algorithms with Amazon SageMaker>.
algorithmSpecification_trainingImage :: Lens.Lens' AlgorithmSpecification (Prelude.Maybe Prelude.Text)
algorithmSpecification_trainingImage = Lens.lens (\AlgorithmSpecification' {trainingImage} -> trainingImage) (\s@AlgorithmSpecification' {} a -> s {trainingImage = a} :: AlgorithmSpecification)

-- | A list of metric definition objects. Each object specifies the metric
-- name and regular expressions used to parse algorithm logs. Amazon
-- SageMaker publishes each metric to Amazon CloudWatch.
algorithmSpecification_metricDefinitions :: Lens.Lens' AlgorithmSpecification (Prelude.Maybe [MetricDefinition])
algorithmSpecification_metricDefinitions = Lens.lens (\AlgorithmSpecification' {metricDefinitions} -> metricDefinitions) (\s@AlgorithmSpecification' {} a -> s {metricDefinitions = a} :: AlgorithmSpecification) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
algorithmSpecification_trainingInputMode :: Lens.Lens' AlgorithmSpecification TrainingInputMode
algorithmSpecification_trainingInputMode = Lens.lens (\AlgorithmSpecification' {trainingInputMode} -> trainingInputMode) (\s@AlgorithmSpecification' {} a -> s {trainingInputMode = a} :: AlgorithmSpecification)

instance Core.FromJSON AlgorithmSpecification where
  parseJSON =
    Core.withObject
      "AlgorithmSpecification"
      ( \x ->
          AlgorithmSpecification'
            Prelude.<$> (x Core..:? "EnableSageMakerMetricsTimeSeries")
            Prelude.<*> (x Core..:? "AlgorithmName")
            Prelude.<*> (x Core..:? "TrainingImage")
            Prelude.<*> ( x Core..:? "MetricDefinitions"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..: "TrainingInputMode")
      )

instance Prelude.Hashable AlgorithmSpecification

instance Prelude.NFData AlgorithmSpecification

instance Core.ToJSON AlgorithmSpecification where
  toJSON AlgorithmSpecification' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("EnableSageMakerMetricsTimeSeries" Core..=)
              Prelude.<$> enableSageMakerMetricsTimeSeries,
            ("AlgorithmName" Core..=) Prelude.<$> algorithmName,
            ("TrainingImage" Core..=) Prelude.<$> trainingImage,
            ("MetricDefinitions" Core..=)
              Prelude.<$> metricDefinitions,
            Prelude.Just
              ("TrainingInputMode" Core..= trainingInputMode)
          ]
      )
