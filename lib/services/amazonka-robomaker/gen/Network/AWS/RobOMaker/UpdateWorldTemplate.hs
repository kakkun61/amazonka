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
-- Module      : Network.AWS.RobOMaker.UpdateWorldTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a world template.
module Network.AWS.RobOMaker.UpdateWorldTemplate
  ( -- * Creating a Request
    UpdateWorldTemplate (..),
    newUpdateWorldTemplate,

    -- * Request Lenses
    updateWorldTemplate_name,
    updateWorldTemplate_templateLocation,
    updateWorldTemplate_templateBody,
    updateWorldTemplate_template,

    -- * Destructuring the Response
    UpdateWorldTemplateResponse (..),
    newUpdateWorldTemplateResponse,

    -- * Response Lenses
    updateWorldTemplateResponse_lastUpdatedAt,
    updateWorldTemplateResponse_arn,
    updateWorldTemplateResponse_createdAt,
    updateWorldTemplateResponse_name,
    updateWorldTemplateResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.RobOMaker.Types

-- | /See:/ 'newUpdateWorldTemplate' smart constructor.
data UpdateWorldTemplate = UpdateWorldTemplate'
  { -- | The name of the template.
    name :: Prelude.Maybe Prelude.Text,
    -- | The location of the world template.
    templateLocation :: Prelude.Maybe TemplateLocation,
    -- | The world template body.
    templateBody :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (arn) of the world template to update.
    template :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateWorldTemplate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'updateWorldTemplate_name' - The name of the template.
--
-- 'templateLocation', 'updateWorldTemplate_templateLocation' - The location of the world template.
--
-- 'templateBody', 'updateWorldTemplate_templateBody' - The world template body.
--
-- 'template', 'updateWorldTemplate_template' - The Amazon Resource Name (arn) of the world template to update.
newUpdateWorldTemplate ::
  -- | 'template'
  Prelude.Text ->
  UpdateWorldTemplate
newUpdateWorldTemplate pTemplate_ =
  UpdateWorldTemplate'
    { name = Prelude.Nothing,
      templateLocation = Prelude.Nothing,
      templateBody = Prelude.Nothing,
      template = pTemplate_
    }

-- | The name of the template.
updateWorldTemplate_name :: Lens.Lens' UpdateWorldTemplate (Prelude.Maybe Prelude.Text)
updateWorldTemplate_name = Lens.lens (\UpdateWorldTemplate' {name} -> name) (\s@UpdateWorldTemplate' {} a -> s {name = a} :: UpdateWorldTemplate)

-- | The location of the world template.
updateWorldTemplate_templateLocation :: Lens.Lens' UpdateWorldTemplate (Prelude.Maybe TemplateLocation)
updateWorldTemplate_templateLocation = Lens.lens (\UpdateWorldTemplate' {templateLocation} -> templateLocation) (\s@UpdateWorldTemplate' {} a -> s {templateLocation = a} :: UpdateWorldTemplate)

-- | The world template body.
updateWorldTemplate_templateBody :: Lens.Lens' UpdateWorldTemplate (Prelude.Maybe Prelude.Text)
updateWorldTemplate_templateBody = Lens.lens (\UpdateWorldTemplate' {templateBody} -> templateBody) (\s@UpdateWorldTemplate' {} a -> s {templateBody = a} :: UpdateWorldTemplate)

-- | The Amazon Resource Name (arn) of the world template to update.
updateWorldTemplate_template :: Lens.Lens' UpdateWorldTemplate Prelude.Text
updateWorldTemplate_template = Lens.lens (\UpdateWorldTemplate' {template} -> template) (\s@UpdateWorldTemplate' {} a -> s {template = a} :: UpdateWorldTemplate)

instance Core.AWSRequest UpdateWorldTemplate where
  type
    AWSResponse UpdateWorldTemplate =
      UpdateWorldTemplateResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateWorldTemplateResponse'
            Prelude.<$> (x Core..?> "lastUpdatedAt")
            Prelude.<*> (x Core..?> "arn")
            Prelude.<*> (x Core..?> "createdAt")
            Prelude.<*> (x Core..?> "name")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateWorldTemplate

instance Prelude.NFData UpdateWorldTemplate

instance Core.ToHeaders UpdateWorldTemplate where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateWorldTemplate where
  toJSON UpdateWorldTemplate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("name" Core..=) Prelude.<$> name,
            ("templateLocation" Core..=)
              Prelude.<$> templateLocation,
            ("templateBody" Core..=) Prelude.<$> templateBody,
            Prelude.Just ("template" Core..= template)
          ]
      )

