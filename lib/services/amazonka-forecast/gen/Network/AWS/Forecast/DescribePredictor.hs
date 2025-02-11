{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Forecast.DescribePredictor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a predictor created using the CreatePredictor operation.
--
-- In addition to listing the properties provided in the @CreatePredictor@
-- request, this operation lists the following properties:
--
-- -   @DatasetImportJobArns@ - The dataset import jobs used to import
--     training data.
--
-- -   @AutoMLAlgorithmArns@ - If AutoML is performed, the algorithms that
--     were evaluated.
--
-- -   @CreationTime@
--
-- -   @LastModificationTime@
--
-- -   @Status@
--
-- -   @Message@ - If an error occurred, information about the error.
module Network.AWS.Forecast.DescribePredictor
  ( -- * Creating a Request
    DescribePredictor (..),
    newDescribePredictor,

    -- * Request Lenses
    describePredictor_predictorArn,

    -- * Destructuring the Response
    DescribePredictorResponse (..),
    newDescribePredictorResponse,

    -- * Response Lenses
    describePredictorResponse_creationTime,
    describePredictorResponse_forecastHorizon,
    describePredictorResponse_status,
    describePredictorResponse_performAutoML,
    describePredictorResponse_autoMLAlgorithmArns,
    describePredictorResponse_trainingParameters,
    describePredictorResponse_algorithmArn,
    describePredictorResponse_hPOConfig,
    describePredictorResponse_predictorArn,
    describePredictorResponse_optimizationMetric,
    describePredictorResponse_predictorExecutionDetails,
    describePredictorResponse_datasetImportJobArns,
    describePredictorResponse_estimatedTimeRemainingInMinutes,
    describePredictorResponse_autoMLOverrideStrategy,
    describePredictorResponse_evaluationParameters,
    describePredictorResponse_inputDataConfig,
    describePredictorResponse_predictorName,
    describePredictorResponse_featurizationConfig,
    describePredictorResponse_encryptionConfig,
    describePredictorResponse_forecastTypes,
    describePredictorResponse_message,
    describePredictorResponse_performHPO,
    describePredictorResponse_lastModificationTime,
    describePredictorResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Forecast.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribePredictor' smart constructor.
data DescribePredictor = DescribePredictor'
  { -- | The Amazon Resource Name (ARN) of the predictor that you want
    -- information about.
    predictorArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribePredictor' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'predictorArn', 'describePredictor_predictorArn' - The Amazon Resource Name (ARN) of the predictor that you want
-- information about.
newDescribePredictor ::
  -- | 'predictorArn'
  Prelude.Text ->
  DescribePredictor
newDescribePredictor pPredictorArn_ =
  DescribePredictor' {predictorArn = pPredictorArn_}

-- | The Amazon Resource Name (ARN) of the predictor that you want
-- information about.
describePredictor_predictorArn :: Lens.Lens' DescribePredictor Prelude.Text
describePredictor_predictorArn = Lens.lens (\DescribePredictor' {predictorArn} -> predictorArn) (\s@DescribePredictor' {} a -> s {predictorArn = a} :: DescribePredictor)

instance Core.AWSRequest DescribePredictor where
  type
    AWSResponse DescribePredictor =
      DescribePredictorResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribePredictorResponse'
            Prelude.<$> (x Core..?> "CreationTime")
            Prelude.<*> (x Core..?> "ForecastHorizon")
            Prelude.<*> (x Core..?> "Status")
            Prelude.<*> (x Core..?> "PerformAutoML")
            Prelude.<*> ( x Core..?> "AutoMLAlgorithmArns"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> ( x Core..?> "TrainingParameters"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "AlgorithmArn")
            Prelude.<*> (x Core..?> "HPOConfig")
            Prelude.<*> (x Core..?> "PredictorArn")
            Prelude.<*> (x Core..?> "OptimizationMetric")
            Prelude.<*> (x Core..?> "PredictorExecutionDetails")
            Prelude.<*> ( x Core..?> "DatasetImportJobArns"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "EstimatedTimeRemainingInMinutes")
            Prelude.<*> (x Core..?> "AutoMLOverrideStrategy")
            Prelude.<*> (x Core..?> "EvaluationParameters")
            Prelude.<*> (x Core..?> "InputDataConfig")
            Prelude.<*> (x Core..?> "PredictorName")
            Prelude.<*> (x Core..?> "FeaturizationConfig")
            Prelude.<*> (x Core..?> "EncryptionConfig")
            Prelude.<*> (x Core..?> "ForecastTypes")
            Prelude.<*> (x Core..?> "Message")
            Prelude.<*> (x Core..?> "PerformHPO")
            Prelude.<*> (x Core..?> "LastModificationTime")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribePredictor

instance Prelude.NFData DescribePredictor

instance Core.ToHeaders DescribePredictor where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonForecast.DescribePredictor" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribePredictor where
  toJSON DescribePredictor' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("PredictorArn" Core..= predictorArn)]
      )

instance Core.ToPath DescribePredictor where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribePredictor where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribePredictorResponse' smart constructor.
data DescribePredictorResponse = DescribePredictorResponse'
  { -- | When the model training task was created.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The number of time-steps of the forecast. The forecast horizon is also
    -- called the prediction length.
    forecastHorizon :: Prelude.Maybe Prelude.Int,
    -- | The status of the predictor. States include:
    --
    -- -   @ACTIVE@
    --
    -- -   @CREATE_PENDING@, @CREATE_IN_PROGRESS@, @CREATE_FAILED@
    --
    -- -   @DELETE_PENDING@, @DELETE_IN_PROGRESS@, @DELETE_FAILED@
    --
    -- -   @CREATE_STOPPING@, @CREATE_STOPPED@
    --
    -- The @Status@ of the predictor must be @ACTIVE@ before you can use the
    -- predictor to create a forecast.
    status :: Prelude.Maybe Prelude.Text,
    -- | Whether the predictor is set to perform AutoML.
    performAutoML :: Prelude.Maybe Prelude.Bool,
    -- | When @PerformAutoML@ is specified, the ARN of the chosen algorithm.
    autoMLAlgorithmArns :: Prelude.Maybe [Prelude.Text],
    -- | The default training parameters or overrides selected during model
    -- training. When running AutoML or choosing HPO with CNN-QR or DeepAR+,
    -- the optimized values for the chosen hyperparameters are returned. For
    -- more information, see aws-forecast-choosing-recipes.
    trainingParameters :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The Amazon Resource Name (ARN) of the algorithm used for model training.
    algorithmArn :: Prelude.Maybe Prelude.Text,
    -- | The hyperparameter override values for the algorithm.
    hPOConfig :: Prelude.Maybe HyperParameterTuningJobConfig,
    -- | The ARN of the predictor.
    predictorArn :: Prelude.Maybe Prelude.Text,
    -- | The accuracy metric used to optimize the predictor.
    optimizationMetric :: Prelude.Maybe OptimizationMetric,
    -- | Details on the the status and results of the backtests performed to
    -- evaluate the accuracy of the predictor. You specify the number of
    -- backtests to perform when you call the operation.
    predictorExecutionDetails :: Prelude.Maybe PredictorExecutionDetails,
    -- | An array of the ARNs of the dataset import jobs used to import training
    -- data for the predictor.
    datasetImportJobArns :: Prelude.Maybe [Prelude.Text],
    -- | The estimated time remaining in minutes for the predictor training job
    -- to complete.
    estimatedTimeRemainingInMinutes :: Prelude.Maybe Prelude.Integer,
    -- | The @LatencyOptimized@ AutoML override strategy is only available in
    -- private beta. Contact AWS Support or your account manager to learn more
    -- about access privileges.
    --
    -- The AutoML strategy used to train the predictor. Unless
    -- @LatencyOptimized@ is specified, the AutoML strategy optimizes predictor
    -- accuracy.
    --
    -- This parameter is only valid for predictors trained using AutoML.
    autoMLOverrideStrategy :: Prelude.Maybe AutoMLOverrideStrategy,
    -- | Used to override the default evaluation parameters of the specified
    -- algorithm. Amazon Forecast evaluates a predictor by splitting a dataset
    -- into training data and testing data. The evaluation parameters define
    -- how to perform the split and the number of iterations.
    evaluationParameters :: Prelude.Maybe EvaluationParameters,
    -- | Describes the dataset group that contains the data to use to train the
    -- predictor.
    inputDataConfig :: Prelude.Maybe InputDataConfig,
    -- | The name of the predictor.
    predictorName :: Prelude.Maybe Prelude.Text,
    -- | The featurization configuration.
    featurizationConfig :: Prelude.Maybe FeaturizationConfig,
    -- | An AWS Key Management Service (KMS) key and the AWS Identity and Access
    -- Management (IAM) role that Amazon Forecast can assume to access the key.
    encryptionConfig :: Prelude.Maybe EncryptionConfig,
    -- | The forecast types used during predictor training. Default value is
    -- @[\"0.1\",\"0.5\",\"0.9\"]@
    forecastTypes :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | If an error occurred, an informational message about the error.
    message :: Prelude.Maybe Prelude.Text,
    -- | Whether the predictor is set to perform hyperparameter optimization
    -- (HPO).
    performHPO :: Prelude.Maybe Prelude.Bool,
    -- | The last time the resource was modified. The timestamp depends on the
    -- status of the job:
    --
    -- -   @CREATE_PENDING@ - The @CreationTime@.
    --
    -- -   @CREATE_IN_PROGRESS@ - The current timestamp.
    --
    -- -   @CREATE_STOPPING@ - The current timestamp.
    --
    -- -   @CREATE_STOPPED@ - When the job stopped.
    --
    -- -   @ACTIVE@ or @CREATE_FAILED@ - When the job finished or failed.
    lastModificationTime :: Prelude.Maybe Core.POSIX,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribePredictorResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'creationTime', 'describePredictorResponse_creationTime' - When the model training task was created.
--
-- 'forecastHorizon', 'describePredictorResponse_forecastHorizon' - The number of time-steps of the forecast. The forecast horizon is also
-- called the prediction length.
--
-- 'status', 'describePredictorResponse_status' - The status of the predictor. States include:
--
-- -   @ACTIVE@
--
-- -   @CREATE_PENDING@, @CREATE_IN_PROGRESS@, @CREATE_FAILED@
--
-- -   @DELETE_PENDING@, @DELETE_IN_PROGRESS@, @DELETE_FAILED@
--
-- -   @CREATE_STOPPING@, @CREATE_STOPPED@
--
-- The @Status@ of the predictor must be @ACTIVE@ before you can use the
-- predictor to create a forecast.
--
-- 'performAutoML', 'describePredictorResponse_performAutoML' - Whether the predictor is set to perform AutoML.
--
-- 'autoMLAlgorithmArns', 'describePredictorResponse_autoMLAlgorithmArns' - When @PerformAutoML@ is specified, the ARN of the chosen algorithm.
--
-- 'trainingParameters', 'describePredictorResponse_trainingParameters' - The default training parameters or overrides selected during model
-- training. When running AutoML or choosing HPO with CNN-QR or DeepAR+,
-- the optimized values for the chosen hyperparameters are returned. For
-- more information, see aws-forecast-choosing-recipes.
--
-- 'algorithmArn', 'describePredictorResponse_algorithmArn' - The Amazon Resource Name (ARN) of the algorithm used for model training.
--
-- 'hPOConfig', 'describePredictorResponse_hPOConfig' - The hyperparameter override values for the algorithm.
--
-- 'predictorArn', 'describePredictorResponse_predictorArn' - The ARN of the predictor.
--
-- 'optimizationMetric', 'describePredictorResponse_optimizationMetric' - The accuracy metric used to optimize the predictor.
--
-- 'predictorExecutionDetails', 'describePredictorResponse_predictorExecutionDetails' - Details on the the status and results of the backtests performed to
-- evaluate the accuracy of the predictor. You specify the number of
-- backtests to perform when you call the operation.
--
-- 'datasetImportJobArns', 'describePredictorResponse_datasetImportJobArns' - An array of the ARNs of the dataset import jobs used to import training
-- data for the predictor.
--
-- 'estimatedTimeRemainingInMinutes', 'describePredictorResponse_estimatedTimeRemainingInMinutes' - The estimated time remaining in minutes for the predictor training job
-- to complete.
--
-- 'autoMLOverrideStrategy', 'describePredictorResponse_autoMLOverrideStrategy' - The @LatencyOptimized@ AutoML override strategy is only available in
-- private beta. Contact AWS Support or your account manager to learn more
-- about access privileges.
--
-- The AutoML strategy used to train the predictor. Unless
-- @LatencyOptimized@ is specified, the AutoML strategy optimizes predictor
-- accuracy.
--
-- This parameter is only valid for predictors trained using AutoML.
--
-- 'evaluationParameters', 'describePredictorResponse_evaluationParameters' - Used to override the default evaluation parameters of the specified
-- algorithm. Amazon Forecast evaluates a predictor by splitting a dataset
-- into training data and testing data. The evaluation parameters define
-- how to perform the split and the number of iterations.
--
-- 'inputDataConfig', 'describePredictorResponse_inputDataConfig' - Describes the dataset group that contains the data to use to train the
-- predictor.
--
-- 'predictorName', 'describePredictorResponse_predictorName' - The name of the predictor.
--
-- 'featurizationConfig', 'describePredictorResponse_featurizationConfig' - The featurization configuration.
--
-- 'encryptionConfig', 'describePredictorResponse_encryptionConfig' - An AWS Key Management Service (KMS) key and the AWS Identity and Access
-- Management (IAM) role that Amazon Forecast can assume to access the key.
--
-- 'forecastTypes', 'describePredictorResponse_forecastTypes' - The forecast types used during predictor training. Default value is
-- @[\"0.1\",\"0.5\",\"0.9\"]@
--
-- 'message', 'describePredictorResponse_message' - If an error occurred, an informational message about the error.
--
-- 'performHPO', 'describePredictorResponse_performHPO' - Whether the predictor is set to perform hyperparameter optimization
-- (HPO).
--
-- 'lastModificationTime', 'describePredictorResponse_lastModificationTime' - The last time the resource was modified. The timestamp depends on the
-- status of the job:
--
-- -   @CREATE_PENDING@ - The @CreationTime@.
--
-- -   @CREATE_IN_PROGRESS@ - The current timestamp.
--
-- -   @CREATE_STOPPING@ - The current timestamp.
--
-- -   @CREATE_STOPPED@ - When the job stopped.
--
-- -   @ACTIVE@ or @CREATE_FAILED@ - When the job finished or failed.
--
-- 'httpStatus', 'describePredictorResponse_httpStatus' - The response's http status code.
newDescribePredictorResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribePredictorResponse
newDescribePredictorResponse pHttpStatus_ =
  DescribePredictorResponse'
    { creationTime =
        Prelude.Nothing,
      forecastHorizon = Prelude.Nothing,
      status = Prelude.Nothing,
      performAutoML = Prelude.Nothing,
      autoMLAlgorithmArns = Prelude.Nothing,
      trainingParameters = Prelude.Nothing,
      algorithmArn = Prelude.Nothing,
      hPOConfig = Prelude.Nothing,
      predictorArn = Prelude.Nothing,
      optimizationMetric = Prelude.Nothing,
      predictorExecutionDetails = Prelude.Nothing,
      datasetImportJobArns = Prelude.Nothing,
      estimatedTimeRemainingInMinutes =
        Prelude.Nothing,
      autoMLOverrideStrategy = Prelude.Nothing,
      evaluationParameters = Prelude.Nothing,
      inputDataConfig = Prelude.Nothing,
      predictorName = Prelude.Nothing,
      featurizationConfig = Prelude.Nothing,
      encryptionConfig = Prelude.Nothing,
      forecastTypes = Prelude.Nothing,
      message = Prelude.Nothing,
      performHPO = Prelude.Nothing,
      lastModificationTime = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | When the model training task was created.
describePredictorResponse_creationTime :: Lens.Lens' DescribePredictorResponse (Prelude.Maybe Prelude.UTCTime)
describePredictorResponse_creationTime = Lens.lens (\DescribePredictorResponse' {creationTime} -> creationTime) (\s@DescribePredictorResponse' {} a -> s {creationTime = a} :: DescribePredictorResponse) Prelude.. Lens.mapping Core._Time

-- | The number of time-steps of the forecast. The forecast horizon is also
-- called the prediction length.
describePredictorResponse_forecastHorizon :: Lens.Lens' DescribePredictorResponse (Prelude.Maybe Prelude.Int)
describePredictorResponse_forecastHorizon = Lens.lens (\DescribePredictorResponse' {forecastHorizon} -> forecastHorizon) (\s@DescribePredictorResponse' {} a -> s {forecastHorizon = a} :: DescribePredictorResponse)

-- | The status of the predictor. States include:
--
-- -   @ACTIVE@
--
-- -   @CREATE_PENDING@, @CREATE_IN_PROGRESS@, @CREATE_FAILED@
--
-- -   @DELETE_PENDING@, @DELETE_IN_PROGRESS@, @DELETE_FAILED@
--
-- -   @CREATE_STOPPING@, @CREATE_STOPPED@
--
-- The @Status@ of the predictor must be @ACTIVE@ before you can use the
-- predictor to create a forecast.
describePredictorResponse_status :: Lens.Lens' DescribePredictorResponse (Prelude.Maybe Prelude.Text)
describePredictorResponse_status = Lens.lens (\DescribePredictorResponse' {status} -> status) (\s@DescribePredictorResponse' {} a -> s {status = a} :: DescribePredictorResponse)

-- | Whether the predictor is set to perform AutoML.
describePredictorResponse_performAutoML :: Lens.Lens' DescribePredictorResponse (Prelude.Maybe Prelude.Bool)
describePredictorResponse_performAutoML = Lens.lens (\DescribePredictorResponse' {performAutoML} -> performAutoML) (\s@DescribePredictorResponse' {} a -> s {performAutoML = a} :: DescribePredictorResponse)

-- | When @PerformAutoML@ is specified, the ARN of the chosen algorithm.
describePredictorResponse_autoMLAlgorithmArns :: Lens.Lens' DescribePredictorResponse (Prelude.Maybe [Prelude.Text])
describePredictorResponse_autoMLAlgorithmArns = Lens.lens (\DescribePredictorResponse' {autoMLAlgorithmArns} -> autoMLAlgorithmArns) (\s@DescribePredictorResponse' {} a -> s {autoMLAlgorithmArns = a} :: DescribePredictorResponse) Prelude.. Lens.mapping Lens.coerced

-- | The default training parameters or overrides selected during model
-- training. When running AutoML or choosing HPO with CNN-QR or DeepAR+,
-- the optimized values for the chosen hyperparameters are returned. For
-- more information, see aws-forecast-choosing-recipes.
describePredictorResponse_trainingParameters :: Lens.Lens' DescribePredictorResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
describePredictorResponse_trainingParameters = Lens.lens (\DescribePredictorResponse' {trainingParameters} -> trainingParameters) (\s@DescribePredictorResponse' {} a -> s {trainingParameters = a} :: DescribePredictorResponse) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name (ARN) of the algorithm used for model training.
describePredictorResponse_algorithmArn :: Lens.Lens' DescribePredictorResponse (Prelude.Maybe Prelude.Text)
describePredictorResponse_algorithmArn = Lens.lens (\DescribePredictorResponse' {algorithmArn} -> algorithmArn) (\s@DescribePredictorResponse' {} a -> s {algorithmArn = a} :: DescribePredictorResponse)

-- | The hyperparameter override values for the algorithm.
describePredictorResponse_hPOConfig :: Lens.Lens' DescribePredictorResponse (Prelude.Maybe HyperParameterTuningJobConfig)
describePredictorResponse_hPOConfig = Lens.lens (\DescribePredictorResponse' {hPOConfig} -> hPOConfig) (\s@DescribePredictorResponse' {} a -> s {hPOConfig = a} :: DescribePredictorResponse)

-- | The ARN of the predictor.
describePredictorResponse_predictorArn :: Lens.Lens' DescribePredictorResponse (Prelude.Maybe Prelude.Text)
describePredictorResponse_predictorArn = Lens.lens (\DescribePredictorResponse' {predictorArn} -> predictorArn) (\s@DescribePredictorResponse' {} a -> s {predictorArn = a} :: DescribePredictorResponse)

-- | The accuracy metric used to optimize the predictor.
describePredictorResponse_optimizationMetric :: Lens.Lens' DescribePredictorResponse (Prelude.Maybe OptimizationMetric)
describePredictorResponse_optimizationMetric = Lens.lens (\DescribePredictorResponse' {optimizationMetric} -> optimizationMetric) (\s@DescribePredictorResponse' {} a -> s {optimizationMetric = a} :: DescribePredictorResponse)

-- | Details on the the status and results of the backtests performed to
-- evaluate the accuracy of the predictor. You specify the number of
-- backtests to perform when you call the operation.
describePredictorResponse_predictorExecutionDetails :: Lens.Lens' DescribePredictorResponse (Prelude.Maybe PredictorExecutionDetails)
describePredictorResponse_predictorExecutionDetails = Lens.lens (\DescribePredictorResponse' {predictorExecutionDetails} -> predictorExecutionDetails) (\s@DescribePredictorResponse' {} a -> s {predictorExecutionDetails = a} :: DescribePredictorResponse)

-- | An array of the ARNs of the dataset import jobs used to import training
-- data for the predictor.
describePredictorResponse_datasetImportJobArns :: Lens.Lens' DescribePredictorResponse (Prelude.Maybe [Prelude.Text])
describePredictorResponse_datasetImportJobArns = Lens.lens (\DescribePredictorResponse' {datasetImportJobArns} -> datasetImportJobArns) (\s@DescribePredictorResponse' {} a -> s {datasetImportJobArns = a} :: DescribePredictorResponse) Prelude.. Lens.mapping Lens.coerced

-- | The estimated time remaining in minutes for the predictor training job
-- to complete.
describePredictorResponse_estimatedTimeRemainingInMinutes :: Lens.Lens' DescribePredictorResponse (Prelude.Maybe Prelude.Integer)
describePredictorResponse_estimatedTimeRemainingInMinutes = Lens.lens (\DescribePredictorResponse' {estimatedTimeRemainingInMinutes} -> estimatedTimeRemainingInMinutes) (\s@DescribePredictorResponse' {} a -> s {estimatedTimeRemainingInMinutes = a} :: DescribePredictorResponse)

-- | The @LatencyOptimized@ AutoML override strategy is only available in
-- private beta. Contact AWS Support or your account manager to learn more
-- about access privileges.
--
-- The AutoML strategy used to train the predictor. Unless
-- @LatencyOptimized@ is specified, the AutoML strategy optimizes predictor
-- accuracy.
--
-- This parameter is only valid for predictors trained using AutoML.
describePredictorResponse_autoMLOverrideStrategy :: Lens.Lens' DescribePredictorResponse (Prelude.Maybe AutoMLOverrideStrategy)
describePredictorResponse_autoMLOverrideStrategy = Lens.lens (\DescribePredictorResponse' {autoMLOverrideStrategy} -> autoMLOverrideStrategy) (\s@DescribePredictorResponse' {} a -> s {autoMLOverrideStrategy = a} :: DescribePredictorResponse)

-- | Used to override the default evaluation parameters of the specified
-- algorithm. Amazon Forecast evaluates a predictor by splitting a dataset
-- into training data and testing data. The evaluation parameters define
-- how to perform the split and the number of iterations.
describePredictorResponse_evaluationParameters :: Lens.Lens' DescribePredictorResponse (Prelude.Maybe EvaluationParameters)
describePredictorResponse_evaluationParameters = Lens.lens (\DescribePredictorResponse' {evaluationParameters} -> evaluationParameters) (\s@DescribePredictorResponse' {} a -> s {evaluationParameters = a} :: DescribePredictorResponse)

-- | Describes the dataset group that contains the data to use to train the
-- predictor.
describePredictorResponse_inputDataConfig :: Lens.Lens' DescribePredictorResponse (Prelude.Maybe InputDataConfig)
describePredictorResponse_inputDataConfig = Lens.lens (\DescribePredictorResponse' {inputDataConfig} -> inputDataConfig) (\s@DescribePredictorResponse' {} a -> s {inputDataConfig = a} :: DescribePredictorResponse)

-- | The name of the predictor.
describePredictorResponse_predictorName :: Lens.Lens' DescribePredictorResponse (Prelude.Maybe Prelude.Text)
describePredictorResponse_predictorName = Lens.lens (\DescribePredictorResponse' {predictorName} -> predictorName) (\s@DescribePredictorResponse' {} a -> s {predictorName = a} :: DescribePredictorResponse)

-- | The featurization configuration.
describePredictorResponse_featurizationConfig :: Lens.Lens' DescribePredictorResponse (Prelude.Maybe FeaturizationConfig)
describePredictorResponse_featurizationConfig = Lens.lens (\DescribePredictorResponse' {featurizationConfig} -> featurizationConfig) (\s@DescribePredictorResponse' {} a -> s {featurizationConfig = a} :: DescribePredictorResponse)

-- | An AWS Key Management Service (KMS) key and the AWS Identity and Access
-- Management (IAM) role that Amazon Forecast can assume to access the key.
describePredictorResponse_encryptionConfig :: Lens.Lens' DescribePredictorResponse (Prelude.Maybe EncryptionConfig)
describePredictorResponse_encryptionConfig = Lens.lens (\DescribePredictorResponse' {encryptionConfig} -> encryptionConfig) (\s@DescribePredictorResponse' {} a -> s {encryptionConfig = a} :: DescribePredictorResponse)

-- | The forecast types used during predictor training. Default value is
-- @[\"0.1\",\"0.5\",\"0.9\"]@
describePredictorResponse_forecastTypes :: Lens.Lens' DescribePredictorResponse (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
describePredictorResponse_forecastTypes = Lens.lens (\DescribePredictorResponse' {forecastTypes} -> forecastTypes) (\s@DescribePredictorResponse' {} a -> s {forecastTypes = a} :: DescribePredictorResponse) Prelude.. Lens.mapping Lens.coerced

-- | If an error occurred, an informational message about the error.
describePredictorResponse_message :: Lens.Lens' DescribePredictorResponse (Prelude.Maybe Prelude.Text)
describePredictorResponse_message = Lens.lens (\DescribePredictorResponse' {message} -> message) (\s@DescribePredictorResponse' {} a -> s {message = a} :: DescribePredictorResponse)

-- | Whether the predictor is set to perform hyperparameter optimization
-- (HPO).
describePredictorResponse_performHPO :: Lens.Lens' DescribePredictorResponse (Prelude.Maybe Prelude.Bool)
describePredictorResponse_performHPO = Lens.lens (\DescribePredictorResponse' {performHPO} -> performHPO) (\s@DescribePredictorResponse' {} a -> s {performHPO = a} :: DescribePredictorResponse)

-- | The last time the resource was modified. The timestamp depends on the
-- status of the job:
--
-- -   @CREATE_PENDING@ - The @CreationTime@.
--
-- -   @CREATE_IN_PROGRESS@ - The current timestamp.
--
-- -   @CREATE_STOPPING@ - The current timestamp.
--
-- -   @CREATE_STOPPED@ - When the job stopped.
--
-- -   @ACTIVE@ or @CREATE_FAILED@ - When the job finished or failed.
describePredictorResponse_lastModificationTime :: Lens.Lens' DescribePredictorResponse (Prelude.Maybe Prelude.UTCTime)
describePredictorResponse_lastModificationTime = Lens.lens (\DescribePredictorResponse' {lastModificationTime} -> lastModificationTime) (\s@DescribePredictorResponse' {} a -> s {lastModificationTime = a} :: DescribePredictorResponse) Prelude.. Lens.mapping Core._Time

-- | The response's http status code.
describePredictorResponse_httpStatus :: Lens.Lens' DescribePredictorResponse Prelude.Int
describePredictorResponse_httpStatus = Lens.lens (\DescribePredictorResponse' {httpStatus} -> httpStatus) (\s@DescribePredictorResponse' {} a -> s {httpStatus = a} :: DescribePredictorResponse)

instance Prelude.NFData DescribePredictorResponse
