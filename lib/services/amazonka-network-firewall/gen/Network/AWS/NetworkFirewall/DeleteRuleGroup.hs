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
-- Module      : Network.AWS.NetworkFirewall.DeleteRuleGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified RuleGroup.
module Network.AWS.NetworkFirewall.DeleteRuleGroup
  ( -- * Creating a Request
    DeleteRuleGroup (..),
    newDeleteRuleGroup,

    -- * Request Lenses
    deleteRuleGroup_ruleGroupArn,
    deleteRuleGroup_type,
    deleteRuleGroup_ruleGroupName,

    -- * Destructuring the Response
    DeleteRuleGroupResponse (..),
    newDeleteRuleGroupResponse,

    -- * Response Lenses
    deleteRuleGroupResponse_httpStatus,
    deleteRuleGroupResponse_ruleGroupResponse,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.NetworkFirewall.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteRuleGroup' smart constructor.
data DeleteRuleGroup = DeleteRuleGroup'
  { -- | The Amazon Resource Name (ARN) of the rule group.
    --
    -- You must specify the ARN or the name, and you can specify both.
    ruleGroupArn :: Prelude.Maybe Prelude.Text,
    -- | Indicates whether the rule group is stateless or stateful. If the rule
    -- group is stateless, it contains stateless rules. If it is stateful, it
    -- contains stateful rules.
    --
    -- This setting is required for requests that do not include the
    -- @RuleGroupARN@.
    type' :: Prelude.Maybe RuleGroupType,
    -- | The descriptive name of the rule group. You can\'t change the name of a
    -- rule group after you create it.
    --
    -- You must specify the ARN or the name, and you can specify both.
    ruleGroupName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteRuleGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ruleGroupArn', 'deleteRuleGroup_ruleGroupArn' - The Amazon Resource Name (ARN) of the rule group.
--
-- You must specify the ARN or the name, and you can specify both.
--
-- 'type'', 'deleteRuleGroup_type' - Indicates whether the rule group is stateless or stateful. If the rule
-- group is stateless, it contains stateless rules. If it is stateful, it
-- contains stateful rules.
--
-- This setting is required for requests that do not include the
-- @RuleGroupARN@.
--
-- 'ruleGroupName', 'deleteRuleGroup_ruleGroupName' - The descriptive name of the rule group. You can\'t change the name of a
-- rule group after you create it.
--
-- You must specify the ARN or the name, and you can specify both.
newDeleteRuleGroup ::
  DeleteRuleGroup
newDeleteRuleGroup =
  DeleteRuleGroup'
    { ruleGroupArn = Prelude.Nothing,
      type' = Prelude.Nothing,
      ruleGroupName = Prelude.Nothing
    }

-- | The Amazon Resource Name (ARN) of the rule group.
--
-- You must specify the ARN or the name, and you can specify both.
deleteRuleGroup_ruleGroupArn :: Lens.Lens' DeleteRuleGroup (Prelude.Maybe Prelude.Text)
deleteRuleGroup_ruleGroupArn = Lens.lens (\DeleteRuleGroup' {ruleGroupArn} -> ruleGroupArn) (\s@DeleteRuleGroup' {} a -> s {ruleGroupArn = a} :: DeleteRuleGroup)

-- | Indicates whether the rule group is stateless or stateful. If the rule
-- group is stateless, it contains stateless rules. If it is stateful, it
-- contains stateful rules.
--
-- This setting is required for requests that do not include the
-- @RuleGroupARN@.
deleteRuleGroup_type :: Lens.Lens' DeleteRuleGroup (Prelude.Maybe RuleGroupType)
deleteRuleGroup_type = Lens.lens (\DeleteRuleGroup' {type'} -> type') (\s@DeleteRuleGroup' {} a -> s {type' = a} :: DeleteRuleGroup)

-- | The descriptive name of the rule group. You can\'t change the name of a
-- rule group after you create it.
--
-- You must specify the ARN or the name, and you can specify both.
deleteRuleGroup_ruleGroupName :: Lens.Lens' DeleteRuleGroup (Prelude.Maybe Prelude.Text)
deleteRuleGroup_ruleGroupName = Lens.lens (\DeleteRuleGroup' {ruleGroupName} -> ruleGroupName) (\s@DeleteRuleGroup' {} a -> s {ruleGroupName = a} :: DeleteRuleGroup)

instance Core.AWSRequest DeleteRuleGroup where
  type
    AWSResponse DeleteRuleGroup =
      DeleteRuleGroupResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteRuleGroupResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "RuleGroupResponse")
      )

instance Prelude.Hashable DeleteRuleGroup

instance Prelude.NFData DeleteRuleGroup

instance Core.ToHeaders DeleteRuleGroup where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "NetworkFirewall_20201112.DeleteRuleGroup" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteRuleGroup where
  toJSON DeleteRuleGroup' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("RuleGroupArn" Core..=) Prelude.<$> ruleGroupArn,
            ("Type" Core..=) Prelude.<$> type',
            ("RuleGroupName" Core..=) Prelude.<$> ruleGroupName
          ]
      )

instance Core.ToPath DeleteRuleGroup where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteRuleGroup where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteRuleGroupResponse' smart constructor.
data DeleteRuleGroupResponse = DeleteRuleGroupResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The high-level properties of a rule group. This, along with the
    -- RuleGroup, define the rule group. You can retrieve all objects for a
    -- rule group by calling DescribeRuleGroup.
    ruleGroupResponse :: RuleGroupResponse
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteRuleGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteRuleGroupResponse_httpStatus' - The response's http status code.
--
-- 'ruleGroupResponse', 'deleteRuleGroupResponse_ruleGroupResponse' - The high-level properties of a rule group. This, along with the
-- RuleGroup, define the rule group. You can retrieve all objects for a
-- rule group by calling DescribeRuleGroup.
newDeleteRuleGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'ruleGroupResponse'
  RuleGroupResponse ->
  DeleteRuleGroupResponse
newDeleteRuleGroupResponse
  pHttpStatus_
  pRuleGroupResponse_ =
    DeleteRuleGroupResponse'
      { httpStatus = pHttpStatus_,
        ruleGroupResponse = pRuleGroupResponse_
      }

-- | The response's http status code.
deleteRuleGroupResponse_httpStatus :: Lens.Lens' DeleteRuleGroupResponse Prelude.Int
deleteRuleGroupResponse_httpStatus = Lens.lens (\DeleteRuleGroupResponse' {httpStatus} -> httpStatus) (\s@DeleteRuleGroupResponse' {} a -> s {httpStatus = a} :: DeleteRuleGroupResponse)

-- | The high-level properties of a rule group. This, along with the
-- RuleGroup, define the rule group. You can retrieve all objects for a
-- rule group by calling DescribeRuleGroup.
deleteRuleGroupResponse_ruleGroupResponse :: Lens.Lens' DeleteRuleGroupResponse RuleGroupResponse
deleteRuleGroupResponse_ruleGroupResponse = Lens.lens (\DeleteRuleGroupResponse' {ruleGroupResponse} -> ruleGroupResponse) (\s@DeleteRuleGroupResponse' {} a -> s {ruleGroupResponse = a} :: DeleteRuleGroupResponse)

instance Prelude.NFData DeleteRuleGroupResponse
