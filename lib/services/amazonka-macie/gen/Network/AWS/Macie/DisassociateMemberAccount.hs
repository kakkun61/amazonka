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
-- Module      : Network.AWS.Macie.DisassociateMemberAccount
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the specified member account from Amazon Macie Classic.
module Network.AWS.Macie.DisassociateMemberAccount
  ( -- * Creating a Request
    DisassociateMemberAccount (..),
    newDisassociateMemberAccount,

    -- * Request Lenses
    disassociateMemberAccount_memberAccountId,

    -- * Destructuring the Response
    DisassociateMemberAccountResponse (..),
    newDisassociateMemberAccountResponse,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Macie.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDisassociateMemberAccount' smart constructor.
data DisassociateMemberAccount = DisassociateMemberAccount'
  { -- | The ID of the member account that you want to remove from Amazon Macie
    -- Classic.
    memberAccountId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateMemberAccount' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'memberAccountId', 'disassociateMemberAccount_memberAccountId' - The ID of the member account that you want to remove from Amazon Macie
-- Classic.
newDisassociateMemberAccount ::
  -- | 'memberAccountId'
  Prelude.Text ->
  DisassociateMemberAccount
newDisassociateMemberAccount pMemberAccountId_ =
  DisassociateMemberAccount'
    { memberAccountId =
        pMemberAccountId_
    }

-- | The ID of the member account that you want to remove from Amazon Macie
-- Classic.
disassociateMemberAccount_memberAccountId :: Lens.Lens' DisassociateMemberAccount Prelude.Text
disassociateMemberAccount_memberAccountId = Lens.lens (\DisassociateMemberAccount' {memberAccountId} -> memberAccountId) (\s@DisassociateMemberAccount' {} a -> s {memberAccountId = a} :: DisassociateMemberAccount)

instance Core.AWSRequest DisassociateMemberAccount where
  type
    AWSResponse DisassociateMemberAccount =
      DisassociateMemberAccountResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull
      DisassociateMemberAccountResponse'

instance Prelude.Hashable DisassociateMemberAccount

instance Prelude.NFData DisassociateMemberAccount

instance Core.ToHeaders DisassociateMemberAccount where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "MacieService.DisassociateMemberAccount" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DisassociateMemberAccount where
  toJSON DisassociateMemberAccount' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("memberAccountId" Core..= memberAccountId)
          ]
      )

instance Core.ToPath DisassociateMemberAccount where
  toPath = Prelude.const "/"

instance Core.ToQuery DisassociateMemberAccount where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDisassociateMemberAccountResponse' smart constructor.
data DisassociateMemberAccountResponse = DisassociateMemberAccountResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateMemberAccountResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDisassociateMemberAccountResponse ::
  DisassociateMemberAccountResponse
newDisassociateMemberAccountResponse =
  DisassociateMemberAccountResponse'

instance
  Prelude.NFData
    DisassociateMemberAccountResponse
