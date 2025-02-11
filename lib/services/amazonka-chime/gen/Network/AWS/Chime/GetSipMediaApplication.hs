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
-- Module      : Network.AWS.Chime.GetSipMediaApplication
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the information for a SIP media application, including name,
-- AWS Region, and endpoints.
module Network.AWS.Chime.GetSipMediaApplication
  ( -- * Creating a Request
    GetSipMediaApplication (..),
    newGetSipMediaApplication,

    -- * Request Lenses
    getSipMediaApplication_sipMediaApplicationId,

    -- * Destructuring the Response
    GetSipMediaApplicationResponse (..),
    newGetSipMediaApplicationResponse,

    -- * Response Lenses
    getSipMediaApplicationResponse_sipMediaApplication,
    getSipMediaApplicationResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetSipMediaApplication' smart constructor.
data GetSipMediaApplication = GetSipMediaApplication'
  { -- | The SIP media application ID.
    sipMediaApplicationId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetSipMediaApplication' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sipMediaApplicationId', 'getSipMediaApplication_sipMediaApplicationId' - The SIP media application ID.
newGetSipMediaApplication ::
  -- | 'sipMediaApplicationId'
  Prelude.Text ->
  GetSipMediaApplication
newGetSipMediaApplication pSipMediaApplicationId_ =
  GetSipMediaApplication'
    { sipMediaApplicationId =
        pSipMediaApplicationId_
    }

-- | The SIP media application ID.
getSipMediaApplication_sipMediaApplicationId :: Lens.Lens' GetSipMediaApplication Prelude.Text
getSipMediaApplication_sipMediaApplicationId = Lens.lens (\GetSipMediaApplication' {sipMediaApplicationId} -> sipMediaApplicationId) (\s@GetSipMediaApplication' {} a -> s {sipMediaApplicationId = a} :: GetSipMediaApplication)

instance Core.AWSRequest GetSipMediaApplication where
  type
    AWSResponse GetSipMediaApplication =
      GetSipMediaApplicationResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetSipMediaApplicationResponse'
            Prelude.<$> (x Core..?> "SipMediaApplication")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetSipMediaApplication

instance Prelude.NFData GetSipMediaApplication

instance Core.ToHeaders GetSipMediaApplication where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath GetSipMediaApplication where
  toPath GetSipMediaApplication' {..} =
    Prelude.mconcat
      [ "/sip-media-applications/",
        Core.toBS sipMediaApplicationId
      ]

instance Core.ToQuery GetSipMediaApplication where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetSipMediaApplicationResponse' smart constructor.
data GetSipMediaApplicationResponse = GetSipMediaApplicationResponse'
  { -- | The SIP media application details.
    sipMediaApplication :: Prelude.Maybe SipMediaApplication,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetSipMediaApplicationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sipMediaApplication', 'getSipMediaApplicationResponse_sipMediaApplication' - The SIP media application details.
--
-- 'httpStatus', 'getSipMediaApplicationResponse_httpStatus' - The response's http status code.
newGetSipMediaApplicationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetSipMediaApplicationResponse
newGetSipMediaApplicationResponse pHttpStatus_ =
  GetSipMediaApplicationResponse'
    { sipMediaApplication =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The SIP media application details.
getSipMediaApplicationResponse_sipMediaApplication :: Lens.Lens' GetSipMediaApplicationResponse (Prelude.Maybe SipMediaApplication)
getSipMediaApplicationResponse_sipMediaApplication = Lens.lens (\GetSipMediaApplicationResponse' {sipMediaApplication} -> sipMediaApplication) (\s@GetSipMediaApplicationResponse' {} a -> s {sipMediaApplication = a} :: GetSipMediaApplicationResponse)

-- | The response's http status code.
getSipMediaApplicationResponse_httpStatus :: Lens.Lens' GetSipMediaApplicationResponse Prelude.Int
getSipMediaApplicationResponse_httpStatus = Lens.lens (\GetSipMediaApplicationResponse' {httpStatus} -> httpStatus) (\s@GetSipMediaApplicationResponse' {} a -> s {httpStatus = a} :: GetSipMediaApplicationResponse)

instance
  Prelude.NFData
    GetSipMediaApplicationResponse
