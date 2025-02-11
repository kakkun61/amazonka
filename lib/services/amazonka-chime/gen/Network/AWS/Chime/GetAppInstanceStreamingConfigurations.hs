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
-- Module      : Network.AWS.Chime.GetAppInstanceStreamingConfigurations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the streaming settings for an @AppInstance@.
module Network.AWS.Chime.GetAppInstanceStreamingConfigurations
  ( -- * Creating a Request
    GetAppInstanceStreamingConfigurations (..),
    newGetAppInstanceStreamingConfigurations,

    -- * Request Lenses
    getAppInstanceStreamingConfigurations_appInstanceArn,

    -- * Destructuring the Response
    GetAppInstanceStreamingConfigurationsResponse (..),
    newGetAppInstanceStreamingConfigurationsResponse,

    -- * Response Lenses
    getAppInstanceStreamingConfigurationsResponse_appInstanceStreamingConfigurations,
    getAppInstanceStreamingConfigurationsResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetAppInstanceStreamingConfigurations' smart constructor.
data GetAppInstanceStreamingConfigurations = GetAppInstanceStreamingConfigurations'
  { -- | The ARN of the @AppInstance@.
    appInstanceArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAppInstanceStreamingConfigurations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appInstanceArn', 'getAppInstanceStreamingConfigurations_appInstanceArn' - The ARN of the @AppInstance@.
newGetAppInstanceStreamingConfigurations ::
  -- | 'appInstanceArn'
  Prelude.Text ->
  GetAppInstanceStreamingConfigurations
newGetAppInstanceStreamingConfigurations
  pAppInstanceArn_ =
    GetAppInstanceStreamingConfigurations'
      { appInstanceArn =
          pAppInstanceArn_
      }

-- | The ARN of the @AppInstance@.
getAppInstanceStreamingConfigurations_appInstanceArn :: Lens.Lens' GetAppInstanceStreamingConfigurations Prelude.Text
getAppInstanceStreamingConfigurations_appInstanceArn = Lens.lens (\GetAppInstanceStreamingConfigurations' {appInstanceArn} -> appInstanceArn) (\s@GetAppInstanceStreamingConfigurations' {} a -> s {appInstanceArn = a} :: GetAppInstanceStreamingConfigurations)

instance
  Core.AWSRequest
    GetAppInstanceStreamingConfigurations
  where
  type
    AWSResponse
      GetAppInstanceStreamingConfigurations =
      GetAppInstanceStreamingConfigurationsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetAppInstanceStreamingConfigurationsResponse'
            Prelude.<$> (x Core..?> "AppInstanceStreamingConfigurations")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    GetAppInstanceStreamingConfigurations

instance
  Prelude.NFData
    GetAppInstanceStreamingConfigurations

instance
  Core.ToHeaders
    GetAppInstanceStreamingConfigurations
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Core.ToPath
    GetAppInstanceStreamingConfigurations
  where
  toPath GetAppInstanceStreamingConfigurations' {..} =
    Prelude.mconcat
      [ "/app-instances/",
        Core.toBS appInstanceArn,
        "/streaming-configurations"
      ]

instance
  Core.ToQuery
    GetAppInstanceStreamingConfigurations
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetAppInstanceStreamingConfigurationsResponse' smart constructor.
data GetAppInstanceStreamingConfigurationsResponse = GetAppInstanceStreamingConfigurationsResponse'
  { -- | The streaming settings.
    appInstanceStreamingConfigurations :: Prelude.Maybe (Prelude.NonEmpty AppInstanceStreamingConfiguration),
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAppInstanceStreamingConfigurationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appInstanceStreamingConfigurations', 'getAppInstanceStreamingConfigurationsResponse_appInstanceStreamingConfigurations' - The streaming settings.
--
-- 'httpStatus', 'getAppInstanceStreamingConfigurationsResponse_httpStatus' - The response's http status code.
newGetAppInstanceStreamingConfigurationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetAppInstanceStreamingConfigurationsResponse
newGetAppInstanceStreamingConfigurationsResponse
  pHttpStatus_ =
    GetAppInstanceStreamingConfigurationsResponse'
      { appInstanceStreamingConfigurations =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The streaming settings.
getAppInstanceStreamingConfigurationsResponse_appInstanceStreamingConfigurations :: Lens.Lens' GetAppInstanceStreamingConfigurationsResponse (Prelude.Maybe (Prelude.NonEmpty AppInstanceStreamingConfiguration))
getAppInstanceStreamingConfigurationsResponse_appInstanceStreamingConfigurations = Lens.lens (\GetAppInstanceStreamingConfigurationsResponse' {appInstanceStreamingConfigurations} -> appInstanceStreamingConfigurations) (\s@GetAppInstanceStreamingConfigurationsResponse' {} a -> s {appInstanceStreamingConfigurations = a} :: GetAppInstanceStreamingConfigurationsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getAppInstanceStreamingConfigurationsResponse_httpStatus :: Lens.Lens' GetAppInstanceStreamingConfigurationsResponse Prelude.Int
getAppInstanceStreamingConfigurationsResponse_httpStatus = Lens.lens (\GetAppInstanceStreamingConfigurationsResponse' {httpStatus} -> httpStatus) (\s@GetAppInstanceStreamingConfigurationsResponse' {} a -> s {httpStatus = a} :: GetAppInstanceStreamingConfigurationsResponse)

instance
  Prelude.NFData
    GetAppInstanceStreamingConfigurationsResponse
