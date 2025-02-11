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
-- Module      : Network.AWS.AppMesh.Types.VirtualNodeServiceProvider
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.VirtualNodeServiceProvider where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents a virtual node service provider.
--
-- /See:/ 'newVirtualNodeServiceProvider' smart constructor.
data VirtualNodeServiceProvider = VirtualNodeServiceProvider'
  { -- | The name of the virtual node that is acting as a service provider.
    virtualNodeName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VirtualNodeServiceProvider' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'virtualNodeName', 'virtualNodeServiceProvider_virtualNodeName' - The name of the virtual node that is acting as a service provider.
newVirtualNodeServiceProvider ::
  -- | 'virtualNodeName'
  Prelude.Text ->
  VirtualNodeServiceProvider
newVirtualNodeServiceProvider pVirtualNodeName_ =
  VirtualNodeServiceProvider'
    { virtualNodeName =
        pVirtualNodeName_
    }

-- | The name of the virtual node that is acting as a service provider.
virtualNodeServiceProvider_virtualNodeName :: Lens.Lens' VirtualNodeServiceProvider Prelude.Text
virtualNodeServiceProvider_virtualNodeName = Lens.lens (\VirtualNodeServiceProvider' {virtualNodeName} -> virtualNodeName) (\s@VirtualNodeServiceProvider' {} a -> s {virtualNodeName = a} :: VirtualNodeServiceProvider)

instance Core.FromJSON VirtualNodeServiceProvider where
  parseJSON =
    Core.withObject
      "VirtualNodeServiceProvider"
      ( \x ->
          VirtualNodeServiceProvider'
            Prelude.<$> (x Core..: "virtualNodeName")
      )

instance Prelude.Hashable VirtualNodeServiceProvider

instance Prelude.NFData VirtualNodeServiceProvider

instance Core.ToJSON VirtualNodeServiceProvider where
  toJSON VirtualNodeServiceProvider' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("virtualNodeName" Core..= virtualNodeName)
          ]
      )
