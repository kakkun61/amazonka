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
-- Module      : Network.AWS.Config.Types.AggregateEvaluationResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.AggregateEvaluationResult where

import Network.AWS.Config.Types.ComplianceType
import Network.AWS.Config.Types.EvaluationResultIdentifier
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The details of an Config evaluation for an account ID and region in an
-- aggregator. Provides the Amazon Web Services resource that was
-- evaluated, the compliance of the resource, related time stamps, and
-- supplementary information.
--
-- /See:/ 'newAggregateEvaluationResult' smart constructor.
data AggregateEvaluationResult = AggregateEvaluationResult'
  { -- | Uniquely identifies the evaluation result.
    evaluationResultIdentifier :: Prelude.Maybe EvaluationResultIdentifier,
    -- | Supplementary information about how the agrregate evaluation determined
    -- the compliance.
    annotation :: Prelude.Maybe Prelude.Text,
    -- | The time when the Config rule evaluated the Amazon Web Services
    -- resource.
    configRuleInvokedTime :: Prelude.Maybe Core.POSIX,
    -- | The time when Config recorded the aggregate evaluation result.
    resultRecordedTime :: Prelude.Maybe Core.POSIX,
    -- | The 12-digit account ID of the source account.
    accountId :: Prelude.Maybe Prelude.Text,
    -- | The resource compliance status.
    --
    -- For the @AggregationEvaluationResult@ data type, Config supports only
    -- the @COMPLIANT@ and @NON_COMPLIANT@. Config does not support the
    -- @NOT_APPLICABLE@ and @INSUFFICIENT_DATA@ value.
    complianceType :: Prelude.Maybe ComplianceType,
    -- | The source region from where the data is aggregated.
    awsRegion :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AggregateEvaluationResult' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'evaluationResultIdentifier', 'aggregateEvaluationResult_evaluationResultIdentifier' - Uniquely identifies the evaluation result.
--
-- 'annotation', 'aggregateEvaluationResult_annotation' - Supplementary information about how the agrregate evaluation determined
-- the compliance.
--
-- 'configRuleInvokedTime', 'aggregateEvaluationResult_configRuleInvokedTime' - The time when the Config rule evaluated the Amazon Web Services
-- resource.
--
-- 'resultRecordedTime', 'aggregateEvaluationResult_resultRecordedTime' - The time when Config recorded the aggregate evaluation result.
--
-- 'accountId', 'aggregateEvaluationResult_accountId' - The 12-digit account ID of the source account.
--
-- 'complianceType', 'aggregateEvaluationResult_complianceType' - The resource compliance status.
--
-- For the @AggregationEvaluationResult@ data type, Config supports only
-- the @COMPLIANT@ and @NON_COMPLIANT@. Config does not support the
-- @NOT_APPLICABLE@ and @INSUFFICIENT_DATA@ value.
--
-- 'awsRegion', 'aggregateEvaluationResult_awsRegion' - The source region from where the data is aggregated.
newAggregateEvaluationResult ::
  AggregateEvaluationResult
newAggregateEvaluationResult =
  AggregateEvaluationResult'
    { evaluationResultIdentifier =
        Prelude.Nothing,
      annotation = Prelude.Nothing,
      configRuleInvokedTime = Prelude.Nothing,
      resultRecordedTime = Prelude.Nothing,
      accountId = Prelude.Nothing,
      complianceType = Prelude.Nothing,
      awsRegion = Prelude.Nothing
    }

-- | Uniquely identifies the evaluation result.
aggregateEvaluationResult_evaluationResultIdentifier :: Lens.Lens' AggregateEvaluationResult (Prelude.Maybe EvaluationResultIdentifier)
aggregateEvaluationResult_evaluationResultIdentifier = Lens.lens (\AggregateEvaluationResult' {evaluationResultIdentifier} -> evaluationResultIdentifier) (\s@AggregateEvaluationResult' {} a -> s {evaluationResultIdentifier = a} :: AggregateEvaluationResult)

-- | Supplementary information about how the agrregate evaluation determined
-- the compliance.
aggregateEvaluationResult_annotation :: Lens.Lens' AggregateEvaluationResult (Prelude.Maybe Prelude.Text)
aggregateEvaluationResult_annotation = Lens.lens (\AggregateEvaluationResult' {annotation} -> annotation) (\s@AggregateEvaluationResult' {} a -> s {annotation = a} :: AggregateEvaluationResult)

-- | The time when the Config rule evaluated the Amazon Web Services
-- resource.
aggregateEvaluationResult_configRuleInvokedTime :: Lens.Lens' AggregateEvaluationResult (Prelude.Maybe Prelude.UTCTime)
aggregateEvaluationResult_configRuleInvokedTime = Lens.lens (\AggregateEvaluationResult' {configRuleInvokedTime} -> configRuleInvokedTime) (\s@AggregateEvaluationResult' {} a -> s {configRuleInvokedTime = a} :: AggregateEvaluationResult) Prelude.. Lens.mapping Core._Time

-- | The time when Config recorded the aggregate evaluation result.
aggregateEvaluationResult_resultRecordedTime :: Lens.Lens' AggregateEvaluationResult (Prelude.Maybe Prelude.UTCTime)
aggregateEvaluationResult_resultRecordedTime = Lens.lens (\AggregateEvaluationResult' {resultRecordedTime} -> resultRecordedTime) (\s@AggregateEvaluationResult' {} a -> s {resultRecordedTime = a} :: AggregateEvaluationResult) Prelude.. Lens.mapping Core._Time

-- | The 12-digit account ID of the source account.
aggregateEvaluationResult_accountId :: Lens.Lens' AggregateEvaluationResult (Prelude.Maybe Prelude.Text)
aggregateEvaluationResult_accountId = Lens.lens (\AggregateEvaluationResult' {accountId} -> accountId) (\s@AggregateEvaluationResult' {} a -> s {accountId = a} :: AggregateEvaluationResult)

-- | The resource compliance status.
--
-- For the @AggregationEvaluationResult@ data type, Config supports only
-- the @COMPLIANT@ and @NON_COMPLIANT@. Config does not support the
-- @NOT_APPLICABLE@ and @INSUFFICIENT_DATA@ value.
aggregateEvaluationResult_complianceType :: Lens.Lens' AggregateEvaluationResult (Prelude.Maybe ComplianceType)
aggregateEvaluationResult_complianceType = Lens.lens (\AggregateEvaluationResult' {complianceType} -> complianceType) (\s@AggregateEvaluationResult' {} a -> s {complianceType = a} :: AggregateEvaluationResult)

-- | The source region from where the data is aggregated.
aggregateEvaluationResult_awsRegion :: Lens.Lens' AggregateEvaluationResult (Prelude.Maybe Prelude.Text)
aggregateEvaluationResult_awsRegion = Lens.lens (\AggregateEvaluationResult' {awsRegion} -> awsRegion) (\s@AggregateEvaluationResult' {} a -> s {awsRegion = a} :: AggregateEvaluationResult)

instance Core.FromJSON AggregateEvaluationResult where
  parseJSON =
    Core.withObject
      "AggregateEvaluationResult"
      ( \x ->
          AggregateEvaluationResult'
            Prelude.<$> (x Core..:? "EvaluationResultIdentifier")
            Prelude.<*> (x Core..:? "Annotation")
            Prelude.<*> (x Core..:? "ConfigRuleInvokedTime")
            Prelude.<*> (x Core..:? "ResultRecordedTime")
            Prelude.<*> (x Core..:? "AccountId")
            Prelude.<*> (x Core..:? "ComplianceType")
            Prelude.<*> (x Core..:? "AwsRegion")
      )

instance Prelude.Hashable AggregateEvaluationResult

instance Prelude.NFData AggregateEvaluationResult
