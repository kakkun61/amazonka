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
-- Module      : Network.AWS.FraudDetector.UpdateDetectorVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a detector version. The detector version attributes that you can
-- update include models, external model endpoints, rules, rule execution
-- mode, and description. You can only update a @DRAFT@ detector version.
module Network.AWS.FraudDetector.UpdateDetectorVersion
  ( -- * Creating a Request
    UpdateDetectorVersion (..),
    newUpdateDetectorVersion,

    -- * Request Lenses
    updateDetectorVersion_ruleExecutionMode,
    updateDetectorVersion_modelVersions,
    updateDetectorVersion_description,
    updateDetectorVersion_detectorId,
    updateDetectorVersion_detectorVersionId,
    updateDetectorVersion_externalModelEndpoints,
    updateDetectorVersion_rules,

    -- * Destructuring the Response
    UpdateDetectorVersionResponse (..),
    newUpdateDetectorVersionResponse,

    -- * Response Lenses
    updateDetectorVersionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.FraudDetector.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateDetectorVersion' smart constructor.
data UpdateDetectorVersion = UpdateDetectorVersion'
  { -- | The rule execution mode to add to the detector.
    --
    -- If you specify @FIRST_MATCHED@, Amazon Fraud Detector evaluates rules
    -- sequentially, first to last, stopping at the first matched rule. Amazon
    -- Fraud dectector then provides the outcomes for that single rule.
    --
    -- If you specifiy @ALL_MATCHED@, Amazon Fraud Detector evaluates all rules
    -- and returns the outcomes for all matched rules. You can define and edit
    -- the rule mode at the detector version level, when it is in draft status.
    --
    -- The default behavior is @FIRST_MATCHED@.
    ruleExecutionMode :: Prelude.Maybe RuleExecutionMode,
    -- | The model versions to include in the detector version.
    modelVersions :: Prelude.Maybe [ModelVersion],
    -- | The detector version description.
    description :: Prelude.Maybe Prelude.Text,
    -- | The parent detector ID for the detector version you want to update.
    detectorId :: Prelude.Text,
    -- | The detector version ID.
    detectorVersionId :: Prelude.Text,
    -- | The Amazon SageMaker model endpoints to include in the detector version.
    externalModelEndpoints :: [Prelude.Text],
    -- | The rules to include in the detector version.
    rules :: [Rule]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateDetectorVersion' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ruleExecutionMode', 'updateDetectorVersion_ruleExecutionMode' - The rule execution mode to add to the detector.
--
-- If you specify @FIRST_MATCHED@, Amazon Fraud Detector evaluates rules
-- sequentially, first to last, stopping at the first matched rule. Amazon
-- Fraud dectector then provides the outcomes for that single rule.
--
-- If you specifiy @ALL_MATCHED@, Amazon Fraud Detector evaluates all rules
-- and returns the outcomes for all matched rules. You can define and edit
-- the rule mode at the detector version level, when it is in draft status.
--
-- The default behavior is @FIRST_MATCHED@.
--
-- 'modelVersions', 'updateDetectorVersion_modelVersions' - The model versions to include in the detector version.
--
-- 'description', 'updateDetectorVersion_description' - The detector version description.
--
-- 'detectorId', 'updateDetectorVersion_detectorId' - The parent detector ID for the detector version you want to update.
--
-- 'detectorVersionId', 'updateDetectorVersion_detectorVersionId' - The detector version ID.
--
-- 'externalModelEndpoints', 'updateDetectorVersion_externalModelEndpoints' - The Amazon SageMaker model endpoints to include in the detector version.
--
-- 'rules', 'updateDetectorVersion_rules' - The rules to include in the detector version.
newUpdateDetectorVersion ::
  -- | 'detectorId'
  Prelude.Text ->
  -- | 'detectorVersionId'
  Prelude.Text ->
  UpdateDetectorVersion
newUpdateDetectorVersion
  pDetectorId_
  pDetectorVersionId_ =
    UpdateDetectorVersion'
      { ruleExecutionMode =
          Prelude.Nothing,
        modelVersions = Prelude.Nothing,
        description = Prelude.Nothing,
        detectorId = pDetectorId_,
        detectorVersionId = pDetectorVersionId_,
        externalModelEndpoints = Prelude.mempty,
        rules = Prelude.mempty
      }

-- | The rule execution mode to add to the detector.
--
-- If you specify @FIRST_MATCHED@, Amazon Fraud Detector evaluates rules
-- sequentially, first to last, stopping at the first matched rule. Amazon
-- Fraud dectector then provides the outcomes for that single rule.
--
-- If you specifiy @ALL_MATCHED@, Amazon Fraud Detector evaluates all rules
-- and returns the outcomes for all matched rules. You can define and edit
-- the rule mode at the detector version level, when it is in draft status.
--
-- The default behavior is @FIRST_MATCHED@.
updateDetectorVersion_ruleExecutionMode :: Lens.Lens' UpdateDetectorVersion (Prelude.Maybe RuleExecutionMode)
updateDetectorVersion_ruleExecutionMode = Lens.lens (\UpdateDetectorVersion' {ruleExecutionMode} -> ruleExecutionMode) (\s@UpdateDetectorVersion' {} a -> s {ruleExecutionMode = a} :: UpdateDetectorVersion)

-- | The model versions to include in the detector version.
updateDetectorVersion_modelVersions :: Lens.Lens' UpdateDetectorVersion (Prelude.Maybe [ModelVersion])
updateDetectorVersion_modelVersions = Lens.lens (\UpdateDetectorVersion' {modelVersions} -> modelVersions) (\s@UpdateDetectorVersion' {} a -> s {modelVersions = a} :: UpdateDetectorVersion) Prelude.. Lens.mapping Lens.coerced

-- | The detector version description.
updateDetectorVersion_description :: Lens.Lens' UpdateDetectorVersion (Prelude.Maybe Prelude.Text)
updateDetectorVersion_description = Lens.lens (\UpdateDetectorVersion' {description} -> description) (\s@UpdateDetectorVersion' {} a -> s {description = a} :: UpdateDetectorVersion)

-- | The parent detector ID for the detector version you want to update.
updateDetectorVersion_detectorId :: Lens.Lens' UpdateDetectorVersion Prelude.Text
updateDetectorVersion_detectorId = Lens.lens (\UpdateDetectorVersion' {detectorId} -> detectorId) (\s@UpdateDetectorVersion' {} a -> s {detectorId = a} :: UpdateDetectorVersion)

-- | The detector version ID.
updateDetectorVersion_detectorVersionId :: Lens.Lens' UpdateDetectorVersion Prelude.Text
updateDetectorVersion_detectorVersionId = Lens.lens (\UpdateDetectorVersion' {detectorVersionId} -> detectorVersionId) (\s@UpdateDetectorVersion' {} a -> s {detectorVersionId = a} :: UpdateDetectorVersion)

-- | The Amazon SageMaker model endpoints to include in the detector version.
updateDetectorVersion_externalModelEndpoints :: Lens.Lens' UpdateDetectorVersion [Prelude.Text]
updateDetectorVersion_externalModelEndpoints = Lens.lens (\UpdateDetectorVersion' {externalModelEndpoints} -> externalModelEndpoints) (\s@UpdateDetectorVersion' {} a -> s {externalModelEndpoints = a} :: UpdateDetectorVersion) Prelude.. Lens.coerced

-- | The rules to include in the detector version.
updateDetectorVersion_rules :: Lens.Lens' UpdateDetectorVersion [Rule]
updateDetectorVersion_rules = Lens.lens (\UpdateDetectorVersion' {rules} -> rules) (\s@UpdateDetectorVersion' {} a -> s {rules = a} :: UpdateDetectorVersion) Prelude.. Lens.coerced

instance Core.AWSRequest UpdateDetectorVersion where
  type
    AWSResponse UpdateDetectorVersion =
      UpdateDetectorVersionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateDetectorVersionResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateDetectorVersion

instance Prelude.NFData UpdateDetectorVersion

instance Core.ToHeaders UpdateDetectorVersion where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSHawksNestServiceFacade.UpdateDetectorVersion" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateDetectorVersion where
  toJSON UpdateDetectorVersion' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ruleExecutionMode" Core..=)
              Prelude.<$> ruleExecutionMode,
            ("modelVersions" Core..=) Prelude.<$> modelVersions,
            ("description" Core..=) Prelude.<$> description,
            Prelude.Just ("detectorId" Core..= detectorId),
            Prelude.Just
              ("detectorVersionId" Core..= detectorVersionId),
            Prelude.Just
              ( "externalModelEndpoints"
                  Core..= externalModelEndpoints
              ),
            Prelude.Just ("rules" Core..= rules)
          ]
      )

instance Core.ToPath UpdateDetectorVersion where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateDetectorVersion where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateDetectorVersionResponse' smart constructor.
data UpdateDetectorVersionResponse = UpdateDetectorVersionResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateDetectorVersionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateDetectorVersionResponse_httpStatus' - The response's http status code.
newUpdateDetectorVersionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateDetectorVersionResponse
newUpdateDetectorVersionResponse pHttpStatus_ =
  UpdateDetectorVersionResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
updateDetectorVersionResponse_httpStatus :: Lens.Lens' UpdateDetectorVersionResponse Prelude.Int
updateDetectorVersionResponse_httpStatus = Lens.lens (\UpdateDetectorVersionResponse' {httpStatus} -> httpStatus) (\s@UpdateDetectorVersionResponse' {} a -> s {httpStatus = a} :: UpdateDetectorVersionResponse)

instance Prelude.NFData UpdateDetectorVersionResponse
