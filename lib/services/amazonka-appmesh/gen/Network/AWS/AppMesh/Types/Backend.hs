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
-- Module      : Network.AWS.AppMesh.Types.Backend
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.Backend where

import Network.AWS.AppMesh.Types.VirtualServiceBackend
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents the backends that a virtual node is expected
-- to send outbound traffic to.
--
-- /See:/ 'newBackend' smart constructor.
data Backend = Backend'
  { -- | Specifies a virtual service to use as a backend.
    virtualService :: Prelude.Maybe VirtualServiceBackend
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Backend' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'virtualService', 'backend_virtualService' - Specifies a virtual service to use as a backend.
newBackend ::
  Backend
newBackend =
  Backend' {virtualService = Prelude.Nothing}

-- | Specifies a virtual service to use as a backend.
backend_virtualService :: Lens.Lens' Backend (Prelude.Maybe VirtualServiceBackend)
backend_virtualService = Lens.lens (\Backend' {virtualService} -> virtualService) (\s@Backend' {} a -> s {virtualService = a} :: Backend)

instance Core.FromJSON Backend where
  parseJSON =
    Core.withObject
      "Backend"
      ( \x ->
          Backend' Prelude.<$> (x Core..:? "virtualService")
      )

instance Prelude.Hashable Backend

instance Prelude.NFData Backend

instance Core.ToJSON Backend where
  toJSON Backend' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("virtualService" Core..=)
              Prelude.<$> virtualService
          ]
      )
