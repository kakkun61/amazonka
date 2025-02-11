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
-- Module      : Network.AWS.ServiceQuotas.DeleteServiceQuotaIncreaseRequestFromTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the quota increase request for the specified quota from your
-- quota request template.
module Network.AWS.ServiceQuotas.DeleteServiceQuotaIncreaseRequestFromTemplate
  ( -- * Creating a Request
    DeleteServiceQuotaIncreaseRequestFromTemplate (..),
    newDeleteServiceQuotaIncreaseRequestFromTemplate,

    -- * Request Lenses
    deleteServiceQuotaIncreaseRequestFromTemplate_serviceCode,
    deleteServiceQuotaIncreaseRequestFromTemplate_quotaCode,
    deleteServiceQuotaIncreaseRequestFromTemplate_awsRegion,

    -- * Destructuring the Response
    DeleteServiceQuotaIncreaseRequestFromTemplateResponse (..),
    newDeleteServiceQuotaIncreaseRequestFromTemplateResponse,

    -- * Response Lenses
    deleteServiceQuotaIncreaseRequestFromTemplateResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.ServiceQuotas.Types

-- | /See:/ 'newDeleteServiceQuotaIncreaseRequestFromTemplate' smart constructor.
data DeleteServiceQuotaIncreaseRequestFromTemplate = DeleteServiceQuotaIncreaseRequestFromTemplate'
  { -- | The service identifier.
    serviceCode :: Prelude.Text,
    -- | The quota identifier.
    quotaCode :: Prelude.Text,
    -- | The AWS Region.
    awsRegion :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteServiceQuotaIncreaseRequestFromTemplate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'serviceCode', 'deleteServiceQuotaIncreaseRequestFromTemplate_serviceCode' - The service identifier.
--
-- 'quotaCode', 'deleteServiceQuotaIncreaseRequestFromTemplate_quotaCode' - The quota identifier.
--
-- 'awsRegion', 'deleteServiceQuotaIncreaseRequestFromTemplate_awsRegion' - The AWS Region.
newDeleteServiceQuotaIncreaseRequestFromTemplate ::
  -- | 'serviceCode'
  Prelude.Text ->
  -- | 'quotaCode'
  Prelude.Text ->
  -- | 'awsRegion'
  Prelude.Text ->
  DeleteServiceQuotaIncreaseRequestFromTemplate
newDeleteServiceQuotaIncreaseRequestFromTemplate
  pServiceCode_
  pQuotaCode_
  pAwsRegion_ =
    DeleteServiceQuotaIncreaseRequestFromTemplate'
      { serviceCode =
          pServiceCode_,
        quotaCode = pQuotaCode_,
        awsRegion = pAwsRegion_
      }

-- | The service identifier.
deleteServiceQuotaIncreaseRequestFromTemplate_serviceCode :: Lens.Lens' DeleteServiceQuotaIncreaseRequestFromTemplate Prelude.Text
deleteServiceQuotaIncreaseRequestFromTemplate_serviceCode = Lens.lens (\DeleteServiceQuotaIncreaseRequestFromTemplate' {serviceCode} -> serviceCode) (\s@DeleteServiceQuotaIncreaseRequestFromTemplate' {} a -> s {serviceCode = a} :: DeleteServiceQuotaIncreaseRequestFromTemplate)

-- | The quota identifier.
deleteServiceQuotaIncreaseRequestFromTemplate_quotaCode :: Lens.Lens' DeleteServiceQuotaIncreaseRequestFromTemplate Prelude.Text
deleteServiceQuotaIncreaseRequestFromTemplate_quotaCode = Lens.lens (\DeleteServiceQuotaIncreaseRequestFromTemplate' {quotaCode} -> quotaCode) (\s@DeleteServiceQuotaIncreaseRequestFromTemplate' {} a -> s {quotaCode = a} :: DeleteServiceQuotaIncreaseRequestFromTemplate)

-- | The AWS Region.
deleteServiceQuotaIncreaseRequestFromTemplate_awsRegion :: Lens.Lens' DeleteServiceQuotaIncreaseRequestFromTemplate Prelude.Text
deleteServiceQuotaIncreaseRequestFromTemplate_awsRegion = Lens.lens (\DeleteServiceQuotaIncreaseRequestFromTemplate' {awsRegion} -> awsRegion) (\s@DeleteServiceQuotaIncreaseRequestFromTemplate' {} a -> s {awsRegion = a} :: DeleteServiceQuotaIncreaseRequestFromTemplate)

instance
  Core.AWSRequest
    DeleteServiceQuotaIncreaseRequestFromTemplate
  where
  type
    AWSResponse
      DeleteServiceQuotaIncreaseRequestFromTemplate =
      DeleteServiceQuotaIncreaseRequestFromTemplateResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteServiceQuotaIncreaseRequestFromTemplateResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DeleteServiceQuotaIncreaseRequestFromTemplate

instance
  Prelude.NFData
    DeleteServiceQuotaIncreaseRequestFromTemplate

instance
  Core.ToHeaders
    DeleteServiceQuotaIncreaseRequestFromTemplate
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "ServiceQuotasV20190624.DeleteServiceQuotaIncreaseRequestFromTemplate" ::
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
    DeleteServiceQuotaIncreaseRequestFromTemplate
  where
  toJSON
    DeleteServiceQuotaIncreaseRequestFromTemplate' {..} =
      Core.object
        ( Prelude.catMaybes
            [ Prelude.Just ("ServiceCode" Core..= serviceCode),
              Prelude.Just ("QuotaCode" Core..= quotaCode),
              Prelude.Just ("AwsRegion" Core..= awsRegion)
            ]
        )

instance
  Core.ToPath
    DeleteServiceQuotaIncreaseRequestFromTemplate
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    DeleteServiceQuotaIncreaseRequestFromTemplate
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteServiceQuotaIncreaseRequestFromTemplateResponse' smart constructor.
data DeleteServiceQuotaIncreaseRequestFromTemplateResponse = DeleteServiceQuotaIncreaseRequestFromTemplateResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteServiceQuotaIncreaseRequestFromTemplateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteServiceQuotaIncreaseRequestFromTemplateResponse_httpStatus' - The response's http status code.
newDeleteServiceQuotaIncreaseRequestFromTemplateResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteServiceQuotaIncreaseRequestFromTemplateResponse
newDeleteServiceQuotaIncreaseRequestFromTemplateResponse
  pHttpStatus_ =
    DeleteServiceQuotaIncreaseRequestFromTemplateResponse'
      { httpStatus =
          pHttpStatus_
      }

-- | The response's http status code.
deleteServiceQuotaIncreaseRequestFromTemplateResponse_httpStatus :: Lens.Lens' DeleteServiceQuotaIncreaseRequestFromTemplateResponse Prelude.Int
deleteServiceQuotaIncreaseRequestFromTemplateResponse_httpStatus = Lens.lens (\DeleteServiceQuotaIncreaseRequestFromTemplateResponse' {httpStatus} -> httpStatus) (\s@DeleteServiceQuotaIncreaseRequestFromTemplateResponse' {} a -> s {httpStatus = a} :: DeleteServiceQuotaIncreaseRequestFromTemplateResponse)

instance
  Prelude.NFData
    DeleteServiceQuotaIncreaseRequestFromTemplateResponse
