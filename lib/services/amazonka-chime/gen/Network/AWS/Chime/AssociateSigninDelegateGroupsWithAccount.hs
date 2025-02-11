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
-- Module      : Network.AWS.Chime.AssociateSigninDelegateGroupsWithAccount
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates the specified sign-in delegate groups with the specified
-- Amazon Chime account.
module Network.AWS.Chime.AssociateSigninDelegateGroupsWithAccount
  ( -- * Creating a Request
    AssociateSigninDelegateGroupsWithAccount (..),
    newAssociateSigninDelegateGroupsWithAccount,

    -- * Request Lenses
    associateSigninDelegateGroupsWithAccount_accountId,
    associateSigninDelegateGroupsWithAccount_signinDelegateGroups,

    -- * Destructuring the Response
    AssociateSigninDelegateGroupsWithAccountResponse (..),
    newAssociateSigninDelegateGroupsWithAccountResponse,

    -- * Response Lenses
    associateSigninDelegateGroupsWithAccountResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newAssociateSigninDelegateGroupsWithAccount' smart constructor.
data AssociateSigninDelegateGroupsWithAccount = AssociateSigninDelegateGroupsWithAccount'
  { -- | The Amazon Chime account ID.
    accountId :: Prelude.Text,
    -- | The sign-in delegate groups.
    signinDelegateGroups :: [SigninDelegateGroup]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssociateSigninDelegateGroupsWithAccount' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountId', 'associateSigninDelegateGroupsWithAccount_accountId' - The Amazon Chime account ID.
--
-- 'signinDelegateGroups', 'associateSigninDelegateGroupsWithAccount_signinDelegateGroups' - The sign-in delegate groups.
newAssociateSigninDelegateGroupsWithAccount ::
  -- | 'accountId'
  Prelude.Text ->
  AssociateSigninDelegateGroupsWithAccount
newAssociateSigninDelegateGroupsWithAccount
  pAccountId_ =
    AssociateSigninDelegateGroupsWithAccount'
      { accountId =
          pAccountId_,
        signinDelegateGroups =
          Prelude.mempty
      }

-- | The Amazon Chime account ID.
associateSigninDelegateGroupsWithAccount_accountId :: Lens.Lens' AssociateSigninDelegateGroupsWithAccount Prelude.Text
associateSigninDelegateGroupsWithAccount_accountId = Lens.lens (\AssociateSigninDelegateGroupsWithAccount' {accountId} -> accountId) (\s@AssociateSigninDelegateGroupsWithAccount' {} a -> s {accountId = a} :: AssociateSigninDelegateGroupsWithAccount)

-- | The sign-in delegate groups.
associateSigninDelegateGroupsWithAccount_signinDelegateGroups :: Lens.Lens' AssociateSigninDelegateGroupsWithAccount [SigninDelegateGroup]
associateSigninDelegateGroupsWithAccount_signinDelegateGroups = Lens.lens (\AssociateSigninDelegateGroupsWithAccount' {signinDelegateGroups} -> signinDelegateGroups) (\s@AssociateSigninDelegateGroupsWithAccount' {} a -> s {signinDelegateGroups = a} :: AssociateSigninDelegateGroupsWithAccount) Prelude.. Lens.coerced

instance
  Core.AWSRequest
    AssociateSigninDelegateGroupsWithAccount
  where
  type
    AWSResponse
      AssociateSigninDelegateGroupsWithAccount =
      AssociateSigninDelegateGroupsWithAccountResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          AssociateSigninDelegateGroupsWithAccountResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    AssociateSigninDelegateGroupsWithAccount

instance
  Prelude.NFData
    AssociateSigninDelegateGroupsWithAccount

instance
  Core.ToHeaders
    AssociateSigninDelegateGroupsWithAccount
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Core.ToJSON
    AssociateSigninDelegateGroupsWithAccount
  where
  toJSON AssociateSigninDelegateGroupsWithAccount' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "SigninDelegateGroups"
                  Core..= signinDelegateGroups
              )
          ]
      )

instance
  Core.ToPath
    AssociateSigninDelegateGroupsWithAccount
  where
  toPath AssociateSigninDelegateGroupsWithAccount' {..} =
    Prelude.mconcat ["/accounts/", Core.toBS accountId]

instance
  Core.ToQuery
    AssociateSigninDelegateGroupsWithAccount
  where
  toQuery =
    Prelude.const
      ( Prelude.mconcat
          ["operation=associate-signin-delegate-groups"]
      )

-- | /See:/ 'newAssociateSigninDelegateGroupsWithAccountResponse' smart constructor.
data AssociateSigninDelegateGroupsWithAccountResponse = AssociateSigninDelegateGroupsWithAccountResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssociateSigninDelegateGroupsWithAccountResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'associateSigninDelegateGroupsWithAccountResponse_httpStatus' - The response's http status code.
newAssociateSigninDelegateGroupsWithAccountResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  AssociateSigninDelegateGroupsWithAccountResponse
newAssociateSigninDelegateGroupsWithAccountResponse
  pHttpStatus_ =
    AssociateSigninDelegateGroupsWithAccountResponse'
      { httpStatus =
          pHttpStatus_
      }

-- | The response's http status code.
associateSigninDelegateGroupsWithAccountResponse_httpStatus :: Lens.Lens' AssociateSigninDelegateGroupsWithAccountResponse Prelude.Int
associateSigninDelegateGroupsWithAccountResponse_httpStatus = Lens.lens (\AssociateSigninDelegateGroupsWithAccountResponse' {httpStatus} -> httpStatus) (\s@AssociateSigninDelegateGroupsWithAccountResponse' {} a -> s {httpStatus = a} :: AssociateSigninDelegateGroupsWithAccountResponse)

instance
  Prelude.NFData
    AssociateSigninDelegateGroupsWithAccountResponse
