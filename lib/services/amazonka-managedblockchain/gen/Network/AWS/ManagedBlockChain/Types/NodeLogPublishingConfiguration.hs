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
-- Module      : Network.AWS.ManagedBlockChain.Types.NodeLogPublishingConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ManagedBlockChain.Types.NodeLogPublishingConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.ManagedBlockChain.Types.NodeFabricLogPublishingConfiguration
import qualified Network.AWS.Prelude as Prelude

-- | Configuration properties for logging events associated with a peer node
-- on a Hyperledger Fabric network on Managed Blockchain.
--
-- /See:/ 'newNodeLogPublishingConfiguration' smart constructor.
data NodeLogPublishingConfiguration = NodeLogPublishingConfiguration'
  { -- | Configuration properties for logging events associated with a node that
    -- is owned by a member of a Managed Blockchain network using the
    -- Hyperledger Fabric framework.
    fabric :: Prelude.Maybe NodeFabricLogPublishingConfiguration
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'NodeLogPublishingConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'fabric', 'nodeLogPublishingConfiguration_fabric' - Configuration properties for logging events associated with a node that
-- is owned by a member of a Managed Blockchain network using the
-- Hyperledger Fabric framework.
newNodeLogPublishingConfiguration ::
  NodeLogPublishingConfiguration
newNodeLogPublishingConfiguration =
  NodeLogPublishingConfiguration'
    { fabric =
        Prelude.Nothing
    }

-- | Configuration properties for logging events associated with a node that
-- is owned by a member of a Managed Blockchain network using the
-- Hyperledger Fabric framework.
nodeLogPublishingConfiguration_fabric :: Lens.Lens' NodeLogPublishingConfiguration (Prelude.Maybe NodeFabricLogPublishingConfiguration)
nodeLogPublishingConfiguration_fabric = Lens.lens (\NodeLogPublishingConfiguration' {fabric} -> fabric) (\s@NodeLogPublishingConfiguration' {} a -> s {fabric = a} :: NodeLogPublishingConfiguration)

instance Core.FromJSON NodeLogPublishingConfiguration where
  parseJSON =
    Core.withObject
      "NodeLogPublishingConfiguration"
      ( \x ->
          NodeLogPublishingConfiguration'
            Prelude.<$> (x Core..:? "Fabric")
      )

instance
  Prelude.Hashable
    NodeLogPublishingConfiguration

instance
  Prelude.NFData
    NodeLogPublishingConfiguration

instance Core.ToJSON NodeLogPublishingConfiguration where
  toJSON NodeLogPublishingConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [("Fabric" Core..=) Prelude.<$> fabric]
      )
