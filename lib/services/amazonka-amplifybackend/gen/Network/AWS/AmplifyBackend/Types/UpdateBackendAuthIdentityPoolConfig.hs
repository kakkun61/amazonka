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
-- Module      : Network.AWS.AmplifyBackend.Types.UpdateBackendAuthIdentityPoolConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AmplifyBackend.Types.UpdateBackendAuthIdentityPoolConfig where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes the authorization configuration for the Amazon Cognito
-- identity pool, provisioned as a part of your auth resource in the
-- Amplify project.
--
-- /See:/ 'newUpdateBackendAuthIdentityPoolConfig' smart constructor.
data UpdateBackendAuthIdentityPoolConfig = UpdateBackendAuthIdentityPoolConfig'
  { -- | A boolean value that can be set to allow or disallow guest-level
    -- authorization into your Amplify app.
    unauthenticatedLogin :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateBackendAuthIdentityPoolConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'unauthenticatedLogin', 'updateBackendAuthIdentityPoolConfig_unauthenticatedLogin' - A boolean value that can be set to allow or disallow guest-level
-- authorization into your Amplify app.
newUpdateBackendAuthIdentityPoolConfig ::
  UpdateBackendAuthIdentityPoolConfig
newUpdateBackendAuthIdentityPoolConfig =
  UpdateBackendAuthIdentityPoolConfig'
    { unauthenticatedLogin =
        Prelude.Nothing
    }

-- | A boolean value that can be set to allow or disallow guest-level
-- authorization into your Amplify app.
updateBackendAuthIdentityPoolConfig_unauthenticatedLogin :: Lens.Lens' UpdateBackendAuthIdentityPoolConfig (Prelude.Maybe Prelude.Bool)
updateBackendAuthIdentityPoolConfig_unauthenticatedLogin = Lens.lens (\UpdateBackendAuthIdentityPoolConfig' {unauthenticatedLogin} -> unauthenticatedLogin) (\s@UpdateBackendAuthIdentityPoolConfig' {} a -> s {unauthenticatedLogin = a} :: UpdateBackendAuthIdentityPoolConfig)

instance
  Prelude.Hashable
    UpdateBackendAuthIdentityPoolConfig

instance
  Prelude.NFData
    UpdateBackendAuthIdentityPoolConfig

instance
  Core.ToJSON
    UpdateBackendAuthIdentityPoolConfig
  where
  toJSON UpdateBackendAuthIdentityPoolConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("unauthenticatedLogin" Core..=)
              Prelude.<$> unauthenticatedLogin
          ]
      )
