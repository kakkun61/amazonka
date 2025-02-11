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
-- Module      : Network.AWS.Route53Resolver.CreateFirewallRuleGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an empty DNS Firewall rule group for filtering DNS network
-- traffic in a VPC. You can add rules to the new rule group by calling
-- CreateFirewallRule.
module Network.AWS.Route53Resolver.CreateFirewallRuleGroup
  ( -- * Creating a Request
    CreateFirewallRuleGroup (..),
    newCreateFirewallRuleGroup,

    -- * Request Lenses
    createFirewallRuleGroup_tags,
    createFirewallRuleGroup_creatorRequestId,
    createFirewallRuleGroup_name,

    -- * Destructuring the Response
    CreateFirewallRuleGroupResponse (..),
    newCreateFirewallRuleGroupResponse,

    -- * Response Lenses
    createFirewallRuleGroupResponse_firewallRuleGroup,
    createFirewallRuleGroupResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Route53Resolver.Types

-- | /See:/ 'newCreateFirewallRuleGroup' smart constructor.
data CreateFirewallRuleGroup = CreateFirewallRuleGroup'
  { -- | A list of the tag keys and values that you want to associate with the
    -- rule group.
    tags :: Prelude.Maybe [Tag],
    -- | A unique string defined by you to identify the request. This allows you
    -- to retry failed requests without the risk of running the operation
    -- twice. This can be any unique string, for example, a timestamp.
    creatorRequestId :: Prelude.Text,
    -- | A name that lets you identify the rule group, to manage and use it.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateFirewallRuleGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createFirewallRuleGroup_tags' - A list of the tag keys and values that you want to associate with the
-- rule group.
--
-- 'creatorRequestId', 'createFirewallRuleGroup_creatorRequestId' - A unique string defined by you to identify the request. This allows you
-- to retry failed requests without the risk of running the operation
-- twice. This can be any unique string, for example, a timestamp.
--
-- 'name', 'createFirewallRuleGroup_name' - A name that lets you identify the rule group, to manage and use it.
newCreateFirewallRuleGroup ::
  -- | 'creatorRequestId'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  CreateFirewallRuleGroup
newCreateFirewallRuleGroup pCreatorRequestId_ pName_ =
  CreateFirewallRuleGroup'
    { tags = Prelude.Nothing,
      creatorRequestId = pCreatorRequestId_,
      name = pName_
    }

-- | A list of the tag keys and values that you want to associate with the
-- rule group.
createFirewallRuleGroup_tags :: Lens.Lens' CreateFirewallRuleGroup (Prelude.Maybe [Tag])
createFirewallRuleGroup_tags = Lens.lens (\CreateFirewallRuleGroup' {tags} -> tags) (\s@CreateFirewallRuleGroup' {} a -> s {tags = a} :: CreateFirewallRuleGroup) Prelude.. Lens.mapping Lens.coerced

-- | A unique string defined by you to identify the request. This allows you
-- to retry failed requests without the risk of running the operation
-- twice. This can be any unique string, for example, a timestamp.
createFirewallRuleGroup_creatorRequestId :: Lens.Lens' CreateFirewallRuleGroup Prelude.Text
createFirewallRuleGroup_creatorRequestId = Lens.lens (\CreateFirewallRuleGroup' {creatorRequestId} -> creatorRequestId) (\s@CreateFirewallRuleGroup' {} a -> s {creatorRequestId = a} :: CreateFirewallRuleGroup)

-- | A name that lets you identify the rule group, to manage and use it.
createFirewallRuleGroup_name :: Lens.Lens' CreateFirewallRuleGroup Prelude.Text
createFirewallRuleGroup_name = Lens.lens (\CreateFirewallRuleGroup' {name} -> name) (\s@CreateFirewallRuleGroup' {} a -> s {name = a} :: CreateFirewallRuleGroup)

instance Core.AWSRequest CreateFirewallRuleGroup where
  type
    AWSResponse CreateFirewallRuleGroup =
      CreateFirewallRuleGroupResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateFirewallRuleGroupResponse'
            Prelude.<$> (x Core..?> "FirewallRuleGroup")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateFirewallRuleGroup

instance Prelude.NFData CreateFirewallRuleGroup

instance Core.ToHeaders CreateFirewallRuleGroup where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Route53Resolver.CreateFirewallRuleGroup" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateFirewallRuleGroup where
  toJSON CreateFirewallRuleGroup' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            Prelude.Just
              ("CreatorRequestId" Core..= creatorRequestId),
            Prelude.Just ("Name" Core..= name)
          ]
      )

instance Core.ToPath CreateFirewallRuleGroup where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateFirewallRuleGroup where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateFirewallRuleGroupResponse' smart constructor.
data CreateFirewallRuleGroupResponse = CreateFirewallRuleGroupResponse'
  { -- | A collection of rules used to filter DNS network traffic.
    firewallRuleGroup :: Prelude.Maybe FirewallRuleGroup,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateFirewallRuleGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'firewallRuleGroup', 'createFirewallRuleGroupResponse_firewallRuleGroup' - A collection of rules used to filter DNS network traffic.
--
-- 'httpStatus', 'createFirewallRuleGroupResponse_httpStatus' - The response's http status code.
newCreateFirewallRuleGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateFirewallRuleGroupResponse
newCreateFirewallRuleGroupResponse pHttpStatus_ =
  CreateFirewallRuleGroupResponse'
    { firewallRuleGroup =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A collection of rules used to filter DNS network traffic.
createFirewallRuleGroupResponse_firewallRuleGroup :: Lens.Lens' CreateFirewallRuleGroupResponse (Prelude.Maybe FirewallRuleGroup)
createFirewallRuleGroupResponse_firewallRuleGroup = Lens.lens (\CreateFirewallRuleGroupResponse' {firewallRuleGroup} -> firewallRuleGroup) (\s@CreateFirewallRuleGroupResponse' {} a -> s {firewallRuleGroup = a} :: CreateFirewallRuleGroupResponse)

-- | The response's http status code.
createFirewallRuleGroupResponse_httpStatus :: Lens.Lens' CreateFirewallRuleGroupResponse Prelude.Int
createFirewallRuleGroupResponse_httpStatus = Lens.lens (\CreateFirewallRuleGroupResponse' {httpStatus} -> httpStatus) (\s@CreateFirewallRuleGroupResponse' {} a -> s {httpStatus = a} :: CreateFirewallRuleGroupResponse)

instance
  Prelude.NFData
    CreateFirewallRuleGroupResponse
