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
-- Module      : Network.AWS.FraudDetector.GetDetectorVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a particular detector version.
module Network.AWS.FraudDetector.GetDetectorVersion
  ( -- * Creating a Request
    GetDetectorVersion (..),
    newGetDetectorVersion,

    -- * Request Lenses
    getDetectorVersion_detectorId,
    getDetectorVersion_detectorVersionId,

    -- * Destructuring the Response
    GetDetectorVersionResponse (..),
    newGetDetectorVersionResponse,

    -- * Response Lenses
    getDetectorVersionResponse_status,
    getDetectorVersionResponse_ruleExecutionMode,
    getDetectorVersionResponse_lastUpdatedTime,
    getDetectorVersionResponse_arn,
    getDetectorVersionResponse_rules,
    getDetectorVersionResponse_detectorVersionId,
    getDetectorVersionResponse_createdTime,
    getDetectorVersionResponse_modelVersions,
    getDetectorVersionResponse_detectorId,
    getDetectorVersionResponse_externalModelEndpoints,
    getDetectorVersionResponse_description,
    getDetectorVersionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.FraudDetector.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetDetectorVersion' smart constructor.
data GetDetectorVersion = GetDetectorVersion'
  { -- | The detector ID.
    detectorId :: Prelude.Text,
    -- | The detector version ID.
    detectorVersionId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetDetectorVersion' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'detectorId', 'getDetectorVersion_detectorId' - The detector ID.
--
-- 'detectorVersionId', 'getDetectorVersion_detectorVersionId' - The detector version ID.
newGetDetectorVersion ::
  -- | 'detectorId'
  Prelude.Text ->
  -- | 'detectorVersionId'
  Prelude.Text ->
  GetDetectorVersion
newGetDetectorVersion
  pDetectorId_
  pDetectorVersionId_ =
    GetDetectorVersion'
      { detectorId = pDetectorId_,
        detectorVersionId = pDetectorVersionId_
      }

-- | The detector ID.
getDetectorVersion_detectorId :: Lens.Lens' GetDetectorVersion Prelude.Text
getDetectorVersion_detectorId = Lens.lens (\GetDetectorVersion' {detectorId} -> detectorId) (\s@GetDetectorVersion' {} a -> s {detectorId = a} :: GetDetectorVersion)

-- | The detector version ID.
getDetectorVersion_detectorVersionId :: Lens.Lens' GetDetectorVersion Prelude.Text
getDetectorVersion_detectorVersionId = Lens.lens (\GetDetectorVersion' {detectorVersionId} -> detectorVersionId) (\s@GetDetectorVersion' {} a -> s {detectorVersionId = a} :: GetDetectorVersion)

instance Core.AWSRequest GetDetectorVersion where
  type
    AWSResponse GetDetectorVersion =
      GetDetectorVersionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetDetectorVersionResponse'
            Prelude.<$> (x Core..?> "status")
            Prelude.<*> (x Core..?> "ruleExecutionMode")
            Prelude.<*> (x Core..?> "lastUpdatedTime")
            Prelude.<*> (x Core..?> "arn")
            Prelude.<*> (x Core..?> "rules" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "detectorVersionId")
            Prelude.<*> (x Core..?> "createdTime")
            Prelude.<*> (x Core..?> "modelVersions" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "detectorId")
            Prelude.<*> ( x Core..?> "externalModelEndpoints"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "description")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetDetectorVersion

instance Prelude.NFData GetDetectorVersion

instance Core.ToHeaders GetDetectorVersion where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSHawksNestServiceFacade.GetDetectorVersion" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetDetectorVersion where
  toJSON GetDetectorVersion' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("detectorId" Core..= detectorId),
            Prelude.Just
              ("detectorVersionId" Core..= detectorVersionId)
          ]
      )

instance Core.ToPath GetDetectorVersion where
  toPath = Prelude.const "/"

