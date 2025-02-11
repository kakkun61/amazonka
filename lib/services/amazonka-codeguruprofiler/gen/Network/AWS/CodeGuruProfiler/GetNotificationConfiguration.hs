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
-- Module      : Network.AWS.CodeGuruProfiler.GetNotificationConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the current configuration for anomaly notifications for a profiling
-- group.
module Network.AWS.CodeGuruProfiler.GetNotificationConfiguration
  ( -- * Creating a Request
    GetNotificationConfiguration (..),
    newGetNotificationConfiguration,

    -- * Request Lenses
    getNotificationConfiguration_profilingGroupName,

    -- * Destructuring the Response
    GetNotificationConfigurationResponse (..),
    newGetNotificationConfigurationResponse,

    -- * Response Lenses
    getNotificationConfigurationResponse_httpStatus,
    getNotificationConfigurationResponse_notificationConfiguration,
  )
where

import Network.AWS.CodeGuruProfiler.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The structure representing the GetNotificationConfigurationRequest.
--
-- /See:/ 'newGetNotificationConfiguration' smart constructor.
data GetNotificationConfiguration = GetNotificationConfiguration'
  { -- | The name of the profiling group we want to get the notification
    -- configuration for.
    profilingGroupName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetNotificationConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'profilingGroupName', 'getNotificationConfiguration_profilingGroupName' - The name of the profiling group we want to get the notification
-- configuration for.
newGetNotificationConfiguration ::
  -- | 'profilingGroupName'
  Prelude.Text ->
  GetNotificationConfiguration
newGetNotificationConfiguration pProfilingGroupName_ =
  GetNotificationConfiguration'
    { profilingGroupName =
        pProfilingGroupName_
    }

-- | The name of the profiling group we want to get the notification
-- configuration for.
getNotificationConfiguration_profilingGroupName :: Lens.Lens' GetNotificationConfiguration Prelude.Text
getNotificationConfiguration_profilingGroupName = Lens.lens (\GetNotificationConfiguration' {profilingGroupName} -> profilingGroupName) (\s@GetNotificationConfiguration' {} a -> s {profilingGroupName = a} :: GetNotificationConfiguration)

instance Core.AWSRequest GetNotificationConfiguration where
  type
    AWSResponse GetNotificationConfiguration =
      GetNotificationConfigurationResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetNotificationConfigurationResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "notificationConfiguration")
      )

instance
  Prelude.Hashable
    GetNotificationConfiguration

instance Prelude.NFData GetNotificationConfiguration

instance Core.ToHeaders GetNotificationConfiguration where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetNotificationConfiguration where
  toPath GetNotificationConfiguration' {..} =
    Prelude.mconcat
      [ "/profilingGroups/",
        Core.toBS profilingGroupName,
        "/notificationConfiguration"
      ]

instance Core.ToQuery GetNotificationConfiguration where
  toQuery = Prelude.const Prelude.mempty

-- | The structure representing the GetNotificationConfigurationResponse.
--
-- /See:/ 'newGetNotificationConfigurationResponse' smart constructor.
data GetNotificationConfigurationResponse = GetNotificationConfigurationResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The current notification configuration for this profiling group.
    notificationConfiguration :: NotificationConfiguration
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetNotificationConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'getNotificationConfigurationResponse_httpStatus' - The response's http status code.
--
-- 'notificationConfiguration', 'getNotificationConfigurationResponse_notificationConfiguration' - The current notification configuration for this profiling group.
newGetNotificationConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'notificationConfiguration'
  NotificationConfiguration ->
  GetNotificationConfigurationResponse
newGetNotificationConfigurationResponse
  pHttpStatus_
  pNotificationConfiguration_ =
    GetNotificationConfigurationResponse'
      { httpStatus =
          pHttpStatus_,
        notificationConfiguration =
          pNotificationConfiguration_
      }

-- | The response's http status code.
getNotificationConfigurationResponse_httpStatus :: Lens.Lens' GetNotificationConfigurationResponse Prelude.Int
getNotificationConfigurationResponse_httpStatus = Lens.lens (\GetNotificationConfigurationResponse' {httpStatus} -> httpStatus) (\s@GetNotificationConfigurationResponse' {} a -> s {httpStatus = a} :: GetNotificationConfigurationResponse)

-- | The current notification configuration for this profiling group.
getNotificationConfigurationResponse_notificationConfiguration :: Lens.Lens' GetNotificationConfigurationResponse NotificationConfiguration
getNotificationConfigurationResponse_notificationConfiguration = Lens.lens (\GetNotificationConfigurationResponse' {notificationConfiguration} -> notificationConfiguration) (\s@GetNotificationConfigurationResponse' {} a -> s {notificationConfiguration = a} :: GetNotificationConfigurationResponse)

instance
  Prelude.NFData
    GetNotificationConfigurationResponse
