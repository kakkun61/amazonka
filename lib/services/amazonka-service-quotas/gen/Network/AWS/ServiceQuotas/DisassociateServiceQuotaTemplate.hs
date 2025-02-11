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
-- Module      : Network.AWS.ServiceQuotas.DisassociateServiceQuotaTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables your quota request template. After a template is disabled, the
-- quota increase requests in the template are not applied to new accounts
-- in your organization. Disabling a quota request template does not apply
-- its quota increase requests.
module Network.AWS.ServiceQuotas.DisassociateServiceQuotaTemplate
  ( -- * Creating a Request
    DisassociateServiceQuotaTemplate (..),
    newDisassociateServiceQuotaTemplate,

    -- * Destructuring the Response
    DisassociateServiceQuotaTemplateResponse (..),
    newDisassociateServiceQuotaTemplateResponse,

    -- * Response Lenses
    disassociateServiceQuotaTemplateResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.ServiceQuotas.Types

-- | /See:/ 'newDisassociateServiceQuotaTemplate' smart constructor.
data DisassociateServiceQuotaTemplate = DisassociateServiceQuotaTemplate'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateServiceQuotaTemplate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDisassociateServiceQuotaTemplate ::
  DisassociateServiceQuotaTemplate
newDisassociateServiceQuotaTemplate =
  DisassociateServiceQuotaTemplate'

instance
  Core.AWSRequest
    DisassociateServiceQuotaTemplate
  where
  type
    AWSResponse DisassociateServiceQuotaTemplate =
      DisassociateServiceQuotaTemplateResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DisassociateServiceQuotaTemplateResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DisassociateServiceQuotaTemplate

instance
  Prelude.NFData
    DisassociateServiceQuotaTemplate

instance
  Core.ToHeaders
    DisassociateServiceQuotaTemplate
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "ServiceQuotasV20190624.DisassociateServiceQuotaTemplate" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DisassociateServiceQuotaTemplate where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath DisassociateServiceQuotaTemplate where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    DisassociateServiceQuotaTemplate
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDisassociateServiceQuotaTemplateResponse' smart constructor.
data DisassociateServiceQuotaTemplateResponse = DisassociateServiceQuotaTemplateResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateServiceQuotaTemplateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'disassociateServiceQuotaTemplateResponse_httpStatus' - The response's http status code.
newDisassociateServiceQuotaTemplateResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DisassociateServiceQuotaTemplateResponse
newDisassociateServiceQuotaTemplateResponse
  pHttpStatus_ =
    DisassociateServiceQuotaTemplateResponse'
      { httpStatus =
          pHttpStatus_
      }

-- | The response's http status code.
disassociateServiceQuotaTemplateResponse_httpStatus :: Lens.Lens' DisassociateServiceQuotaTemplateResponse Prelude.Int
disassociateServiceQuotaTemplateResponse_httpStatus = Lens.lens (\DisassociateServiceQuotaTemplateResponse' {httpStatus} -> httpStatus) (\s@DisassociateServiceQuotaTemplateResponse' {} a -> s {httpStatus = a} :: DisassociateServiceQuotaTemplateResponse)

instance
  Prelude.NFData
    DisassociateServiceQuotaTemplateResponse
