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
-- Module      : Network.AWS.AppMesh.Types.BackendDefaults
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.BackendDefaults where

import Network.AWS.AppMesh.Types.ClientPolicy
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents the default properties for a backend.
--
-- /See:/ 'newBackendDefaults' smart constructor.
data BackendDefaults = BackendDefaults'
  { -- | A reference to an object that represents a client policy.
    clientPolicy :: Prelude.Maybe ClientPolicy
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BackendDefaults' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientPolicy', 'backendDefaults_clientPolicy' - A reference to an object that represents a client policy.
newBackendDefaults ::
  BackendDefaults
newBackendDefaults =
  BackendDefaults' {clientPolicy = Prelude.Nothing}

-- | A reference to an object that represents a client policy.
backendDefaults_clientPolicy :: Lens.Lens' BackendDefaults (Prelude.Maybe ClientPolicy)
backendDefaults_clientPolicy = Lens.lens (\BackendDefaults' {clientPolicy} -> clientPolicy) (\s@BackendDefaults' {} a -> s {clientPolicy = a} :: BackendDefaults)

instance Core.FromJSON BackendDefaults where
  parseJSON =
    Core.withObject
      "BackendDefaults"
      ( \x ->
          BackendDefaults'
            Prelude.<$> (x Core..:? "clientPolicy")
      )

instance Prelude.Hashable BackendDefaults

instance Prelude.NFData BackendDefaults

instance Core.ToJSON BackendDefaults where
  toJSON BackendDefaults' {..} =
    Core.object
      ( Prelude.catMaybes
          [("clientPolicy" Core..=) Prelude.<$> clientPolicy]
      )
