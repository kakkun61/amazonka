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
-- Module      : Network.AWS.SecurityHub.Types.AwsRedshiftClusterClusterNode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsRedshiftClusterClusterNode where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A node in an Amazon Redshift cluster.
--
-- /See:/ 'newAwsRedshiftClusterClusterNode' smart constructor.
data AwsRedshiftClusterClusterNode = AwsRedshiftClusterClusterNode'
  { -- | The role of the node. A node might be a leader node or a compute node.
    nodeRole :: Prelude.Maybe Prelude.Text,
    -- | The private IP address of the node.
    privateIpAddress :: Prelude.Maybe Prelude.Text,
    -- | The public IP address of the node.
    publicIpAddress :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsRedshiftClusterClusterNode' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nodeRole', 'awsRedshiftClusterClusterNode_nodeRole' - The role of the node. A node might be a leader node or a compute node.
--
-- 'privateIpAddress', 'awsRedshiftClusterClusterNode_privateIpAddress' - The private IP address of the node.
--
-- 'publicIpAddress', 'awsRedshiftClusterClusterNode_publicIpAddress' - The public IP address of the node.
newAwsRedshiftClusterClusterNode ::
  AwsRedshiftClusterClusterNode
newAwsRedshiftClusterClusterNode =
  AwsRedshiftClusterClusterNode'
    { nodeRole =
        Prelude.Nothing,
      privateIpAddress = Prelude.Nothing,
      publicIpAddress = Prelude.Nothing
    }

-- | The role of the node. A node might be a leader node or a compute node.
awsRedshiftClusterClusterNode_nodeRole :: Lens.Lens' AwsRedshiftClusterClusterNode (Prelude.Maybe Prelude.Text)
awsRedshiftClusterClusterNode_nodeRole = Lens.lens (\AwsRedshiftClusterClusterNode' {nodeRole} -> nodeRole) (\s@AwsRedshiftClusterClusterNode' {} a -> s {nodeRole = a} :: AwsRedshiftClusterClusterNode)

-- | The private IP address of the node.
awsRedshiftClusterClusterNode_privateIpAddress :: Lens.Lens' AwsRedshiftClusterClusterNode (Prelude.Maybe Prelude.Text)
awsRedshiftClusterClusterNode_privateIpAddress = Lens.lens (\AwsRedshiftClusterClusterNode' {privateIpAddress} -> privateIpAddress) (\s@AwsRedshiftClusterClusterNode' {} a -> s {privateIpAddress = a} :: AwsRedshiftClusterClusterNode)

-- | The public IP address of the node.
awsRedshiftClusterClusterNode_publicIpAddress :: Lens.Lens' AwsRedshiftClusterClusterNode (Prelude.Maybe Prelude.Text)
awsRedshiftClusterClusterNode_publicIpAddress = Lens.lens (\AwsRedshiftClusterClusterNode' {publicIpAddress} -> publicIpAddress) (\s@AwsRedshiftClusterClusterNode' {} a -> s {publicIpAddress = a} :: AwsRedshiftClusterClusterNode)

instance Core.FromJSON AwsRedshiftClusterClusterNode where
  parseJSON =
    Core.withObject
      "AwsRedshiftClusterClusterNode"
      ( \x ->
          AwsRedshiftClusterClusterNode'
            Prelude.<$> (x Core..:? "NodeRole")
            Prelude.<*> (x Core..:? "PrivateIpAddress")
            Prelude.<*> (x Core..:? "PublicIpAddress")
      )

instance
  Prelude.Hashable
    AwsRedshiftClusterClusterNode

instance Prelude.NFData AwsRedshiftClusterClusterNode

instance Core.ToJSON AwsRedshiftClusterClusterNode where
  toJSON AwsRedshiftClusterClusterNode' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NodeRole" Core..=) Prelude.<$> nodeRole,
            ("PrivateIpAddress" Core..=)
              Prelude.<$> privateIpAddress,
            ("PublicIpAddress" Core..=)
              Prelude.<$> publicIpAddress
          ]
      )
