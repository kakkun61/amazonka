{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Backup.UpdateGlobalSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates whether the Amazon Web Services account is opted in to
-- cross-account backup. Returns an error if the account is not an
-- Organizations management account. Use the @DescribeGlobalSettings@ API
-- to determine the current settings.
module Network.AWS.Backup.UpdateGlobalSettings
  ( -- * Creating a Request
    UpdateGlobalSettings (..),
    newUpdateGlobalSettings,

    -- * Request Lenses
    updateGlobalSettings_globalSettings,

    -- * Destructuring the Response
    UpdateGlobalSettingsResponse (..),
    newUpdateGlobalSettingsResponse,
  )
where

import Network.AWS.Backup.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateGlobalSettings' smart constructor.
data UpdateGlobalSettings = UpdateGlobalSettings'
  { -- | A value for @isCrossAccountBackupEnabled@ and a Region. Example:
    -- @update-global-settings --global-settings isCrossAccountBackupEnabled=false --region us-west-2@.
    globalSettings :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateGlobalSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'globalSettings', 'updateGlobalSettings_globalSettings' - A value for @isCrossAccountBackupEnabled@ and a Region. Example:
-- @update-global-settings --global-settings isCrossAccountBackupEnabled=false --region us-west-2@.
newUpdateGlobalSettings ::
  UpdateGlobalSettings
newUpdateGlobalSettings =
  UpdateGlobalSettings'
    { globalSettings =
        Prelude.Nothing
    }

-- | A value for @isCrossAccountBackupEnabled@ and a Region. Example:
-- @update-global-settings --global-settings isCrossAccountBackupEnabled=false --region us-west-2@.
updateGlobalSettings_globalSettings :: Lens.Lens' UpdateGlobalSettings (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
updateGlobalSettings_globalSettings = Lens.lens (\UpdateGlobalSettings' {globalSettings} -> globalSettings) (\s@UpdateGlobalSettings' {} a -> s {globalSettings = a} :: UpdateGlobalSettings) Prelude.. Lens.mapping Lens.coerced

instance Core.AWSRequest UpdateGlobalSettings where
  type
    AWSResponse UpdateGlobalSettings =
      UpdateGlobalSettingsResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveNull UpdateGlobalSettingsResponse'

instance Prelude.Hashable UpdateGlobalSettings

instance Prelude.NFData UpdateGlobalSettings

instance Core.ToHeaders UpdateGlobalSettings where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateGlobalSettings where
  toJSON UpdateGlobalSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("GlobalSettings" Core..=)
              Prelude.<$> globalSettings
          ]
      )

instance Core.ToPath UpdateGlobalSettings where
  toPath = Prelude.const "/global-settings"

instance Core.ToQuery UpdateGlobalSettings where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateGlobalSettingsResponse' smart constructor.
data UpdateGlobalSettingsResponse = UpdateGlobalSettingsResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateGlobalSettingsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newUpdateGlobalSettingsResponse ::
  UpdateGlobalSettingsResponse
newUpdateGlobalSettingsResponse =
  UpdateGlobalSettingsResponse'

instance Prelude.NFData UpdateGlobalSettingsResponse
