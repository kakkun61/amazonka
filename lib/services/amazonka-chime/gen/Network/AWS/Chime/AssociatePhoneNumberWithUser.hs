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
-- Module      : Network.AWS.Chime.AssociatePhoneNumberWithUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates a phone number with the specified Amazon Chime user.
module Network.AWS.Chime.AssociatePhoneNumberWithUser
  ( -- * Creating a Request
    AssociatePhoneNumberWithUser (..),
    newAssociatePhoneNumberWithUser,

    -- * Request Lenses
    associatePhoneNumberWithUser_accountId,
    associatePhoneNumberWithUser_userId,
    associatePhoneNumberWithUser_e164PhoneNumber,

    -- * Destructuring the Response
    AssociatePhoneNumberWithUserResponse (..),
    newAssociatePhoneNumberWithUserResponse,

    -- * Response Lenses
    associatePhoneNumberWithUserResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newAssociatePhoneNumberWithUser' smart constructor.
data AssociatePhoneNumberWithUser = AssociatePhoneNumberWithUser'
  { -- | The Amazon Chime account ID.
    accountId :: Prelude.Text,
    -- | The user ID.
    userId :: Prelude.Text,
    -- | The phone number, in E.164 format.
    e164PhoneNumber :: Core.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssociatePhoneNumberWithUser' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountId', 'associatePhoneNumberWithUser_accountId' - The Amazon Chime account ID.
--
-- 'userId', 'associatePhoneNumberWithUser_userId' - The user ID.
--
-- 'e164PhoneNumber', 'associatePhoneNumberWithUser_e164PhoneNumber' - The phone number, in E.164 format.
newAssociatePhoneNumberWithUser ::
  -- | 'accountId'
  Prelude.Text ->
  -- | 'userId'
  Prelude.Text ->
  -- | 'e164PhoneNumber'
  Prelude.Text ->
  AssociatePhoneNumberWithUser
newAssociatePhoneNumberWithUser
  pAccountId_
  pUserId_
  pE164PhoneNumber_ =
    AssociatePhoneNumberWithUser'
      { accountId =
          pAccountId_,
        userId = pUserId_,
        e164PhoneNumber =
          Core._Sensitive Lens.# pE164PhoneNumber_
      }

-- | The Amazon Chime account ID.
associatePhoneNumberWithUser_accountId :: Lens.Lens' AssociatePhoneNumberWithUser Prelude.Text
associatePhoneNumberWithUser_accountId = Lens.lens (\AssociatePhoneNumberWithUser' {accountId} -> accountId) (\s@AssociatePhoneNumberWithUser' {} a -> s {accountId = a} :: AssociatePhoneNumberWithUser)

-- | The user ID.
associatePhoneNumberWithUser_userId :: Lens.Lens' AssociatePhoneNumberWithUser Prelude.Text
associatePhoneNumberWithUser_userId = Lens.lens (\AssociatePhoneNumberWithUser' {userId} -> userId) (\s@AssociatePhoneNumberWithUser' {} a -> s {userId = a} :: AssociatePhoneNumberWithUser)

-- | The phone number, in E.164 format.
associatePhoneNumberWithUser_e164PhoneNumber :: Lens.Lens' AssociatePhoneNumberWithUser Prelude.Text
associatePhoneNumberWithUser_e164PhoneNumber = Lens.lens (\AssociatePhoneNumberWithUser' {e164PhoneNumber} -> e164PhoneNumber) (\s@AssociatePhoneNumberWithUser' {} a -> s {e164PhoneNumber = a} :: AssociatePhoneNumberWithUser) Prelude.. Core._Sensitive

instance Core.AWSRequest AssociatePhoneNumberWithUser where
  type
    AWSResponse AssociatePhoneNumberWithUser =
      AssociatePhoneNumberWithUserResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          AssociatePhoneNumberWithUserResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    AssociatePhoneNumberWithUser

instance Prelude.NFData AssociatePhoneNumberWithUser

instance Core.ToHeaders AssociatePhoneNumberWithUser where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON AssociatePhoneNumberWithUser where
  toJSON AssociatePhoneNumberWithUser' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("E164PhoneNumber" Core..= e164PhoneNumber)
          ]
      )

instance Core.ToPath AssociatePhoneNumberWithUser where
  toPath AssociatePhoneNumberWithUser' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS accountId,
        "/users/",
        Core.toBS userId
      ]

instance Core.ToQuery AssociatePhoneNumberWithUser where
  toQuery =
    Prelude.const
      ( Prelude.mconcat
          ["operation=associate-phone-number"]
      )

-- | /See:/ 'newAssociatePhoneNumberWithUserResponse' smart constructor.
data AssociatePhoneNumberWithUserResponse = AssociatePhoneNumberWithUserResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssociatePhoneNumberWithUserResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'associatePhoneNumberWithUserResponse_httpStatus' - The response's http status code.
newAssociatePhoneNumberWithUserResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  AssociatePhoneNumberWithUserResponse
newAssociatePhoneNumberWithUserResponse pHttpStatus_ =
  AssociatePhoneNumberWithUserResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
associatePhoneNumberWithUserResponse_httpStatus :: Lens.Lens' AssociatePhoneNumberWithUserResponse Prelude.Int
associatePhoneNumberWithUserResponse_httpStatus = Lens.lens (\AssociatePhoneNumberWithUserResponse' {httpStatus} -> httpStatus) (\s@AssociatePhoneNumberWithUserResponse' {} a -> s {httpStatus = a} :: AssociatePhoneNumberWithUserResponse)

instance
  Prelude.NFData
    AssociatePhoneNumberWithUserResponse
