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
-- Module      : Network.AWS.Chime.UpdatePhoneNumberSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the phone number settings for the administrator\'s AWS account,
-- such as the default outbound calling name. You can update the default
-- outbound calling name once every seven days. Outbound calling names can
-- take up to 72 hours to update.
module Network.AWS.Chime.UpdatePhoneNumberSettings
  ( -- * Creating a Request
    UpdatePhoneNumberSettings (..),
    newUpdatePhoneNumberSettings,

    -- * Request Lenses
    updatePhoneNumberSettings_callingName,

    -- * Destructuring the Response
    UpdatePhoneNumberSettingsResponse (..),
    newUpdatePhoneNumberSettingsResponse,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdatePhoneNumberSettings' smart constructor.
data UpdatePhoneNumberSettings = UpdatePhoneNumberSettings'
  { -- | The default outbound calling name for the account.
    callingName :: Core.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdatePhoneNumberSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'callingName', 'updatePhoneNumberSettings_callingName' - The default outbound calling name for the account.
newUpdatePhoneNumberSettings ::
  -- | 'callingName'
  Prelude.Text ->
  UpdatePhoneNumberSettings
newUpdatePhoneNumberSettings pCallingName_ =
  UpdatePhoneNumberSettings'
    { callingName =
        Core._Sensitive Lens.# pCallingName_
    }

-- | The default outbound calling name for the account.
updatePhoneNumberSettings_callingName :: Lens.Lens' UpdatePhoneNumberSettings Prelude.Text
updatePhoneNumberSettings_callingName = Lens.lens (\UpdatePhoneNumberSettings' {callingName} -> callingName) (\s@UpdatePhoneNumberSettings' {} a -> s {callingName = a} :: UpdatePhoneNumberSettings) Prelude.. Core._Sensitive

instance Core.AWSRequest UpdatePhoneNumberSettings where
  type
    AWSResponse UpdatePhoneNumberSettings =
      UpdatePhoneNumberSettingsResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveNull
      UpdatePhoneNumberSettingsResponse'

instance Prelude.Hashable UpdatePhoneNumberSettings

instance Prelude.NFData UpdatePhoneNumberSettings

instance Core.ToHeaders UpdatePhoneNumberSettings where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON UpdatePhoneNumberSettings where
  toJSON UpdatePhoneNumberSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("CallingName" Core..= callingName)]
      )

instance Core.ToPath UpdatePhoneNumberSettings where
  toPath = Prelude.const "/settings/phone-number"

instance Core.ToQuery UpdatePhoneNumberSettings where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdatePhoneNumberSettingsResponse' smart constructor.
data UpdatePhoneNumberSettingsResponse = UpdatePhoneNumberSettingsResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdatePhoneNumberSettingsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newUpdatePhoneNumberSettingsResponse ::
  UpdatePhoneNumberSettingsResponse
newUpdatePhoneNumberSettingsResponse =
  UpdatePhoneNumberSettingsResponse'

instance
  Prelude.NFData
    UpdatePhoneNumberSettingsResponse
