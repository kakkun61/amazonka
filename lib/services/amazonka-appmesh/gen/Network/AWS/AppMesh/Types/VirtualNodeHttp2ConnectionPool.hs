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
-- Module      : Network.AWS.AppMesh.Types.VirtualNodeHttp2ConnectionPool
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.VirtualNodeHttp2ConnectionPool where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents a type of connection pool.
--
-- /See:/ 'newVirtualNodeHttp2ConnectionPool' smart constructor.
data VirtualNodeHttp2ConnectionPool = VirtualNodeHttp2ConnectionPool'
  { -- | Maximum number of inflight requests Envoy can concurrently support
    -- across hosts in upstream cluster.
    maxRequests :: Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VirtualNodeHttp2ConnectionPool' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'maxRequests', 'virtualNodeHttp2ConnectionPool_maxRequests' - Maximum number of inflight requests Envoy can concurrently support
-- across hosts in upstream cluster.
newVirtualNodeHttp2ConnectionPool ::
  -- | 'maxRequests'
  Prelude.Natural ->
  VirtualNodeHttp2ConnectionPool
newVirtualNodeHttp2ConnectionPool pMaxRequests_ =
  VirtualNodeHttp2ConnectionPool'
    { maxRequests =
        pMaxRequests_
    }

-- | Maximum number of inflight requests Envoy can concurrently support
-- across hosts in upstream cluster.
virtualNodeHttp2ConnectionPool_maxRequests :: Lens.Lens' VirtualNodeHttp2ConnectionPool Prelude.Natural
virtualNodeHttp2ConnectionPool_maxRequests = Lens.lens (\VirtualNodeHttp2ConnectionPool' {maxRequests} -> maxRequests) (\s@VirtualNodeHttp2ConnectionPool' {} a -> s {maxRequests = a} :: VirtualNodeHttp2ConnectionPool)

instance Core.FromJSON VirtualNodeHttp2ConnectionPool where
  parseJSON =
    Core.withObject
      "VirtualNodeHttp2ConnectionPool"
      ( \x ->
          VirtualNodeHttp2ConnectionPool'
            Prelude.<$> (x Core..: "maxRequests")
      )

instance
  Prelude.Hashable
    VirtualNodeHttp2ConnectionPool

instance
  Prelude.NFData
    VirtualNodeHttp2ConnectionPool

instance Core.ToJSON VirtualNodeHttp2ConnectionPool where
  toJSON VirtualNodeHttp2ConnectionPool' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("maxRequests" Core..= maxRequests)]
      )
