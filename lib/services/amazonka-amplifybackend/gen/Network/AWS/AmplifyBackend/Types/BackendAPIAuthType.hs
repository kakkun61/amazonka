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
-- Module      : Network.AWS.AmplifyBackend.Types.BackendAPIAuthType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AmplifyBackend.Types.BackendAPIAuthType where

import Network.AWS.AmplifyBackend.Types.BackendAPIAppSyncAuthSettings
import Network.AWS.AmplifyBackend.Types.Mode
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes the auth types for your configured data models.
--
-- /See:/ 'newBackendAPIAuthType' smart constructor.
data BackendAPIAuthType = BackendAPIAuthType'
  { -- | Describes settings for the authentication mode.
    settings :: Prelude.Maybe BackendAPIAppSyncAuthSettings,
    -- | Describes the authentication mode.
    mode :: Prelude.Maybe Mode
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BackendAPIAuthType' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'settings', 'backendAPIAuthType_settings' - Describes settings for the authentication mode.
--
-- 'mode', 'backendAPIAuthType_mode' - Describes the authentication mode.
newBackendAPIAuthType ::
  BackendAPIAuthType
newBackendAPIAuthType =
  BackendAPIAuthType'
    { settings = Prelude.Nothing,
      mode = Prelude.Nothing
    }

-- | Describes settings for the authentication mode.
backendAPIAuthType_settings :: Lens.Lens' BackendAPIAuthType (Prelude.Maybe BackendAPIAppSyncAuthSettings)
backendAPIAuthType_settings = Lens.lens (\BackendAPIAuthType' {settings} -> settings) (\s@BackendAPIAuthType' {} a -> s {settings = a} :: BackendAPIAuthType)

-- | Describes the authentication mode.
backendAPIAuthType_mode :: Lens.Lens' BackendAPIAuthType (Prelude.Maybe Mode)
backendAPIAuthType_mode = Lens.lens (\BackendAPIAuthType' {mode} -> mode) (\s@BackendAPIAuthType' {} a -> s {mode = a} :: BackendAPIAuthType)

instance Core.FromJSON BackendAPIAuthType where
  parseJSON =
    Core.withObject
      "BackendAPIAuthType"
      ( \x ->
          BackendAPIAuthType'
            Prelude.<$> (x Core..:? "settings")
            Prelude.<*> (x Core..:? "mode")
      )

instance Prelude.Hashable BackendAPIAuthType

instance Prelude.NFData BackendAPIAuthType

instance Core.ToJSON BackendAPIAuthType where
  toJSON BackendAPIAuthType' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("settings" Core..=) Prelude.<$> settings,
            ("mode" Core..=) Prelude.<$> mode
          ]
      )
