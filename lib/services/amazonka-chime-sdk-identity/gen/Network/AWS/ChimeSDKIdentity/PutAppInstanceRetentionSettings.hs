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
-- Module      : Network.AWS.ChimeSDKIdentity.PutAppInstanceRetentionSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the amount of time in days that a given @AppInstance@ retains data.
module Network.AWS.ChimeSDKIdentity.PutAppInstanceRetentionSettings
  ( -- * Creating a Request
    PutAppInstanceRetentionSettings (..),
    newPutAppInstanceRetentionSettings,

    -- * Request Lenses
    putAppInstanceRetentionSettings_appInstanceArn,
    putAppInstanceRetentionSettings_appInstanceRetentionSettings,

    -- * Destructuring the Response
    PutAppInstanceRetentionSettingsResponse (..),
    newPutAppInstanceRetentionSettingsResponse,

    -- * Response Lenses
    putAppInstanceRetentionSettingsResponse_appInstanceRetentionSettings,
    putAppInstanceRetentionSettingsResponse_initiateDeletionTimestamp,
    putAppInstanceRetentionSettingsResponse_httpStatus,
  )
where

import Network.AWS.ChimeSDKIdentity.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newPutAppInstanceRetentionSettings' smart constructor.
data PutAppInstanceRetentionSettings = PutAppInstanceRetentionSettings'
  { -- | The ARN of the @AppInstance@.
    appInstanceArn :: Prelude.Text,
    -- | The time in days to retain data. Data type: number.
    appInstanceRetentionSettings :: AppInstanceRetentionSettings
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutAppInstanceRetentionSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appInstanceArn', 'putAppInstanceRetentionSettings_appInstanceArn' - The ARN of the @AppInstance@.
--
-- 'appInstanceRetentionSettings', 'putAppInstanceRetentionSettings_appInstanceRetentionSettings' - The time in days to retain data. Data type: number.
newPutAppInstanceRetentionSettings ::
  -- | 'appInstanceArn'
  Prelude.Text ->
  -- | 'appInstanceRetentionSettings'
  AppInstanceRetentionSettings ->
  PutAppInstanceRetentionSettings
newPutAppInstanceRetentionSettings
  pAppInstanceArn_
  pAppInstanceRetentionSettings_ =
    PutAppInstanceRetentionSettings'
      { appInstanceArn =
          pAppInstanceArn_,
        appInstanceRetentionSettings =
          pAppInstanceRetentionSettings_
      }

-- | The ARN of the @AppInstance@.
putAppInstanceRetentionSettings_appInstanceArn :: Lens.Lens' PutAppInstanceRetentionSettings Prelude.Text
putAppInstanceRetentionSettings_appInstanceArn = Lens.lens (\PutAppInstanceRetentionSettings' {appInstanceArn} -> appInstanceArn) (\s@PutAppInstanceRetentionSettings' {} a -> s {appInstanceArn = a} :: PutAppInstanceRetentionSettings)

-- | The time in days to retain data. Data type: number.
putAppInstanceRetentionSettings_appInstanceRetentionSettings :: Lens.Lens' PutAppInstanceRetentionSettings AppInstanceRetentionSettings
putAppInstanceRetentionSettings_appInstanceRetentionSettings = Lens.lens (\PutAppInstanceRetentionSettings' {appInstanceRetentionSettings} -> appInstanceRetentionSettings) (\s@PutAppInstanceRetentionSettings' {} a -> s {appInstanceRetentionSettings = a} :: PutAppInstanceRetentionSettings)

instance
  Core.AWSRequest
    PutAppInstanceRetentionSettings
  where
  type
    AWSResponse PutAppInstanceRetentionSettings =
      PutAppInstanceRetentionSettingsResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          PutAppInstanceRetentionSettingsResponse'
            Prelude.<$> (x Core..?> "AppInstanceRetentionSettings")
            Prelude.<*> (x Core..?> "InitiateDeletionTimestamp")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    PutAppInstanceRetentionSettings

instance
  Prelude.NFData
    PutAppInstanceRetentionSettings

instance
  Core.ToHeaders
    PutAppInstanceRetentionSettings
  where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON PutAppInstanceRetentionSettings where
  toJSON PutAppInstanceRetentionSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "AppInstanceRetentionSettings"
                  Core..= appInstanceRetentionSettings
              )
          ]
      )

