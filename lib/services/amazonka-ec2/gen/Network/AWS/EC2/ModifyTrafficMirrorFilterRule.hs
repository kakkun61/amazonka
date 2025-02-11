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
-- Module      : Network.AWS.EC2.ModifyTrafficMirrorFilterRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the specified Traffic Mirror rule.
--
-- @DestinationCidrBlock@ and @SourceCidrBlock@ must both be an IPv4 range
-- or an IPv6 range.
module Network.AWS.EC2.ModifyTrafficMirrorFilterRule
  ( -- * Creating a Request
    ModifyTrafficMirrorFilterRule (..),
    newModifyTrafficMirrorFilterRule,

    -- * Request Lenses
    modifyTrafficMirrorFilterRule_removeFields,
    modifyTrafficMirrorFilterRule_ruleNumber,
    modifyTrafficMirrorFilterRule_trafficDirection,
    modifyTrafficMirrorFilterRule_ruleAction,
    modifyTrafficMirrorFilterRule_protocol,
    modifyTrafficMirrorFilterRule_destinationPortRange,
    modifyTrafficMirrorFilterRule_sourceCidrBlock,
    modifyTrafficMirrorFilterRule_sourcePortRange,
    modifyTrafficMirrorFilterRule_description,
    modifyTrafficMirrorFilterRule_dryRun,
    modifyTrafficMirrorFilterRule_destinationCidrBlock,
    modifyTrafficMirrorFilterRule_trafficMirrorFilterRuleId,

    -- * Destructuring the Response
    ModifyTrafficMirrorFilterRuleResponse (..),
    newModifyTrafficMirrorFilterRuleResponse,

    -- * Response Lenses
    modifyTrafficMirrorFilterRuleResponse_trafficMirrorFilterRule,
    modifyTrafficMirrorFilterRuleResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newModifyTrafficMirrorFilterRule' smart constructor.
data ModifyTrafficMirrorFilterRule = ModifyTrafficMirrorFilterRule'
  { -- | The properties that you want to remove from the Traffic Mirror filter
    -- rule.
    --
    -- When you remove a property from a Traffic Mirror filter rule, the
    -- property is set to the default.
    removeFields :: Prelude.Maybe [TrafficMirrorFilterRuleField],
    -- | The number of the Traffic Mirror rule. This number must be unique for
    -- each Traffic Mirror rule in a given direction. The rules are processed
    -- in ascending order by rule number.
    ruleNumber :: Prelude.Maybe Prelude.Int,
    -- | The type of traffic to assign to the rule.
    trafficDirection :: Prelude.Maybe TrafficDirection,
    -- | The action to assign to the rule.
    ruleAction :: Prelude.Maybe TrafficMirrorRuleAction,
    -- | The protocol, for example TCP, to assign to the Traffic Mirror rule.
    protocol :: Prelude.Maybe Prelude.Int,
    -- | The destination ports that are associated with the Traffic Mirror rule.
    destinationPortRange :: Prelude.Maybe TrafficMirrorPortRangeRequest,
    -- | The source CIDR block to assign to the Traffic Mirror rule.
    sourceCidrBlock :: Prelude.Maybe Prelude.Text,
    -- | The port range to assign to the Traffic Mirror rule.
    sourcePortRange :: Prelude.Maybe TrafficMirrorPortRangeRequest,
    -- | The description to assign to the Traffic Mirror rule.
    description :: Prelude.Maybe Prelude.Text,
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The destination CIDR block to assign to the Traffic Mirror rule.
    destinationCidrBlock :: Prelude.Maybe Prelude.Text,
    -- | The ID of the Traffic Mirror rule.
    trafficMirrorFilterRuleId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModifyTrafficMirrorFilterRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'removeFields', 'modifyTrafficMirrorFilterRule_removeFields' - The properties that you want to remove from the Traffic Mirror filter
-- rule.
--
-- When you remove a property from a Traffic Mirror filter rule, the
-- property is set to the default.
--
-- 'ruleNumber', 'modifyTrafficMirrorFilterRule_ruleNumber' - The number of the Traffic Mirror rule. This number must be unique for
-- each Traffic Mirror rule in a given direction. The rules are processed
-- in ascending order by rule number.
--
-- 'trafficDirection', 'modifyTrafficMirrorFilterRule_trafficDirection' - The type of traffic to assign to the rule.
--
-- 'ruleAction', 'modifyTrafficMirrorFilterRule_ruleAction' - The action to assign to the rule.
--
-- 'protocol', 'modifyTrafficMirrorFilterRule_protocol' - The protocol, for example TCP, to assign to the Traffic Mirror rule.
--
-- 'destinationPortRange', 'modifyTrafficMirrorFilterRule_destinationPortRange' - The destination ports that are associated with the Traffic Mirror rule.
--
-- 'sourceCidrBlock', 'modifyTrafficMirrorFilterRule_sourceCidrBlock' - The source CIDR block to assign to the Traffic Mirror rule.
--
-- 'sourcePortRange', 'modifyTrafficMirrorFilterRule_sourcePortRange' - The port range to assign to the Traffic Mirror rule.
--
-- 'description', 'modifyTrafficMirrorFilterRule_description' - The description to assign to the Traffic Mirror rule.
--
-- 'dryRun', 'modifyTrafficMirrorFilterRule_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'destinationCidrBlock', 'modifyTrafficMirrorFilterRule_destinationCidrBlock' - The destination CIDR block to assign to the Traffic Mirror rule.
--
-- 'trafficMirrorFilterRuleId', 'modifyTrafficMirrorFilterRule_trafficMirrorFilterRuleId' - The ID of the Traffic Mirror rule.
newModifyTrafficMirrorFilterRule ::
  -- | 'trafficMirrorFilterRuleId'
  Prelude.Text ->
  ModifyTrafficMirrorFilterRule
newModifyTrafficMirrorFilterRule
  pTrafficMirrorFilterRuleId_ =
    ModifyTrafficMirrorFilterRule'
      { removeFields =
          Prelude.Nothing,
        ruleNumber = Prelude.Nothing,
        trafficDirection = Prelude.Nothing,
        ruleAction = Prelude.Nothing,
        protocol = Prelude.Nothing,
        destinationPortRange = Prelude.Nothing,
        sourceCidrBlock = Prelude.Nothing,
        sourcePortRange = Prelude.Nothing,
        description = Prelude.Nothing,
        dryRun = Prelude.Nothing,
        destinationCidrBlock = Prelude.Nothing,
        trafficMirrorFilterRuleId =
          pTrafficMirrorFilterRuleId_
      }

-- | The properties that you want to remove from the Traffic Mirror filter
-- rule.
--
-- When you remove a property from a Traffic Mirror filter rule, the
-- property is set to the default.
modifyTrafficMirrorFilterRule_removeFields :: Lens.Lens' ModifyTrafficMirrorFilterRule (Prelude.Maybe [TrafficMirrorFilterRuleField])
modifyTrafficMirrorFilterRule_removeFields = Lens.lens (\ModifyTrafficMirrorFilterRule' {removeFields} -> removeFields) (\s@ModifyTrafficMirrorFilterRule' {} a -> s {removeFields = a} :: ModifyTrafficMirrorFilterRule) Prelude.. Lens.mapping Lens.coerced

-- | The number of the Traffic Mirror rule. This number must be unique for
-- each Traffic Mirror rule in a given direction. The rules are processed
-- in ascending order by rule number.
modifyTrafficMirrorFilterRule_ruleNumber :: Lens.Lens' ModifyTrafficMirrorFilterRule (Prelude.Maybe Prelude.Int)
modifyTrafficMirrorFilterRule_ruleNumber = Lens.lens (\ModifyTrafficMirrorFilterRule' {ruleNumber} -> ruleNumber) (\s@ModifyTrafficMirrorFilterRule' {} a -> s {ruleNumber = a} :: ModifyTrafficMirrorFilterRule)

-- | The type of traffic to assign to the rule.
modifyTrafficMirrorFilterRule_trafficDirection :: Lens.Lens' ModifyTrafficMirrorFilterRule (Prelude.Maybe TrafficDirection)
modifyTrafficMirrorFilterRule_trafficDirection = Lens.lens (\ModifyTrafficMirrorFilterRule' {trafficDirection} -> trafficDirection) (\s@ModifyTrafficMirrorFilterRule' {} a -> s {trafficDirection = a} :: ModifyTrafficMirrorFilterRule)

-- | The action to assign to the rule.
modifyTrafficMirrorFilterRule_ruleAction :: Lens.Lens' ModifyTrafficMirrorFilterRule (Prelude.Maybe TrafficMirrorRuleAction)
modifyTrafficMirrorFilterRule_ruleAction = Lens.lens (\ModifyTrafficMirrorFilterRule' {ruleAction} -> ruleAction) (\s@ModifyTrafficMirrorFilterRule' {} a -> s {ruleAction = a} :: ModifyTrafficMirrorFilterRule)

-- | The protocol, for example TCP, to assign to the Traffic Mirror rule.
modifyTrafficMirrorFilterRule_protocol :: Lens.Lens' ModifyTrafficMirrorFilterRule (Prelude.Maybe Prelude.Int)
modifyTrafficMirrorFilterRule_protocol = Lens.lens (\ModifyTrafficMirrorFilterRule' {protocol} -> protocol) (\s@ModifyTrafficMirrorFilterRule' {} a -> s {protocol = a} :: ModifyTrafficMirrorFilterRule)

-- | The destination ports that are associated with the Traffic Mirror rule.
modifyTrafficMirrorFilterRule_destinationPortRange :: Lens.Lens' ModifyTrafficMirrorFilterRule (Prelude.Maybe TrafficMirrorPortRangeRequest)
modifyTrafficMirrorFilterRule_destinationPortRange = Lens.lens (\ModifyTrafficMirrorFilterRule' {destinationPortRange} -> destinationPortRange) (\s@ModifyTrafficMirrorFilterRule' {} a -> s {destinationPortRange = a} :: ModifyTrafficMirrorFilterRule)

-- | The source CIDR block to assign to the Traffic Mirror rule.
modifyTrafficMirrorFilterRule_sourceCidrBlock :: Lens.Lens' ModifyTrafficMirrorFilterRule (Prelude.Maybe Prelude.Text)
modifyTrafficMirrorFilterRule_sourceCidrBlock = Lens.lens (\ModifyTrafficMirrorFilterRule' {sourceCidrBlock} -> sourceCidrBlock) (\s@ModifyTrafficMirrorFilterRule' {} a -> s {sourceCidrBlock = a} :: ModifyTrafficMirrorFilterRule)

-- | The port range to assign to the Traffic Mirror rule.
modifyTrafficMirrorFilterRule_sourcePortRange :: Lens.Lens' ModifyTrafficMirrorFilterRule (Prelude.Maybe TrafficMirrorPortRangeRequest)
modifyTrafficMirrorFilterRule_sourcePortRange = Lens.lens (\ModifyTrafficMirrorFilterRule' {sourcePortRange} -> sourcePortRange) (\s@ModifyTrafficMirrorFilterRule' {} a -> s {sourcePortRange = a} :: ModifyTrafficMirrorFilterRule)

-- | The description to assign to the Traffic Mirror rule.
modifyTrafficMirrorFilterRule_description :: Lens.Lens' ModifyTrafficMirrorFilterRule (Prelude.Maybe Prelude.Text)
modifyTrafficMirrorFilterRule_description = Lens.lens (\ModifyTrafficMirrorFilterRule' {description} -> description) (\s@ModifyTrafficMirrorFilterRule' {} a -> s {description = a} :: ModifyTrafficMirrorFilterRule)

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
modifyTrafficMirrorFilterRule_dryRun :: Lens.Lens' ModifyTrafficMirrorFilterRule (Prelude.Maybe Prelude.Bool)
modifyTrafficMirrorFilterRule_dryRun = Lens.lens (\ModifyTrafficMirrorFilterRule' {dryRun} -> dryRun) (\s@ModifyTrafficMirrorFilterRule' {} a -> s {dryRun = a} :: ModifyTrafficMirrorFilterRule)

-- | The destination CIDR block to assign to the Traffic Mirror rule.
modifyTrafficMirrorFilterRule_destinationCidrBlock :: Lens.Lens' ModifyTrafficMirrorFilterRule (Prelude.Maybe Prelude.Text)
modifyTrafficMirrorFilterRule_destinationCidrBlock = Lens.lens (\ModifyTrafficMirrorFilterRule' {destinationCidrBlock} -> destinationCidrBlock) (\s@ModifyTrafficMirrorFilterRule' {} a -> s {destinationCidrBlock = a} :: ModifyTrafficMirrorFilterRule)

-- | The ID of the Traffic Mirror rule.
modifyTrafficMirrorFilterRule_trafficMirrorFilterRuleId :: Lens.Lens' ModifyTrafficMirrorFilterRule Prelude.Text
modifyTrafficMirrorFilterRule_trafficMirrorFilterRuleId = Lens.lens (\ModifyTrafficMirrorFilterRule' {trafficMirrorFilterRuleId} -> trafficMirrorFilterRuleId) (\s@ModifyTrafficMirrorFilterRule' {} a -> s {trafficMirrorFilterRuleId = a} :: ModifyTrafficMirrorFilterRule)

instance
  Core.AWSRequest
    ModifyTrafficMirrorFilterRule
  where
  type
    AWSResponse ModifyTrafficMirrorFilterRule =
      ModifyTrafficMirrorFilterRuleResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          ModifyTrafficMirrorFilterRuleResponse'
            Prelude.<$> (x Core..@? "trafficMirrorFilterRule")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    ModifyTrafficMirrorFilterRule

instance Prelude.NFData ModifyTrafficMirrorFilterRule

instance Core.ToHeaders ModifyTrafficMirrorFilterRule where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ModifyTrafficMirrorFilterRule where
  toPath = Prelude.const "/"

instance Core.ToQuery ModifyTrafficMirrorFilterRule where
  toQuery ModifyTrafficMirrorFilterRule' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ( "ModifyTrafficMirrorFilterRule" ::
                      Prelude.ByteString
                  ),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        Core.toQuery
          ( Core.toQueryList "RemoveField"
              Prelude.<$> removeFields
          ),
        "RuleNumber" Core.=: ruleNumber,
        "TrafficDirection" Core.=: trafficDirection,
        "RuleAction" Core.=: ruleAction,
        "Protocol" Core.=: protocol,
        "DestinationPortRange" Core.=: destinationPortRange,
        "SourceCidrBlock" Core.=: sourceCidrBlock,
        "SourcePortRange" Core.=: sourcePortRange,
        "Description" Core.=: description,
        "DryRun" Core.=: dryRun,
        "DestinationCidrBlock" Core.=: destinationCidrBlock,
        "TrafficMirrorFilterRuleId"
          Core.=: trafficMirrorFilterRuleId
      ]

