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
-- Module      : Network.AWS.QuickSight.TagResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Assigns one or more tags (key-value pairs) to the specified Amazon
-- QuickSight resource.
--
-- Tags can help you organize and categorize your resources. You can also
-- use them to scope user permissions, by granting a user permission to
-- access or change only resources with certain tag values. You can use the
-- @TagResource@ operation with a resource that already has tags. If you
-- specify a new tag key for the resource, this tag is appended to the list
-- of tags associated with the resource. If you specify a tag key that is
-- already associated with the resource, the new tag value that you specify
-- replaces the previous value for that tag.
--
-- You can associate as many as 50 tags with a resource. Amazon QuickSight
-- supports tagging on data set, data source, dashboard, and template.
--
-- Tagging for Amazon QuickSight works in a similar way to tagging for
-- other AWS services, except for the following:
--
-- -   You can\'t use tags to track AWS costs for Amazon QuickSight. This
--     restriction is because Amazon QuickSight costs are based on users
--     and SPICE capacity, which aren\'t taggable resources.
--
-- -   Amazon QuickSight doesn\'t currently support the Tag Editor for
--     Resource Groups.
module Network.AWS.QuickSight.TagResource
  ( -- * Creating a Request
    TagResource (..),
    newTagResource,

    -- * Request Lenses
    tagResource_resourceArn,
    tagResource_tags,

    -- * Destructuring the Response
    TagResourceResponse (..),
    newTagResourceResponse,

    -- * Response Lenses
    tagResourceResponse_requestId,
    tagResourceResponse_status,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newTagResource' smart constructor.
data TagResource = TagResource'
  { -- | The Amazon Resource Name (ARN) of the resource that you want to tag.
    resourceArn :: Prelude.Text,
    -- | Contains a map of the key-value pairs for the resource tag or tags
    -- assigned to the resource.
    tags :: Prelude.NonEmpty Tag
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TagResource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceArn', 'tagResource_resourceArn' - The Amazon Resource Name (ARN) of the resource that you want to tag.
--
-- 'tags', 'tagResource_tags' - Contains a map of the key-value pairs for the resource tag or tags
-- assigned to the resource.
newTagResource ::
  -- | 'resourceArn'
  Prelude.Text ->
  -- | 'tags'
  Prelude.NonEmpty Tag ->
  TagResource
newTagResource pResourceArn_ pTags_ =
  TagResource'
    { resourceArn = pResourceArn_,
      tags = Lens.coerced Lens.# pTags_
    }

-- | The Amazon Resource Name (ARN) of the resource that you want to tag.
tagResource_resourceArn :: Lens.Lens' TagResource Prelude.Text
tagResource_resourceArn = Lens.lens (\TagResource' {resourceArn} -> resourceArn) (\s@TagResource' {} a -> s {resourceArn = a} :: TagResource)

-- | Contains a map of the key-value pairs for the resource tag or tags
-- assigned to the resource.
tagResource_tags :: Lens.Lens' TagResource (Prelude.NonEmpty Tag)
tagResource_tags = Lens.lens (\TagResource' {tags} -> tags) (\s@TagResource' {} a -> s {tags = a} :: TagResource) Prelude.. Lens.coerced

instance Core.AWSRequest TagResource where
  type AWSResponse TagResource = TagResourceResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          TagResourceResponse'
            Prelude.<$> (x Core..?> "RequestId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable TagResource

instance Prelude.NFData TagResource

instance Core.ToHeaders TagResource where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON TagResource where
  toJSON TagResource' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("Tags" Core..= tags)]
      )

instance Core.ToPath TagResource where
  toPath TagResource' {..} =
    Prelude.mconcat
      ["/resources/", Core.toBS resourceArn, "/tags"]

instance Core.ToQuery TagResource where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newTagResourceResponse' smart constructor.
data TagResourceResponse = TagResourceResponse'
  { -- | The Amazon Web Services request ID for this operation.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The HTTP status of the request.
    status :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TagResourceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'tagResourceResponse_requestId' - The Amazon Web Services request ID for this operation.
--
-- 'status', 'tagResourceResponse_status' - The HTTP status of the request.
newTagResourceResponse ::
  -- | 'status'
  Prelude.Int ->
  TagResourceResponse
newTagResourceResponse pStatus_ =
  TagResourceResponse'
    { requestId = Prelude.Nothing,
      status = pStatus_
    }

-- | The Amazon Web Services request ID for this operation.
tagResourceResponse_requestId :: Lens.Lens' TagResourceResponse (Prelude.Maybe Prelude.Text)
tagResourceResponse_requestId = Lens.lens (\TagResourceResponse' {requestId} -> requestId) (\s@TagResourceResponse' {} a -> s {requestId = a} :: TagResourceResponse)

-- | The HTTP status of the request.
tagResourceResponse_status :: Lens.Lens' TagResourceResponse Prelude.Int
tagResourceResponse_status = Lens.lens (\TagResourceResponse' {status} -> status) (\s@TagResourceResponse' {} a -> s {status = a} :: TagResourceResponse)

instance Prelude.NFData TagResourceResponse
