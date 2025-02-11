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
-- Module      : Network.AWS.AppMesh.Types.MeshStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.MeshStatus where

import Network.AWS.AppMesh.Types.MeshStatusCode
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents the status of a service mesh.
--
-- /See:/ 'newMeshStatus' smart constructor.
data MeshStatus = MeshStatus'
  { -- | The current mesh status.
    status :: Prelude.Maybe MeshStatusCode
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MeshStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'meshStatus_status' - The current mesh status.
newMeshStatus ::
  MeshStatus
newMeshStatus = MeshStatus' {status = Prelude.Nothing}

-- | The current mesh status.
meshStatus_status :: Lens.Lens' MeshStatus (Prelude.Maybe MeshStatusCode)
meshStatus_status = Lens.lens (\MeshStatus' {status} -> status) (\s@MeshStatus' {} a -> s {status = a} :: MeshStatus)

instance Core.FromJSON MeshStatus where
  parseJSON =
    Core.withObject
      "MeshStatus"
      ( \x ->
          MeshStatus' Prelude.<$> (x Core..:? "status")
      )

instance Prelude.Hashable MeshStatus

instance Prelude.NFData MeshStatus
