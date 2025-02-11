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
-- Module      : Network.AWS.IoTWireless.GetPartnerAccount
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a partner account. If @PartnerAccountId@ and
-- @PartnerType@ are @null@, returns all partner accounts.
module Network.AWS.IoTWireless.GetPartnerAccount
  ( -- * Creating a Request
    GetPartnerAccount (..),
    newGetPartnerAccount,

    -- * Request Lenses
    getPartnerAccount_partnerAccountId,
    getPartnerAccount_partnerType,

    -- * Destructuring the Response
    GetPartnerAccountResponse (..),
    newGetPartnerAccountResponse,

    -- * Response Lenses
    getPartnerAccountResponse_sidewalk,
    getPartnerAccountResponse_accountLinked,
    getPartnerAccountResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTWireless.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetPartnerAccount' smart constructor.
data GetPartnerAccount = GetPartnerAccount'
  { -- | The partner account ID to disassociate from the AWS account.
    partnerAccountId :: Prelude.Text,
    -- | The partner type.
    partnerType :: PartnerType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetPartnerAccount' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'partnerAccountId', 'getPartnerAccount_partnerAccountId' - The partner account ID to disassociate from the AWS account.
--
-- 'partnerType', 'getPartnerAccount_partnerType' - The partner type.
newGetPartnerAccount ::
  -- | 'partnerAccountId'
  Prelude.Text ->
  -- | 'partnerType'
  PartnerType ->
  GetPartnerAccount
newGetPartnerAccount pPartnerAccountId_ pPartnerType_ =
  GetPartnerAccount'
    { partnerAccountId =
        pPartnerAccountId_,
      partnerType = pPartnerType_
    }

-- | The partner account ID to disassociate from the AWS account.
getPartnerAccount_partnerAccountId :: Lens.Lens' GetPartnerAccount Prelude.Text
getPartnerAccount_partnerAccountId = Lens.lens (\GetPartnerAccount' {partnerAccountId} -> partnerAccountId) (\s@GetPartnerAccount' {} a -> s {partnerAccountId = a} :: GetPartnerAccount)

-- | The partner type.
getPartnerAccount_partnerType :: Lens.Lens' GetPartnerAccount PartnerType
getPartnerAccount_partnerType = Lens.lens (\GetPartnerAccount' {partnerType} -> partnerType) (\s@GetPartnerAccount' {} a -> s {partnerType = a} :: GetPartnerAccount)

instance Core.AWSRequest GetPartnerAccount where
  type
    AWSResponse GetPartnerAccount =
      GetPartnerAccountResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetPartnerAccountResponse'
            Prelude.<$> (x Core..?> "Sidewalk")
            Prelude.<*> (x Core..?> "AccountLinked")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetPartnerAccount

instance Prelude.NFData GetPartnerAccount

instance Core.ToHeaders GetPartnerAccount where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath GetPartnerAccount where
  toPath GetPartnerAccount' {..} =
    Prelude.mconcat
      ["/partner-accounts/", Core.toBS partnerAccountId]

instance Core.ToQuery GetPartnerAccount where
  toQuery GetPartnerAccount' {..} =
    Prelude.mconcat ["partnerType" Core.=: partnerType]

-- | /See:/ 'newGetPartnerAccountResponse' smart constructor.
data GetPartnerAccountResponse = GetPartnerAccountResponse'
  { -- | The Sidewalk account credentials.
    sidewalk :: Prelude.Maybe SidewalkAccountInfoWithFingerprint,
    -- | Whether the partner account is linked to the AWS account.
    accountLinked :: Prelude.Maybe Prelude.Bool,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetPartnerAccountResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sidewalk', 'getPartnerAccountResponse_sidewalk' - The Sidewalk account credentials.
--
-- 'accountLinked', 'getPartnerAccountResponse_accountLinked' - Whether the partner account is linked to the AWS account.
--
-- 'httpStatus', 'getPartnerAccountResponse_httpStatus' - The response's http status code.
newGetPartnerAccountResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetPartnerAccountResponse
newGetPartnerAccountResponse pHttpStatus_ =
  GetPartnerAccountResponse'
    { sidewalk =
        Prelude.Nothing,
      accountLinked = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Sidewalk account credentials.
getPartnerAccountResponse_sidewalk :: Lens.Lens' GetPartnerAccountResponse (Prelude.Maybe SidewalkAccountInfoWithFingerprint)
getPartnerAccountResponse_sidewalk = Lens.lens (\GetPartnerAccountResponse' {sidewalk} -> sidewalk) (\s@GetPartnerAccountResponse' {} a -> s {sidewalk = a} :: GetPartnerAccountResponse)

-- | Whether the partner account is linked to the AWS account.
getPartnerAccountResponse_accountLinked :: Lens.Lens' GetPartnerAccountResponse (Prelude.Maybe Prelude.Bool)
getPartnerAccountResponse_accountLinked = Lens.lens (\GetPartnerAccountResponse' {accountLinked} -> accountLinked) (\s@GetPartnerAccountResponse' {} a -> s {accountLinked = a} :: GetPartnerAccountResponse)

-- | The response's http status code.
getPartnerAccountResponse_httpStatus :: Lens.Lens' GetPartnerAccountResponse Prelude.Int
getPartnerAccountResponse_httpStatus = Lens.lens (\GetPartnerAccountResponse' {httpStatus} -> httpStatus) (\s@GetPartnerAccountResponse' {} a -> s {httpStatus = a} :: GetPartnerAccountResponse)

instance Prelude.NFData GetPartnerAccountResponse