instance Core.ToPath UpdateWorldTemplate where
  toPath = Prelude.const "/updateWorldTemplate"

instance Core.ToQuery UpdateWorldTemplate where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateWorldTemplateResponse' smart constructor.
data UpdateWorldTemplateResponse = UpdateWorldTemplateResponse'
  { -- | The time, in milliseconds since the epoch, when the world template was
    -- last updated.
    lastUpdatedAt :: Prelude.Maybe Core.POSIX,
    -- | The Amazon Resource Name (arn) of the world template.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The time, in milliseconds since the epoch, when the world template was
    -- created.
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | The name of the world template.
    name :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateWorldTemplateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastUpdatedAt', 'updateWorldTemplateResponse_lastUpdatedAt' - The time, in milliseconds since the epoch, when the world template was
-- last updated.
--
-- 'arn', 'updateWorldTemplateResponse_arn' - The Amazon Resource Name (arn) of the world template.
--
-- 'createdAt', 'updateWorldTemplateResponse_createdAt' - The time, in milliseconds since the epoch, when the world template was
-- created.
--
-- 'name', 'updateWorldTemplateResponse_name' - The name of the world template.
--
-- 'httpStatus', 'updateWorldTemplateResponse_httpStatus' - The response's http status code.
newUpdateWorldTemplateResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateWorldTemplateResponse
newUpdateWorldTemplateResponse pHttpStatus_ =
  UpdateWorldTemplateResponse'
    { lastUpdatedAt =
        Prelude.Nothing,
      arn = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      name = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The time, in milliseconds since the epoch, when the world template was
-- last updated.
updateWorldTemplateResponse_lastUpdatedAt :: Lens.Lens' UpdateWorldTemplateResponse (Prelude.Maybe Prelude.UTCTime)
updateWorldTemplateResponse_lastUpdatedAt = Lens.lens (\UpdateWorldTemplateResponse' {lastUpdatedAt} -> lastUpdatedAt) (\s@UpdateWorldTemplateResponse' {} a -> s {lastUpdatedAt = a} :: UpdateWorldTemplateResponse) Prelude.. Lens.mapping Core._Time

-- | The Amazon Resource Name (arn) of the world template.
updateWorldTemplateResponse_arn :: Lens.Lens' UpdateWorldTemplateResponse (Prelude.Maybe Prelude.Text)
updateWorldTemplateResponse_arn = Lens.lens (\UpdateWorldTemplateResponse' {arn} -> arn) (\s@UpdateWorldTemplateResponse' {} a -> s {arn = a} :: UpdateWorldTemplateResponse)

-- | The time, in milliseconds since the epoch, when the world template was
-- created.
updateWorldTemplateResponse_createdAt :: Lens.Lens' UpdateWorldTemplateResponse (Prelude.Maybe Prelude.UTCTime)
updateWorldTemplateResponse_createdAt = Lens.lens (\UpdateWorldTemplateResponse' {createdAt} -> createdAt) (\s@UpdateWorldTemplateResponse' {} a -> s {createdAt = a} :: UpdateWorldTemplateResponse) Prelude.. Lens.mapping Core._Time

-- | The name of the world template.
updateWorldTemplateResponse_name :: Lens.Lens' UpdateWorldTemplateResponse (Prelude.Maybe Prelude.Text)
updateWorldTemplateResponse_name = Lens.lens (\UpdateWorldTemplateResponse' {name} -> name) (\s@UpdateWorldTemplateResponse' {} a -> s {name = a} :: UpdateWorldTemplateResponse)

-- | The response's http status code.
updateWorldTemplateResponse_httpStatus :: Lens.Lens' UpdateWorldTemplateResponse Prelude.Int
updateWorldTemplateResponse_httpStatus = Lens.lens (\UpdateWorldTemplateResponse' {httpStatus} -> httpStatus) (\s@UpdateWorldTemplateResponse' {} a -> s {httpStatus = a} :: UpdateWorldTemplateResponse)

instance Prelude.NFData UpdateWorldTemplateResponse
