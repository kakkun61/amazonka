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
-- Module      : Network.AWS.ServiceCatalogAppRegistry.DisassociateResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates a resource from application. Both the resource and the
-- application can be specified either by ID or name.
module Network.AWS.ServiceCatalogAppRegistry.DisassociateResource
  ( -- * Creating a Request
    DisassociateResource (..),
    newDisassociateResource,

    -- * Request Lenses
    disassociateResource_application,
    disassociateResource_resourceType,
    disassociateResource_resource,

    -- * Destructuring the Response
    DisassociateResourceResponse (..),
    newDisassociateResourceResponse,

    -- * Response Lenses
    disassociateResourceResponse_applicationArn,
    disassociateResourceResponse_resourceArn,
    disassociateResourceResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.ServiceCatalogAppRegistry.Types

-- | /See:/ 'newDisassociateResource' smart constructor.
data DisassociateResource = DisassociateResource'
  { -- | The name or ID of the application.
    application :: Prelude.Text,
    -- | The type of the resource that is being disassociated.
    resourceType :: ResourceType,
    -- | The name or ID of the resource.
    resource :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateResource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'application', 'disassociateResource_application' - The name or ID of the application.
--
-- 'resourceType', 'disassociateResource_resourceType' - The type of the resource that is being disassociated.
--
-- 'resource', 'disassociateResource_resource' - The name or ID of the resource.
newDisassociateResource ::
  -- | 'application'
  Prelude.Text ->
  -- | 'resourceType'
  ResourceType ->
  -- | 'resource'
  Prelude.Text ->
  DisassociateResource
newDisassociateResource
  pApplication_
  pResourceType_
  pResource_ =
    DisassociateResource'
      { application = pApplication_,
        resourceType = pResourceType_,
        resource = pResource_
      }

-- | The name or ID of the application.
disassociateResource_application :: Lens.Lens' DisassociateResource Prelude.Text
disassociateResource_application = Lens.lens (\DisassociateResource' {application} -> application) (\s@DisassociateResource' {} a -> s {application = a} :: DisassociateResource)

-- | The type of the resource that is being disassociated.
disassociateResource_resourceType :: Lens.Lens' DisassociateResource ResourceType
disassociateResource_resourceType = Lens.lens (\DisassociateResource' {resourceType} -> resourceType) (\s@DisassociateResource' {} a -> s {resourceType = a} :: DisassociateResource)

-- | The name or ID of the resource.
disassociateResource_resource :: Lens.Lens' DisassociateResource Prelude.Text
disassociateResource_resource = Lens.lens (\DisassociateResource' {resource} -> resource) (\s@DisassociateResource' {} a -> s {resource = a} :: DisassociateResource)

instance Core.AWSRequest DisassociateResource where
  type
    AWSResponse DisassociateResource =
      DisassociateResourceResponse
  request = Request.delete defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DisassociateResourceResponse'
            Prelude.<$> (x Core..?> "applicationArn")
            Prelude.<*> (x Core..?> "resourceArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DisassociateResource

instance Prelude.NFData DisassociateResource

instance Core.ToHeaders DisassociateResource where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DisassociateResource where
  toPath DisassociateResource' {..} =
    Prelude.mconcat
      [ "/applications/",
        Core.toBS application,
        "/resources/",
        Core.toBS resourceType,
        "/",
        Core.toBS resource
      ]

instance Core.ToQuery DisassociateResource where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDisassociateResourceResponse' smart constructor.
data DisassociateResourceResponse = DisassociateResourceResponse'
  { -- | The Amazon resource name (ARN) that specifies the application.
    applicationArn :: Prelude.Maybe Prelude.Text,
    -- | The Amazon resource name (ARN) that specifies the resource.
    resourceArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateResourceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'applicationArn', 'disassociateResourceResponse_applicationArn' - The Amazon resource name (ARN) that specifies the application.
--
-- 'resourceArn', 'disassociateResourceResponse_resourceArn' - The Amazon resource name (ARN) that specifies the resource.
--
-- 'httpStatus', 'disassociateResourceResponse_httpStatus' - The response's http status code.
newDisassociateResourceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DisassociateResourceResponse
newDisassociateResourceResponse pHttpStatus_ =
  DisassociateResourceResponse'
    { applicationArn =
        Prelude.Nothing,
      resourceArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon resource name (ARN) that specifies the application.
disassociateResourceResponse_applicationArn :: Lens.Lens' DisassociateResourceResponse (Prelude.Maybe Prelude.Text)
disassociateResourceResponse_applicationArn = Lens.lens (\DisassociateResourceResponse' {applicationArn} -> applicationArn) (\s@DisassociateResourceResponse' {} a -> s {applicationArn = a} :: DisassociateResourceResponse)

-- | The Amazon resource name (ARN) that specifies the resource.
disassociateResourceResponse_resourceArn :: Lens.Lens' DisassociateResourceResponse (Prelude.Maybe Prelude.Text)
disassociateResourceResponse_resourceArn = Lens.lens (\DisassociateResourceResponse' {resourceArn} -> resourceArn) (\s@DisassociateResourceResponse' {} a -> s {resourceArn = a} :: DisassociateResourceResponse)

-- | The response's http status code.
disassociateResourceResponse_httpStatus :: Lens.Lens' DisassociateResourceResponse Prelude.Int
disassociateResourceResponse_httpStatus = Lens.lens (\DisassociateResourceResponse' {httpStatus} -> httpStatus) (\s@DisassociateResourceResponse' {} a -> s {httpStatus = a} :: DisassociateResourceResponse)

instance Prelude.NFData DisassociateResourceResponse
