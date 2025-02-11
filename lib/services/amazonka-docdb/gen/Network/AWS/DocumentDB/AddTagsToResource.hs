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
-- Module      : Network.AWS.DocumentDB.AddTagsToResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds metadata tags to an Amazon DocumentDB resource. You can use these
-- tags with cost allocation reporting to track costs that are associated
-- with Amazon DocumentDB resources or in a @Condition@ statement in an
-- Identity and Access Management (IAM) policy for Amazon DocumentDB.
module Network.AWS.DocumentDB.AddTagsToResource
  ( -- * Creating a Request
    AddTagsToResource (..),
    newAddTagsToResource,

    -- * Request Lenses
    addTagsToResource_resourceName,
    addTagsToResource_tags,

    -- * Destructuring the Response
    AddTagsToResourceResponse (..),
    newAddTagsToResourceResponse,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DocumentDB.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input to AddTagsToResource.
--
-- /See:/ 'newAddTagsToResource' smart constructor.
data AddTagsToResource = AddTagsToResource'
  { -- | The Amazon DocumentDB resource that the tags are added to. This value is
    -- an Amazon Resource Name .
    resourceName :: Prelude.Text,
    -- | The tags to be assigned to the Amazon DocumentDB resource.
    tags :: [Tag]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AddTagsToResource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceName', 'addTagsToResource_resourceName' - The Amazon DocumentDB resource that the tags are added to. This value is
-- an Amazon Resource Name .
--
-- 'tags', 'addTagsToResource_tags' - The tags to be assigned to the Amazon DocumentDB resource.
newAddTagsToResource ::
  -- | 'resourceName'
  Prelude.Text ->
  AddTagsToResource
newAddTagsToResource pResourceName_ =
  AddTagsToResource'
    { resourceName = pResourceName_,
      tags = Prelude.mempty
    }

-- | The Amazon DocumentDB resource that the tags are added to. This value is
-- an Amazon Resource Name .
addTagsToResource_resourceName :: Lens.Lens' AddTagsToResource Prelude.Text
addTagsToResource_resourceName = Lens.lens (\AddTagsToResource' {resourceName} -> resourceName) (\s@AddTagsToResource' {} a -> s {resourceName = a} :: AddTagsToResource)

-- | The tags to be assigned to the Amazon DocumentDB resource.
addTagsToResource_tags :: Lens.Lens' AddTagsToResource [Tag]
addTagsToResource_tags = Lens.lens (\AddTagsToResource' {tags} -> tags) (\s@AddTagsToResource' {} a -> s {tags = a} :: AddTagsToResource) Prelude.. Lens.coerced

instance Core.AWSRequest AddTagsToResource where
  type
    AWSResponse AddTagsToResource =
      AddTagsToResourceResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveNull AddTagsToResourceResponse'

instance Prelude.Hashable AddTagsToResource

instance Prelude.NFData AddTagsToResource

instance Core.ToHeaders AddTagsToResource where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath AddTagsToResource where
  toPath = Prelude.const "/"

instance Core.ToQuery AddTagsToResource where
  toQuery AddTagsToResource' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("AddTagsToResource" :: Prelude.ByteString),
        "Version"
          Core.=: ("2014-10-31" :: Prelude.ByteString),
        "ResourceName" Core.=: resourceName,
        "Tags" Core.=: Core.toQueryList "Tag" tags
      ]

-- | /See:/ 'newAddTagsToResourceResponse' smart constructor.
data AddTagsToResourceResponse = AddTagsToResourceResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AddTagsToResourceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newAddTagsToResourceResponse ::
  AddTagsToResourceResponse
newAddTagsToResourceResponse =
  AddTagsToResourceResponse'

instance Prelude.NFData AddTagsToResourceResponse
