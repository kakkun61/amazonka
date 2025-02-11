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
-- Module      : Network.AWS.ManagedBlockChain.DeleteNode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a node that your AWS account owns. All data on the node is lost
-- and cannot be recovered.
--
-- Applies to Hyperledger Fabric and Ethereum.
module Network.AWS.ManagedBlockChain.DeleteNode
  ( -- * Creating a Request
    DeleteNode (..),
    newDeleteNode,

    -- * Request Lenses
    deleteNode_memberId,
    deleteNode_networkId,
    deleteNode_nodeId,

    -- * Destructuring the Response
    DeleteNodeResponse (..),
    newDeleteNodeResponse,

    -- * Response Lenses
    deleteNodeResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.ManagedBlockChain.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteNode' smart constructor.
data DeleteNode = DeleteNode'
  { -- | The unique identifier of the member that owns this node.
    --
    -- Applies only to Hyperledger Fabric and is required for Hyperledger
    -- Fabric.
    memberId :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier of the network that the node is on.
    --
    -- Ethereum public networks have the following @NetworkId@s:
    --
    -- -   @n-ethereum-mainnet@
    --
    -- -   @n-ethereum-rinkeby@
    --
    -- -   @n-ethereum-ropsten@
    networkId :: Prelude.Text,
    -- | The unique identifier of the node.
    nodeId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteNode' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'memberId', 'deleteNode_memberId' - The unique identifier of the member that owns this node.
--
-- Applies only to Hyperledger Fabric and is required for Hyperledger
-- Fabric.
--
-- 'networkId', 'deleteNode_networkId' - The unique identifier of the network that the node is on.
--
-- Ethereum public networks have the following @NetworkId@s:
--
-- -   @n-ethereum-mainnet@
--
-- -   @n-ethereum-rinkeby@
--
-- -   @n-ethereum-ropsten@
--
-- 'nodeId', 'deleteNode_nodeId' - The unique identifier of the node.
newDeleteNode ::
  -- | 'networkId'
  Prelude.Text ->
  -- | 'nodeId'
  Prelude.Text ->
  DeleteNode
newDeleteNode pNetworkId_ pNodeId_ =
  DeleteNode'
    { memberId = Prelude.Nothing,
      networkId = pNetworkId_,
      nodeId = pNodeId_
    }

-- | The unique identifier of the member that owns this node.
--
-- Applies only to Hyperledger Fabric and is required for Hyperledger
-- Fabric.
deleteNode_memberId :: Lens.Lens' DeleteNode (Prelude.Maybe Prelude.Text)
deleteNode_memberId = Lens.lens (\DeleteNode' {memberId} -> memberId) (\s@DeleteNode' {} a -> s {memberId = a} :: DeleteNode)

-- | The unique identifier of the network that the node is on.
--
-- Ethereum public networks have the following @NetworkId@s:
--
-- -   @n-ethereum-mainnet@
--
-- -   @n-ethereum-rinkeby@
--
-- -   @n-ethereum-ropsten@
deleteNode_networkId :: Lens.Lens' DeleteNode Prelude.Text
deleteNode_networkId = Lens.lens (\DeleteNode' {networkId} -> networkId) (\s@DeleteNode' {} a -> s {networkId = a} :: DeleteNode)

-- | The unique identifier of the node.
deleteNode_nodeId :: Lens.Lens' DeleteNode Prelude.Text
deleteNode_nodeId = Lens.lens (\DeleteNode' {nodeId} -> nodeId) (\s@DeleteNode' {} a -> s {nodeId = a} :: DeleteNode)

instance Core.AWSRequest DeleteNode where
  type AWSResponse DeleteNode = DeleteNodeResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteNodeResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteNode

instance Prelude.NFData DeleteNode

instance Core.ToHeaders DeleteNode where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteNode where
  toPath DeleteNode' {..} =
    Prelude.mconcat
      [ "/networks/",
        Core.toBS networkId,
        "/nodes/",
        Core.toBS nodeId
      ]

instance Core.ToQuery DeleteNode where
  toQuery DeleteNode' {..} =
    Prelude.mconcat ["memberId" Core.=: memberId]

-- | /See:/ 'newDeleteNodeResponse' smart constructor.
data DeleteNodeResponse = DeleteNodeResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteNodeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteNodeResponse_httpStatus' - The response's http status code.
newDeleteNodeResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteNodeResponse
newDeleteNodeResponse pHttpStatus_ =
  DeleteNodeResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
deleteNodeResponse_httpStatus :: Lens.Lens' DeleteNodeResponse Prelude.Int
deleteNodeResponse_httpStatus = Lens.lens (\DeleteNodeResponse' {httpStatus} -> httpStatus) (\s@DeleteNodeResponse' {} a -> s {httpStatus = a} :: DeleteNodeResponse)

instance Prelude.NFData DeleteNodeResponse
