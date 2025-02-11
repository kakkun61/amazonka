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
-- Module      : Network.AWS.FIS.UpdateExperimentTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified experiment template.
module Network.AWS.FIS.UpdateExperimentTemplate
  ( -- * Creating a Request
    UpdateExperimentTemplate (..),
    newUpdateExperimentTemplate,

    -- * Request Lenses
    updateExperimentTemplate_actions,
    updateExperimentTemplate_stopConditions,
    updateExperimentTemplate_targets,
    updateExperimentTemplate_description,
    updateExperimentTemplate_roleArn,
    updateExperimentTemplate_id,

    -- * Destructuring the Response
    UpdateExperimentTemplateResponse (..),
    newUpdateExperimentTemplateResponse,

    -- * Response Lenses
    updateExperimentTemplateResponse_experimentTemplate,
    updateExperimentTemplateResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.FIS.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateExperimentTemplate' smart constructor.
data UpdateExperimentTemplate = UpdateExperimentTemplate'
  { -- | The actions for the experiment.
    actions :: Prelude.Maybe (Prelude.HashMap Prelude.Text UpdateExperimentTemplateActionInputItem),
    -- | The stop conditions for the experiment.
    stopConditions :: Prelude.Maybe [UpdateExperimentTemplateStopConditionInput],
    -- | The targets for the experiment.
    targets :: Prelude.Maybe (Prelude.HashMap Prelude.Text UpdateExperimentTemplateTargetInput),
    -- | A description for the template.
    description :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of an IAM role that grants the AWS FIS
    -- service permission to perform service actions on your behalf.
    roleArn :: Prelude.Maybe Prelude.Text,
    -- | The ID of the experiment template.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateExperimentTemplate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'actions', 'updateExperimentTemplate_actions' - The actions for the experiment.
--
-- 'stopConditions', 'updateExperimentTemplate_stopConditions' - The stop conditions for the experiment.
--
-- 'targets', 'updateExperimentTemplate_targets' - The targets for the experiment.
--
-- 'description', 'updateExperimentTemplate_description' - A description for the template.
--
-- 'roleArn', 'updateExperimentTemplate_roleArn' - The Amazon Resource Name (ARN) of an IAM role that grants the AWS FIS
-- service permission to perform service actions on your behalf.
--
-- 'id', 'updateExperimentTemplate_id' - The ID of the experiment template.
newUpdateExperimentTemplate ::
  -- | 'id'
  Prelude.Text ->
  UpdateExperimentTemplate
newUpdateExperimentTemplate pId_ =
  UpdateExperimentTemplate'
    { actions =
        Prelude.Nothing,
      stopConditions = Prelude.Nothing,
      targets = Prelude.Nothing,
      description = Prelude.Nothing,
      roleArn = Prelude.Nothing,
      id = pId_
    }

-- | The actions for the experiment.
updateExperimentTemplate_actions :: Lens.Lens' UpdateExperimentTemplate (Prelude.Maybe (Prelude.HashMap Prelude.Text UpdateExperimentTemplateActionInputItem))
updateExperimentTemplate_actions = Lens.lens (\UpdateExperimentTemplate' {actions} -> actions) (\s@UpdateExperimentTemplate' {} a -> s {actions = a} :: UpdateExperimentTemplate) Prelude.. Lens.mapping Lens.coerced

-- | The stop conditions for the experiment.
updateExperimentTemplate_stopConditions :: Lens.Lens' UpdateExperimentTemplate (Prelude.Maybe [UpdateExperimentTemplateStopConditionInput])
updateExperimentTemplate_stopConditions = Lens.lens (\UpdateExperimentTemplate' {stopConditions} -> stopConditions) (\s@UpdateExperimentTemplate' {} a -> s {stopConditions = a} :: UpdateExperimentTemplate) Prelude.. Lens.mapping Lens.coerced

-- | The targets for the experiment.
updateExperimentTemplate_targets :: Lens.Lens' UpdateExperimentTemplate (Prelude.Maybe (Prelude.HashMap Prelude.Text UpdateExperimentTemplateTargetInput))
updateExperimentTemplate_targets = Lens.lens (\UpdateExperimentTemplate' {targets} -> targets) (\s@UpdateExperimentTemplate' {} a -> s {targets = a} :: UpdateExperimentTemplate) Prelude.. Lens.mapping Lens.coerced

-- | A description for the template.
updateExperimentTemplate_description :: Lens.Lens' UpdateExperimentTemplate (Prelude.Maybe Prelude.Text)
updateExperimentTemplate_description = Lens.lens (\UpdateExperimentTemplate' {description} -> description) (\s@UpdateExperimentTemplate' {} a -> s {description = a} :: UpdateExperimentTemplate)

-- | The Amazon Resource Name (ARN) of an IAM role that grants the AWS FIS
-- service permission to perform service actions on your behalf.
updateExperimentTemplate_roleArn :: Lens.Lens' UpdateExperimentTemplate (Prelude.Maybe Prelude.Text)
updateExperimentTemplate_roleArn = Lens.lens (\UpdateExperimentTemplate' {roleArn} -> roleArn) (\s@UpdateExperimentTemplate' {} a -> s {roleArn = a} :: UpdateExperimentTemplate)

-- | The ID of the experiment template.
updateExperimentTemplate_id :: Lens.Lens' UpdateExperimentTemplate Prelude.Text
updateExperimentTemplate_id = Lens.lens (\UpdateExperimentTemplate' {id} -> id) (\s@UpdateExperimentTemplate' {} a -> s {id = a} :: UpdateExperimentTemplate)

instance Core.AWSRequest UpdateExperimentTemplate where
  type
    AWSResponse UpdateExperimentTemplate =
      UpdateExperimentTemplateResponse
  request = Request.patchJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateExperimentTemplateResponse'
            Prelude.<$> (x Core..?> "experimentTemplate")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateExperimentTemplate

instance Prelude.NFData UpdateExperimentTemplate

instance Core.ToHeaders UpdateExperimentTemplate where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateExperimentTemplate where
  toJSON UpdateExperimentTemplate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("actions" Core..=) Prelude.<$> actions,
            ("stopConditions" Core..=)
              Prelude.<$> stopConditions,
            ("targets" Core..=) Prelude.<$> targets,
            ("description" Core..=) Prelude.<$> description,
            ("roleArn" Core..=) Prelude.<$> roleArn
          ]
      )