instance Core.ToQuery GetDetectorVersion where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetDetectorVersionResponse' smart constructor.
data GetDetectorVersionResponse = GetDetectorVersionResponse'
  { -- | The status of the detector version.
    status :: Prelude.Maybe DetectorVersionStatus,
    -- | The execution mode of the rule in the dectector
    --
    -- @FIRST_MATCHED@ indicates that Amazon Fraud Detector evaluates rules
    -- sequentially, first to last, stopping at the first matched rule. Amazon
    -- Fraud dectector then provides the outcomes for that single rule.
    --
    -- @ALL_MATCHED@ indicates that Amazon Fraud Detector evaluates all rules
    -- and returns the outcomes for all matched rules. You can define and edit
    -- the rule mode at the detector version level, when it is in draft status.
    ruleExecutionMode :: Prelude.Maybe RuleExecutionMode,
    -- | The timestamp when the detector version was last updated.
    lastUpdatedTime :: Prelude.Maybe Prelude.Text,
    -- | The detector version ARN.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The rules included in the detector version.
    rules :: Prelude.Maybe [Rule],
    -- | The detector version ID.
    detectorVersionId :: Prelude.Maybe Prelude.Text,
    -- | The timestamp when the detector version was created.
    createdTime :: Prelude.Maybe Prelude.Text,
    -- | The model versions included in the detector version.
    modelVersions :: Prelude.Maybe [ModelVersion],
    -- | The detector ID.
    detectorId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon SageMaker model endpoints included in the detector version.
    externalModelEndpoints :: Prelude.Maybe [Prelude.Text],
    -- | The detector version description.
    description :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetDetectorVersionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'getDetectorVersionResponse_status' - The status of the detector version.
--
-- 'ruleExecutionMode', 'getDetectorVersionResponse_ruleExecutionMode' - The execution mode of the rule in the dectector
--
-- @FIRST_MATCHED@ indicates that Amazon Fraud Detector evaluates rules
-- sequentially, first to last, stopping at the first matched rule. Amazon
-- Fraud dectector then provides the outcomes for that single rule.
--
-- @ALL_MATCHED@ indicates that Amazon Fraud Detector evaluates all rules
-- and returns the outcomes for all matched rules. You can define and edit
-- the rule mode at the detector version level, when it is in draft status.
--
-- 'lastUpdatedTime', 'getDetectorVersionResponse_lastUpdatedTime' - The timestamp when the detector version was last updated.
--
-- 'arn', 'getDetectorVersionResponse_arn' - The detector version ARN.
--
-- 'rules', 'getDetectorVersionResponse_rules' - The rules included in the detector version.
--
-- 'detectorVersionId', 'getDetectorVersionResponse_detectorVersionId' - The detector version ID.
--
-- 'createdTime', 'getDetectorVersionResponse_createdTime' - The timestamp when the detector version was created.
--
-- 'modelVersions', 'getDetectorVersionResponse_modelVersions' - The model versions included in the detector version.
--
-- 'detectorId', 'getDetectorVersionResponse_detectorId' - The detector ID.
--
-- 'externalModelEndpoints', 'getDetectorVersionResponse_externalModelEndpoints' - The Amazon SageMaker model endpoints included in the detector version.
--
-- 'description', 'getDetectorVersionResponse_description' - The detector version description.
--
-- 'httpStatus', 'getDetectorVersionResponse_httpStatus' - The response's http status code.
newGetDetectorVersionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetDetectorVersionResponse
newGetDetectorVersionResponse pHttpStatus_ =
  GetDetectorVersionResponse'
    { status =
        Prelude.Nothing,
      ruleExecutionMode = Prelude.Nothing,
      lastUpdatedTime = Prelude.Nothing,
      arn = Prelude.Nothing,
      rules = Prelude.Nothing,
      detectorVersionId = Prelude.Nothing,
      createdTime = Prelude.Nothing,
      modelVersions = Prelude.Nothing,
      detectorId = Prelude.Nothing,
      externalModelEndpoints = Prelude.Nothing,
      description = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The status of the detector version.
getDetectorVersionResponse_status :: Lens.Lens' GetDetectorVersionResponse (Prelude.Maybe DetectorVersionStatus)
getDetectorVersionResponse_status = Lens.lens (\GetDetectorVersionResponse' {status} -> status) (\s@GetDetectorVersionResponse' {} a -> s {status = a} :: GetDetectorVersionResponse)

-- | The execution mode of the rule in the dectector
--
-- @FIRST_MATCHED@ indicates that Amazon Fraud Detector evaluates rules
-- sequentially, first to last, stopping at the first matched rule. Amazon
-- Fraud dectector then provides the outcomes for that single rule.
--
-- @ALL_MATCHED@ indicates that Amazon Fraud Detector evaluates all rules
-- and returns the outcomes for all matched rules. You can define and edit
-- the rule mode at the detector version level, when it is in draft status.
getDetectorVersionResponse_ruleExecutionMode :: Lens.Lens' GetDetectorVersionResponse (Prelude.Maybe RuleExecutionMode)
getDetectorVersionResponse_ruleExecutionMode = Lens.lens (\GetDetectorVersionResponse' {ruleExecutionMode} -> ruleExecutionMode) (\s@GetDetectorVersionResponse' {} a -> s {ruleExecutionMode = a} :: GetDetectorVersionResponse)

-- | The timestamp when the detector version was last updated.
getDetectorVersionResponse_lastUpdatedTime :: Lens.Lens' GetDetectorVersionResponse (Prelude.Maybe Prelude.Text)
getDetectorVersionResponse_lastUpdatedTime = Lens.lens (\GetDetectorVersionResponse' {lastUpdatedTime} -> lastUpdatedTime) (\s@GetDetectorVersionResponse' {} a -> s {lastUpdatedTime = a} :: GetDetectorVersionResponse)

-- | The detector version ARN.
getDetectorVersionResponse_arn :: Lens.Lens' GetDetectorVersionResponse (Prelude.Maybe Prelude.Text)
getDetectorVersionResponse_arn = Lens.lens (\GetDetectorVersionResponse' {arn} -> arn) (\s@GetDetectorVersionResponse' {} a -> s {arn = a} :: GetDetectorVersionResponse)

-- | The rules included in the detector version.
getDetectorVersionResponse_rules :: Lens.Lens' GetDetectorVersionResponse (Prelude.Maybe [Rule])
getDetectorVersionResponse_rules = Lens.lens (\GetDetectorVersionResponse' {rules} -> rules) (\s@GetDetectorVersionResponse' {} a -> s {rules = a} :: GetDetectorVersionResponse) Prelude.. Lens.mapping Lens.coerced

-- | The detector version ID.
getDetectorVersionResponse_detectorVersionId :: Lens.Lens' GetDetectorVersionResponse (Prelude.Maybe Prelude.Text)
getDetectorVersionResponse_detectorVersionId = Lens.lens (\GetDetectorVersionResponse' {detectorVersionId} -> detectorVersionId) (\s@GetDetectorVersionResponse' {} a -> s {detectorVersionId = a} :: GetDetectorVersionResponse)

-- | The timestamp when the detector version was created.
getDetectorVersionResponse_createdTime :: Lens.Lens' GetDetectorVersionResponse (Prelude.Maybe Prelude.Text)
getDetectorVersionResponse_createdTime = Lens.lens (\GetDetectorVersionResponse' {createdTime} -> createdTime) (\s@GetDetectorVersionResponse' {} a -> s {createdTime = a} :: GetDetectorVersionResponse)

-- | The model versions included in the detector version.
getDetectorVersionResponse_modelVersions :: Lens.Lens' GetDetectorVersionResponse (Prelude.Maybe [ModelVersion])
getDetectorVersionResponse_modelVersions = Lens.lens (\GetDetectorVersionResponse' {modelVersions} -> modelVersions) (\s@GetDetectorVersionResponse' {} a -> s {modelVersions = a} :: GetDetectorVersionResponse) Prelude.. Lens.mapping Lens.coerced

-- | The detector ID.
getDetectorVersionResponse_detectorId :: Lens.Lens' GetDetectorVersionResponse (Prelude.Maybe Prelude.Text)
getDetectorVersionResponse_detectorId = Lens.lens (\GetDetectorVersionResponse' {detectorId} -> detectorId) (\s@GetDetectorVersionResponse' {} a -> s {detectorId = a} :: GetDetectorVersionResponse)

-- | The Amazon SageMaker model endpoints included in the detector version.
getDetectorVersionResponse_externalModelEndpoints :: Lens.Lens' GetDetectorVersionResponse (Prelude.Maybe [Prelude.Text])
getDetectorVersionResponse_externalModelEndpoints = Lens.lens (\GetDetectorVersionResponse' {externalModelEndpoints} -> externalModelEndpoints) (\s@GetDetectorVersionResponse' {} a -> s {externalModelEndpoints = a} :: GetDetectorVersionResponse) Prelude.. Lens.mapping Lens.coerced

-- | The detector version description.
getDetectorVersionResponse_description :: Lens.Lens' GetDetectorVersionResponse (Prelude.Maybe Prelude.Text)
getDetectorVersionResponse_description = Lens.lens (\GetDetectorVersionResponse' {description} -> description) (\s@GetDetectorVersionResponse' {} a -> s {description = a} :: GetDetectorVersionResponse)

-- | The response's http status code.
getDetectorVersionResponse_httpStatus :: Lens.Lens' GetDetectorVersionResponse Prelude.Int
getDetectorVersionResponse_httpStatus = Lens.lens (\GetDetectorVersionResponse' {httpStatus} -> httpStatus) (\s@GetDetectorVersionResponse' {} a -> s {httpStatus = a} :: GetDetectorVersionResponse)

instance Prelude.NFData GetDetectorVersionResponse
