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
-- Module      : Network.AWS.ServiceCatalogAppRegistry.AssociateAttributeGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates an attribute group with an application to augment the
-- application\'s metadata with the group\'s attributes. This feature
-- enables applications to be described with user-defined details that are
-- machine-readable, such as third-party integrations.
module Network.AWS.ServiceCatalogAppRegistry.AssociateAttributeGroup
  ( -- * Creating a Request
    AssociateAttributeGroup (..),
    newAssociateAttributeGroup,

    -- * Request Lenses
    associateAttributeGroup_application,
    associateAttributeGroup_attributeGroup,

    -- * Destructuring the Response
    AssociateAttributeGroupResponse (..),
    newAssociateAttributeGroupResponse,

    -- * Response Lenses
    associateAttributeGroupResponse_applicationArn,
    associateAttributeGroupResponse_attributeGroupArn,
    associateAttributeGroupResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.ServiceCatalogAppRegistry.Types

-- | /See:/ 'newAssociateAttributeGroup' smart constructor.
data AssociateAttributeGroup = AssociateAttributeGroup'
  { -- | The name or ID of the application.
    application :: Prelude.Text,
    -- | The name or ID of the attribute group that holds the attributes to
    -- describe the application.
    attributeGroup :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssociateAttributeGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'application', 'associateAttributeGroup_application' - The name or ID of the application.
--
-- 'attributeGroup', 'associateAttributeGroup_attributeGroup' - The name or ID of the attribute group that holds the attributes to
-- describe the application.
newAssociateAttributeGroup ::
  -- | 'application'
  Prelude.Text ->
  -- | 'attributeGroup'
  Prelude.Text ->
  AssociateAttributeGroup
newAssociateAttributeGroup
  pApplication_
  pAttributeGroup_ =
    AssociateAttributeGroup'
      { application =
          pApplication_,
        attributeGroup = pAttributeGroup_
      }

-- | The name or ID of the application.
associateAttributeGroup_application :: Lens.Lens' AssociateAttributeGroup Prelude.Text
associateAttributeGroup_application = Lens.lens (\AssociateAttributeGroup' {application} -> application) (\s@AssociateAttributeGroup' {} a -> s {application = a} :: AssociateAttributeGroup)

-- | The name or ID of the attribute group that holds the attributes to
-- describe the application.
associateAttributeGroup_attributeGroup :: Lens.Lens' AssociateAttributeGroup Prelude.Text
associateAttributeGroup_attributeGroup = Lens.lens (\AssociateAttributeGroup' {attributeGroup} -> attributeGroup) (\s@AssociateAttributeGroup' {} a -> s {attributeGroup = a} :: AssociateAttributeGroup)

instance Core.AWSRequest AssociateAttributeGroup where
  type
    AWSResponse AssociateAttributeGroup =
      AssociateAttributeGroupResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          AssociateAttributeGroupResponse'
            Prelude.<$> (x Core..?> "applicationArn")
            Prelude.<*> (x Core..?> "attributeGroupArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable AssociateAttributeGroup

instance Prelude.NFData AssociateAttributeGroup

instance Core.ToHeaders AssociateAttributeGroup where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON AssociateAttributeGroup where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath AssociateAttributeGroup where
  toPath AssociateAttributeGroup' {..} =
    Prelude.mconcat
      [ "/applications/",
        Core.toBS application,
        "/attribute-groups/",
        Core.toBS attributeGroup
      ]

instance Core.ToQuery AssociateAttributeGroup where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newAssociateAttributeGroupResponse' smart constructor.
data AssociateAttributeGroupResponse = AssociateAttributeGroupResponse'
  { -- | The Amazon resource name (ARN) of the application that was augmented
    -- with attributes.
    applicationArn :: Prelude.Maybe Prelude.Text,
    -- | The Amazon resource name (ARN) of the attribute group that contains the
    -- application\'s new attributes.
    attributeGroupArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssociateAttributeGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'applicationArn', 'associateAttributeGroupResponse_applicationArn' - The Amazon resource name (ARN) of the application that was augmented
-- with attributes.
--
-- 'attributeGroupArn', 'associateAttributeGroupResponse_attributeGroupArn' - The Amazon resource name (ARN) of the attribute group that contains the
-- application\'s new attributes.
--
-- 'httpStatus', 'associateAttributeGroupResponse_httpStatus' - The response's http status code.
newAssociateAttributeGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  AssociateAttributeGroupResponse
newAssociateAttributeGroupResponse pHttpStatus_ =
  AssociateAttributeGroupResponse'
    { applicationArn =
        Prelude.Nothing,
      attributeGroupArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon resource name (ARN) of the application that was augmented
-- with attributes.
associateAttributeGroupResponse_applicationArn :: Lens.Lens' AssociateAttributeGroupResponse (Prelude.Maybe Prelude.Text)
associateAttributeGroupResponse_applicationArn = Lens.lens (\AssociateAttributeGroupResponse' {applicationArn} -> applicationArn) (\s@AssociateAttributeGroupResponse' {} a -> s {applicationArn = a} :: AssociateAttributeGroupResponse)

-- | The Amazon resource name (ARN) of the attribute group that contains the
-- application\'s new attributes.
associateAttributeGroupResponse_attributeGroupArn :: Lens.Lens' AssociateAttributeGroupResponse (Prelude.Maybe Prelude.Text)
associateAttributeGroupResponse_attributeGroupArn = Lens.lens (\AssociateAttributeGroupResponse' {attributeGroupArn} -> attributeGroupArn) (\s@AssociateAttributeGroupResponse' {} a -> s {attributeGroupArn = a} :: AssociateAttributeGroupResponse)

-- | The response's http status code.
associateAttributeGroupResponse_httpStatus :: Lens.Lens' AssociateAttributeGroupResponse Prelude.Int
associateAttributeGroupResponse_httpStatus = Lens.lens (\AssociateAttributeGroupResponse' {httpStatus} -> httpStatus) (\s@AssociateAttributeGroupResponse' {} a -> s {httpStatus = a} :: AssociateAttributeGroupResponse)

instance
  Prelude.NFData
    AssociateAttributeGroupResponse
