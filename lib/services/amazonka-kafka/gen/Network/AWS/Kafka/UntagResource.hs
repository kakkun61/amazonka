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
-- Module      : Network.AWS.Kafka.UntagResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the tags associated with the keys that are provided in the
-- query.
module Network.AWS.Kafka.UntagResource
  ( -- * Creating a Request
    UntagResource (..),
    newUntagResource,

    -- * Request Lenses
    untagResource_tagKeys,
    untagResource_resourceArn,

    -- * Destructuring the Response
    UntagResourceResponse (..),
    newUntagResourceResponse,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Kafka.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUntagResource' smart constructor.
data UntagResource = UntagResource'
  { -- | Tag keys must be unique for a given cluster. In addition, the following
    -- restrictions apply:
    --
    -- -   Each tag key must be unique. If you add a tag with a key that\'s
    --     already in use, your new tag overwrites the existing key-value pair.
    --
    -- -   You can\'t start a tag key with aws: because this prefix is reserved
    --     for use by AWS. AWS creates tags that begin with this prefix on your
    --     behalf, but you can\'t edit or delete them.
    --
    -- -   Tag keys must be between 1 and 128 Unicode characters in length.
    --
    -- -   Tag keys must consist of the following characters: Unicode letters,
    --     digits, white space, and the following special characters: _ . \/ =
    --     + - \@.
    tagKeys :: [Prelude.Text],
    -- | The Amazon Resource Name (ARN) that uniquely identifies the resource
    -- that\'s associated with the tags.
    resourceArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UntagResource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tagKeys', 'untagResource_tagKeys' - Tag keys must be unique for a given cluster. In addition, the following
-- restrictions apply:
--
-- -   Each tag key must be unique. If you add a tag with a key that\'s
--     already in use, your new tag overwrites the existing key-value pair.
--
-- -   You can\'t start a tag key with aws: because this prefix is reserved
--     for use by AWS. AWS creates tags that begin with this prefix on your
--     behalf, but you can\'t edit or delete them.
--
-- -   Tag keys must be between 1 and 128 Unicode characters in length.
--
-- -   Tag keys must consist of the following characters: Unicode letters,
--     digits, white space, and the following special characters: _ . \/ =
--     + - \@.
--
-- 'resourceArn', 'untagResource_resourceArn' - The Amazon Resource Name (ARN) that uniquely identifies the resource
-- that\'s associated with the tags.
newUntagResource ::
  -- | 'resourceArn'
  Prelude.Text ->
  UntagResource
newUntagResource pResourceArn_ =
  UntagResource'
    { tagKeys = Prelude.mempty,
      resourceArn = pResourceArn_
    }

-- | Tag keys must be unique for a given cluster. In addition, the following
-- restrictions apply:
--
-- -   Each tag key must be unique. If you add a tag with a key that\'s
--     already in use, your new tag overwrites the existing key-value pair.
--
-- -   You can\'t start a tag key with aws: because this prefix is reserved
--     for use by AWS. AWS creates tags that begin with this prefix on your
--     behalf, but you can\'t edit or delete them.
--
-- -   Tag keys must be between 1 and 128 Unicode characters in length.
--
-- -   Tag keys must consist of the following characters: Unicode letters,
--     digits, white space, and the following special characters: _ . \/ =
--     + - \@.
untagResource_tagKeys :: Lens.Lens' UntagResource [Prelude.Text]
untagResource_tagKeys = Lens.lens (\UntagResource' {tagKeys} -> tagKeys) (\s@UntagResource' {} a -> s {tagKeys = a} :: UntagResource) Prelude.. Lens.coerced

-- | The Amazon Resource Name (ARN) that uniquely identifies the resource
-- that\'s associated with the tags.
untagResource_resourceArn :: Lens.Lens' UntagResource Prelude.Text
untagResource_resourceArn = Lens.lens (\UntagResource' {resourceArn} -> resourceArn) (\s@UntagResource' {} a -> s {resourceArn = a} :: UntagResource)

instance Core.AWSRequest UntagResource where
  type
    AWSResponse UntagResource =
      UntagResourceResponse
  request = Request.delete defaultService
  response =
    Response.receiveNull UntagResourceResponse'

instance Prelude.Hashable UntagResource

instance Prelude.NFData UntagResource

instance Core.ToHeaders UntagResource where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath UntagResource where
  toPath UntagResource' {..} =
    Prelude.mconcat
      ["/v1/tags/", Core.toBS resourceArn]

instance Core.ToQuery UntagResource where
  toQuery UntagResource' {..} =
    Prelude.mconcat
      ["tagKeys" Core.=: Core.toQueryList "member" tagKeys]

-- | /See:/ 'newUntagResourceResponse' smart constructor.
data UntagResourceResponse = UntagResourceResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UntagResourceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newUntagResourceResponse ::
  UntagResourceResponse
newUntagResourceResponse = UntagResourceResponse'

instance Prelude.NFData UntagResourceResponse
