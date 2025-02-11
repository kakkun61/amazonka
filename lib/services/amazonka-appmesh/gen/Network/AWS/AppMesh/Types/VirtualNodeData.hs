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
-- Module      : Network.AWS.AppMesh.Types.VirtualNodeData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.VirtualNodeData where

import Network.AWS.AppMesh.Types.ResourceMetadata
import Network.AWS.AppMesh.Types.VirtualNodeSpec
import Network.AWS.AppMesh.Types.VirtualNodeStatus
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents a virtual node returned by a describe
-- operation.
--
-- /See:/ 'newVirtualNodeData' smart constructor.
data VirtualNodeData = VirtualNodeData'
  { -- | The name of the service mesh that the virtual node resides in.
    meshName :: Prelude.Text,
    -- | The associated metadata for the virtual node.
    metadata :: ResourceMetadata,
    -- | The specifications of the virtual node.
    spec :: VirtualNodeSpec,
    -- | The current status for the virtual node.
    status :: VirtualNodeStatus,
    -- | The name of the virtual node.
    virtualNodeName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VirtualNodeData' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'meshName', 'virtualNodeData_meshName' - The name of the service mesh that the virtual node resides in.
--
-- 'metadata', 'virtualNodeData_metadata' - The associated metadata for the virtual node.
--
-- 'spec', 'virtualNodeData_spec' - The specifications of the virtual node.
--
-- 'status', 'virtualNodeData_status' - The current status for the virtual node.
--
-- 'virtualNodeName', 'virtualNodeData_virtualNodeName' - The name of the virtual node.
newVirtualNodeData ::
  -- | 'meshName'
  Prelude.Text ->
  -- | 'metadata'
  ResourceMetadata ->
  -- | 'spec'
  VirtualNodeSpec ->
  -- | 'status'
  VirtualNodeStatus ->
  -- | 'virtualNodeName'
  Prelude.Text ->
  VirtualNodeData
newVirtualNodeData
  pMeshName_
  pMetadata_
  pSpec_
  pStatus_
  pVirtualNodeName_ =
    VirtualNodeData'
      { meshName = pMeshName_,
        metadata = pMetadata_,
        spec = pSpec_,
        status = pStatus_,
        virtualNodeName = pVirtualNodeName_
      }

-- | The name of the service mesh that the virtual node resides in.
virtualNodeData_meshName :: Lens.Lens' VirtualNodeData Prelude.Text
virtualNodeData_meshName = Lens.lens (\VirtualNodeData' {meshName} -> meshName) (\s@VirtualNodeData' {} a -> s {meshName = a} :: VirtualNodeData)

-- | The associated metadata for the virtual node.
virtualNodeData_metadata :: Lens.Lens' VirtualNodeData ResourceMetadata
virtualNodeData_metadata = Lens.lens (\VirtualNodeData' {metadata} -> metadata) (\s@VirtualNodeData' {} a -> s {metadata = a} :: VirtualNodeData)

-- | The specifications of the virtual node.
virtualNodeData_spec :: Lens.Lens' VirtualNodeData VirtualNodeSpec
virtualNodeData_spec = Lens.lens (\VirtualNodeData' {spec} -> spec) (\s@VirtualNodeData' {} a -> s {spec = a} :: VirtualNodeData)

-- | The current status for the virtual node.
virtualNodeData_status :: Lens.Lens' VirtualNodeData VirtualNodeStatus
virtualNodeData_status = Lens.lens (\VirtualNodeData' {status} -> status) (\s@VirtualNodeData' {} a -> s {status = a} :: VirtualNodeData)

-- | The name of the virtual node.
virtualNodeData_virtualNodeName :: Lens.Lens' VirtualNodeData Prelude.Text
virtualNodeData_virtualNodeName = Lens.lens (\VirtualNodeData' {virtualNodeName} -> virtualNodeName) (\s@VirtualNodeData' {} a -> s {virtualNodeName = a} :: VirtualNodeData)

instance Core.FromJSON VirtualNodeData where
  parseJSON =
    Core.withObject
      "VirtualNodeData"
      ( \x ->
          VirtualNodeData'
            Prelude.<$> (x Core..: "meshName")
            Prelude.<*> (x Core..: "metadata")
            Prelude.<*> (x Core..: "spec")
            Prelude.<*> (x Core..: "status")
            Prelude.<*> (x Core..: "virtualNodeName")
      )

instance Prelude.Hashable VirtualNodeData

instance Prelude.NFData VirtualNodeData
