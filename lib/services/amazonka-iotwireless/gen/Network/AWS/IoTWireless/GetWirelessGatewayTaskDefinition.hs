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
-- Module      : Network.AWS.IoTWireless.GetWirelessGatewayTaskDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a wireless gateway task definition.
module Network.AWS.IoTWireless.GetWirelessGatewayTaskDefinition
  ( -- * Creating a Request
    GetWirelessGatewayTaskDefinition (..),
    newGetWirelessGatewayTaskDefinition,

    -- * Request Lenses
    getWirelessGatewayTaskDefinition_id,

    -- * Destructuring the Response
    GetWirelessGatewayTaskDefinitionResponse (..),
    newGetWirelessGatewayTaskDefinitionResponse,

    -- * Response Lenses
    getWirelessGatewayTaskDefinitionResponse_arn,
    getWirelessGatewayTaskDefinitionResponse_name,
    getWirelessGatewayTaskDefinitionResponse_autoCreateTasks,
    getWirelessGatewayTaskDefinitionResponse_update,
    getWirelessGatewayTaskDefinitionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTWireless.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetWirelessGatewayTaskDefinition' smart constructor.
data GetWirelessGatewayTaskDefinition = GetWirelessGatewayTaskDefinition'
  { -- | The ID of the resource to get.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetWirelessGatewayTaskDefinition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'getWirelessGatewayTaskDefinition_id' - The ID of the resource to get.
newGetWirelessGatewayTaskDefinition ::
  -- | 'id'
  Prelude.Text ->
  GetWirelessGatewayTaskDefinition
newGetWirelessGatewayTaskDefinition pId_ =
  GetWirelessGatewayTaskDefinition' {id = pId_}

-- | The ID of the resource to get.
getWirelessGatewayTaskDefinition_id :: Lens.Lens' GetWirelessGatewayTaskDefinition Prelude.Text
getWirelessGatewayTaskDefinition_id = Lens.lens (\GetWirelessGatewayTaskDefinition' {id} -> id) (\s@GetWirelessGatewayTaskDefinition' {} a -> s {id = a} :: GetWirelessGatewayTaskDefinition)

instance
  Core.AWSRequest
    GetWirelessGatewayTaskDefinition
  where
  type
    AWSResponse GetWirelessGatewayTaskDefinition =
      GetWirelessGatewayTaskDefinitionResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetWirelessGatewayTaskDefinitionResponse'
            Prelude.<$> (x Core..?> "Arn")
            Prelude.<*> (x Core..?> "Name")
            Prelude.<*> (x Core..?> "AutoCreateTasks")
            Prelude.<*> (x Core..?> "Update")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    GetWirelessGatewayTaskDefinition

instance
  Prelude.NFData
    GetWirelessGatewayTaskDefinition

instance
  Core.ToHeaders
    GetWirelessGatewayTaskDefinition
  where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath GetWirelessGatewayTaskDefinition where
  toPath GetWirelessGatewayTaskDefinition' {..} =
    Prelude.mconcat
      ["/wireless-gateway-task-definitions/", Core.toBS id]

instance
  Core.ToQuery
    GetWirelessGatewayTaskDefinition
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetWirelessGatewayTaskDefinitionResponse' smart constructor.
data GetWirelessGatewayTaskDefinitionResponse = GetWirelessGatewayTaskDefinitionResponse'
  { -- | The Amazon Resource Name of the resource.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The name of the resource.
    name :: Prelude.Maybe Prelude.Text,
    -- | Whether to automatically create tasks using this task definition for all
    -- gateways with the specified current version. If @false@, the task must
    -- me created by calling @CreateWirelessGatewayTask@.
    autoCreateTasks :: Prelude.Maybe Prelude.Bool,
    -- | Information about the gateways to update.
    update :: Prelude.Maybe UpdateWirelessGatewayTaskCreate,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetWirelessGatewayTaskDefinitionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'getWirelessGatewayTaskDefinitionResponse_arn' - The Amazon Resource Name of the resource.
--
-- 'name', 'getWirelessGatewayTaskDefinitionResponse_name' - The name of the resource.
--
-- 'autoCreateTasks', 'getWirelessGatewayTaskDefinitionResponse_autoCreateTasks' - Whether to automatically create tasks using this task definition for all
-- gateways with the specified current version. If @false@, the task must
-- me created by calling @CreateWirelessGatewayTask@.
--
-- 'update', 'getWirelessGatewayTaskDefinitionResponse_update' - Information about the gateways to update.
--
-- 'httpStatus', 'getWirelessGatewayTaskDefinitionResponse_httpStatus' - The response's http status code.
newGetWirelessGatewayTaskDefinitionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetWirelessGatewayTaskDefinitionResponse
newGetWirelessGatewayTaskDefinitionResponse
  pHttpStatus_ =
    GetWirelessGatewayTaskDefinitionResponse'
      { arn =
          Prelude.Nothing,
        name = Prelude.Nothing,
        autoCreateTasks = Prelude.Nothing,
        update = Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The Amazon Resource Name of the resource.
getWirelessGatewayTaskDefinitionResponse_arn :: Lens.Lens' GetWirelessGatewayTaskDefinitionResponse (Prelude.Maybe Prelude.Text)
getWirelessGatewayTaskDefinitionResponse_arn = Lens.lens (\GetWirelessGatewayTaskDefinitionResponse' {arn} -> arn) (\s@GetWirelessGatewayTaskDefinitionResponse' {} a -> s {arn = a} :: GetWirelessGatewayTaskDefinitionResponse)

-- | The name of the resource.
getWirelessGatewayTaskDefinitionResponse_name :: Lens.Lens' GetWirelessGatewayTaskDefinitionResponse (Prelude.Maybe Prelude.Text)
getWirelessGatewayTaskDefinitionResponse_name = Lens.lens (\GetWirelessGatewayTaskDefinitionResponse' {name} -> name) (\s@GetWirelessGatewayTaskDefinitionResponse' {} a -> s {name = a} :: GetWirelessGatewayTaskDefinitionResponse)

-- | Whether to automatically create tasks using this task definition for all
-- gateways with the specified current version. If @false@, the task must
-- me created by calling @CreateWirelessGatewayTask@.
getWirelessGatewayTaskDefinitionResponse_autoCreateTasks :: Lens.Lens' GetWirelessGatewayTaskDefinitionResponse (Prelude.Maybe Prelude.Bool)
getWirelessGatewayTaskDefinitionResponse_autoCreateTasks = Lens.lens (\GetWirelessGatewayTaskDefinitionResponse' {autoCreateTasks} -> autoCreateTasks) (\s@GetWirelessGatewayTaskDefinitionResponse' {} a -> s {autoCreateTasks = a} :: GetWirelessGatewayTaskDefinitionResponse)

-- | Information about the gateways to update.
getWirelessGatewayTaskDefinitionResponse_update :: Lens.Lens' GetWirelessGatewayTaskDefinitionResponse (Prelude.Maybe UpdateWirelessGatewayTaskCreate)
getWirelessGatewayTaskDefinitionResponse_update = Lens.lens (\GetWirelessGatewayTaskDefinitionResponse' {update} -> update) (\s@GetWirelessGatewayTaskDefinitionResponse' {} a -> s {update = a} :: GetWirelessGatewayTaskDefinitionResponse)

-- | The response's http status code.
getWirelessGatewayTaskDefinitionResponse_httpStatus :: Lens.Lens' GetWirelessGatewayTaskDefinitionResponse Prelude.Int
getWirelessGatewayTaskDefinitionResponse_httpStatus = Lens.lens (\GetWirelessGatewayTaskDefinitionResponse' {httpStatus} -> httpStatus) (\s@GetWirelessGatewayTaskDefinitionResponse' {} a -> s {httpStatus = a} :: GetWirelessGatewayTaskDefinitionResponse)

instance
  Prelude.NFData
    GetWirelessGatewayTaskDefinitionResponse
