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
-- Module      : Network.AWS.Snowball.UpdateLongTermPricing
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the long-term pricing type.
module Network.AWS.Snowball.UpdateLongTermPricing
  ( -- * Creating a Request
    UpdateLongTermPricing (..),
    newUpdateLongTermPricing,

    -- * Request Lenses
    updateLongTermPricing_isLongTermPricingAutoRenew,
    updateLongTermPricing_replacementJob,
    updateLongTermPricing_longTermPricingId,

    -- * Destructuring the Response
    UpdateLongTermPricingResponse (..),
    newUpdateLongTermPricingResponse,

    -- * Response Lenses
    updateLongTermPricingResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Snowball.Types

-- | /See:/ 'newUpdateLongTermPricing' smart constructor.
data UpdateLongTermPricing = UpdateLongTermPricing'
  { -- | If set to @true@, specifies that the current long-term pricing type for
    -- the device should be automatically renewed before the long-term pricing
    -- contract expires.
    isLongTermPricingAutoRenew :: Prelude.Maybe Prelude.Bool,
    -- | Specifies that a device that is ordered with long-term pricing should be
    -- replaced with a new device.
    replacementJob :: Prelude.Maybe Prelude.Text,
    -- | The ID of the long-term pricing type for the device.
    longTermPricingId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateLongTermPricing' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'isLongTermPricingAutoRenew', 'updateLongTermPricing_isLongTermPricingAutoRenew' - If set to @true@, specifies that the current long-term pricing type for
-- the device should be automatically renewed before the long-term pricing
-- contract expires.
--
-- 'replacementJob', 'updateLongTermPricing_replacementJob' - Specifies that a device that is ordered with long-term pricing should be
-- replaced with a new device.
--
-- 'longTermPricingId', 'updateLongTermPricing_longTermPricingId' - The ID of the long-term pricing type for the device.
newUpdateLongTermPricing ::
  -- | 'longTermPricingId'
  Prelude.Text ->
  UpdateLongTermPricing
newUpdateLongTermPricing pLongTermPricingId_ =
  UpdateLongTermPricing'
    { isLongTermPricingAutoRenew =
        Prelude.Nothing,
      replacementJob = Prelude.Nothing,
      longTermPricingId = pLongTermPricingId_
    }

-- | If set to @true@, specifies that the current long-term pricing type for
-- the device should be automatically renewed before the long-term pricing
-- contract expires.
updateLongTermPricing_isLongTermPricingAutoRenew :: Lens.Lens' UpdateLongTermPricing (Prelude.Maybe Prelude.Bool)
updateLongTermPricing_isLongTermPricingAutoRenew = Lens.lens (\UpdateLongTermPricing' {isLongTermPricingAutoRenew} -> isLongTermPricingAutoRenew) (\s@UpdateLongTermPricing' {} a -> s {isLongTermPricingAutoRenew = a} :: UpdateLongTermPricing)

-- | Specifies that a device that is ordered with long-term pricing should be
-- replaced with a new device.
updateLongTermPricing_replacementJob :: Lens.Lens' UpdateLongTermPricing (Prelude.Maybe Prelude.Text)
updateLongTermPricing_replacementJob = Lens.lens (\UpdateLongTermPricing' {replacementJob} -> replacementJob) (\s@UpdateLongTermPricing' {} a -> s {replacementJob = a} :: UpdateLongTermPricing)

-- | The ID of the long-term pricing type for the device.
updateLongTermPricing_longTermPricingId :: Lens.Lens' UpdateLongTermPricing Prelude.Text
updateLongTermPricing_longTermPricingId = Lens.lens (\UpdateLongTermPricing' {longTermPricingId} -> longTermPricingId) (\s@UpdateLongTermPricing' {} a -> s {longTermPricingId = a} :: UpdateLongTermPricing)

instance Core.AWSRequest UpdateLongTermPricing where
  type
    AWSResponse UpdateLongTermPricing =
      UpdateLongTermPricingResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateLongTermPricingResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateLongTermPricing

instance Prelude.NFData UpdateLongTermPricing

instance Core.ToHeaders UpdateLongTermPricing where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSIESnowballJobManagementService.UpdateLongTermPricing" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateLongTermPricing where
  toJSON UpdateLongTermPricing' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("IsLongTermPricingAutoRenew" Core..=)
              Prelude.<$> isLongTermPricingAutoRenew,
            ("ReplacementJob" Core..=)
              Prelude.<$> replacementJob,
            Prelude.Just
              ("LongTermPricingId" Core..= longTermPricingId)
          ]
      )

instance Core.ToPath UpdateLongTermPricing where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateLongTermPricing where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateLongTermPricingResponse' smart constructor.
data UpdateLongTermPricingResponse = UpdateLongTermPricingResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateLongTermPricingResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateLongTermPricingResponse_httpStatus' - The response's http status code.
newUpdateLongTermPricingResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateLongTermPricingResponse
newUpdateLongTermPricingResponse pHttpStatus_ =
  UpdateLongTermPricingResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
updateLongTermPricingResponse_httpStatus :: Lens.Lens' UpdateLongTermPricingResponse Prelude.Int
updateLongTermPricingResponse_httpStatus = Lens.lens (\UpdateLongTermPricingResponse' {httpStatus} -> httpStatus) (\s@UpdateLongTermPricingResponse' {} a -> s {httpStatus = a} :: UpdateLongTermPricingResponse)

instance Prelude.NFData UpdateLongTermPricingResponse
