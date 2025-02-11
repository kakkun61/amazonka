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
-- Module      : Network.AWS.ManagedBlockChain.GetMember
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns detailed information about a member.
--
-- Applies only to Hyperledger Fabric.
module Network.AWS.ManagedBlockChain.GetMember
  ( -- * Creating a Request
    GetMember (..),
    newGetMember,

    -- * Request Lenses
    getMember_networkId,
    getMember_memberId,

    -- * Destructuring the Response
    GetMemberResponse (..),
    newGetMemberResponse,

    -- * Response Lenses
    getMemberResponse_member,
    getMemberResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.ManagedBlockChain.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetMember' smart constructor.
data GetMember = GetMember'
  { -- | The unique identifier of the network to which the member belongs.
    networkId :: Prelude.Text,
    -- | The unique identifier of the member.
    memberId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetMember' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'networkId', 'getMember_networkId' - The unique identifier of the network to which the member belongs.
--
-- 'memberId', 'getMember_memberId' - The unique identifier of the member.
newGetMember ::
  -- | 'networkId'
  Prelude.Text ->
  -- | 'memberId'
  Prelude.Text ->
  GetMember
newGetMember pNetworkId_ pMemberId_ =
  GetMember'
    { networkId = pNetworkId_,
      memberId = pMemberId_
    }

-- | The unique identifier of the network to which the member belongs.
getMember_networkId :: Lens.Lens' GetMember Prelude.Text
getMember_networkId = Lens.lens (\GetMember' {networkId} -> networkId) (\s@GetMember' {} a -> s {networkId = a} :: GetMember)

-- | The unique identifier of the member.
getMember_memberId :: Lens.Lens' GetMember Prelude.Text
getMember_memberId = Lens.lens (\GetMember' {memberId} -> memberId) (\s@GetMember' {} a -> s {memberId = a} :: GetMember)

instance Core.AWSRequest GetMember where
  type AWSResponse GetMember = GetMemberResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetMemberResponse'
            Prelude.<$> (x Core..?> "Member")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetMember

instance Prelude.NFData GetMember

instance Core.ToHeaders GetMember where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetMember where
  toPath GetMember' {..} =
    Prelude.mconcat
      [ "/networks/",
        Core.toBS networkId,
        "/members/",
        Core.toBS memberId
      ]

instance Core.ToQuery GetMember where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetMemberResponse' smart constructor.
data GetMemberResponse = GetMemberResponse'
  { -- | The properties of a member.
    member :: Prelude.Maybe Member,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetMemberResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'member', 'getMemberResponse_member' - The properties of a member.
--
-- 'httpStatus', 'getMemberResponse_httpStatus' - The response's http status code.
newGetMemberResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetMemberResponse
newGetMemberResponse pHttpStatus_ =
  GetMemberResponse'
    { member = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The properties of a member.
getMemberResponse_member :: Lens.Lens' GetMemberResponse (Prelude.Maybe Member)
getMemberResponse_member = Lens.lens (\GetMemberResponse' {member} -> member) (\s@GetMemberResponse' {} a -> s {member = a} :: GetMemberResponse)

-- | The response's http status code.
getMemberResponse_httpStatus :: Lens.Lens' GetMemberResponse Prelude.Int
getMemberResponse_httpStatus = Lens.lens (\GetMemberResponse' {httpStatus} -> httpStatus) (\s@GetMemberResponse' {} a -> s {httpStatus = a} :: GetMemberResponse)

instance Prelude.NFData GetMemberResponse