instance Core.ToPath UpdateExperimentTemplate where
  toPath UpdateExperimentTemplate' {..} =
    Prelude.mconcat
      ["/experimentTemplates/", Core.toBS id]

instance Core.ToQuery UpdateExperimentTemplate where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateExperimentTemplateResponse' smart constructor.
data UpdateExperimentTemplateResponse = UpdateExperimentTemplateResponse'
  { -- | Information about the experiment template.
    experimentTemplate :: Prelude.Maybe ExperimentTemplate,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateExperimentTemplateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'experimentTemplate', 'updateExperimentTemplateResponse_experimentTemplate' - Information about the experiment template.
--
-- 'httpStatus', 'updateExperimentTemplateResponse_httpStatus' - The response's http status code.
newUpdateExperimentTemplateResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateExperimentTemplateResponse
newUpdateExperimentTemplateResponse pHttpStatus_ =
  UpdateExperimentTemplateResponse'
    { experimentTemplate =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the experiment template.
updateExperimentTemplateResponse_experimentTemplate :: Lens.Lens' UpdateExperimentTemplateResponse (Prelude.Maybe ExperimentTemplate)
updateExperimentTemplateResponse_experimentTemplate = Lens.lens (\UpdateExperimentTemplateResponse' {experimentTemplate} -> experimentTemplate) (\s@UpdateExperimentTemplateResponse' {} a -> s {experimentTemplate = a} :: UpdateExperimentTemplateResponse)

-- | The response's http status code.
updateExperimentTemplateResponse_httpStatus :: Lens.Lens' UpdateExperimentTemplateResponse Prelude.Int
updateExperimentTemplateResponse_httpStatus = Lens.lens (\UpdateExperimentTemplateResponse' {httpStatus} -> httpStatus) (\s@UpdateExperimentTemplateResponse' {} a -> s {httpStatus = a} :: UpdateExperimentTemplateResponse)

instance
  Prelude.NFData
    UpdateExperimentTemplateResponse