-- | /See:/ 'newModifyTrafficMirrorFilterRuleResponse' smart constructor.
data ModifyTrafficMirrorFilterRuleResponse = ModifyTrafficMirrorFilterRuleResponse'
  { -- | Modifies a Traffic Mirror rule.
    trafficMirrorFilterRule :: Prelude.Maybe TrafficMirrorFilterRule,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModifyTrafficMirrorFilterRuleResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'trafficMirrorFilterRule', 'modifyTrafficMirrorFilterRuleResponse_trafficMirrorFilterRule' - Modifies a Traffic Mirror rule.
--
-- 'httpStatus', 'modifyTrafficMirrorFilterRuleResponse_httpStatus' - The response's http status code.
newModifyTrafficMirrorFilterRuleResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ModifyTrafficMirrorFilterRuleResponse
newModifyTrafficMirrorFilterRuleResponse pHttpStatus_ =
  ModifyTrafficMirrorFilterRuleResponse'
    { trafficMirrorFilterRule =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Modifies a Traffic Mirror rule.
modifyTrafficMirrorFilterRuleResponse_trafficMirrorFilterRule :: Lens.Lens' ModifyTrafficMirrorFilterRuleResponse (Prelude.Maybe TrafficMirrorFilterRule)
modifyTrafficMirrorFilterRuleResponse_trafficMirrorFilterRule = Lens.lens (\ModifyTrafficMirrorFilterRuleResponse' {trafficMirrorFilterRule} -> trafficMirrorFilterRule) (\s@ModifyTrafficMirrorFilterRuleResponse' {} a -> s {trafficMirrorFilterRule = a} :: ModifyTrafficMirrorFilterRuleResponse)

-- | The response's http status code.
modifyTrafficMirrorFilterRuleResponse_httpStatus :: Lens.Lens' ModifyTrafficMirrorFilterRuleResponse Prelude.Int
modifyTrafficMirrorFilterRuleResponse_httpStatus = Lens.lens (\ModifyTrafficMirrorFilterRuleResponse' {httpStatus} -> httpStatus) (\s@ModifyTrafficMirrorFilterRuleResponse' {} a -> s {httpStatus = a} :: ModifyTrafficMirrorFilterRuleResponse)

instance
  Prelude.NFData
    ModifyTrafficMirrorFilterRuleResponse
