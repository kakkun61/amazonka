{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ManagedBlockChain.Types.NodeFabricLogPublishingConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ManagedBlockChain.Types.NodeFabricLogPublishingConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.ManagedBlockChain.Types.LogConfigurations
import qualified Network.AWS.Prelude as Prelude

-- | Configuration properties for logging events associated with a peer node
-- owned by a member in a Managed Blockchain network.
--
-- /See:/ 'newNodeFabricLogPublishingConfiguration' smart constructor.
data NodeFabricLogPublishingConfiguration = NodeFabricLogPublishingConfiguration'
  { -- | Configuration properties for logging events associated with chaincode
    -- execution on a peer node. Chaincode logs contain the results of
    -- instantiating, invoking, and querying the chaincode. A peer can run
    -- multiple instances of chaincode. When enabled, a log stream is created
    -- for all chaincodes, with an individual log stream for each chaincode.
    chaincodeLogs :: Prelude.Maybe LogConfigurations,
    -- | Configuration properties for a peer node log. Peer node logs contain
    -- messages generated when your client submits transaction proposals to
    -- peer nodes, requests to join channels, enrolls an admin peer, and lists
    -- the chaincode instances on a peer node.
    peerLogs :: Prelude.Maybe LogConfigurations
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'NodeFabricLogPublishingConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'chaincodeLogs', 'nodeFabricLogPublishingConfiguration_chaincodeLogs' - Configuration properties for logging events associated with chaincode
-- execution on a peer node. Chaincode logs contain the results of
-- instantiating, invoking, and querying the chaincode. A peer can run
-- multiple instances of chaincode. When enabled, a log stream is created
-- for all chaincodes, with an individual log stream for each chaincode.
--
-- 'peerLogs', 'nodeFabricLogPublishingConfiguration_peerLogs' - Configuration properties for a peer node log. Peer node logs contain
-- messages generated when your client submits transaction proposals to
-- peer nodes, requests to join channels, enrolls an admin peer, and lists
-- the chaincode instances on a peer node.
newNodeFabricLogPublishingConfiguration ::
  NodeFabricLogPublishingConfiguration
newNodeFabricLogPublishingConfiguration =
  NodeFabricLogPublishingConfiguration'
    { chaincodeLogs =
        Prelude.Nothing,
      peerLogs = Prelude.Nothing
    }

-- | Configuration properties for logging events associated with chaincode
-- execution on a peer node. Chaincode logs contain the results of
-- instantiating, invoking, and querying the chaincode. A peer can run
-- multiple instances of chaincode. When enabled, a log stream is created
-- for all chaincodes, with an individual log stream for each chaincode.
nodeFabricLogPublishingConfiguration_chaincodeLogs :: Lens.Lens' NodeFabricLogPublishingConfiguration (Prelude.Maybe LogConfigurations)
nodeFabricLogPublishingConfiguration_chaincodeLogs = Lens.lens (\NodeFabricLogPublishingConfiguration' {chaincodeLogs} -> chaincodeLogs) (\s@NodeFabricLogPublishingConfiguration' {} a -> s {chaincodeLogs = a} :: NodeFabricLogPublishingConfiguration)

-- | Configuration properties for a peer node log. Peer node logs contain
-- messages generated when your client submits transaction proposals to
-- peer nodes, requests to join channels, enrolls an admin peer, and lists
-- the chaincode instances on a peer node.
nodeFabricLogPublishingConfiguration_peerLogs :: Lens.Lens' NodeFabricLogPublishingConfiguration (Prelude.Maybe LogConfigurations)
nodeFabricLogPublishingConfiguration_peerLogs = Lens.lens (\NodeFabricLogPublishingConfiguration' {peerLogs} -> peerLogs) (\s@NodeFabricLogPublishingConfiguration' {} a -> s {peerLogs = a} :: NodeFabricLogPublishingConfiguration)

instance
  Core.FromJSON
    NodeFabricLogPublishingConfiguration
  where
  parseJSON =
    Core.withObject
      "NodeFabricLogPublishingConfiguration"
      ( \x ->
          NodeFabricLogPublishingConfiguration'
            Prelude.<$> (x Core..:? "ChaincodeLogs")
            Prelude.<*> (x Core..:? "PeerLogs")
      )

instance
  Prelude.Hashable
    NodeFabricLogPublishingConfiguration

instance
  Prelude.NFData
    NodeFabricLogPublishingConfiguration

instance
  Core.ToJSON
    NodeFabricLogPublishingConfiguration
  where
  toJSON NodeFabricLogPublishingConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ChaincodeLogs" Core..=) Prelude.<$> chaincodeLogs,
            ("PeerLogs" Core..=) Prelude.<$> peerLogs
          ]
      )
