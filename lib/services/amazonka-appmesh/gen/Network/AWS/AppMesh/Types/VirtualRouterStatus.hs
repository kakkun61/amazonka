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
-- Module      : Network.AWS.AppMesh.Types.VirtualRouterStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.VirtualRouterStatus where

import Network.AWS.AppMesh.Types.VirtualRouterStatusCode
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents the status of a virtual router.
--
-- /See:/ 'newVirtualRouterStatus' smart constructor.
data VirtualRouterStatus = VirtualRouterStatus'
  { -- | The current status of the virtual router.
    status :: VirtualRouterStatusCode
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VirtualRouterStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'virtualRouterStatus_status' - The current status of the virtual router.
newVirtualRouterStatus ::
  -- | 'status'
  VirtualRouterStatusCode ->
  VirtualRouterStatus
newVirtualRouterStatus pStatus_ =
  VirtualRouterStatus' {status = pStatus_}

-- | The current status of the virtual router.
virtualRouterStatus_status :: Lens.Lens' VirtualRouterStatus VirtualRouterStatusCode
virtualRouterStatus_status = Lens.lens (\VirtualRouterStatus' {status} -> status) (\s@VirtualRouterStatus' {} a -> s {status = a} :: VirtualRouterStatus)

instance Core.FromJSON VirtualRouterStatus where
  parseJSON =
    Core.withObject
      "VirtualRouterStatus"
      ( \x ->
          VirtualRouterStatus'
            Prelude.<$> (x Core..: "status")
      )

instance Prelude.Hashable VirtualRouterStatus

instance Prelude.NFData VirtualRouterStatus
