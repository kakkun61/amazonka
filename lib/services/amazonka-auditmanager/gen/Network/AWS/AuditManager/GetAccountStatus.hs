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
-- Module      : Network.AWS.AuditManager.GetAccountStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the registration status of an account in Audit Manager.
module Network.AWS.AuditManager.GetAccountStatus
  ( -- * Creating a Request
    GetAccountStatus (..),
    newGetAccountStatus,

    -- * Destructuring the Response
    GetAccountStatusResponse (..),
    newGetAccountStatusResponse,

    -- * Response Lenses
    getAccountStatusResponse_status,
    getAccountStatusResponse_httpStatus,
  )
where

import Network.AWS.AuditManager.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetAccountStatus' smart constructor.
data GetAccountStatus = GetAccountStatus'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAccountStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newGetAccountStatus ::
  GetAccountStatus
newGetAccountStatus = GetAccountStatus'

instance Core.AWSRequest GetAccountStatus where
  type
    AWSResponse GetAccountStatus =
      GetAccountStatusResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetAccountStatusResponse'
            Prelude.<$> (x Core..?> "status")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetAccountStatus

instance Prelude.NFData GetAccountStatus

instance Core.ToHeaders GetAccountStatus where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetAccountStatus where
  toPath = Prelude.const "/account/status"

instance Core.ToQuery GetAccountStatus where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetAccountStatusResponse' smart constructor.
data GetAccountStatusResponse = GetAccountStatusResponse'
  { -- | The status of the specified Amazon Web Services account.
    status :: Prelude.Maybe AccountStatus,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAccountStatusResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'getAccountStatusResponse_status' - The status of the specified Amazon Web Services account.
--
-- 'httpStatus', 'getAccountStatusResponse_httpStatus' - The response's http status code.
newGetAccountStatusResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetAccountStatusResponse
newGetAccountStatusResponse pHttpStatus_ =
  GetAccountStatusResponse'
    { status = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The status of the specified Amazon Web Services account.
getAccountStatusResponse_status :: Lens.Lens' GetAccountStatusResponse (Prelude.Maybe AccountStatus)
getAccountStatusResponse_status = Lens.lens (\GetAccountStatusResponse' {status} -> status) (\s@GetAccountStatusResponse' {} a -> s {status = a} :: GetAccountStatusResponse)

-- | The response's http status code.
getAccountStatusResponse_httpStatus :: Lens.Lens' GetAccountStatusResponse Prelude.Int
getAccountStatusResponse_httpStatus = Lens.lens (\GetAccountStatusResponse' {httpStatus} -> httpStatus) (\s@GetAccountStatusResponse' {} a -> s {httpStatus = a} :: GetAccountStatusResponse)

instance Prelude.NFData GetAccountStatusResponse
