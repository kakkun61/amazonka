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
-- Module      : Network.AWS.SageMaker.UpdateTrialComponent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates one or more properties of a trial component.
module Network.AWS.SageMaker.UpdateTrialComponent
  ( -- * Creating a Request
    UpdateTrialComponent (..),
    newUpdateTrialComponent,

    -- * Request Lenses
    updateTrialComponent_status,
    updateTrialComponent_parametersToRemove,
    updateTrialComponent_outputArtifacts,
    updateTrialComponent_startTime,
    updateTrialComponent_outputArtifactsToRemove,
    updateTrialComponent_endTime,
    updateTrialComponent_parameters,
    updateTrialComponent_displayName,
    updateTrialComponent_inputArtifacts,
    updateTrialComponent_inputArtifactsToRemove,
    updateTrialComponent_trialComponentName,

    -- * Destructuring the Response
    UpdateTrialComponentResponse (..),
    newUpdateTrialComponentResponse,

    -- * Response Lenses
    updateTrialComponentResponse_trialComponentArn,
    updateTrialComponentResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'newUpdateTrialComponent' smart constructor.
data UpdateTrialComponent = UpdateTrialComponent'
  { -- | The new status of the component.
    status :: Prelude.Maybe TrialComponentStatus,
    -- | The hyperparameters to remove from the component.
    parametersToRemove :: Prelude.Maybe [Prelude.Text],
    -- | Replaces all of the component\'s output artifacts with the specified
    -- artifacts.
    outputArtifacts :: Prelude.Maybe (Prelude.HashMap Prelude.Text TrialComponentArtifact),
    -- | When the component started.
    startTime :: Prelude.Maybe Core.POSIX,
    -- | The output artifacts to remove from the component.
    outputArtifactsToRemove :: Prelude.Maybe [Prelude.Text],
    -- | When the component ended.
    endTime :: Prelude.Maybe Core.POSIX,
    -- | Replaces all of the component\'s hyperparameters with the specified
    -- hyperparameters.
    parameters :: Prelude.Maybe (Prelude.HashMap Prelude.Text TrialComponentParameterValue),
    -- | The name of the component as displayed. The name doesn\'t need to be
    -- unique. If @DisplayName@ isn\'t specified, @TrialComponentName@ is
    -- displayed.
    displayName :: Prelude.Maybe Prelude.Text,
    -- | Replaces all of the component\'s input artifacts with the specified
    -- artifacts.
    inputArtifacts :: Prelude.Maybe (Prelude.HashMap Prelude.Text TrialComponentArtifact),
    -- | The input artifacts to remove from the component.
    inputArtifactsToRemove :: Prelude.Maybe [Prelude.Text],
    -- | The name of the component to update.
    trialComponentName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateTrialComponent' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'updateTrialComponent_status' - The new status of the component.
--
-- 'parametersToRemove', 'updateTrialComponent_parametersToRemove' - The hyperparameters to remove from the component.
--
-- 'outputArtifacts', 'updateTrialComponent_outputArtifacts' - Replaces all of the component\'s output artifacts with the specified
-- artifacts.
--
-- 'startTime', 'updateTrialComponent_startTime' - When the component started.
--
-- 'outputArtifactsToRemove', 'updateTrialComponent_outputArtifactsToRemove' - The output artifacts to remove from the component.
--
-- 'endTime', 'updateTrialComponent_endTime' - When the component ended.
--
-- 'parameters', 'updateTrialComponent_parameters' - Replaces all of the component\'s hyperparameters with the specified
-- hyperparameters.
--
-- 'displayName', 'updateTrialComponent_displayName' - The name of the component as displayed. The name doesn\'t need to be
-- unique. If @DisplayName@ isn\'t specified, @TrialComponentName@ is
-- displayed.
--
-- 'inputArtifacts', 'updateTrialComponent_inputArtifacts' - Replaces all of the component\'s input artifacts with the specified
-- artifacts.
--
-- 'inputArtifactsToRemove', 'updateTrialComponent_inputArtifactsToRemove' - The input artifacts to remove from the component.
--
-- 'trialComponentName', 'updateTrialComponent_trialComponentName' - The name of the component to update.
newUpdateTrialComponent ::
  -- | 'trialComponentName'
  Prelude.Text ->
  UpdateTrialComponent
newUpdateTrialComponent pTrialComponentName_ =
  UpdateTrialComponent'
    { status = Prelude.Nothing,
      parametersToRemove = Prelude.Nothing,
      outputArtifacts = Prelude.Nothing,
      startTime = Prelude.Nothing,
      outputArtifactsToRemove = Prelude.Nothing,
      endTime = Prelude.Nothing,
      parameters = Prelude.Nothing,
      displayName = Prelude.Nothing,
      inputArtifacts = Prelude.Nothing,
      inputArtifactsToRemove = Prelude.Nothing,
      trialComponentName = pTrialComponentName_
    }

-- | The new status of the component.
updateTrialComponent_status :: Lens.Lens' UpdateTrialComponent (Prelude.Maybe TrialComponentStatus)
updateTrialComponent_status = Lens.lens (\UpdateTrialComponent' {status} -> status) (\s@UpdateTrialComponent' {} a -> s {status = a} :: UpdateTrialComponent)

-- | The hyperparameters to remove from the component.
updateTrialComponent_parametersToRemove :: Lens.Lens' UpdateTrialComponent (Prelude.Maybe [Prelude.Text])
updateTrialComponent_parametersToRemove = Lens.lens (\UpdateTrialComponent' {parametersToRemove} -> parametersToRemove) (\s@UpdateTrialComponent' {} a -> s {parametersToRemove = a} :: UpdateTrialComponent) Prelude.. Lens.mapping Lens.coerced

-- | Replaces all of the component\'s output artifacts with the specified
-- artifacts.
updateTrialComponent_outputArtifacts :: Lens.Lens' UpdateTrialComponent (Prelude.Maybe (Prelude.HashMap Prelude.Text TrialComponentArtifact))
updateTrialComponent_outputArtifacts = Lens.lens (\UpdateTrialComponent' {outputArtifacts} -> outputArtifacts) (\s@UpdateTrialComponent' {} a -> s {outputArtifacts = a} :: UpdateTrialComponent) Prelude.. Lens.mapping Lens.coerced

-- | When the component started.
updateTrialComponent_startTime :: Lens.Lens' UpdateTrialComponent (Prelude.Maybe Prelude.UTCTime)
updateTrialComponent_startTime = Lens.lens (\UpdateTrialComponent' {startTime} -> startTime) (\s@UpdateTrialComponent' {} a -> s {startTime = a} :: UpdateTrialComponent) Prelude.. Lens.mapping Core._Time

-- | The output artifacts to remove from the component.
updateTrialComponent_outputArtifactsToRemove :: Lens.Lens' UpdateTrialComponent (Prelude.Maybe [Prelude.Text])
updateTrialComponent_outputArtifactsToRemove = Lens.lens (\UpdateTrialComponent' {outputArtifactsToRemove} -> outputArtifactsToRemove) (\s@UpdateTrialComponent' {} a -> s {outputArtifactsToRemove = a} :: UpdateTrialComponent) Prelude.. Lens.mapping Lens.coerced

-- | When the component ended.
updateTrialComponent_endTime :: Lens.Lens' UpdateTrialComponent (Prelude.Maybe Prelude.UTCTime)
updateTrialComponent_endTime = Lens.lens (\UpdateTrialComponent' {endTime} -> endTime) (\s@UpdateTrialComponent' {} a -> s {endTime = a} :: UpdateTrialComponent) Prelude.. Lens.mapping Core._Time

-- | Replaces all of the component\'s hyperparameters with the specified
-- hyperparameters.
updateTrialComponent_parameters :: Lens.Lens' UpdateTrialComponent (Prelude.Maybe (Prelude.HashMap Prelude.Text TrialComponentParameterValue))
updateTrialComponent_parameters = Lens.lens (\UpdateTrialComponent' {parameters} -> parameters) (\s@UpdateTrialComponent' {} a -> s {parameters = a} :: UpdateTrialComponent) Prelude.. Lens.mapping Lens.coerced

-- | The name of the component as displayed. The name doesn\'t need to be
-- unique. If @DisplayName@ isn\'t specified, @TrialComponentName@ is
-- displayed.
updateTrialComponent_displayName :: Lens.Lens' UpdateTrialComponent (Prelude.Maybe Prelude.Text)
updateTrialComponent_displayName = Lens.lens (\UpdateTrialComponent' {displayName} -> displayName) (\s@UpdateTrialComponent' {} a -> s {displayName = a} :: UpdateTrialComponent)

-- | Replaces all of the component\'s input artifacts with the specified
-- artifacts.
updateTrialComponent_inputArtifacts :: Lens.Lens' UpdateTrialComponent (Prelude.Maybe (Prelude.HashMap Prelude.Text TrialComponentArtifact))
updateTrialComponent_inputArtifacts = Lens.lens (\UpdateTrialComponent' {inputArtifacts} -> inputArtifacts) (\s@UpdateTrialComponent' {} a -> s {inputArtifacts = a} :: UpdateTrialComponent) Prelude.. Lens.mapping Lens.coerced

-- | The input artifacts to remove from the component.
updateTrialComponent_inputArtifactsToRemove :: Lens.Lens' UpdateTrialComponent (Prelude.Maybe [Prelude.Text])
updateTrialComponent_inputArtifactsToRemove = Lens.lens (\UpdateTrialComponent' {inputArtifactsToRemove} -> inputArtifactsToRemove) (\s@UpdateTrialComponent' {} a -> s {inputArtifactsToRemove = a} :: UpdateTrialComponent) Prelude.. Lens.mapping Lens.coerced

-- | The name of the component to update.
updateTrialComponent_trialComponentName :: Lens.Lens' UpdateTrialComponent Prelude.Text
updateTrialComponent_trialComponentName = Lens.lens (\UpdateTrialComponent' {trialComponentName} -> trialComponentName) (\s@UpdateTrialComponent' {} a -> s {trialComponentName = a} :: UpdateTrialComponent)

instance Core.AWSRequest UpdateTrialComponent where
  type
    AWSResponse UpdateTrialComponent =
      UpdateTrialComponentResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateTrialComponentResponse'
            Prelude.<$> (x Core..?> "TrialComponentArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateTrialComponent

instance Prelude.NFData UpdateTrialComponent

instance Core.ToHeaders UpdateTrialComponent where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SageMaker.UpdateTrialComponent" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateTrialComponent where
  toJSON UpdateTrialComponent' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Status" Core..=) Prelude.<$> status,
            ("ParametersToRemove" Core..=)
              Prelude.<$> parametersToRemove,
            ("OutputArtifacts" Core..=)
              Prelude.<$> outputArtifacts,
            ("StartTime" Core..=) Prelude.<$> startTime,
            ("OutputArtifactsToRemove" Core..=)
              Prelude.<$> outputArtifactsToRemove,
            ("EndTime" Core..=) Prelude.<$> endTime,
            ("Parameters" Core..=) Prelude.<$> parameters,
            ("DisplayName" Core..=) Prelude.<$> displayName,
            ("InputArtifacts" Core..=)
              Prelude.<$> inputArtifacts,
            ("InputArtifactsToRemove" Core..=)
              Prelude.<$> inputArtifactsToRemove,
            Prelude.Just
              ("TrialComponentName" Core..= trialComponentName)
          ]
      )

instance Core.ToPath UpdateTrialComponent where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateTrialComponent where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateTrialComponentResponse' smart constructor.
data UpdateTrialComponentResponse = UpdateTrialComponentResponse'
  { -- | The Amazon Resource Name (ARN) of the trial component.
    trialComponentArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateTrialComponentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'trialComponentArn', 'updateTrialComponentResponse_trialComponentArn' - The Amazon Resource Name (ARN) of the trial component.
--
-- 'httpStatus', 'updateTrialComponentResponse_httpStatus' - The response's http status code.
newUpdateTrialComponentResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateTrialComponentResponse
newUpdateTrialComponentResponse pHttpStatus_ =
  UpdateTrialComponentResponse'
    { trialComponentArn =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Resource Name (ARN) of the trial component.
updateTrialComponentResponse_trialComponentArn :: Lens.Lens' UpdateTrialComponentResponse (Prelude.Maybe Prelude.Text)
updateTrialComponentResponse_trialComponentArn = Lens.lens (\UpdateTrialComponentResponse' {trialComponentArn} -> trialComponentArn) (\s@UpdateTrialComponentResponse' {} a -> s {trialComponentArn = a} :: UpdateTrialComponentResponse)

-- | The response's http status code.
updateTrialComponentResponse_httpStatus :: Lens.Lens' UpdateTrialComponentResponse Prelude.Int
updateTrialComponentResponse_httpStatus = Lens.lens (\UpdateTrialComponentResponse' {httpStatus} -> httpStatus) (\s@UpdateTrialComponentResponse' {} a -> s {httpStatus = a} :: UpdateTrialComponentResponse)

instance Prelude.NFData UpdateTrialComponentResponse
