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
-- Module      : Network.AWS.AppMesh.Types.VirtualGatewayData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.VirtualGatewayData where

import Network.AWS.AppMesh.Types.ResourceMetadata
import Network.AWS.AppMesh.Types.VirtualGatewaySpec
import Network.AWS.AppMesh.Types.VirtualGatewayStatus
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents a virtual gateway returned by a describe
-- operation.
--
-- /See:/ 'newVirtualGatewayData' smart constructor.
data VirtualGatewayData = VirtualGatewayData'
  { -- | The name of the service mesh that the virtual gateway resides in.
    meshName :: Prelude.Text,
    metadata :: ResourceMetadata,
    -- | The specifications of the virtual gateway.
    spec :: VirtualGatewaySpec,
    -- | The current status of the virtual gateway.
    status :: VirtualGatewayStatus,
    -- | The name of the virtual gateway.
    virtualGatewayName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VirtualGatewayData' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'meshName', 'virtualGatewayData_meshName' - The name of the service mesh that the virtual gateway resides in.
--
-- 'metadata', 'virtualGatewayData_metadata' - Undocumented member.
--
-- 'spec', 'virtualGatewayData_spec' - The specifications of the virtual gateway.
--
-- 'status', 'virtualGatewayData_status' - The current status of the virtual gateway.
--
-- 'virtualGatewayName', 'virtualGatewayData_virtualGatewayName' - The name of the virtual gateway.
newVirtualGatewayData ::
  -- | 'meshName'
  Prelude.Text ->
  -- | 'metadata'
  ResourceMetadata ->
  -- | 'spec'
  VirtualGatewaySpec ->
  -- | 'status'
  VirtualGatewayStatus ->
  -- | 'virtualGatewayName'
  Prelude.Text ->
  VirtualGatewayData
newVirtualGatewayData
  pMeshName_
  pMetadata_
  pSpec_
  pStatus_
  pVirtualGatewayName_ =
    VirtualGatewayData'
      { meshName = pMeshName_,
        metadata = pMetadata_,
        spec = pSpec_,
        status = pStatus_,
        virtualGatewayName = pVirtualGatewayName_
      }

-- | The name of the service mesh that the virtual gateway resides in.
virtualGatewayData_meshName :: Lens.Lens' VirtualGatewayData Prelude.Text
virtualGatewayData_meshName = Lens.lens (\VirtualGatewayData' {meshName} -> meshName) (\s@VirtualGatewayData' {} a -> s {meshName = a} :: VirtualGatewayData)

-- | Undocumented member.
virtualGatewayData_metadata :: Lens.Lens' VirtualGatewayData ResourceMetadata
virtualGatewayData_metadata = Lens.lens (\VirtualGatewayData' {metadata} -> metadata) (\s@VirtualGatewayData' {} a -> s {metadata = a} :: VirtualGatewayData)

-- | The specifications of the virtual gateway.
virtualGatewayData_spec :: Lens.Lens' VirtualGatewayData VirtualGatewaySpec
virtualGatewayData_spec = Lens.lens (\VirtualGatewayData' {spec} -> spec) (\s@VirtualGatewayData' {} a -> s {spec = a} :: VirtualGatewayData)

-- | The current status of the virtual gateway.
virtualGatewayData_status :: Lens.Lens' VirtualGatewayData VirtualGatewayStatus
virtualGatewayData_status = Lens.lens (\VirtualGatewayData' {status} -> status) (\s@VirtualGatewayData' {} a -> s {status = a} :: VirtualGatewayData)

-- | The name of the virtual gateway.
virtualGatewayData_virtualGatewayName :: Lens.Lens' VirtualGatewayData Prelude.Text
virtualGatewayData_virtualGatewayName = Lens.lens (\VirtualGatewayData' {virtualGatewayName} -> virtualGatewayName) (\s@VirtualGatewayData' {} a -> s {virtualGatewayName = a} :: VirtualGatewayData)

instance Core.FromJSON VirtualGatewayData where
  parseJSON =
    Core.withObject
      "VirtualGatewayData"
      ( \x ->
          VirtualGatewayData'
            Prelude.<$> (x Core..: "meshName")
            Prelude.<*> (x Core..: "metadata")
            Prelude.<*> (x Core..: "spec")
            Prelude.<*> (x Core..: "status")
            Prelude.<*> (x Core..: "virtualGatewayName")
      )

instance Prelude.Hashable VirtualGatewayData

instance Prelude.NFData VirtualGatewayData
