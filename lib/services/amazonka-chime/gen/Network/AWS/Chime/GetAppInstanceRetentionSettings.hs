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
-- Module      : Network.AWS.Chime.GetAppInstanceRetentionSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the retention settings for an @AppInstance@.
module Network.AWS.Chime.GetAppInstanceRetentionSettings
  ( -- * Creating a Request
    GetAppInstanceRetentionSettings (..),
    newGetAppInstanceRetentionSettings,

    -- * Request Lenses
    getAppInstanceRetentionSettings_appInstanceArn,

    -- * Destructuring the Response
    GetAppInstanceRetentionSettingsResponse (..),
    newGetAppInstanceRetentionSettingsResponse,

    -- * Response Lenses
    getAppInstanceRetentionSettingsResponse_appInstanceRetentionSettings,
    getAppInstanceRetentionSettingsResponse_initiateDeletionTimestamp,
    getAppInstanceRetentionSettingsResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetAppInstanceRetentionSettings' smart constructor.
data GetAppInstanceRetentionSettings = GetAppInstanceRetentionSettings'
  { -- | The ARN of the @AppInstance@.
    appInstanceArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAppInstanceRetentionSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appInstanceArn', 'getAppInstanceRetentionSettings_appInstanceArn' - The ARN of the @AppInstance@.
newGetAppInstanceRetentionSettings ::
  -- | 'appInstanceArn'
  Prelude.Text ->
  GetAppInstanceRetentionSettings
newGetAppInstanceRetentionSettings pAppInstanceArn_ =
  GetAppInstanceRetentionSettings'
    { appInstanceArn =
        pAppInstanceArn_
    }

-- | The ARN of the @AppInstance@.
getAppInstanceRetentionSettings_appInstanceArn :: Lens.Lens' GetAppInstanceRetentionSettings Prelude.Text
getAppInstanceRetentionSettings_appInstanceArn = Lens.lens (\GetAppInstanceRetentionSettings' {appInstanceArn} -> appInstanceArn) (\s@GetAppInstanceRetentionSettings' {} a -> s {appInstanceArn = a} :: GetAppInstanceRetentionSettings)

instance
  Core.AWSRequest
    GetAppInstanceRetentionSettings
  where
  type
    AWSResponse GetAppInstanceRetentionSettings =
      GetAppInstanceRetentionSettingsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetAppInstanceRetentionSettingsResponse'
            Prelude.<$> (x Core..?> "AppInstanceRetentionSettings")
            Prelude.<*> (x Core..?> "InitiateDeletionTimestamp")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    GetAppInstanceRetentionSettings

instance
  Prelude.NFData
    GetAppInstanceRetentionSettings

instance
  Core.ToHeaders
    GetAppInstanceRetentionSettings
  where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath GetAppInstanceRetentionSettings where
  toPath GetAppInstanceRetentionSettings' {..} =
    Prelude.mconcat
      [ "/app-instances/",
        Core.toBS appInstanceArn,
        "/retention-settings"
      ]

instance Core.ToQuery GetAppInstanceRetentionSettings where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetAppInstanceRetentionSettingsResponse' smart constructor.
data GetAppInstanceRetentionSettingsResponse = GetAppInstanceRetentionSettingsResponse'
  { -- | The retention settings for the @AppInstance@.
    appInstanceRetentionSettings :: Prelude.Maybe AppInstanceRetentionSettings,
    -- | The timestamp representing the time at which the specified items are
    -- retained, in Epoch Seconds.
    initiateDeletionTimestamp :: Prelude.Maybe Core.POSIX,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAppInstanceRetentionSettingsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appInstanceRetentionSettings', 'getAppInstanceRetentionSettingsResponse_appInstanceRetentionSettings' - The retention settings for the @AppInstance@.
--
-- 'initiateDeletionTimestamp', 'getAppInstanceRetentionSettingsResponse_initiateDeletionTimestamp' - The timestamp representing the time at which the specified items are
-- retained, in Epoch Seconds.
--
-- 'httpStatus', 'getAppInstanceRetentionSettingsResponse_httpStatus' - The response's http status code.
newGetAppInstanceRetentionSettingsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetAppInstanceRetentionSettingsResponse
newGetAppInstanceRetentionSettingsResponse
  pHttpStatus_ =
    GetAppInstanceRetentionSettingsResponse'
      { appInstanceRetentionSettings =
          Prelude.Nothing,
        initiateDeletionTimestamp =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The retention settings for the @AppInstance@.
getAppInstanceRetentionSettingsResponse_appInstanceRetentionSettings :: Lens.Lens' GetAppInstanceRetentionSettingsResponse (Prelude.Maybe AppInstanceRetentionSettings)
getAppInstanceRetentionSettingsResponse_appInstanceRetentionSettings = Lens.lens (\GetAppInstanceRetentionSettingsResponse' {appInstanceRetentionSettings} -> appInstanceRetentionSettings) (\s@GetAppInstanceRetentionSettingsResponse' {} a -> s {appInstanceRetentionSettings = a} :: GetAppInstanceRetentionSettingsResponse)

-- | The timestamp representing the time at which the specified items are
-- retained, in Epoch Seconds.
getAppInstanceRetentionSettingsResponse_initiateDeletionTimestamp :: Lens.Lens' GetAppInstanceRetentionSettingsResponse (Prelude.Maybe Prelude.UTCTime)
getAppInstanceRetentionSettingsResponse_initiateDeletionTimestamp = Lens.lens (\GetAppInstanceRetentionSettingsResponse' {initiateDeletionTimestamp} -> initiateDeletionTimestamp) (\s@GetAppInstanceRetentionSettingsResponse' {} a -> s {initiateDeletionTimestamp = a} :: GetAppInstanceRetentionSettingsResponse) Prelude.. Lens.mapping Core._Time

-- | The response's http status code.
getAppInstanceRetentionSettingsResponse_httpStatus :: Lens.Lens' GetAppInstanceRetentionSettingsResponse Prelude.Int
getAppInstanceRetentionSettingsResponse_httpStatus = Lens.lens (\GetAppInstanceRetentionSettingsResponse' {httpStatus} -> httpStatus) (\s@GetAppInstanceRetentionSettingsResponse' {} a -> s {httpStatus = a} :: GetAppInstanceRetentionSettingsResponse)

instance
  Prelude.NFData
    GetAppInstanceRetentionSettingsResponse
