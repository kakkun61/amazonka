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
-- Module      : Network.AWS.Route53Resolver.CreateFirewallDomainList
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an empty firewall domain list for use in DNS Firewall rules. You
-- can populate the domains for the new list with a file, using
-- ImportFirewallDomains, or with domain strings, using
-- UpdateFirewallDomains.
module Network.AWS.Route53Resolver.CreateFirewallDomainList
  ( -- * Creating a Request
    CreateFirewallDomainList (..),
    newCreateFirewallDomainList,

    -- * Request Lenses
    createFirewallDomainList_tags,
    createFirewallDomainList_creatorRequestId,
    createFirewallDomainList_name,

    -- * Destructuring the Response
    CreateFirewallDomainListResponse (..),
    newCreateFirewallDomainListResponse,

    -- * Response Lenses
    createFirewallDomainListResponse_firewallDomainList,
    createFirewallDomainListResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Route53Resolver.Types

-- | /See:/ 'newCreateFirewallDomainList' smart constructor.
data CreateFirewallDomainList = CreateFirewallDomainList'
  { -- | A list of the tag keys and values that you want to associate with the
    -- domain list.
    tags :: Prelude.Maybe [Tag],
    -- | A unique string that identifies the request and that allows you to retry
    -- failed requests without the risk of running the operation twice.
    -- @CreatorRequestId@ can be any unique string, for example, a date\/time
    -- stamp.
    creatorRequestId :: Prelude.Text,
    -- | A name that lets you identify the domain list to manage and use it.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateFirewallDomainList' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createFirewallDomainList_tags' - A list of the tag keys and values that you want to associate with the
-- domain list.
--
-- 'creatorRequestId', 'createFirewallDomainList_creatorRequestId' - A unique string that identifies the request and that allows you to retry
-- failed requests without the risk of running the operation twice.
-- @CreatorRequestId@ can be any unique string, for example, a date\/time
-- stamp.
--
-- 'name', 'createFirewallDomainList_name' - A name that lets you identify the domain list to manage and use it.
newCreateFirewallDomainList ::
  -- | 'creatorRequestId'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  CreateFirewallDomainList
newCreateFirewallDomainList pCreatorRequestId_ pName_ =
  CreateFirewallDomainList'
    { tags = Prelude.Nothing,
      creatorRequestId = pCreatorRequestId_,
      name = pName_
    }

-- | A list of the tag keys and values that you want to associate with the
-- domain list.
createFirewallDomainList_tags :: Lens.Lens' CreateFirewallDomainList (Prelude.Maybe [Tag])
createFirewallDomainList_tags = Lens.lens (\CreateFirewallDomainList' {tags} -> tags) (\s@CreateFirewallDomainList' {} a -> s {tags = a} :: CreateFirewallDomainList) Prelude.. Lens.mapping Lens.coerced

-- | A unique string that identifies the request and that allows you to retry
-- failed requests without the risk of running the operation twice.
-- @CreatorRequestId@ can be any unique string, for example, a date\/time
-- stamp.
createFirewallDomainList_creatorRequestId :: Lens.Lens' CreateFirewallDomainList Prelude.Text
createFirewallDomainList_creatorRequestId = Lens.lens (\CreateFirewallDomainList' {creatorRequestId} -> creatorRequestId) (\s@CreateFirewallDomainList' {} a -> s {creatorRequestId = a} :: CreateFirewallDomainList)

-- | A name that lets you identify the domain list to manage and use it.
createFirewallDomainList_name :: Lens.Lens' CreateFirewallDomainList Prelude.Text
createFirewallDomainList_name = Lens.lens (\CreateFirewallDomainList' {name} -> name) (\s@CreateFirewallDomainList' {} a -> s {name = a} :: CreateFirewallDomainList)

instance Core.AWSRequest CreateFirewallDomainList where
  type
    AWSResponse CreateFirewallDomainList =
      CreateFirewallDomainListResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateFirewallDomainListResponse'
            Prelude.<$> (x Core..?> "FirewallDomainList")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateFirewallDomainList

instance Prelude.NFData CreateFirewallDomainList

instance Core.ToHeaders CreateFirewallDomainList where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Route53Resolver.CreateFirewallDomainList" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateFirewallDomainList where
  toJSON CreateFirewallDomainList' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            Prelude.Just
              ("CreatorRequestId" Core..= creatorRequestId),
            Prelude.Just ("Name" Core..= name)
          ]
      )

instance Core.ToPath CreateFirewallDomainList where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateFirewallDomainList where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateFirewallDomainListResponse' smart constructor.
data CreateFirewallDomainListResponse = CreateFirewallDomainListResponse'
  { -- | The domain list that you just created.
    firewallDomainList :: Prelude.Maybe FirewallDomainList,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateFirewallDomainListResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'firewallDomainList', 'createFirewallDomainListResponse_firewallDomainList' - The domain list that you just created.
--
-- 'httpStatus', 'createFirewallDomainListResponse_httpStatus' - The response's http status code.
newCreateFirewallDomainListResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateFirewallDomainListResponse
newCreateFirewallDomainListResponse pHttpStatus_ =
  CreateFirewallDomainListResponse'
    { firewallDomainList =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The domain list that you just created.
createFirewallDomainListResponse_firewallDomainList :: Lens.Lens' CreateFirewallDomainListResponse (Prelude.Maybe FirewallDomainList)
createFirewallDomainListResponse_firewallDomainList = Lens.lens (\CreateFirewallDomainListResponse' {firewallDomainList} -> firewallDomainList) (\s@CreateFirewallDomainListResponse' {} a -> s {firewallDomainList = a} :: CreateFirewallDomainListResponse)

-- | The response's http status code.
createFirewallDomainListResponse_httpStatus :: Lens.Lens' CreateFirewallDomainListResponse Prelude.Int
createFirewallDomainListResponse_httpStatus = Lens.lens (\CreateFirewallDomainListResponse' {httpStatus} -> httpStatus) (\s@CreateFirewallDomainListResponse' {} a -> s {httpStatus = a} :: CreateFirewallDomainListResponse)

instance
  Prelude.NFData
    CreateFirewallDomainListResponse
