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
-- Module      : Network.AWS.AmplifyBackend.Types.CreateBackendAuthMFAConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AmplifyBackend.Types.CreateBackendAuthMFAConfig where

import Network.AWS.AmplifyBackend.Types.MFAMode
import Network.AWS.AmplifyBackend.Types.Settings
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes whether to apply multi-factor authentication policies for your
-- Amazon Cognito user pool configured as a part of your Amplify project.
--
-- /See:/ 'newCreateBackendAuthMFAConfig' smart constructor.
data CreateBackendAuthMFAConfig = CreateBackendAuthMFAConfig'
  { -- | Describes the configuration settings and methods for your Amplify app
    -- users to use MFA.
    settings :: Prelude.Maybe Settings,
    -- | Describes whether MFA should be [ON, OFF, or OPTIONAL] for
    -- authentication in your Amplify project.
    mfaMode :: MFAMode
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateBackendAuthMFAConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'settings', 'createBackendAuthMFAConfig_settings' - Describes the configuration settings and methods for your Amplify app
-- users to use MFA.
--
-- 'mfaMode', 'createBackendAuthMFAConfig_mfaMode' - Describes whether MFA should be [ON, OFF, or OPTIONAL] for
-- authentication in your Amplify project.
newCreateBackendAuthMFAConfig ::
  -- | 'mfaMode'
  MFAMode ->
  CreateBackendAuthMFAConfig
newCreateBackendAuthMFAConfig pMFAMode_ =
  CreateBackendAuthMFAConfig'
    { settings =
        Prelude.Nothing,
      mfaMode = pMFAMode_
    }

-- | Describes the configuration settings and methods for your Amplify app
-- users to use MFA.
createBackendAuthMFAConfig_settings :: Lens.Lens' CreateBackendAuthMFAConfig (Prelude.Maybe Settings)
createBackendAuthMFAConfig_settings = Lens.lens (\CreateBackendAuthMFAConfig' {settings} -> settings) (\s@CreateBackendAuthMFAConfig' {} a -> s {settings = a} :: CreateBackendAuthMFAConfig)

-- | Describes whether MFA should be [ON, OFF, or OPTIONAL] for
-- authentication in your Amplify project.
createBackendAuthMFAConfig_mfaMode :: Lens.Lens' CreateBackendAuthMFAConfig MFAMode
createBackendAuthMFAConfig_mfaMode = Lens.lens (\CreateBackendAuthMFAConfig' {mfaMode} -> mfaMode) (\s@CreateBackendAuthMFAConfig' {} a -> s {mfaMode = a} :: CreateBackendAuthMFAConfig)

instance Core.FromJSON CreateBackendAuthMFAConfig where
  parseJSON =
    Core.withObject
      "CreateBackendAuthMFAConfig"
      ( \x ->
          CreateBackendAuthMFAConfig'
            Prelude.<$> (x Core..:? "settings")
            Prelude.<*> (x Core..: "MFAMode")
      )

instance Prelude.Hashable CreateBackendAuthMFAConfig

instance Prelude.NFData CreateBackendAuthMFAConfig

instance Core.ToJSON CreateBackendAuthMFAConfig where
  toJSON CreateBackendAuthMFAConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("settings" Core..=) Prelude.<$> settings,
            Prelude.Just ("MFAMode" Core..= mfaMode)
          ]
      )
