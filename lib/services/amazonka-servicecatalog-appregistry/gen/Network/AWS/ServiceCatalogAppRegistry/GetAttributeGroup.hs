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
-- Module      : Network.AWS.ServiceCatalogAppRegistry.GetAttributeGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an attribute group, either by its name or its ID. The
-- attribute group can be specified either by its unique ID or by its name.
module Network.AWS.ServiceCatalogAppRegistry.GetAttributeGroup
  ( -- * Creating a Request
    GetAttributeGroup (..),
    newGetAttributeGroup,

    -- * Request Lenses
    getAttributeGroup_attributeGroup,

    -- * Destructuring the Response
    GetAttributeGroupResponse (..),
    newGetAttributeGroupResponse,

    -- * Response Lenses
    getAttributeGroupResponse_creationTime,
    getAttributeGroupResponse_arn,
    getAttributeGroupResponse_name,
    getAttributeGroupResponse_attributes,
    getAttributeGroupResponse_id,
    getAttributeGroupResponse_lastUpdateTime,
    getAttributeGroupResponse_description,
    getAttributeGroupResponse_tags,
    getAttributeGroupResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.ServiceCatalogAppRegistry.Types

-- | /See:/ 'newGetAttributeGroup' smart constructor.
data GetAttributeGroup = GetAttributeGroup'
  { -- | The name or ID of the attribute group that holds the attributes to
    -- describe the application.
    attributeGroup :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAttributeGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'attributeGroup', 'getAttributeGroup_attributeGroup' - The name or ID of the attribute group that holds the attributes to
-- describe the application.
newGetAttributeGroup ::
  -- | 'attributeGroup'
  Prelude.Text ->
  GetAttributeGroup
newGetAttributeGroup pAttributeGroup_ =
  GetAttributeGroup'
    { attributeGroup =
        pAttributeGroup_
    }

-- | The name or ID of the attribute group that holds the attributes to
-- describe the application.
getAttributeGroup_attributeGroup :: Lens.Lens' GetAttributeGroup Prelude.Text
getAttributeGroup_attributeGroup = Lens.lens (\GetAttributeGroup' {attributeGroup} -> attributeGroup) (\s@GetAttributeGroup' {} a -> s {attributeGroup = a} :: GetAttributeGroup)

instance Core.AWSRequest GetAttributeGroup where
  type
    AWSResponse GetAttributeGroup =
      GetAttributeGroupResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetAttributeGroupResponse'
            Prelude.<$> (x Core..?> "creationTime")
            Prelude.<*> (x Core..?> "arn")
            Prelude.<*> (x Core..?> "name")
            Prelude.<*> (x Core..?> "attributes")
            Prelude.<*> (x Core..?> "id")
            Prelude.<*> (x Core..?> "lastUpdateTime")
            Prelude.<*> (x Core..?> "description")
            Prelude.<*> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetAttributeGroup

instance Prelude.NFData GetAttributeGroup

instance Core.ToHeaders GetAttributeGroup where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetAttributeGroup where
  toPath GetAttributeGroup' {..} =
    Prelude.mconcat
      ["/attribute-groups/", Core.toBS attributeGroup]

instance Core.ToQuery GetAttributeGroup where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetAttributeGroupResponse' smart constructor.
data GetAttributeGroupResponse = GetAttributeGroupResponse'
  { -- | The ISO-8601 formatted timestamp of the moment the attribute group was
    -- created.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The Amazon resource name (ARN) that specifies the attribute group across
    -- services.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The name of the attribute group.
    name :: Prelude.Maybe Prelude.Text,
    -- | A JSON string in the form of nested key-value pairs that represent the
    -- attributes in the group and describes an application and its components.
    attributes :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the attribute group.
    id :: Prelude.Maybe Prelude.Text,
    -- | The ISO-8601 formatted timestamp of the moment the attribute group was
    -- last updated. This time is the same as the creationTime for a newly
    -- created attribute group.
    lastUpdateTime :: Prelude.Maybe Core.POSIX,
    -- | The description of the attribute group that the user provides.
    description :: Prelude.Maybe Prelude.Text,
    -- | Key-value pairs associated with the attribute group.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAttributeGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'creationTime', 'getAttributeGroupResponse_creationTime' - The ISO-8601 formatted timestamp of the moment the attribute group was
-- created.
--
-- 'arn', 'getAttributeGroupResponse_arn' - The Amazon resource name (ARN) that specifies the attribute group across
-- services.
--
-- 'name', 'getAttributeGroupResponse_name' - The name of the attribute group.
--
-- 'attributes', 'getAttributeGroupResponse_attributes' - A JSON string in the form of nested key-value pairs that represent the
-- attributes in the group and describes an application and its components.
--
-- 'id', 'getAttributeGroupResponse_id' - The identifier of the attribute group.
--
-- 'lastUpdateTime', 'getAttributeGroupResponse_lastUpdateTime' - The ISO-8601 formatted timestamp of the moment the attribute group was
-- last updated. This time is the same as the creationTime for a newly
-- created attribute group.
--
-- 'description', 'getAttributeGroupResponse_description' - The description of the attribute group that the user provides.
--
-- 'tags', 'getAttributeGroupResponse_tags' - Key-value pairs associated with the attribute group.
--
-- 'httpStatus', 'getAttributeGroupResponse_httpStatus' - The response's http status code.
newGetAttributeGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetAttributeGroupResponse
newGetAttributeGroupResponse pHttpStatus_ =
  GetAttributeGroupResponse'
    { creationTime =
        Prelude.Nothing,
      arn = Prelude.Nothing,
      name = Prelude.Nothing,
      attributes = Prelude.Nothing,
      id = Prelude.Nothing,
      lastUpdateTime = Prelude.Nothing,
      description = Prelude.Nothing,
      tags = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ISO-8601 formatted timestamp of the moment the attribute group was
-- created.
getAttributeGroupResponse_creationTime :: Lens.Lens' GetAttributeGroupResponse (Prelude.Maybe Prelude.UTCTime)
getAttributeGroupResponse_creationTime = Lens.lens (\GetAttributeGroupResponse' {creationTime} -> creationTime) (\s@GetAttributeGroupResponse' {} a -> s {creationTime = a} :: GetAttributeGroupResponse) Prelude.. Lens.mapping Core._Time

-- | The Amazon resource name (ARN) that specifies the attribute group across
-- services.
getAttributeGroupResponse_arn :: Lens.Lens' GetAttributeGroupResponse (Prelude.Maybe Prelude.Text)
getAttributeGroupResponse_arn = Lens.lens (\GetAttributeGroupResponse' {arn} -> arn) (\s@GetAttributeGroupResponse' {} a -> s {arn = a} :: GetAttributeGroupResponse)

-- | The name of the attribute group.
getAttributeGroupResponse_name :: Lens.Lens' GetAttributeGroupResponse (Prelude.Maybe Prelude.Text)
getAttributeGroupResponse_name = Lens.lens (\GetAttributeGroupResponse' {name} -> name) (\s@GetAttributeGroupResponse' {} a -> s {name = a} :: GetAttributeGroupResponse)

-- | A JSON string in the form of nested key-value pairs that represent the
-- attributes in the group and describes an application and its components.
getAttributeGroupResponse_attributes :: Lens.Lens' GetAttributeGroupResponse (Prelude.Maybe Prelude.Text)
getAttributeGroupResponse_attributes = Lens.lens (\GetAttributeGroupResponse' {attributes} -> attributes) (\s@GetAttributeGroupResponse' {} a -> s {attributes = a} :: GetAttributeGroupResponse)

-- | The identifier of the attribute group.
getAttributeGroupResponse_id :: Lens.Lens' GetAttributeGroupResponse (Prelude.Maybe Prelude.Text)
getAttributeGroupResponse_id = Lens.lens (\GetAttributeGroupResponse' {id} -> id) (\s@GetAttributeGroupResponse' {} a -> s {id = a} :: GetAttributeGroupResponse)

-- | The ISO-8601 formatted timestamp of the moment the attribute group was
-- last updated. This time is the same as the creationTime for a newly
-- created attribute group.
getAttributeGroupResponse_lastUpdateTime :: Lens.Lens' GetAttributeGroupResponse (Prelude.Maybe Prelude.UTCTime)
getAttributeGroupResponse_lastUpdateTime = Lens.lens (\GetAttributeGroupResponse' {lastUpdateTime} -> lastUpdateTime) (\s@GetAttributeGroupResponse' {} a -> s {lastUpdateTime = a} :: GetAttributeGroupResponse) Prelude.. Lens.mapping Core._Time

-- | The description of the attribute group that the user provides.
getAttributeGroupResponse_description :: Lens.Lens' GetAttributeGroupResponse (Prelude.Maybe Prelude.Text)
getAttributeGroupResponse_description = Lens.lens (\GetAttributeGroupResponse' {description} -> description) (\s@GetAttributeGroupResponse' {} a -> s {description = a} :: GetAttributeGroupResponse)

-- | Key-value pairs associated with the attribute group.
getAttributeGroupResponse_tags :: Lens.Lens' GetAttributeGroupResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
getAttributeGroupResponse_tags = Lens.lens (\GetAttributeGroupResponse' {tags} -> tags) (\s@GetAttributeGroupResponse' {} a -> s {tags = a} :: GetAttributeGroupResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getAttributeGroupResponse_httpStatus :: Lens.Lens' GetAttributeGroupResponse Prelude.Int
getAttributeGroupResponse_httpStatus = Lens.lens (\GetAttributeGroupResponse' {httpStatus} -> httpStatus) (\s@GetAttributeGroupResponse' {} a -> s {httpStatus = a} :: GetAttributeGroupResponse)

instance Prelude.NFData GetAttributeGroupResponse
