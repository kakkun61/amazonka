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
-- Module      : Network.AWS.SecurityHub.GetAdministratorAccount
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides the details for the Security Hub administrator account for the
-- current member account.
--
-- Can be used by both member accounts that are managed using Organizations
-- and accounts that were invited manually.
module Network.AWS.SecurityHub.GetAdministratorAccount
  ( -- * Creating a Request
    GetAdministratorAccount (..),
    newGetAdministratorAccount,

    -- * Destructuring the Response
    GetAdministratorAccountResponse (..),
    newGetAdministratorAccountResponse,

    -- * Response Lenses
    getAdministratorAccountResponse_administrator,
    getAdministratorAccountResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SecurityHub.Types

-- | /See:/ 'newGetAdministratorAccount' smart constructor.
data GetAdministratorAccount = GetAdministratorAccount'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAdministratorAccount' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newGetAdministratorAccount ::
  GetAdministratorAccount
newGetAdministratorAccount = GetAdministratorAccount'

instance Core.AWSRequest GetAdministratorAccount where
  type
    AWSResponse GetAdministratorAccount =
      GetAdministratorAccountResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetAdministratorAccountResponse'
            Prelude.<$> (x Core..?> "Administrator")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetAdministratorAccount

instance Prelude.NFData GetAdministratorAccount

instance Core.ToHeaders GetAdministratorAccount where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetAdministratorAccount where
  toPath = Prelude.const "/administrator"

instance Core.ToQuery GetAdministratorAccount where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetAdministratorAccountResponse' smart constructor.
data GetAdministratorAccountResponse = GetAdministratorAccountResponse'
  { administrator :: Prelude.Maybe Invitation,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAdministratorAccountResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'administrator', 'getAdministratorAccountResponse_administrator' - Undocumented member.
--
-- 'httpStatus', 'getAdministratorAccountResponse_httpStatus' - The response's http status code.
newGetAdministratorAccountResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetAdministratorAccountResponse
newGetAdministratorAccountResponse pHttpStatus_ =
  GetAdministratorAccountResponse'
    { administrator =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
getAdministratorAccountResponse_administrator :: Lens.Lens' GetAdministratorAccountResponse (Prelude.Maybe Invitation)
getAdministratorAccountResponse_administrator = Lens.lens (\GetAdministratorAccountResponse' {administrator} -> administrator) (\s@GetAdministratorAccountResponse' {} a -> s {administrator = a} :: GetAdministratorAccountResponse)

-- | The response's http status code.
getAdministratorAccountResponse_httpStatus :: Lens.Lens' GetAdministratorAccountResponse Prelude.Int
getAdministratorAccountResponse_httpStatus = Lens.lens (\GetAdministratorAccountResponse' {httpStatus} -> httpStatus) (\s@GetAdministratorAccountResponse' {} a -> s {httpStatus = a} :: GetAdministratorAccountResponse)

instance
  Prelude.NFData
    GetAdministratorAccountResponse
