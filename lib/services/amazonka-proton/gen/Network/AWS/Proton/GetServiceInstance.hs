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
-- Module      : Network.AWS.Proton.GetServiceInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get detail data for a service instance. A service instance is an
-- instantiation of service template, which is running in a specific
-- environment.
module Network.AWS.Proton.GetServiceInstance
  ( -- * Creating a Request
    GetServiceInstance (..),
    newGetServiceInstance,

    -- * Request Lenses
    getServiceInstance_name,
    getServiceInstance_serviceName,

    -- * Destructuring the Response
    GetServiceInstanceResponse (..),
    newGetServiceInstanceResponse,

    -- * Response Lenses
    getServiceInstanceResponse_httpStatus,
    getServiceInstanceResponse_serviceInstance,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Proton.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetServiceInstance' smart constructor.
data GetServiceInstance = GetServiceInstance'
  { -- | The name of a service instance that you want to get the detail data for.
    name :: Prelude.Text,
    -- | The name of the service that the service instance belongs to.
    serviceName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetServiceInstance' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'getServiceInstance_name' - The name of a service instance that you want to get the detail data for.
--
-- 'serviceName', 'getServiceInstance_serviceName' - The name of the service that the service instance belongs to.
newGetServiceInstance ::
  -- | 'name'
  Prelude.Text ->
  -- | 'serviceName'
  Prelude.Text ->
  GetServiceInstance
newGetServiceInstance pName_ pServiceName_ =
  GetServiceInstance'
    { name = pName_,
      serviceName = pServiceName_
    }

-- | The name of a service instance that you want to get the detail data for.
getServiceInstance_name :: Lens.Lens' GetServiceInstance Prelude.Text
getServiceInstance_name = Lens.lens (\GetServiceInstance' {name} -> name) (\s@GetServiceInstance' {} a -> s {name = a} :: GetServiceInstance)

-- | The name of the service that the service instance belongs to.
getServiceInstance_serviceName :: Lens.Lens' GetServiceInstance Prelude.Text
getServiceInstance_serviceName = Lens.lens (\GetServiceInstance' {serviceName} -> serviceName) (\s@GetServiceInstance' {} a -> s {serviceName = a} :: GetServiceInstance)

instance Core.AWSRequest GetServiceInstance where
  type
    AWSResponse GetServiceInstance =
      GetServiceInstanceResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetServiceInstanceResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "serviceInstance")
      )

instance Prelude.Hashable GetServiceInstance

instance Prelude.NFData GetServiceInstance

instance Core.ToHeaders GetServiceInstance where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AwsProton20200720.GetServiceInstance" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetServiceInstance where
  toJSON GetServiceInstance' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("name" Core..= name),
            Prelude.Just ("serviceName" Core..= serviceName)
          ]
      )

instance Core.ToPath GetServiceInstance where
  toPath = Prelude.const "/"

instance Core.ToQuery GetServiceInstance where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetServiceInstanceResponse' smart constructor.
data GetServiceInstanceResponse = GetServiceInstanceResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The service instance detail data that\'s returned by AWS Proton.
    serviceInstance :: ServiceInstance
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetServiceInstanceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'getServiceInstanceResponse_httpStatus' - The response's http status code.
--
-- 'serviceInstance', 'getServiceInstanceResponse_serviceInstance' - The service instance detail data that\'s returned by AWS Proton.
newGetServiceInstanceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'serviceInstance'
  ServiceInstance ->
  GetServiceInstanceResponse
newGetServiceInstanceResponse
  pHttpStatus_
  pServiceInstance_ =
    GetServiceInstanceResponse'
      { httpStatus =
          pHttpStatus_,
        serviceInstance = pServiceInstance_
      }

-- | The response's http status code.
getServiceInstanceResponse_httpStatus :: Lens.Lens' GetServiceInstanceResponse Prelude.Int
getServiceInstanceResponse_httpStatus = Lens.lens (\GetServiceInstanceResponse' {httpStatus} -> httpStatus) (\s@GetServiceInstanceResponse' {} a -> s {httpStatus = a} :: GetServiceInstanceResponse)

-- | The service instance detail data that\'s returned by AWS Proton.
getServiceInstanceResponse_serviceInstance :: Lens.Lens' GetServiceInstanceResponse ServiceInstance
getServiceInstanceResponse_serviceInstance = Lens.lens (\GetServiceInstanceResponse' {serviceInstance} -> serviceInstance) (\s@GetServiceInstanceResponse' {} a -> s {serviceInstance = a} :: GetServiceInstanceResponse)

instance Prelude.NFData GetServiceInstanceResponse
