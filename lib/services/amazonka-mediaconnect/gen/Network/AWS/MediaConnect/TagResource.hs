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
-- Module      : Network.AWS.MediaConnect.TagResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates the specified tags to a resource with the specified
-- resourceArn. If existing tags on a resource are not specified in the
-- request parameters, they are not changed. When a resource is deleted,
-- the tags associated with that resource are deleted as well.
module Network.AWS.MediaConnect.TagResource
  ( -- * Creating a Request
    TagResource (..),
    newTagResource,

    -- * Request Lenses
    tagResource_resourceArn,
    tagResource_tags,

    -- * Destructuring the Response
    TagResourceResponse (..),
    newTagResourceResponse,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaConnect.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The tags to add to the resource. A tag is an array of key-value pairs.
-- Tag keys can have a maximum character length of 128 characters, and tag
-- values can have a maximum length of 256 characters.
--
-- /See:/ 'newTagResource' smart constructor.
data TagResource = TagResource'
  { -- | The Amazon Resource Name (ARN) that identifies the AWS Elemental
    -- MediaConnect resource to which to add tags.
    resourceArn :: Prelude.Text,
    -- | A map from tag keys to values. Tag keys can have a maximum character
    -- length of 128 characters, and tag values can have a maximum length of
    -- 256 characters.
    tags :: Prelude.HashMap Prelude.Text Prelude.Text
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
-- 'resourceArn', 'tagResource_resourceArn' - The Amazon Resource Name (ARN) that identifies the AWS Elemental
-- MediaConnect resource to which to add tags.
--
-- 'tags', 'tagResource_tags' - A map from tag keys to values. Tag keys can have a maximum character
-- length of 128 characters, and tag values can have a maximum length of
-- 256 characters.
newTagResource ::
  -- | 'resourceArn'
  Prelude.Text ->
  TagResource
newTagResource pResourceArn_ =
  TagResource'
    { resourceArn = pResourceArn_,
      tags = Prelude.mempty
    }

-- | The Amazon Resource Name (ARN) that identifies the AWS Elemental
-- MediaConnect resource to which to add tags.
tagResource_resourceArn :: Lens.Lens' TagResource Prelude.Text
tagResource_resourceArn = Lens.lens (\TagResource' {resourceArn} -> resourceArn) (\s@TagResource' {} a -> s {resourceArn = a} :: TagResource)

-- | A map from tag keys to values. Tag keys can have a maximum character
-- length of 128 characters, and tag values can have a maximum length of
-- 256 characters.
tagResource_tags :: Lens.Lens' TagResource (Prelude.HashMap Prelude.Text Prelude.Text)
tagResource_tags = Lens.lens (\TagResource' {tags} -> tags) (\s@TagResource' {} a -> s {tags = a} :: TagResource) Prelude.. Lens.coerced

instance Core.AWSRequest TagResource where
  type AWSResponse TagResource = TagResourceResponse
  request = Request.postJSON defaultService
  response = Response.receiveNull TagResourceResponse'

instance Prelude.Hashable TagResource

instance Prelude.NFData TagResource

instance Core.ToHeaders TagResource where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON TagResource where
  toJSON TagResource' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("tags" Core..= tags)]
      )

instance Core.ToPath TagResource where
  toPath TagResource' {..} =
    Prelude.mconcat ["/tags/", Core.toBS resourceArn]

instance Core.ToQuery TagResource where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newTagResourceResponse' smart constructor.
data TagResourceResponse = TagResourceResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TagResourceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newTagResourceResponse ::
  TagResourceResponse
newTagResourceResponse = TagResourceResponse'

instance Prelude.NFData TagResourceResponse
