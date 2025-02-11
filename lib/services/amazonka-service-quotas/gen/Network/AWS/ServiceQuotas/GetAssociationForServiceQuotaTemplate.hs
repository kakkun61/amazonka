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
-- Module      : Network.AWS.ServiceQuotas.GetAssociationForServiceQuotaTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the status of the association for the quota request template.
module Network.AWS.ServiceQuotas.GetAssociationForServiceQuotaTemplate
  ( -- * Creating a Request
    GetAssociationForServiceQuotaTemplate (..),
    newGetAssociationForServiceQuotaTemplate,

    -- * Destructuring the Response
    GetAssociationForServiceQuotaTemplateResponse (..),
    newGetAssociationForServiceQuotaTemplateResponse,

    -- * Response Lenses
    getAssociationForServiceQuotaTemplateResponse_serviceQuotaTemplateAssociationStatus,
    getAssociationForServiceQuotaTemplateResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.ServiceQuotas.Types

-- | /See:/ 'newGetAssociationForServiceQuotaTemplate' smart constructor.
data GetAssociationForServiceQuotaTemplate = GetAssociationForServiceQuotaTemplate'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAssociationForServiceQuotaTemplate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newGetAssociationForServiceQuotaTemplate ::
  GetAssociationForServiceQuotaTemplate
newGetAssociationForServiceQuotaTemplate =
  GetAssociationForServiceQuotaTemplate'

instance
  Core.AWSRequest
    GetAssociationForServiceQuotaTemplate
  where
  type
    AWSResponse
      GetAssociationForServiceQuotaTemplate =
      GetAssociationForServiceQuotaTemplateResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetAssociationForServiceQuotaTemplateResponse'
            Prelude.<$> (x Core..?> "ServiceQuotaTemplateAssociationStatus")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    GetAssociationForServiceQuotaTemplate

instance
  Prelude.NFData
    GetAssociationForServiceQuotaTemplate

instance
  Core.ToHeaders
    GetAssociationForServiceQuotaTemplate
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "ServiceQuotasV20190624.GetAssociationForServiceQuotaTemplate" ::
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
    GetAssociationForServiceQuotaTemplate
  where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance
  Core.ToPath
    GetAssociationForServiceQuotaTemplate
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    GetAssociationForServiceQuotaTemplate
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetAssociationForServiceQuotaTemplateResponse' smart constructor.
data GetAssociationForServiceQuotaTemplateResponse = GetAssociationForServiceQuotaTemplateResponse'
  { -- | The association status. If the status is @ASSOCIATED@, the quota
    -- increase requests in the template are automatically applied to new
    -- accounts in your organization.
    serviceQuotaTemplateAssociationStatus :: Prelude.Maybe ServiceQuotaTemplateAssociationStatus,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAssociationForServiceQuotaTemplateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'serviceQuotaTemplateAssociationStatus', 'getAssociationForServiceQuotaTemplateResponse_serviceQuotaTemplateAssociationStatus' - The association status. If the status is @ASSOCIATED@, the quota
-- increase requests in the template are automatically applied to new
-- accounts in your organization.
--
-- 'httpStatus', 'getAssociationForServiceQuotaTemplateResponse_httpStatus' - The response's http status code.
newGetAssociationForServiceQuotaTemplateResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetAssociationForServiceQuotaTemplateResponse
newGetAssociationForServiceQuotaTemplateResponse
  pHttpStatus_ =
    GetAssociationForServiceQuotaTemplateResponse'
      { serviceQuotaTemplateAssociationStatus =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The association status. If the status is @ASSOCIATED@, the quota
-- increase requests in the template are automatically applied to new
-- accounts in your organization.
getAssociationForServiceQuotaTemplateResponse_serviceQuotaTemplateAssociationStatus :: Lens.Lens' GetAssociationForServiceQuotaTemplateResponse (Prelude.Maybe ServiceQuotaTemplateAssociationStatus)
getAssociationForServiceQuotaTemplateResponse_serviceQuotaTemplateAssociationStatus = Lens.lens (\GetAssociationForServiceQuotaTemplateResponse' {serviceQuotaTemplateAssociationStatus} -> serviceQuotaTemplateAssociationStatus) (\s@GetAssociationForServiceQuotaTemplateResponse' {} a -> s {serviceQuotaTemplateAssociationStatus = a} :: GetAssociationForServiceQuotaTemplateResponse)

-- | The response's http status code.
getAssociationForServiceQuotaTemplateResponse_httpStatus :: Lens.Lens' GetAssociationForServiceQuotaTemplateResponse Prelude.Int
getAssociationForServiceQuotaTemplateResponse_httpStatus = Lens.lens (\GetAssociationForServiceQuotaTemplateResponse' {httpStatus} -> httpStatus) (\s@GetAssociationForServiceQuotaTemplateResponse' {} a -> s {httpStatus = a} :: GetAssociationForServiceQuotaTemplateResponse)

instance
  Prelude.NFData
    GetAssociationForServiceQuotaTemplateResponse
