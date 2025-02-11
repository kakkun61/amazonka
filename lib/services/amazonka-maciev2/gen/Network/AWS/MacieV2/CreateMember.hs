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
-- Module      : Network.AWS.MacieV2.CreateMember
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates an account with an Amazon Macie administrator account.
module Network.AWS.MacieV2.CreateMember
  ( -- * Creating a Request
    CreateMember (..),
    newCreateMember,

    -- * Request Lenses
    createMember_tags,
    createMember_account,

    -- * Destructuring the Response
    CreateMemberResponse (..),
    newCreateMemberResponse,

    -- * Response Lenses
    createMemberResponse_arn,
    createMemberResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MacieV2.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateMember' smart constructor.
data CreateMember = CreateMember'
  { -- | A map of key-value pairs that specifies the tags to associate with the
    -- account in Amazon Macie.
    --
    -- An account can have a maximum of 50 tags. Each tag consists of a tag key
    -- and an associated tag value. The maximum length of a tag key is 128
    -- characters. The maximum length of a tag value is 256 characters.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The details of the account to associate with the administrator account.
    account :: AccountDetail
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateMember' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createMember_tags' - A map of key-value pairs that specifies the tags to associate with the
-- account in Amazon Macie.
--
-- An account can have a maximum of 50 tags. Each tag consists of a tag key
-- and an associated tag value. The maximum length of a tag key is 128
-- characters. The maximum length of a tag value is 256 characters.
--
-- 'account', 'createMember_account' - The details of the account to associate with the administrator account.
newCreateMember ::
  -- | 'account'
  AccountDetail ->
  CreateMember
newCreateMember pAccount_ =
  CreateMember'
    { tags = Prelude.Nothing,
      account = pAccount_
    }

-- | A map of key-value pairs that specifies the tags to associate with the
-- account in Amazon Macie.
--
-- An account can have a maximum of 50 tags. Each tag consists of a tag key
-- and an associated tag value. The maximum length of a tag key is 128
-- characters. The maximum length of a tag value is 256 characters.
createMember_tags :: Lens.Lens' CreateMember (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createMember_tags = Lens.lens (\CreateMember' {tags} -> tags) (\s@CreateMember' {} a -> s {tags = a} :: CreateMember) Prelude.. Lens.mapping Lens.coerced

-- | The details of the account to associate with the administrator account.
createMember_account :: Lens.Lens' CreateMember AccountDetail
createMember_account = Lens.lens (\CreateMember' {account} -> account) (\s@CreateMember' {} a -> s {account = a} :: CreateMember)

instance Core.AWSRequest CreateMember where
  type AWSResponse CreateMember = CreateMemberResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateMemberResponse'
            Prelude.<$> (x Core..?> "arn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateMember

instance Prelude.NFData CreateMember

instance Core.ToHeaders CreateMember where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateMember where
  toJSON CreateMember' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            Prelude.Just ("account" Core..= account)
          ]
      )

instance Core.ToPath CreateMember where
  toPath = Prelude.const "/members"

instance Core.ToQuery CreateMember where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateMemberResponse' smart constructor.
data CreateMemberResponse = CreateMemberResponse'
  { -- | The Amazon Resource Name (ARN) of the account that was associated with
    -- the administrator account.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateMemberResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'createMemberResponse_arn' - The Amazon Resource Name (ARN) of the account that was associated with
-- the administrator account.
--
-- 'httpStatus', 'createMemberResponse_httpStatus' - The response's http status code.
newCreateMemberResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateMemberResponse
newCreateMemberResponse pHttpStatus_ =
  CreateMemberResponse'
    { arn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Resource Name (ARN) of the account that was associated with
-- the administrator account.
createMemberResponse_arn :: Lens.Lens' CreateMemberResponse (Prelude.Maybe Prelude.Text)
createMemberResponse_arn = Lens.lens (\CreateMemberResponse' {arn} -> arn) (\s@CreateMemberResponse' {} a -> s {arn = a} :: CreateMemberResponse)

-- | The response's http status code.
createMemberResponse_httpStatus :: Lens.Lens' CreateMemberResponse Prelude.Int
createMemberResponse_httpStatus = Lens.lens (\CreateMemberResponse' {httpStatus} -> httpStatus) (\s@CreateMemberResponse' {} a -> s {httpStatus = a} :: CreateMemberResponse)

instance Prelude.NFData CreateMemberResponse
