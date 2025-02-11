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
-- Module      : Network.AWS.ServiceQuotas.GetAWSDefaultServiceQuota
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the default value for the specified quota. The default value
-- does not reflect any quota increases.
module Network.AWS.ServiceQuotas.GetAWSDefaultServiceQuota
  ( -- * Creating a Request
    GetAWSDefaultServiceQuota (..),
    newGetAWSDefaultServiceQuota,

    -- * Request Lenses
    getAWSDefaultServiceQuota_serviceCode,
    getAWSDefaultServiceQuota_quotaCode,

    -- * Destructuring the Response
    GetAWSDefaultServiceQuotaResponse (..),
    newGetAWSDefaultServiceQuotaResponse,

    -- * Response Lenses
    getAWSDefaultServiceQuotaResponse_quota,
    getAWSDefaultServiceQuotaResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.ServiceQuotas.Types

-- | /See:/ 'newGetAWSDefaultServiceQuota' smart constructor.
data GetAWSDefaultServiceQuota = GetAWSDefaultServiceQuota'
  { -- | The service identifier.
    serviceCode :: Prelude.Text,
    -- | The quota identifier.
    quotaCode :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAWSDefaultServiceQuota' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'serviceCode', 'getAWSDefaultServiceQuota_serviceCode' - The service identifier.
--
-- 'quotaCode', 'getAWSDefaultServiceQuota_quotaCode' - The quota identifier.
newGetAWSDefaultServiceQuota ::
  -- | 'serviceCode'
  Prelude.Text ->
  -- | 'quotaCode'
  Prelude.Text ->
  GetAWSDefaultServiceQuota
newGetAWSDefaultServiceQuota
  pServiceCode_
  pQuotaCode_ =
    GetAWSDefaultServiceQuota'
      { serviceCode =
          pServiceCode_,
        quotaCode = pQuotaCode_
      }

-- | The service identifier.
getAWSDefaultServiceQuota_serviceCode :: Lens.Lens' GetAWSDefaultServiceQuota Prelude.Text
getAWSDefaultServiceQuota_serviceCode = Lens.lens (\GetAWSDefaultServiceQuota' {serviceCode} -> serviceCode) (\s@GetAWSDefaultServiceQuota' {} a -> s {serviceCode = a} :: GetAWSDefaultServiceQuota)

-- | The quota identifier.
getAWSDefaultServiceQuota_quotaCode :: Lens.Lens' GetAWSDefaultServiceQuota Prelude.Text
getAWSDefaultServiceQuota_quotaCode = Lens.lens (\GetAWSDefaultServiceQuota' {quotaCode} -> quotaCode) (\s@GetAWSDefaultServiceQuota' {} a -> s {quotaCode = a} :: GetAWSDefaultServiceQuota)

instance Core.AWSRequest GetAWSDefaultServiceQuota where
  type
    AWSResponse GetAWSDefaultServiceQuota =
      GetAWSDefaultServiceQuotaResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetAWSDefaultServiceQuotaResponse'
            Prelude.<$> (x Core..?> "Quota")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetAWSDefaultServiceQuota

instance Prelude.NFData GetAWSDefaultServiceQuota

instance Core.ToHeaders GetAWSDefaultServiceQuota where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "ServiceQuotasV20190624.GetAWSDefaultServiceQuota" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetAWSDefaultServiceQuota where
  toJSON GetAWSDefaultServiceQuota' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("ServiceCode" Core..= serviceCode),
            Prelude.Just ("QuotaCode" Core..= quotaCode)
          ]
      )

instance Core.ToPath GetAWSDefaultServiceQuota where
  toPath = Prelude.const "/"

instance Core.ToQuery GetAWSDefaultServiceQuota where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetAWSDefaultServiceQuotaResponse' smart constructor.
data GetAWSDefaultServiceQuotaResponse = GetAWSDefaultServiceQuotaResponse'
  { -- | Information about the quota.
    quota :: Prelude.Maybe ServiceQuota,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAWSDefaultServiceQuotaResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'quota', 'getAWSDefaultServiceQuotaResponse_quota' - Information about the quota.
--
-- 'httpStatus', 'getAWSDefaultServiceQuotaResponse_httpStatus' - The response's http status code.
newGetAWSDefaultServiceQuotaResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetAWSDefaultServiceQuotaResponse
newGetAWSDefaultServiceQuotaResponse pHttpStatus_ =
  GetAWSDefaultServiceQuotaResponse'
    { quota =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the quota.
getAWSDefaultServiceQuotaResponse_quota :: Lens.Lens' GetAWSDefaultServiceQuotaResponse (Prelude.Maybe ServiceQuota)
getAWSDefaultServiceQuotaResponse_quota = Lens.lens (\GetAWSDefaultServiceQuotaResponse' {quota} -> quota) (\s@GetAWSDefaultServiceQuotaResponse' {} a -> s {quota = a} :: GetAWSDefaultServiceQuotaResponse)

-- | The response's http status code.
getAWSDefaultServiceQuotaResponse_httpStatus :: Lens.Lens' GetAWSDefaultServiceQuotaResponse Prelude.Int
getAWSDefaultServiceQuotaResponse_httpStatus = Lens.lens (\GetAWSDefaultServiceQuotaResponse' {httpStatus} -> httpStatus) (\s@GetAWSDefaultServiceQuotaResponse' {} a -> s {httpStatus = a} :: GetAWSDefaultServiceQuotaResponse)

instance
  Prelude.NFData
    GetAWSDefaultServiceQuotaResponse
