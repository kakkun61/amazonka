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
-- Module      : Network.AWS.ServiceCatalogAppRegistry.DeleteAttributeGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an attribute group, specified either by its attribute group ID
-- or name.
module Network.AWS.ServiceCatalogAppRegistry.DeleteAttributeGroup
  ( -- * Creating a Request
    DeleteAttributeGroup (..),
    newDeleteAttributeGroup,

    -- * Request Lenses
    deleteAttributeGroup_attributeGroup,

    -- * Destructuring the Response
    DeleteAttributeGroupResponse (..),
    newDeleteAttributeGroupResponse,

    -- * Response Lenses
    deleteAttributeGroupResponse_attributeGroup,
    deleteAttributeGroupResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.ServiceCatalogAppRegistry.Types

-- | /See:/ 'newDeleteAttributeGroup' smart constructor.
data DeleteAttributeGroup = DeleteAttributeGroup'
  { -- | The name or ID of the attribute group that holds the attributes to
    -- describe the application.
    attributeGroup :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteAttributeGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'attributeGroup', 'deleteAttributeGroup_attributeGroup' - The name or ID of the attribute group that holds the attributes to
-- describe the application.
newDeleteAttributeGroup ::
  -- | 'attributeGroup'
  Prelude.Text ->
  DeleteAttributeGroup
newDeleteAttributeGroup pAttributeGroup_ =
  DeleteAttributeGroup'
    { attributeGroup =
        pAttributeGroup_
    }

-- | The name or ID of the attribute group that holds the attributes to
-- describe the application.
deleteAttributeGroup_attributeGroup :: Lens.Lens' DeleteAttributeGroup Prelude.Text
deleteAttributeGroup_attributeGroup = Lens.lens (\DeleteAttributeGroup' {attributeGroup} -> attributeGroup) (\s@DeleteAttributeGroup' {} a -> s {attributeGroup = a} :: DeleteAttributeGroup)

instance Core.AWSRequest DeleteAttributeGroup where
  type
    AWSResponse DeleteAttributeGroup =
      DeleteAttributeGroupResponse
  request = Request.delete defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteAttributeGroupResponse'
            Prelude.<$> (x Core..?> "attributeGroup")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteAttributeGroup

instance Prelude.NFData DeleteAttributeGroup

instance Core.ToHeaders DeleteAttributeGroup where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteAttributeGroup where
  toPath DeleteAttributeGroup' {..} =
    Prelude.mconcat
      ["/attribute-groups/", Core.toBS attributeGroup]

instance Core.ToQuery DeleteAttributeGroup where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteAttributeGroupResponse' smart constructor.
data DeleteAttributeGroupResponse = DeleteAttributeGroupResponse'
  { -- | Information about the deleted attribute group.
    attributeGroup :: Prelude.Maybe AttributeGroupSummary,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteAttributeGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'attributeGroup', 'deleteAttributeGroupResponse_attributeGroup' - Information about the deleted attribute group.
--
-- 'httpStatus', 'deleteAttributeGroupResponse_httpStatus' - The response's http status code.
newDeleteAttributeGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteAttributeGroupResponse
newDeleteAttributeGroupResponse pHttpStatus_ =
  DeleteAttributeGroupResponse'
    { attributeGroup =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the deleted attribute group.
deleteAttributeGroupResponse_attributeGroup :: Lens.Lens' DeleteAttributeGroupResponse (Prelude.Maybe AttributeGroupSummary)
deleteAttributeGroupResponse_attributeGroup = Lens.lens (\DeleteAttributeGroupResponse' {attributeGroup} -> attributeGroup) (\s@DeleteAttributeGroupResponse' {} a -> s {attributeGroup = a} :: DeleteAttributeGroupResponse)

-- | The response's http status code.
deleteAttributeGroupResponse_httpStatus :: Lens.Lens' DeleteAttributeGroupResponse Prelude.Int
deleteAttributeGroupResponse_httpStatus = Lens.lens (\DeleteAttributeGroupResponse' {httpStatus} -> httpStatus) (\s@DeleteAttributeGroupResponse' {} a -> s {httpStatus = a} :: DeleteAttributeGroupResponse)

instance Prelude.NFData DeleteAttributeGroupResponse
