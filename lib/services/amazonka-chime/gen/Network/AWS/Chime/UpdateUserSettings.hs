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
-- Module      : Network.AWS.Chime.UpdateUserSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the settings for the specified user, such as phone number
-- settings.
module Network.AWS.Chime.UpdateUserSettings
  ( -- * Creating a Request
    UpdateUserSettings (..),
    newUpdateUserSettings,

    -- * Request Lenses
    updateUserSettings_accountId,
    updateUserSettings_userId,
    updateUserSettings_userSettings,

    -- * Destructuring the Response
    UpdateUserSettingsResponse (..),
    newUpdateUserSettingsResponse,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateUserSettings' smart constructor.
data UpdateUserSettings = UpdateUserSettings'
  { -- | The Amazon Chime account ID.
    accountId :: Prelude.Text,
    -- | The user ID.
    userId :: Prelude.Text,
    -- | The user settings to update.
    userSettings :: UserSettings
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateUserSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountId', 'updateUserSettings_accountId' - The Amazon Chime account ID.
--
-- 'userId', 'updateUserSettings_userId' - The user ID.
--
-- 'userSettings', 'updateUserSettings_userSettings' - The user settings to update.
newUpdateUserSettings ::
  -- | 'accountId'
  Prelude.Text ->
  -- | 'userId'
  Prelude.Text ->
  -- | 'userSettings'
  UserSettings ->
  UpdateUserSettings
newUpdateUserSettings
  pAccountId_
  pUserId_
  pUserSettings_ =
    UpdateUserSettings'
      { accountId = pAccountId_,
        userId = pUserId_,
        userSettings = pUserSettings_
      }

-- | The Amazon Chime account ID.
updateUserSettings_accountId :: Lens.Lens' UpdateUserSettings Prelude.Text
updateUserSettings_accountId = Lens.lens (\UpdateUserSettings' {accountId} -> accountId) (\s@UpdateUserSettings' {} a -> s {accountId = a} :: UpdateUserSettings)

-- | The user ID.
updateUserSettings_userId :: Lens.Lens' UpdateUserSettings Prelude.Text
updateUserSettings_userId = Lens.lens (\UpdateUserSettings' {userId} -> userId) (\s@UpdateUserSettings' {} a -> s {userId = a} :: UpdateUserSettings)

-- | The user settings to update.
updateUserSettings_userSettings :: Lens.Lens' UpdateUserSettings UserSettings
updateUserSettings_userSettings = Lens.lens (\UpdateUserSettings' {userSettings} -> userSettings) (\s@UpdateUserSettings' {} a -> s {userSettings = a} :: UpdateUserSettings)

instance Core.AWSRequest UpdateUserSettings where
  type
    AWSResponse UpdateUserSettings =
      UpdateUserSettingsResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveNull UpdateUserSettingsResponse'

instance Prelude.Hashable UpdateUserSettings

instance Prelude.NFData UpdateUserSettings

instance Core.ToHeaders UpdateUserSettings where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON UpdateUserSettings where
  toJSON UpdateUserSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("UserSettings" Core..= userSettings)]
      )

instance Core.ToPath UpdateUserSettings where
  toPath UpdateUserSettings' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS accountId,
        "/users/",
        Core.toBS userId,
        "/settings"
      ]

instance Core.ToQuery UpdateUserSettings where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateUserSettingsResponse' smart constructor.
data UpdateUserSettingsResponse = UpdateUserSettingsResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateUserSettingsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newUpdateUserSettingsResponse ::
  UpdateUserSettingsResponse
newUpdateUserSettingsResponse =
  UpdateUserSettingsResponse'

instance Prelude.NFData UpdateUserSettingsResponse
