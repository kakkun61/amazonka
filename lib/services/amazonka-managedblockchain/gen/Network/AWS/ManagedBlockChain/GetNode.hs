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
-- Module      : Network.AWS.ManagedBlockChain.GetNode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns detailed information about a node.
--
-- Applies to Hyperledger Fabric and Ethereum.
module Network.AWS.ManagedBlockChain.GetNode
  ( -- * Creating a Request
    GetNode (..),
    newGetNode,

    -- * Request Lenses
    getNode_memberId,
    getNode_networkId,
    getNode_nodeId,

    -- * Destructuring the Response
    GetNodeResponse (..),
    newGetNodeResponse,

    -- * Response Lenses
    getNodeResponse_node,
    getNodeResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.ManagedBlockChain.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetNode' smart constructor.
data GetNode = GetNode'
  { -- | The unique identifier of the member that owns the node.
    --
    -- Applies only to Hyperledger Fabric and is required for Hyperledger
    -- Fabric.
    memberId :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier of the network that the node is on.
    networkId :: Prelude.Text,
    -- | The unique identifier of the node.
    nodeId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetNode' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'memberId', 'getNode_memberId' - The unique identifier of the member that owns the node.
--
-- Applies only to Hyperledger Fabric and is required for Hyperledger
-- Fabric.
--
-- 'networkId', 'getNode_networkId' - The unique identifier of the network that the node is on.
--
-- 'nodeId', 'getNode_nodeId' - The unique identifier of the node.
newGetNode ::
  -- | 'networkId'
  Prelude.Text ->
  -- | 'nodeId'
  Prelude.Text ->
  GetNode
newGetNode pNetworkId_ pNodeId_ =
  GetNode'
    { memberId = Prelude.Nothing,
      networkId = pNetworkId_,
      nodeId = pNodeId_
    }

-- | The unique identifier of the member that owns the node.
--
-- Applies only to Hyperledger Fabric and is required for Hyperledger
-- Fabric.
getNode_memberId :: Lens.Lens' GetNode (Prelude.Maybe Prelude.Text)
getNode_memberId = Lens.lens (\GetNode' {memberId} -> memberId) (\s@GetNode' {} a -> s {memberId = a} :: GetNode)

-- | The unique identifier of the network that the node is on.
getNode_networkId :: Lens.Lens' GetNode Prelude.Text
getNode_networkId = Lens.lens (\GetNode' {networkId} -> networkId) (\s@GetNode' {} a -> s {networkId = a} :: GetNode)

-- | The unique identifier of the node.
getNode_nodeId :: Lens.Lens' GetNode Prelude.Text
getNode_nodeId = Lens.lens (\GetNode' {nodeId} -> nodeId) (\s@GetNode' {} a -> s {nodeId = a} :: GetNode)

instance Core.AWSRequest GetNode where
  type AWSResponse GetNode = GetNodeResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetNodeResponse'
            Prelude.<$> (x Core..?> "Node")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetNode

instance Prelude.NFData GetNode

instance Core.ToHeaders GetNode where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetNode where
  toPath GetNode' {..} =
    Prelude.mconcat
      [ "/networks/",
        Core.toBS networkId,
        "/nodes/",
        Core.toBS nodeId
      ]

instance Core.ToQuery GetNode where
  toQuery GetNode' {..} =
    Prelude.mconcat ["memberId" Core.=: memberId]

-- | /See:/ 'newGetNodeResponse' smart constructor.
data GetNodeResponse = GetNodeResponse'
  { -- | Properties of the node configuration.
    node :: Prelude.Maybe Node,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetNodeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'node', 'getNodeResponse_node' - Properties of the node configuration.
--
-- 'httpStatus', 'getNodeResponse_httpStatus' - The response's http status code.
newGetNodeResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetNodeResponse
newGetNodeResponse pHttpStatus_ =
  GetNodeResponse'
    { node = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Properties of the node configuration.
getNodeResponse_node :: Lens.Lens' GetNodeResponse (Prelude.Maybe Node)
getNodeResponse_node = Lens.lens (\GetNodeResponse' {node} -> node) (\s@GetNodeResponse' {} a -> s {node = a} :: GetNodeResponse)

-- | The response's http status code.
getNodeResponse_httpStatus :: Lens.Lens' GetNodeResponse Prelude.Int
getNodeResponse_httpStatus = Lens.lens (\GetNodeResponse' {httpStatus} -> httpStatus) (\s@GetNodeResponse' {} a -> s {httpStatus = a} :: GetNodeResponse)

instance Prelude.NFData GetNodeResponse
