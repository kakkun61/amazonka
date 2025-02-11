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
-- Module      : Network.AWS.Chime.ResetPersonalPIN
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets the personal meeting PIN for the specified user on an Amazon
-- Chime account. Returns the User object with the updated personal meeting
-- PIN.
module Network.AWS.Chime.ResetPersonalPIN
  ( -- * Creating a Request
    ResetPersonalPIN (..),
    newResetPersonalPIN,

    -- * Request Lenses
    resetPersonalPIN_accountId,
    resetPersonalPIN_userId,

    -- * Destructuring the Response
    ResetPersonalPINResponse (..),
    newResetPersonalPINResponse,

    -- * Response Lenses
    resetPersonalPINResponse_user,
    resetPersonalPINResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newResetPersonalPIN' smart constructor.
data ResetPersonalPIN = ResetPersonalPIN'
  { -- | The Amazon Chime account ID.
    accountId :: Prelude.Text,
    -- | The user ID.
    userId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ResetPersonalPIN' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountId', 'resetPersonalPIN_accountId' - The Amazon Chime account ID.
--
-- 'userId', 'resetPersonalPIN_userId' - The user ID.
newResetPersonalPIN ::
  -- | 'accountId'
  Prelude.Text ->
  -- | 'userId'
  Prelude.Text ->
  ResetPersonalPIN
newResetPersonalPIN pAccountId_ pUserId_ =
  ResetPersonalPIN'
    { accountId = pAccountId_,
      userId = pUserId_
    }

-- | The Amazon Chime account ID.
resetPersonalPIN_accountId :: Lens.Lens' ResetPersonalPIN Prelude.Text
resetPersonalPIN_accountId = Lens.lens (\ResetPersonalPIN' {accountId} -> accountId) (\s@ResetPersonalPIN' {} a -> s {accountId = a} :: ResetPersonalPIN)

-- | The user ID.
resetPersonalPIN_userId :: Lens.Lens' ResetPersonalPIN Prelude.Text
resetPersonalPIN_userId = Lens.lens (\ResetPersonalPIN' {userId} -> userId) (\s@ResetPersonalPIN' {} a -> s {userId = a} :: ResetPersonalPIN)

instance Core.AWSRequest ResetPersonalPIN where
  type
    AWSResponse ResetPersonalPIN =
      ResetPersonalPINResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ResetPersonalPINResponse'
            Prelude.<$> (x Core..?> "User")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ResetPersonalPIN

instance Prelude.NFData ResetPersonalPIN

instance Core.ToHeaders ResetPersonalPIN where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON ResetPersonalPIN where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath ResetPersonalPIN where
  toPath ResetPersonalPIN' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS accountId,
        "/users/",
        Core.toBS userId
      ]

instance Core.ToQuery ResetPersonalPIN where
  toQuery =
    Prelude.const
      (Prelude.mconcat ["operation=reset-personal-pin"])

-- | /See:/ 'newResetPersonalPINResponse' smart constructor.
data ResetPersonalPINResponse = ResetPersonalPINResponse'
  { -- | The user details and new personal meeting PIN.
    user :: Prelude.Maybe User,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ResetPersonalPINResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'user', 'resetPersonalPINResponse_user' - The user details and new personal meeting PIN.
--
-- 'httpStatus', 'resetPersonalPINResponse_httpStatus' - The response's http status code.
newResetPersonalPINResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ResetPersonalPINResponse
newResetPersonalPINResponse pHttpStatus_ =
  ResetPersonalPINResponse'
    { user = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The user details and new personal meeting PIN.
resetPersonalPINResponse_user :: Lens.Lens' ResetPersonalPINResponse (Prelude.Maybe User)
resetPersonalPINResponse_user = Lens.lens (\ResetPersonalPINResponse' {user} -> user) (\s@ResetPersonalPINResponse' {} a -> s {user = a} :: ResetPersonalPINResponse)

-- | The response's http status code.
resetPersonalPINResponse_httpStatus :: Lens.Lens' ResetPersonalPINResponse Prelude.Int
resetPersonalPINResponse_httpStatus = Lens.lens (\ResetPersonalPINResponse' {httpStatus} -> httpStatus) (\s@ResetPersonalPINResponse' {} a -> s {httpStatus = a} :: ResetPersonalPINResponse)

instance Prelude.NFData ResetPersonalPINResponse
