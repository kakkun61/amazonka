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
-- Module      : Network.AWS.AppMesh.Types.MeshData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.MeshData where

import Network.AWS.AppMesh.Types.MeshSpec
import Network.AWS.AppMesh.Types.MeshStatus
import Network.AWS.AppMesh.Types.ResourceMetadata
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents a service mesh returned by a describe
-- operation.
--
-- /See:/ 'newMeshData' smart constructor.
data MeshData = MeshData'
  { -- | The name of the service mesh.
    meshName :: Prelude.Text,
    -- | The associated metadata for the service mesh.
    metadata :: ResourceMetadata,
    -- | The associated specification for the service mesh.
    spec :: MeshSpec,
    -- | The status of the service mesh.
    status :: MeshStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MeshData' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'meshName', 'meshData_meshName' - The name of the service mesh.
--
-- 'metadata', 'meshData_metadata' - The associated metadata for the service mesh.
--
-- 'spec', 'meshData_spec' - The associated specification for the service mesh.
--
-- 'status', 'meshData_status' - The status of the service mesh.
newMeshData ::
  -- | 'meshName'
  Prelude.Text ->
  -- | 'metadata'
  ResourceMetadata ->
  -- | 'spec'
  MeshSpec ->
  -- | 'status'
  MeshStatus ->
  MeshData
newMeshData pMeshName_ pMetadata_ pSpec_ pStatus_ =
  MeshData'
    { meshName = pMeshName_,
      metadata = pMetadata_,
      spec = pSpec_,
      status = pStatus_
    }

-- | The name of the service mesh.
meshData_meshName :: Lens.Lens' MeshData Prelude.Text
meshData_meshName = Lens.lens (\MeshData' {meshName} -> meshName) (\s@MeshData' {} a -> s {meshName = a} :: MeshData)

-- | The associated metadata for the service mesh.
meshData_metadata :: Lens.Lens' MeshData ResourceMetadata
meshData_metadata = Lens.lens (\MeshData' {metadata} -> metadata) (\s@MeshData' {} a -> s {metadata = a} :: MeshData)

-- | The associated specification for the service mesh.
meshData_spec :: Lens.Lens' MeshData MeshSpec
meshData_spec = Lens.lens (\MeshData' {spec} -> spec) (\s@MeshData' {} a -> s {spec = a} :: MeshData)

-- | The status of the service mesh.
meshData_status :: Lens.Lens' MeshData MeshStatus
meshData_status = Lens.lens (\MeshData' {status} -> status) (\s@MeshData' {} a -> s {status = a} :: MeshData)

instance Core.FromJSON MeshData where
  parseJSON =
    Core.withObject
      "MeshData"
      ( \x ->
          MeshData'
            Prelude.<$> (x Core..: "meshName")
            Prelude.<*> (x Core..: "metadata")
            Prelude.<*> (x Core..: "spec")
            Prelude.<*> (x Core..: "status")
      )

instance Prelude.Hashable MeshData

instance Prelude.NFData MeshData
