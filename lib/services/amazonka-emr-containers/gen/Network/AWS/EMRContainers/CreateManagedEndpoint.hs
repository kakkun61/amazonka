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
-- Module      : Network.AWS.EMRContainers.CreateManagedEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a managed endpoint. A managed endpoint is a gateway that
-- connects EMR Studio to Amazon EMR on EKS so that EMR Studio can
-- communicate with your virtual cluster.
module Network.AWS.EMRContainers.CreateManagedEndpoint
  ( -- * Creating a Request
    CreateManagedEndpoint (..),
    newCreateManagedEndpoint,

    -- * Request Lenses
    createManagedEndpoint_configurationOverrides,
    createManagedEndpoint_tags,
    createManagedEndpoint_name,
    createManagedEndpoint_virtualClusterId,
    createManagedEndpoint_type,
    createManagedEndpoint_releaseLabel,
    createManagedEndpoint_executionRoleArn,
    createManagedEndpoint_certificateArn,
    createManagedEndpoint_clientToken,

    -- * Destructuring the Response
    CreateManagedEndpointResponse (..),
    newCreateManagedEndpointResponse,

    -- * Response Lenses
    createManagedEndpointResponse_arn,
    createManagedEndpointResponse_name,
    createManagedEndpointResponse_id,
    createManagedEndpointResponse_virtualClusterId,
    createManagedEndpointResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.EMRContainers.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateManagedEndpoint' smart constructor.
data CreateManagedEndpoint = CreateManagedEndpoint'
  { -- | The configuration settings that will be used to override existing
    -- configurations.
    configurationOverrides :: Prelude.Maybe ConfigurationOverrides,
    -- | The tags of the managed endpoint.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the managed endpoint.
    name :: Prelude.Text,
    -- | The ID of the virtual cluster for which a managed endpoint is created.
    virtualClusterId :: Prelude.Text,
    -- | The type of the managed endpoint.
    type' :: Prelude.Text,
    -- | The Amazon EMR release version.
    releaseLabel :: Prelude.Text,
    -- | The ARN of the execution role.
    executionRoleArn :: Prelude.Text,
    -- | The certificate ARN of the managed endpoint.
    certificateArn :: Prelude.Text,
    -- | The client idempotency token for this create call.
    clientToken :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateManagedEndpoint' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'configurationOverrides', 'createManagedEndpoint_configurationOverrides' - The configuration settings that will be used to override existing
-- configurations.
--
-- 'tags', 'createManagedEndpoint_tags' - The tags of the managed endpoint.
--
-- 'name', 'createManagedEndpoint_name' - The name of the managed endpoint.
--
-- 'virtualClusterId', 'createManagedEndpoint_virtualClusterId' - The ID of the virtual cluster for which a managed endpoint is created.
--
-- 'type'', 'createManagedEndpoint_type' - The type of the managed endpoint.
--
-- 'releaseLabel', 'createManagedEndpoint_releaseLabel' - The Amazon EMR release version.
--
-- 'executionRoleArn', 'createManagedEndpoint_executionRoleArn' - The ARN of the execution role.
--
-- 'certificateArn', 'createManagedEndpoint_certificateArn' - The certificate ARN of the managed endpoint.
--
-- 'clientToken', 'createManagedEndpoint_clientToken' - The client idempotency token for this create call.
newCreateManagedEndpoint ::
  -- | 'name'
  Prelude.Text ->
  -- | 'virtualClusterId'
  Prelude.Text ->
  -- | 'type''
  Prelude.Text ->
  -- | 'releaseLabel'
  Prelude.Text ->
  -- | 'executionRoleArn'
  Prelude.Text ->
  -- | 'certificateArn'
  Prelude.Text ->
  -- | 'clientToken'
  Prelude.Text ->
  CreateManagedEndpoint
newCreateManagedEndpoint
  pName_
  pVirtualClusterId_
  pType_
  pReleaseLabel_
  pExecutionRoleArn_
  pCertificateArn_
  pClientToken_ =
    CreateManagedEndpoint'
      { configurationOverrides =
          Prelude.Nothing,
        tags = Prelude.Nothing,
        name = pName_,
        virtualClusterId = pVirtualClusterId_,
        type' = pType_,
        releaseLabel = pReleaseLabel_,
        executionRoleArn = pExecutionRoleArn_,
        certificateArn = pCertificateArn_,
        clientToken = pClientToken_
      }

-- | The configuration settings that will be used to override existing
-- configurations.
createManagedEndpoint_configurationOverrides :: Lens.Lens' CreateManagedEndpoint (Prelude.Maybe ConfigurationOverrides)
createManagedEndpoint_configurationOverrides = Lens.lens (\CreateManagedEndpoint' {configurationOverrides} -> configurationOverrides) (\s@CreateManagedEndpoint' {} a -> s {configurationOverrides = a} :: CreateManagedEndpoint)

-- | The tags of the managed endpoint.
createManagedEndpoint_tags :: Lens.Lens' CreateManagedEndpoint (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createManagedEndpoint_tags = Lens.lens (\CreateManagedEndpoint' {tags} -> tags) (\s@CreateManagedEndpoint' {} a -> s {tags = a} :: CreateManagedEndpoint) Prelude.. Lens.mapping Lens.coerced

-- | The name of the managed endpoint.
createManagedEndpoint_name :: Lens.Lens' CreateManagedEndpoint Prelude.Text
createManagedEndpoint_name = Lens.lens (\CreateManagedEndpoint' {name} -> name) (\s@CreateManagedEndpoint' {} a -> s {name = a} :: CreateManagedEndpoint)

-- | The ID of the virtual cluster for which a managed endpoint is created.
createManagedEndpoint_virtualClusterId :: Lens.Lens' CreateManagedEndpoint Prelude.Text
createManagedEndpoint_virtualClusterId = Lens.lens (\CreateManagedEndpoint' {virtualClusterId} -> virtualClusterId) (\s@CreateManagedEndpoint' {} a -> s {virtualClusterId = a} :: CreateManagedEndpoint)

-- | The type of the managed endpoint.
createManagedEndpoint_type :: Lens.Lens' CreateManagedEndpoint Prelude.Text
createManagedEndpoint_type = Lens.lens (\CreateManagedEndpoint' {type'} -> type') (\s@CreateManagedEndpoint' {} a -> s {type' = a} :: CreateManagedEndpoint)

-- | The Amazon EMR release version.
createManagedEndpoint_releaseLabel :: Lens.Lens' CreateManagedEndpoint Prelude.Text
createManagedEndpoint_releaseLabel = Lens.lens (\CreateManagedEndpoint' {releaseLabel} -> releaseLabel) (\s@CreateManagedEndpoint' {} a -> s {releaseLabel = a} :: CreateManagedEndpoint)

-- | The ARN of the execution role.
createManagedEndpoint_executionRoleArn :: Lens.Lens' CreateManagedEndpoint Prelude.Text
createManagedEndpoint_executionRoleArn = Lens.lens (\CreateManagedEndpoint' {executionRoleArn} -> executionRoleArn) (\s@CreateManagedEndpoint' {} a -> s {executionRoleArn = a} :: CreateManagedEndpoint)

-- | The certificate ARN of the managed endpoint.
createManagedEndpoint_certificateArn :: Lens.Lens' CreateManagedEndpoint Prelude.Text
createManagedEndpoint_certificateArn = Lens.lens (\CreateManagedEndpoint' {certificateArn} -> certificateArn) (\s@CreateManagedEndpoint' {} a -> s {certificateArn = a} :: CreateManagedEndpoint)

-- | The client idempotency token for this create call.
createManagedEndpoint_clientToken :: Lens.Lens' CreateManagedEndpoint Prelude.Text
createManagedEndpoint_clientToken = Lens.lens (\CreateManagedEndpoint' {clientToken} -> clientToken) (\s@CreateManagedEndpoint' {} a -> s {clientToken = a} :: CreateManagedEndpoint)

instance Core.AWSRequest CreateManagedEndpoint where
  type
    AWSResponse CreateManagedEndpoint =
      CreateManagedEndpointResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateManagedEndpointResponse'
            Prelude.<$> (x Core..?> "arn")
            Prelude.<*> (x Core..?> "name")
            Prelude.<*> (x Core..?> "id")
            Prelude.<*> (x Core..?> "virtualClusterId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateManagedEndpoint

instance Prelude.NFData CreateManagedEndpoint

instance Core.ToHeaders CreateManagedEndpoint where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateManagedEndpoint where
  toJSON CreateManagedEndpoint' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("configurationOverrides" Core..=)
              Prelude.<$> configurationOverrides,
            ("tags" Core..=) Prelude.<$> tags,
            Prelude.Just ("name" Core..= name),
            Prelude.Just ("type" Core..= type'),
            Prelude.Just ("releaseLabel" Core..= releaseLabel),
            Prelude.Just
              ("executionRoleArn" Core..= executionRoleArn),
            Prelude.Just
              ("certificateArn" Core..= certificateArn),
            Prelude.Just ("clientToken" Core..= clientToken)
          ]
      )

instance Core.ToPath CreateManagedEndpoint where
  toPath CreateManagedEndpoint' {..} =
    Prelude.mconcat
      [ "/virtualclusters/",
        Core.toBS virtualClusterId,
        "/endpoints"
      ]

instance Core.ToQuery CreateManagedEndpoint where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateManagedEndpointResponse' smart constructor.
data CreateManagedEndpointResponse = CreateManagedEndpointResponse'
  { -- | The output contains the ARN of the managed endpoint.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The output contains the name of the managed endpoint.
    name :: Prelude.Maybe Prelude.Text,
    -- | The output contains the ID of the managed endpoint.
    id :: Prelude.Maybe Prelude.Text,
    -- | The output contains the ID of the virtual cluster.
    virtualClusterId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateManagedEndpointResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'createManagedEndpointResponse_arn' - The output contains the ARN of the managed endpoint.
--
-- 'name', 'createManagedEndpointResponse_name' - The output contains the name of the managed endpoint.
--
-- 'id', 'createManagedEndpointResponse_id' - The output contains the ID of the managed endpoint.
--
-- 'virtualClusterId', 'createManagedEndpointResponse_virtualClusterId' - The output contains the ID of the virtual cluster.
--
-- 'httpStatus', 'createManagedEndpointResponse_httpStatus' - The response's http status code.
newCreateManagedEndpointResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateManagedEndpointResponse
newCreateManagedEndpointResponse pHttpStatus_ =
  CreateManagedEndpointResponse'
    { arn =
        Prelude.Nothing,
      name = Prelude.Nothing,
      id = Prelude.Nothing,
      virtualClusterId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The output contains the ARN of the managed endpoint.
createManagedEndpointResponse_arn :: Lens.Lens' CreateManagedEndpointResponse (Prelude.Maybe Prelude.Text)
createManagedEndpointResponse_arn = Lens.lens (\CreateManagedEndpointResponse' {arn} -> arn) (\s@CreateManagedEndpointResponse' {} a -> s {arn = a} :: CreateManagedEndpointResponse)

-- | The output contains the name of the managed endpoint.
createManagedEndpointResponse_name :: Lens.Lens' CreateManagedEndpointResponse (Prelude.Maybe Prelude.Text)
createManagedEndpointResponse_name = Lens.lens (\CreateManagedEndpointResponse' {name} -> name) (\s@CreateManagedEndpointResponse' {} a -> s {name = a} :: CreateManagedEndpointResponse)

-- | The output contains the ID of the managed endpoint.
createManagedEndpointResponse_id :: Lens.Lens' CreateManagedEndpointResponse (Prelude.Maybe Prelude.Text)
createManagedEndpointResponse_id = Lens.lens (\CreateManagedEndpointResponse' {id} -> id) (\s@CreateManagedEndpointResponse' {} a -> s {id = a} :: CreateManagedEndpointResponse)

-- | The output contains the ID of the virtual cluster.
createManagedEndpointResponse_virtualClusterId :: Lens.Lens' CreateManagedEndpointResponse (Prelude.Maybe Prelude.Text)
createManagedEndpointResponse_virtualClusterId = Lens.lens (\CreateManagedEndpointResponse' {virtualClusterId} -> virtualClusterId) (\s@CreateManagedEndpointResponse' {} a -> s {virtualClusterId = a} :: CreateManagedEndpointResponse)

-- | The response's http status code.
createManagedEndpointResponse_httpStatus :: Lens.Lens' CreateManagedEndpointResponse Prelude.Int
createManagedEndpointResponse_httpStatus = Lens.lens (\CreateManagedEndpointResponse' {httpStatus} -> httpStatus) (\s@CreateManagedEndpointResponse' {} a -> s {httpStatus = a} :: CreateManagedEndpointResponse)

instance Prelude.NFData CreateManagedEndpointResponse
