{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SecurityHub.Types.AccountDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AccountDetails where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The details of an Amazon Web Services account.
--
-- /See:/ 'newAccountDetails' smart constructor.
data AccountDetails = AccountDetails'
  { -- | The email of an Amazon Web Services account.
    email :: Prelude.Maybe Prelude.Text,
    -- | The ID of an Amazon Web Services account.
    accountId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AccountDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'email', 'accountDetails_email' - The email of an Amazon Web Services account.
--
-- 'accountId', 'accountDetails_accountId' - The ID of an Amazon Web Services account.
newAccountDetails ::
  -- | 'accountId'
  Prelude.Text ->
  AccountDetails
newAccountDetails pAccountId_ =
  AccountDetails'
    { email = Prelude.Nothing,
      accountId = pAccountId_
    }

-- | The email of an Amazon Web Services account.
accountDetails_email :: Lens.Lens' AccountDetails (Prelude.Maybe Prelude.Text)
accountDetails_email = Lens.lens (\AccountDetails' {email} -> email) (\s@AccountDetails' {} a -> s {email = a} :: AccountDetails)

-- | The ID of an Amazon Web Services account.
accountDetails_accountId :: Lens.Lens' AccountDetails Prelude.Text
accountDetails_accountId = Lens.lens (\AccountDetails' {accountId} -> accountId) (\s@AccountDetails' {} a -> s {accountId = a} :: AccountDetails)

instance Prelude.Hashable AccountDetails

instance Prelude.NFData AccountDetails

instance Core.ToJSON AccountDetails where
  toJSON AccountDetails' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Email" Core..=) Prelude.<$> email,
            Prelude.Just ("AccountId" Core..= accountId)
          ]
      )
