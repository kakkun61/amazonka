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
-- Module      : Network.AWS.AppMesh.Types.VirtualRouterData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.VirtualRouterData where

import Network.AWS.AppMesh.Types.ResourceMetadata
import Network.AWS.AppMesh.Types.VirtualRouterSpec
import Network.AWS.AppMesh.Types.VirtualRouterStatus
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents a virtual router returned by a describe
-- operation.
--
-- /See:/ 'newVirtualRouterData' smart constructor.
data VirtualRouterData = VirtualRouterData'
  { -- | The name of the service mesh that the virtual router resides in.
    meshName :: Prelude.Text,
    -- | The associated metadata for the virtual router.
    metadata :: ResourceMetadata,
    -- | The specifications of the virtual router.
    spec :: VirtualRouterSpec,
    -- | The current status of the virtual router.
    status :: VirtualRouterStatus,
    -- | The name of the virtual router.
    virtualRouterName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VirtualRouterData' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'meshName', 'virtualRouterData_meshName' - The name of the service mesh that the virtual router resides in.
--
-- 'metadata', 'virtualRouterData_metadata' - The associated metadata for the virtual router.
--
-- 'spec', 'virtualRouterData_spec' - The specifications of the virtual router.
--
-- 'status', 'virtualRouterData_status' - The current status of the virtual router.
--
-- 'virtualRouterName', 'virtualRouterData_virtualRouterName' - The name of the virtual router.
newVirtualRouterData ::
  -- | 'meshName'
  Prelude.Text ->
  -- | 'metadata'
  ResourceMetadata ->
  -- | 'spec'
  VirtualRouterSpec ->
  -- | 'status'
  VirtualRouterStatus ->
  -- | 'virtualRouterName'
  Prelude.Text ->
  VirtualRouterData
newVirtualRouterData
  pMeshName_
  pMetadata_
  pSpec_
  pStatus_
  pVirtualRouterName_ =
    VirtualRouterData'
      { meshName = pMeshName_,
        metadata = pMetadata_,
        spec = pSpec_,
        status = pStatus_,
        virtualRouterName = pVirtualRouterName_
      }

-- | The name of the service mesh that the virtual router resides in.
virtualRouterData_meshName :: Lens.Lens' VirtualRouterData Prelude.Text
virtualRouterData_meshName = Lens.lens (\VirtualRouterData' {meshName} -> meshName) (\s@VirtualRouterData' {} a -> s {meshName = a} :: VirtualRouterData)

-- | The associated metadata for the virtual router.
virtualRouterData_metadata :: Lens.Lens' VirtualRouterData ResourceMetadata
virtualRouterData_metadata = Lens.lens (\VirtualRouterData' {metadata} -> metadata) (\s@VirtualRouterData' {} a -> s {metadata = a} :: VirtualRouterData)

-- | The specifications of the virtual router.
virtualRouterData_spec :: Lens.Lens' VirtualRouterData VirtualRouterSpec
virtualRouterData_spec = Lens.lens (\VirtualRouterData' {spec} -> spec) (\s@VirtualRouterData' {} a -> s {spec = a} :: VirtualRouterData)

-- | The current status of the virtual router.
virtualRouterData_status :: Lens.Lens' VirtualRouterData VirtualRouterStatus
virtualRouterData_status = Lens.lens (\VirtualRouterData' {status} -> status) (\s@VirtualRouterData' {} a -> s {status = a} :: VirtualRouterData)

-- | The name of the virtual router.
virtualRouterData_virtualRouterName :: Lens.Lens' VirtualRouterData Prelude.Text
virtualRouterData_virtualRouterName = Lens.lens (\VirtualRouterData' {virtualRouterName} -> virtualRouterName) (\s@VirtualRouterData' {} a -> s {virtualRouterName = a} :: VirtualRouterData)

instance Core.FromJSON VirtualRouterData where
  parseJSON =
    Core.withObject
      "VirtualRouterData"
      ( \x ->
          VirtualRouterData'
            Prelude.<$> (x Core..: "meshName")
            Prelude.<*> (x Core..: "metadata")
            Prelude.<*> (x Core..: "spec")
            Prelude.<*> (x Core..: "status")
            Prelude.<*> (x Core..: "virtualRouterName")
      )

instance Prelude.Hashable VirtualRouterData

instance Prelude.NFData VirtualRouterData
