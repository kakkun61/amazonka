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
-- Module      : Network.AWS.AppMesh.Types.VirtualServiceProvider
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.VirtualServiceProvider where

import Network.AWS.AppMesh.Types.VirtualNodeServiceProvider
import Network.AWS.AppMesh.Types.VirtualRouterServiceProvider
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents the provider for a virtual service.
--
-- /See:/ 'newVirtualServiceProvider' smart constructor.
data VirtualServiceProvider = VirtualServiceProvider'
  { -- | The virtual router associated with a virtual service.
    virtualRouter :: Prelude.Maybe VirtualRouterServiceProvider,
    -- | The virtual node associated with a virtual service.
    virtualNode :: Prelude.Maybe VirtualNodeServiceProvider
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VirtualServiceProvider' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'virtualRouter', 'virtualServiceProvider_virtualRouter' - The virtual router associated with a virtual service.
--
-- 'virtualNode', 'virtualServiceProvider_virtualNode' - The virtual node associated with a virtual service.
newVirtualServiceProvider ::
  VirtualServiceProvider
newVirtualServiceProvider =
  VirtualServiceProvider'
    { virtualRouter =
        Prelude.Nothing,
      virtualNode = Prelude.Nothing
    }

-- | The virtual router associated with a virtual service.
virtualServiceProvider_virtualRouter :: Lens.Lens' VirtualServiceProvider (Prelude.Maybe VirtualRouterServiceProvider)
virtualServiceProvider_virtualRouter = Lens.lens (\VirtualServiceProvider' {virtualRouter} -> virtualRouter) (\s@VirtualServiceProvider' {} a -> s {virtualRouter = a} :: VirtualServiceProvider)

-- | The virtual node associated with a virtual service.
virtualServiceProvider_virtualNode :: Lens.Lens' VirtualServiceProvider (Prelude.Maybe VirtualNodeServiceProvider)
virtualServiceProvider_virtualNode = Lens.lens (\VirtualServiceProvider' {virtualNode} -> virtualNode) (\s@VirtualServiceProvider' {} a -> s {virtualNode = a} :: VirtualServiceProvider)

instance Core.FromJSON VirtualServiceProvider where
  parseJSON =
    Core.withObject
      "VirtualServiceProvider"
      ( \x ->
          VirtualServiceProvider'
            Prelude.<$> (x Core..:? "virtualRouter")
            Prelude.<*> (x Core..:? "virtualNode")
      )

instance Prelude.Hashable VirtualServiceProvider

instance Prelude.NFData VirtualServiceProvider

instance Core.ToJSON VirtualServiceProvider where
  toJSON VirtualServiceProvider' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("virtualRouter" Core..=) Prelude.<$> virtualRouter,
            ("virtualNode" Core..=) Prelude.<$> virtualNode
          ]
      )
