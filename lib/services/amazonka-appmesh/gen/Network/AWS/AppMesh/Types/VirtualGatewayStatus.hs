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
-- Module      : Network.AWS.AppMesh.Types.VirtualGatewayStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.VirtualGatewayStatus where

import Network.AWS.AppMesh.Types.VirtualGatewayStatusCode
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents the status of the mesh resource.
--
-- /See:/ 'newVirtualGatewayStatus' smart constructor.
data VirtualGatewayStatus = VirtualGatewayStatus'
  { -- | The current status.
    status :: VirtualGatewayStatusCode
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VirtualGatewayStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'virtualGatewayStatus_status' - The current status.
newVirtualGatewayStatus ::
  -- | 'status'
  VirtualGatewayStatusCode ->
  VirtualGatewayStatus
newVirtualGatewayStatus pStatus_ =
  VirtualGatewayStatus' {status = pStatus_}

-- | The current status.
virtualGatewayStatus_status :: Lens.Lens' VirtualGatewayStatus VirtualGatewayStatusCode
virtualGatewayStatus_status = Lens.lens (\VirtualGatewayStatus' {status} -> status) (\s@VirtualGatewayStatus' {} a -> s {status = a} :: VirtualGatewayStatus)

instance Core.FromJSON VirtualGatewayStatus where
  parseJSON =
    Core.withObject
      "VirtualGatewayStatus"
      ( \x ->
          VirtualGatewayStatus'
            Prelude.<$> (x Core..: "status")
      )

instance Prelude.Hashable VirtualGatewayStatus

instance Prelude.NFData VirtualGatewayStatus
