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
-- Module      : Network.AWS.Chime.CreateUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a user under the specified Amazon Chime account.
module Network.AWS.Chime.CreateUser
  ( -- * Creating a Request
    CreateUser (..),
    newCreateUser,

    -- * Request Lenses
    createUser_email,
    createUser_username,
    createUser_userType,
    createUser_accountId,

    -- * Destructuring the Response
    CreateUserResponse (..),
    newCreateUserResponse,

    -- * Response Lenses
    createUserResponse_user,
    createUserResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateUser' smart constructor.
data CreateUser = CreateUser'
  { -- | The user\'s email address.
    email :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The user name.
    username :: Prelude.Maybe Prelude.Text,
    -- | The user type.
    userType :: Prelude.Maybe UserType,
    -- | The Amazon Chime account ID.
    accountId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateUser' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'email', 'createUser_email' - The user\'s email address.
--
-- 'username', 'createUser_username' - The user name.
--
-- 'userType', 'createUser_userType' - The user type.
--
-- 'accountId', 'createUser_accountId' - The Amazon Chime account ID.
newCreateUser ::
  -- | 'accountId'
  Prelude.Text ->
  CreateUser
newCreateUser pAccountId_ =
  CreateUser'
    { email = Prelude.Nothing,
      username = Prelude.Nothing,
      userType = Prelude.Nothing,
      accountId = pAccountId_
    }

-- | The user\'s email address.
createUser_email :: Lens.Lens' CreateUser (Prelude.Maybe Prelude.Text)
createUser_email = Lens.lens (\CreateUser' {email} -> email) (\s@CreateUser' {} a -> s {email = a} :: CreateUser) Prelude.. Lens.mapping Core._Sensitive

-- | The user name.
createUser_username :: Lens.Lens' CreateUser (Prelude.Maybe Prelude.Text)
createUser_username = Lens.lens (\CreateUser' {username} -> username) (\s@CreateUser' {} a -> s {username = a} :: CreateUser)

-- | The user type.
createUser_userType :: Lens.Lens' CreateUser (Prelude.Maybe UserType)
createUser_userType = Lens.lens (\CreateUser' {userType} -> userType) (\s@CreateUser' {} a -> s {userType = a} :: CreateUser)

-- | The Amazon Chime account ID.
createUser_accountId :: Lens.Lens' CreateUser Prelude.Text
createUser_accountId = Lens.lens (\CreateUser' {accountId} -> accountId) (\s@CreateUser' {} a -> s {accountId = a} :: CreateUser)

instance Core.AWSRequest CreateUser where
  type AWSResponse CreateUser = CreateUserResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateUserResponse'
            Prelude.<$> (x Core..?> "User")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateUser

instance Prelude.NFData CreateUser

instance Core.ToHeaders CreateUser where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON CreateUser where
  toJSON CreateUser' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Email" Core..=) Prelude.<$> email,
            ("Username" Core..=) Prelude.<$> username,
            ("UserType" Core..=) Prelude.<$> userType
          ]
      )

instance Core.ToPath CreateUser where
  toPath CreateUser' {..} =
    Prelude.mconcat
      ["/accounts/", Core.toBS accountId, "/users"]

instance Core.ToQuery CreateUser where
  toQuery =
    Prelude.const
      (Prelude.mconcat ["operation=create"])

-- | /See:/ 'newCreateUserResponse' smart constructor.
data CreateUserResponse = CreateUserResponse'
  { user :: Prelude.Maybe User,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateUserResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'user', 'createUserResponse_user' - Undocumented member.
--
-- 'httpStatus', 'createUserResponse_httpStatus' - The response's http status code.
newCreateUserResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateUserResponse
newCreateUserResponse pHttpStatus_ =
  CreateUserResponse'
    { user = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
createUserResponse_user :: Lens.Lens' CreateUserResponse (Prelude.Maybe User)
createUserResponse_user = Lens.lens (\CreateUserResponse' {user} -> user) (\s@CreateUserResponse' {} a -> s {user = a} :: CreateUserResponse)

-- | The response's http status code.
createUserResponse_httpStatus :: Lens.Lens' CreateUserResponse Prelude.Int
createUserResponse_httpStatus = Lens.lens (\CreateUserResponse' {httpStatus} -> httpStatus) (\s@CreateUserResponse' {} a -> s {httpStatus = a} :: CreateUserResponse)

instance Prelude.NFData CreateUserResponse
