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
-- Module      : Network.AWS.IoTWireless.UpdatePartnerAccount
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates properties of a partner account.
module Network.AWS.IoTWireless.UpdatePartnerAccount
  ( -- * Creating a Request
    UpdatePartnerAccount (..),
    newUpdatePartnerAccount,

    -- * Request Lenses
    updatePartnerAccount_sidewalk,
    updatePartnerAccount_partnerAccountId,
    updatePartnerAccount_partnerType,

    -- * Destructuring the Response
    UpdatePartnerAccountResponse (..),
    newUpdatePartnerAccountResponse,

    -- * Response Lenses
    updatePartnerAccountResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTWireless.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdatePartnerAccount' smart constructor.
data UpdatePartnerAccount = UpdatePartnerAccount'
  { -- | The Sidewalk account credentials.
    sidewalk :: SidewalkUpdateAccount,
    -- | The ID of the partner account to update.
    partnerAccountId :: Prelude.Text,
    -- | The partner type.
    partnerType :: PartnerType
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdatePartnerAccount' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sidewalk', 'updatePartnerAccount_sidewalk' - The Sidewalk account credentials.
--
-- 'partnerAccountId', 'updatePartnerAccount_partnerAccountId' - The ID of the partner account to update.
--
-- 'partnerType', 'updatePartnerAccount_partnerType' - The partner type.
newUpdatePartnerAccount ::
  -- | 'sidewalk'
  SidewalkUpdateAccount ->
  -- | 'partnerAccountId'
  Prelude.Text ->
  -- | 'partnerType'
  PartnerType ->
  UpdatePartnerAccount
newUpdatePartnerAccount
  pSidewalk_
  pPartnerAccountId_
  pPartnerType_ =
    UpdatePartnerAccount'
      { sidewalk = pSidewalk_,
        partnerAccountId = pPartnerAccountId_,
        partnerType = pPartnerType_
      }

-- | The Sidewalk account credentials.
updatePartnerAccount_sidewalk :: Lens.Lens' UpdatePartnerAccount SidewalkUpdateAccount
updatePartnerAccount_sidewalk = Lens.lens (\UpdatePartnerAccount' {sidewalk} -> sidewalk) (\s@UpdatePartnerAccount' {} a -> s {sidewalk = a} :: UpdatePartnerAccount)

-- | The ID of the partner account to update.
updatePartnerAccount_partnerAccountId :: Lens.Lens' UpdatePartnerAccount Prelude.Text
updatePartnerAccount_partnerAccountId = Lens.lens (\UpdatePartnerAccount' {partnerAccountId} -> partnerAccountId) (\s@UpdatePartnerAccount' {} a -> s {partnerAccountId = a} :: UpdatePartnerAccount)

-- | The partner type.
updatePartnerAccount_partnerType :: Lens.Lens' UpdatePartnerAccount PartnerType
updatePartnerAccount_partnerType = Lens.lens (\UpdatePartnerAccount' {partnerType} -> partnerType) (\s@UpdatePartnerAccount' {} a -> s {partnerType = a} :: UpdatePartnerAccount)

instance Core.AWSRequest UpdatePartnerAccount where
  type
    AWSResponse UpdatePartnerAccount =
      UpdatePartnerAccountResponse
  request = Request.patchJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdatePartnerAccountResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdatePartnerAccount

instance Prelude.NFData UpdatePartnerAccount

instance Core.ToHeaders UpdatePartnerAccount where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON UpdatePartnerAccount where
  toJSON UpdatePartnerAccount' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("Sidewalk" Core..= sidewalk)]
      )

instance Core.ToPath UpdatePartnerAccount where
  toPath UpdatePartnerAccount' {..} =
    Prelude.mconcat
      ["/partner-accounts/", Core.toBS partnerAccountId]

instance Core.ToQuery UpdatePartnerAccount where
  toQuery UpdatePartnerAccount' {..} =
    Prelude.mconcat ["partnerType" Core.=: partnerType]

-- | /See:/ 'newUpdatePartnerAccountResponse' smart constructor.
data UpdatePartnerAccountResponse = UpdatePartnerAccountResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdatePartnerAccountResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updatePartnerAccountResponse_httpStatus' - The response's http status code.
newUpdatePartnerAccountResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdatePartnerAccountResponse
newUpdatePartnerAccountResponse pHttpStatus_ =
  UpdatePartnerAccountResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
updatePartnerAccountResponse_httpStatus :: Lens.Lens' UpdatePartnerAccountResponse Prelude.Int
updatePartnerAccountResponse_httpStatus = Lens.lens (\UpdatePartnerAccountResponse' {httpStatus} -> httpStatus) (\s@UpdatePartnerAccountResponse' {} a -> s {httpStatus = a} :: UpdatePartnerAccountResponse)

instance Prelude.NFData UpdatePartnerAccountResponse
