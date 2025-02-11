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
-- Module      : Network.AWS.IoTWireless.DisassociateAwsAccountFromPartnerAccount
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates your AWS account from a partner account. If
-- @PartnerAccountId@ and @PartnerType@ are @null@, disassociates your AWS
-- account from all partner accounts.
module Network.AWS.IoTWireless.DisassociateAwsAccountFromPartnerAccount
  ( -- * Creating a Request
    DisassociateAwsAccountFromPartnerAccount (..),
    newDisassociateAwsAccountFromPartnerAccount,

    -- * Request Lenses
    disassociateAwsAccountFromPartnerAccount_partnerAccountId,
    disassociateAwsAccountFromPartnerAccount_partnerType,

    -- * Destructuring the Response
    DisassociateAwsAccountFromPartnerAccountResponse (..),
    newDisassociateAwsAccountFromPartnerAccountResponse,

    -- * Response Lenses
    disassociateAwsAccountFromPartnerAccountResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTWireless.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDisassociateAwsAccountFromPartnerAccount' smart constructor.
data DisassociateAwsAccountFromPartnerAccount = DisassociateAwsAccountFromPartnerAccount'
  { -- | The partner account ID to disassociate from the AWS account.
    partnerAccountId :: Prelude.Text,
    -- | The partner type.
    partnerType :: PartnerType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateAwsAccountFromPartnerAccount' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'partnerAccountId', 'disassociateAwsAccountFromPartnerAccount_partnerAccountId' - The partner account ID to disassociate from the AWS account.
--
-- 'partnerType', 'disassociateAwsAccountFromPartnerAccount_partnerType' - The partner type.
newDisassociateAwsAccountFromPartnerAccount ::
  -- | 'partnerAccountId'
  Prelude.Text ->
  -- | 'partnerType'
  PartnerType ->
  DisassociateAwsAccountFromPartnerAccount
newDisassociateAwsAccountFromPartnerAccount
  pPartnerAccountId_
  pPartnerType_ =
    DisassociateAwsAccountFromPartnerAccount'
      { partnerAccountId =
          pPartnerAccountId_,
        partnerType = pPartnerType_
      }

-- | The partner account ID to disassociate from the AWS account.
disassociateAwsAccountFromPartnerAccount_partnerAccountId :: Lens.Lens' DisassociateAwsAccountFromPartnerAccount Prelude.Text
disassociateAwsAccountFromPartnerAccount_partnerAccountId = Lens.lens (\DisassociateAwsAccountFromPartnerAccount' {partnerAccountId} -> partnerAccountId) (\s@DisassociateAwsAccountFromPartnerAccount' {} a -> s {partnerAccountId = a} :: DisassociateAwsAccountFromPartnerAccount)

-- | The partner type.
disassociateAwsAccountFromPartnerAccount_partnerType :: Lens.Lens' DisassociateAwsAccountFromPartnerAccount PartnerType
disassociateAwsAccountFromPartnerAccount_partnerType = Lens.lens (\DisassociateAwsAccountFromPartnerAccount' {partnerType} -> partnerType) (\s@DisassociateAwsAccountFromPartnerAccount' {} a -> s {partnerType = a} :: DisassociateAwsAccountFromPartnerAccount)

instance
  Core.AWSRequest
    DisassociateAwsAccountFromPartnerAccount
  where
  type
    AWSResponse
      DisassociateAwsAccountFromPartnerAccount =
      DisassociateAwsAccountFromPartnerAccountResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DisassociateAwsAccountFromPartnerAccountResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DisassociateAwsAccountFromPartnerAccount

instance
  Prelude.NFData
    DisassociateAwsAccountFromPartnerAccount

instance
  Core.ToHeaders
    DisassociateAwsAccountFromPartnerAccount
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Core.ToPath
    DisassociateAwsAccountFromPartnerAccount
  where
  toPath DisassociateAwsAccountFromPartnerAccount' {..} =
    Prelude.mconcat
      ["/partner-accounts/", Core.toBS partnerAccountId]

instance
  Core.ToQuery
    DisassociateAwsAccountFromPartnerAccount
  where
  toQuery DisassociateAwsAccountFromPartnerAccount' {..} =
    Prelude.mconcat ["partnerType" Core.=: partnerType]

-- | /See:/ 'newDisassociateAwsAccountFromPartnerAccountResponse' smart constructor.
data DisassociateAwsAccountFromPartnerAccountResponse = DisassociateAwsAccountFromPartnerAccountResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateAwsAccountFromPartnerAccountResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'disassociateAwsAccountFromPartnerAccountResponse_httpStatus' - The response's http status code.
newDisassociateAwsAccountFromPartnerAccountResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DisassociateAwsAccountFromPartnerAccountResponse
newDisassociateAwsAccountFromPartnerAccountResponse
  pHttpStatus_ =
    DisassociateAwsAccountFromPartnerAccountResponse'
      { httpStatus =
          pHttpStatus_
      }

-- | The response's http status code.
disassociateAwsAccountFromPartnerAccountResponse_httpStatus :: Lens.Lens' DisassociateAwsAccountFromPartnerAccountResponse Prelude.Int
disassociateAwsAccountFromPartnerAccountResponse_httpStatus = Lens.lens (\DisassociateAwsAccountFromPartnerAccountResponse' {httpStatus} -> httpStatus) (\s@DisassociateAwsAccountFromPartnerAccountResponse' {} a -> s {httpStatus = a} :: DisassociateAwsAccountFromPartnerAccountResponse)

instance
  Prelude.NFData
    DisassociateAwsAccountFromPartnerAccountResponse
