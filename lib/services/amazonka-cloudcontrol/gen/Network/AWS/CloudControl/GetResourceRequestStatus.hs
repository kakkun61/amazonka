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
-- Module      : Network.AWS.CloudControl.GetResourceRequestStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the current status of a resource operation request. For more
-- information, see
-- <https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html#resource-operations-manage-requests-track Tracking the progress of resource operation requests>
-- in the /Amazon Web Services Cloud Control API User Guide/.
module Network.AWS.CloudControl.GetResourceRequestStatus
  ( -- * Creating a Request
    GetResourceRequestStatus (..),
    newGetResourceRequestStatus,

    -- * Request Lenses
    getResourceRequestStatus_requestToken,

    -- * Destructuring the Response
    GetResourceRequestStatusResponse (..),
    newGetResourceRequestStatusResponse,

    -- * Response Lenses
    getResourceRequestStatusResponse_progressEvent,
    getResourceRequestStatusResponse_httpStatus,
  )
where

import Network.AWS.CloudControl.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetResourceRequestStatus' smart constructor.
data GetResourceRequestStatus = GetResourceRequestStatus'
  { -- | A unique token used to track the progress of the resource operation
    -- request.
    --
    -- Request tokens are included in the @ProgressEvent@ type returned by a
    -- resource operation request.
    requestToken :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetResourceRequestStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestToken', 'getResourceRequestStatus_requestToken' - A unique token used to track the progress of the resource operation
-- request.
--
-- Request tokens are included in the @ProgressEvent@ type returned by a
-- resource operation request.
newGetResourceRequestStatus ::
  -- | 'requestToken'
  Prelude.Text ->
  GetResourceRequestStatus
newGetResourceRequestStatus pRequestToken_ =
  GetResourceRequestStatus'
    { requestToken =
        pRequestToken_
    }

-- | A unique token used to track the progress of the resource operation
-- request.
--
-- Request tokens are included in the @ProgressEvent@ type returned by a
-- resource operation request.
getResourceRequestStatus_requestToken :: Lens.Lens' GetResourceRequestStatus Prelude.Text
getResourceRequestStatus_requestToken = Lens.lens (\GetResourceRequestStatus' {requestToken} -> requestToken) (\s@GetResourceRequestStatus' {} a -> s {requestToken = a} :: GetResourceRequestStatus)

instance Core.AWSRequest GetResourceRequestStatus where
  type
    AWSResponse GetResourceRequestStatus =
      GetResourceRequestStatusResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetResourceRequestStatusResponse'
            Prelude.<$> (x Core..?> "ProgressEvent")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetResourceRequestStatus

instance Prelude.NFData GetResourceRequestStatus

instance Core.ToHeaders GetResourceRequestStatus where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "CloudApiService.GetResourceRequestStatus" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetResourceRequestStatus where
  toJSON GetResourceRequestStatus' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("RequestToken" Core..= requestToken)]
      )

instance Core.ToPath GetResourceRequestStatus where
  toPath = Prelude.const "/"

instance Core.ToQuery GetResourceRequestStatus where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetResourceRequestStatusResponse' smart constructor.
data GetResourceRequestStatusResponse = GetResourceRequestStatusResponse'
  { -- | Represents the current status of the resource operation request.
    progressEvent :: Prelude.Maybe ProgressEvent,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetResourceRequestStatusResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'progressEvent', 'getResourceRequestStatusResponse_progressEvent' - Represents the current status of the resource operation request.
--
-- 'httpStatus', 'getResourceRequestStatusResponse_httpStatus' - The response's http status code.
newGetResourceRequestStatusResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetResourceRequestStatusResponse
newGetResourceRequestStatusResponse pHttpStatus_ =
  GetResourceRequestStatusResponse'
    { progressEvent =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Represents the current status of the resource operation request.
getResourceRequestStatusResponse_progressEvent :: Lens.Lens' GetResourceRequestStatusResponse (Prelude.Maybe ProgressEvent)
getResourceRequestStatusResponse_progressEvent = Lens.lens (\GetResourceRequestStatusResponse' {progressEvent} -> progressEvent) (\s@GetResourceRequestStatusResponse' {} a -> s {progressEvent = a} :: GetResourceRequestStatusResponse)

-- | The response's http status code.
getResourceRequestStatusResponse_httpStatus :: Lens.Lens' GetResourceRequestStatusResponse Prelude.Int
getResourceRequestStatusResponse_httpStatus = Lens.lens (\GetResourceRequestStatusResponse' {httpStatus} -> httpStatus) (\s@GetResourceRequestStatusResponse' {} a -> s {httpStatus = a} :: GetResourceRequestStatusResponse)

instance
  Prelude.NFData
    GetResourceRequestStatusResponse
