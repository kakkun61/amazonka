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
-- Module      : Network.AWS.ServiceQuotas.GetServiceQuotaIncreaseRequestFromTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the specified quota increase request in your
-- quota request template.
module Network.AWS.ServiceQuotas.GetServiceQuotaIncreaseRequestFromTemplate
  ( -- * Creating a Request
    GetServiceQuotaIncreaseRequestFromTemplate (..),
    newGetServiceQuotaIncreaseRequestFromTemplate,

    -- * Request Lenses
    getServiceQuotaIncreaseRequestFromTemplate_serviceCode,
    getServiceQuotaIncreaseRequestFromTemplate_quotaCode,
    getServiceQuotaIncreaseRequestFromTemplate_awsRegion,

    -- * Destructuring the Response
    GetServiceQuotaIncreaseRequestFromTemplateResponse (..),
    newGetServiceQuotaIncreaseRequestFromTemplateResponse,

    -- * Response Lenses
    getServiceQuotaIncreaseRequestFromTemplateResponse_serviceQuotaIncreaseRequestInTemplate,
    getServiceQuotaIncreaseRequestFromTemplateResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.ServiceQuotas.Types

-- | /See:/ 'newGetServiceQuotaIncreaseRequestFromTemplate' smart constructor.
data GetServiceQuotaIncreaseRequestFromTemplate = GetServiceQuotaIncreaseRequestFromTemplate'
  { -- | The service identifier.
    serviceCode :: Prelude.Text,
    -- | The quota identifier.
    quotaCode :: Prelude.Text,
    -- | The AWS Region.
    awsRegion :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetServiceQuotaIncreaseRequestFromTemplate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'serviceCode', 'getServiceQuotaIncreaseRequestFromTemplate_serviceCode' - The service identifier.
--
-- 'quotaCode', 'getServiceQuotaIncreaseRequestFromTemplate_quotaCode' - The quota identifier.
--
-- 'awsRegion', 'getServiceQuotaIncreaseRequestFromTemplate_awsRegion' - The AWS Region.
newGetServiceQuotaIncreaseRequestFromTemplate ::
  -- | 'serviceCode'
  Prelude.Text ->
  -- | 'quotaCode'
  Prelude.Text ->
  -- | 'awsRegion'
  Prelude.Text ->
  GetServiceQuotaIncreaseRequestFromTemplate
newGetServiceQuotaIncreaseRequestFromTemplate
  pServiceCode_
  pQuotaCode_
  pAwsRegion_ =
    GetServiceQuotaIncreaseRequestFromTemplate'
      { serviceCode =
          pServiceCode_,
        quotaCode = pQuotaCode_,
        awsRegion = pAwsRegion_
      }

-- | The service identifier.
getServiceQuotaIncreaseRequestFromTemplate_serviceCode :: Lens.Lens' GetServiceQuotaIncreaseRequestFromTemplate Prelude.Text
getServiceQuotaIncreaseRequestFromTemplate_serviceCode = Lens.lens (\GetServiceQuotaIncreaseRequestFromTemplate' {serviceCode} -> serviceCode) (\s@GetServiceQuotaIncreaseRequestFromTemplate' {} a -> s {serviceCode = a} :: GetServiceQuotaIncreaseRequestFromTemplate)

-- | The quota identifier.
getServiceQuotaIncreaseRequestFromTemplate_quotaCode :: Lens.Lens' GetServiceQuotaIncreaseRequestFromTemplate Prelude.Text
getServiceQuotaIncreaseRequestFromTemplate_quotaCode = Lens.lens (\GetServiceQuotaIncreaseRequestFromTemplate' {quotaCode} -> quotaCode) (\s@GetServiceQuotaIncreaseRequestFromTemplate' {} a -> s {quotaCode = a} :: GetServiceQuotaIncreaseRequestFromTemplate)

-- | The AWS Region.
getServiceQuotaIncreaseRequestFromTemplate_awsRegion :: Lens.Lens' GetServiceQuotaIncreaseRequestFromTemplate Prelude.Text
getServiceQuotaIncreaseRequestFromTemplate_awsRegion = Lens.lens (\GetServiceQuotaIncreaseRequestFromTemplate' {awsRegion} -> awsRegion) (\s@GetServiceQuotaIncreaseRequestFromTemplate' {} a -> s {awsRegion = a} :: GetServiceQuotaIncreaseRequestFromTemplate)

instance
  Core.AWSRequest
    GetServiceQuotaIncreaseRequestFromTemplate
  where
  type
    AWSResponse
      GetServiceQuotaIncreaseRequestFromTemplate =
      GetServiceQuotaIncreaseRequestFromTemplateResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetServiceQuotaIncreaseRequestFromTemplateResponse'
            Prelude.<$> (x Core..?> "ServiceQuotaIncreaseRequestInTemplate")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    GetServiceQuotaIncreaseRequestFromTemplate

instance
  Prelude.NFData
    GetServiceQuotaIncreaseRequestFromTemplate

instance
  Core.ToHeaders
    GetServiceQuotaIncreaseRequestFromTemplate
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "ServiceQuotasV20190624.GetServiceQuotaIncreaseRequestFromTemplate" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    GetServiceQuotaIncreaseRequestFromTemplate
  where
  toJSON
    GetServiceQuotaIncreaseRequestFromTemplate' {..} =
      Core.object
        ( Prelude.catMaybes
            [ Prelude.Just ("ServiceCode" Core..= serviceCode),
              Prelude.Just ("QuotaCode" Core..= quotaCode),
              Prelude.Just ("AwsRegion" Core..= awsRegion)
            ]
        )

instance
  Core.ToPath
    GetServiceQuotaIncreaseRequestFromTemplate
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    GetServiceQuotaIncreaseRequestFromTemplate
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetServiceQuotaIncreaseRequestFromTemplateResponse' smart constructor.
data GetServiceQuotaIncreaseRequestFromTemplateResponse = GetServiceQuotaIncreaseRequestFromTemplateResponse'
  { -- | Information about the quota increase request.
    serviceQuotaIncreaseRequestInTemplate :: Prelude.Maybe ServiceQuotaIncreaseRequestInTemplate,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetServiceQuotaIncreaseRequestFromTemplateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'serviceQuotaIncreaseRequestInTemplate', 'getServiceQuotaIncreaseRequestFromTemplateResponse_serviceQuotaIncreaseRequestInTemplate' - Information about the quota increase request.
--
-- 'httpStatus', 'getServiceQuotaIncreaseRequestFromTemplateResponse_httpStatus' - The response's http status code.
newGetServiceQuotaIncreaseRequestFromTemplateResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetServiceQuotaIncreaseRequestFromTemplateResponse
newGetServiceQuotaIncreaseRequestFromTemplateResponse
  pHttpStatus_ =
    GetServiceQuotaIncreaseRequestFromTemplateResponse'
      { serviceQuotaIncreaseRequestInTemplate =
          Prelude.Nothing,
        httpStatus =
          pHttpStatus_
      }

-- | Information about the quota increase request.
getServiceQuotaIncreaseRequestFromTemplateResponse_serviceQuotaIncreaseRequestInTemplate :: Lens.Lens' GetServiceQuotaIncreaseRequestFromTemplateResponse (Prelude.Maybe ServiceQuotaIncreaseRequestInTemplate)
getServiceQuotaIncreaseRequestFromTemplateResponse_serviceQuotaIncreaseRequestInTemplate = Lens.lens (\GetServiceQuotaIncreaseRequestFromTemplateResponse' {serviceQuotaIncreaseRequestInTemplate} -> serviceQuotaIncreaseRequestInTemplate) (\s@GetServiceQuotaIncreaseRequestFromTemplateResponse' {} a -> s {serviceQuotaIncreaseRequestInTemplate = a} :: GetServiceQuotaIncreaseRequestFromTemplateResponse)

-- | The response's http status code.
getServiceQuotaIncreaseRequestFromTemplateResponse_httpStatus :: Lens.Lens' GetServiceQuotaIncreaseRequestFromTemplateResponse Prelude.Int
getServiceQuotaIncreaseRequestFromTemplateResponse_httpStatus = Lens.lens (\GetServiceQuotaIncreaseRequestFromTemplateResponse' {httpStatus} -> httpStatus) (\s@GetServiceQuotaIncreaseRequestFromTemplateResponse' {} a -> s {httpStatus = a} :: GetServiceQuotaIncreaseRequestFromTemplateResponse)

instance
  Prelude.NFData
    GetServiceQuotaIncreaseRequestFromTemplateResponse