instance Core.ToPath PutAppInstanceRetentionSettings where
  toPath PutAppInstanceRetentionSettings' {..} =
    Prelude.mconcat
      [ "/app-instances/",
        Core.toBS appInstanceArn,
        "/retention-settings"
      ]

instance Core.ToQuery PutAppInstanceRetentionSettings where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newPutAppInstanceRetentionSettingsResponse' smart constructor.
data PutAppInstanceRetentionSettingsResponse = PutAppInstanceRetentionSettingsResponse'
  { -- | The time in days to retain data. Data type: number.
    appInstanceRetentionSettings :: Prelude.Maybe AppInstanceRetentionSettings,
    -- | The time at which the API deletes data.
    initiateDeletionTimestamp :: Prelude.Maybe Core.POSIX,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutAppInstanceRetentionSettingsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appInstanceRetentionSettings', 'putAppInstanceRetentionSettingsResponse_appInstanceRetentionSettings' - The time in days to retain data. Data type: number.
--
-- 'initiateDeletionTimestamp', 'putAppInstanceRetentionSettingsResponse_initiateDeletionTimestamp' - The time at which the API deletes data.
--
-- 'httpStatus', 'putAppInstanceRetentionSettingsResponse_httpStatus' - The response's http status code.
newPutAppInstanceRetentionSettingsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  PutAppInstanceRetentionSettingsResponse
newPutAppInstanceRetentionSettingsResponse
  pHttpStatus_ =
    PutAppInstanceRetentionSettingsResponse'
      { appInstanceRetentionSettings =
          Prelude.Nothing,
        initiateDeletionTimestamp =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The time in days to retain data. Data type: number.
putAppInstanceRetentionSettingsResponse_appInstanceRetentionSettings :: Lens.Lens' PutAppInstanceRetentionSettingsResponse (Prelude.Maybe AppInstanceRetentionSettings)
putAppInstanceRetentionSettingsResponse_appInstanceRetentionSettings = Lens.lens (\PutAppInstanceRetentionSettingsResponse' {appInstanceRetentionSettings} -> appInstanceRetentionSettings) (\s@PutAppInstanceRetentionSettingsResponse' {} a -> s {appInstanceRetentionSettings = a} :: PutAppInstanceRetentionSettingsResponse)

-- | The time at which the API deletes data.
putAppInstanceRetentionSettingsResponse_initiateDeletionTimestamp :: Lens.Lens' PutAppInstanceRetentionSettingsResponse (Prelude.Maybe Prelude.UTCTime)
putAppInstanceRetentionSettingsResponse_initiateDeletionTimestamp = Lens.lens (\PutAppInstanceRetentionSettingsResponse' {initiateDeletionTimestamp} -> initiateDeletionTimestamp) (\s@PutAppInstanceRetentionSettingsResponse' {} a -> s {initiateDeletionTimestamp = a} :: PutAppInstanceRetentionSettingsResponse) Prelude.. Lens.mapping Core._Time

-- | The response's http status code.
putAppInstanceRetentionSettingsResponse_httpStatus :: Lens.Lens' PutAppInstanceRetentionSettingsResponse Prelude.Int
putAppInstanceRetentionSettingsResponse_httpStatus = Lens.lens (\PutAppInstanceRetentionSettingsResponse' {httpStatus} -> httpStatus) (\s@PutAppInstanceRetentionSettingsResponse' {} a -> s {httpStatus = a} :: PutAppInstanceRetentionSettingsResponse)

instance
  Prelude.NFData
    PutAppInstanceRetentionSettingsResponse
