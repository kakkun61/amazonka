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
-- Module      : Network.AWS.Proton.UpdateService
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Edit a service description or use a spec to add and delete service
-- instances.
--
-- Existing service instances and the service pipeline /can\'t/ be edited
-- using this API. They can only be deleted.
--
-- Use the @description@ parameter to modify the description.
--
-- Edit the @spec@ parameter to add or delete instances.
module Network.AWS.Proton.UpdateService
  ( -- * Creating a Request
    UpdateService (..),
    newUpdateService,

    -- * Request Lenses
    updateService_spec,
    updateService_description,
    updateService_name,

    -- * Destructuring the Response
    UpdateServiceResponse (..),
    newUpdateServiceResponse,

    -- * Response Lenses
    updateServiceResponse_httpStatus,
    updateServiceResponse_service,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Proton.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateService' smart constructor.
data UpdateService = UpdateService'
  { -- | Lists the service instances to add and the existing service instances to
    -- remain. Omit the existing service instances to delete from the list.
    -- /Don\'t/ include edits to the existing service instances or pipeline.
    -- For more information, see /Edit a service/ in the
    -- <https://docs.aws.amazon.com/proton/latest/adminguide/ag-svc-update.html AWS Proton Administrator Guide>
    -- or the
    -- <https://docs.aws.amazon.com/proton/latest/userguide/ug-svc-update.html AWS Proton User Guide>.
    spec :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The edited service description.
    description :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The name of the service to edit.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateService' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'spec', 'updateService_spec' - Lists the service instances to add and the existing service instances to
-- remain. Omit the existing service instances to delete from the list.
-- /Don\'t/ include edits to the existing service instances or pipeline.
-- For more information, see /Edit a service/ in the
-- <https://docs.aws.amazon.com/proton/latest/adminguide/ag-svc-update.html AWS Proton Administrator Guide>
-- or the
-- <https://docs.aws.amazon.com/proton/latest/userguide/ug-svc-update.html AWS Proton User Guide>.
--
-- 'description', 'updateService_description' - The edited service description.
--
-- 'name', 'updateService_name' - The name of the service to edit.
newUpdateService ::
  -- | 'name'
  Prelude.Text ->
  UpdateService
newUpdateService pName_ =
  UpdateService'
    { spec = Prelude.Nothing,
      description = Prelude.Nothing,
      name = pName_
    }

-- | Lists the service instances to add and the existing service instances to
-- remain. Omit the existing service instances to delete from the list.
-- /Don\'t/ include edits to the existing service instances or pipeline.
-- For more information, see /Edit a service/ in the
-- <https://docs.aws.amazon.com/proton/latest/adminguide/ag-svc-update.html AWS Proton Administrator Guide>
-- or the
-- <https://docs.aws.amazon.com/proton/latest/userguide/ug-svc-update.html AWS Proton User Guide>.
updateService_spec :: Lens.Lens' UpdateService (Prelude.Maybe Prelude.Text)
updateService_spec = Lens.lens (\UpdateService' {spec} -> spec) (\s@UpdateService' {} a -> s {spec = a} :: UpdateService) Prelude.. Lens.mapping Core._Sensitive

-- | The edited service description.
updateService_description :: Lens.Lens' UpdateService (Prelude.Maybe Prelude.Text)
updateService_description = Lens.lens (\UpdateService' {description} -> description) (\s@UpdateService' {} a -> s {description = a} :: UpdateService) Prelude.. Lens.mapping Core._Sensitive

-- | The name of the service to edit.
updateService_name :: Lens.Lens' UpdateService Prelude.Text
updateService_name = Lens.lens (\UpdateService' {name} -> name) (\s@UpdateService' {} a -> s {name = a} :: UpdateService)

instance Core.AWSRequest UpdateService where
  type
    AWSResponse UpdateService =
      UpdateServiceResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateServiceResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "service")
      )

instance Prelude.Hashable UpdateService

instance Prelude.NFData UpdateService

instance Core.ToHeaders UpdateService where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AwsProton20200720.UpdateService" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateService where
  toJSON UpdateService' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("spec" Core..=) Prelude.<$> spec,
            ("description" Core..=) Prelude.<$> description,
            Prelude.Just ("name" Core..= name)
          ]
      )

instance Core.ToPath UpdateService where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateService where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateServiceResponse' smart constructor.
data UpdateServiceResponse = UpdateServiceResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The service detail data that\'s returned by AWS Proton.
    service :: Service
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateServiceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateServiceResponse_httpStatus' - The response's http status code.
--
-- 'service', 'updateServiceResponse_service' - The service detail data that\'s returned by AWS Proton.
newUpdateServiceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'service'
  Service ->
  UpdateServiceResponse
newUpdateServiceResponse pHttpStatus_ pService_ =
  UpdateServiceResponse'
    { httpStatus = pHttpStatus_,
      service = pService_
    }

-- | The response's http status code.
updateServiceResponse_httpStatus :: Lens.Lens' UpdateServiceResponse Prelude.Int
updateServiceResponse_httpStatus = Lens.lens (\UpdateServiceResponse' {httpStatus} -> httpStatus) (\s@UpdateServiceResponse' {} a -> s {httpStatus = a} :: UpdateServiceResponse)

-- | The service detail data that\'s returned by AWS Proton.
updateServiceResponse_service :: Lens.Lens' UpdateServiceResponse Service
updateServiceResponse_service = Lens.lens (\UpdateServiceResponse' {service} -> service) (\s@UpdateServiceResponse' {} a -> s {service = a} :: UpdateServiceResponse)

instance Prelude.NFData UpdateServiceResponse
