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
-- Module      : Network.AWS.Proton.GetEnvironmentTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get detail data for an environment template.
module Network.AWS.Proton.GetEnvironmentTemplate
  ( -- * Creating a Request
    GetEnvironmentTemplate (..),
    newGetEnvironmentTemplate,

    -- * Request Lenses
    getEnvironmentTemplate_name,

    -- * Destructuring the Response
    GetEnvironmentTemplateResponse (..),
    newGetEnvironmentTemplateResponse,

    -- * Response Lenses
    getEnvironmentTemplateResponse_httpStatus,
    getEnvironmentTemplateResponse_environmentTemplate,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Proton.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetEnvironmentTemplate' smart constructor.
data GetEnvironmentTemplate = GetEnvironmentTemplate'
  { -- | The name of the environment template that you want to get the detail
    -- data for.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetEnvironmentTemplate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'getEnvironmentTemplate_name' - The name of the environment template that you want to get the detail
-- data for.
newGetEnvironmentTemplate ::
  -- | 'name'
  Prelude.Text ->
  GetEnvironmentTemplate
newGetEnvironmentTemplate pName_ =
  GetEnvironmentTemplate' {name = pName_}

-- | The name of the environment template that you want to get the detail
-- data for.
getEnvironmentTemplate_name :: Lens.Lens' GetEnvironmentTemplate Prelude.Text
getEnvironmentTemplate_name = Lens.lens (\GetEnvironmentTemplate' {name} -> name) (\s@GetEnvironmentTemplate' {} a -> s {name = a} :: GetEnvironmentTemplate)

instance Core.AWSRequest GetEnvironmentTemplate where
  type
    AWSResponse GetEnvironmentTemplate =
      GetEnvironmentTemplateResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetEnvironmentTemplateResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "environmentTemplate")
      )

instance Prelude.Hashable GetEnvironmentTemplate

instance Prelude.NFData GetEnvironmentTemplate

instance Core.ToHeaders GetEnvironmentTemplate where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AwsProton20200720.GetEnvironmentTemplate" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetEnvironmentTemplate where
  toJSON GetEnvironmentTemplate' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("name" Core..= name)]
      )

instance Core.ToPath GetEnvironmentTemplate where
  toPath = Prelude.const "/"

instance Core.ToQuery GetEnvironmentTemplate where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetEnvironmentTemplateResponse' smart constructor.
data GetEnvironmentTemplateResponse = GetEnvironmentTemplateResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The environment template detail data that\'s returned by AWS Proton.
    environmentTemplate :: EnvironmentTemplate
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetEnvironmentTemplateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'getEnvironmentTemplateResponse_httpStatus' - The response's http status code.
--
-- 'environmentTemplate', 'getEnvironmentTemplateResponse_environmentTemplate' - The environment template detail data that\'s returned by AWS Proton.
newGetEnvironmentTemplateResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'environmentTemplate'
  EnvironmentTemplate ->
  GetEnvironmentTemplateResponse
newGetEnvironmentTemplateResponse
  pHttpStatus_
  pEnvironmentTemplate_ =
    GetEnvironmentTemplateResponse'
      { httpStatus =
          pHttpStatus_,
        environmentTemplate = pEnvironmentTemplate_
      }

-- | The response's http status code.
getEnvironmentTemplateResponse_httpStatus :: Lens.Lens' GetEnvironmentTemplateResponse Prelude.Int
getEnvironmentTemplateResponse_httpStatus = Lens.lens (\GetEnvironmentTemplateResponse' {httpStatus} -> httpStatus) (\s@GetEnvironmentTemplateResponse' {} a -> s {httpStatus = a} :: GetEnvironmentTemplateResponse)

-- | The environment template detail data that\'s returned by AWS Proton.
getEnvironmentTemplateResponse_environmentTemplate :: Lens.Lens' GetEnvironmentTemplateResponse EnvironmentTemplate
getEnvironmentTemplateResponse_environmentTemplate = Lens.lens (\GetEnvironmentTemplateResponse' {environmentTemplate} -> environmentTemplate) (\s@GetEnvironmentTemplateResponse' {} a -> s {environmentTemplate = a} :: GetEnvironmentTemplateResponse)

instance
  Prelude.NFData
    GetEnvironmentTemplateResponse
