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
-- Module      : Network.AWS.DirectConnect.ConfirmCustomerAgreement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The confirmation of the terms of agreement when creating the
-- connection\/link aggregation group (LAG).
module Network.AWS.DirectConnect.ConfirmCustomerAgreement
  ( -- * Creating a Request
    ConfirmCustomerAgreement (..),
    newConfirmCustomerAgreement,

    -- * Request Lenses
    confirmCustomerAgreement_agreementName,

    -- * Destructuring the Response
    ConfirmCustomerAgreementResponse (..),
    newConfirmCustomerAgreementResponse,

    -- * Response Lenses
    confirmCustomerAgreementResponse_status,
    confirmCustomerAgreementResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DirectConnect.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newConfirmCustomerAgreement' smart constructor.
data ConfirmCustomerAgreement = ConfirmCustomerAgreement'
  { -- | The name of the customer agreement.
    agreementName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConfirmCustomerAgreement' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'agreementName', 'confirmCustomerAgreement_agreementName' - The name of the customer agreement.
newConfirmCustomerAgreement ::
  ConfirmCustomerAgreement
newConfirmCustomerAgreement =
  ConfirmCustomerAgreement'
    { agreementName =
        Prelude.Nothing
    }

-- | The name of the customer agreement.
confirmCustomerAgreement_agreementName :: Lens.Lens' ConfirmCustomerAgreement (Prelude.Maybe Prelude.Text)
confirmCustomerAgreement_agreementName = Lens.lens (\ConfirmCustomerAgreement' {agreementName} -> agreementName) (\s@ConfirmCustomerAgreement' {} a -> s {agreementName = a} :: ConfirmCustomerAgreement)

instance Core.AWSRequest ConfirmCustomerAgreement where
  type
    AWSResponse ConfirmCustomerAgreement =
      ConfirmCustomerAgreementResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ConfirmCustomerAgreementResponse'
            Prelude.<$> (x Core..?> "status")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ConfirmCustomerAgreement

instance Prelude.NFData ConfirmCustomerAgreement

instance Core.ToHeaders ConfirmCustomerAgreement where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "OvertureService.ConfirmCustomerAgreement" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ConfirmCustomerAgreement where
  toJSON ConfirmCustomerAgreement' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("agreementName" Core..=)
              Prelude.<$> agreementName
          ]
      )

instance Core.ToPath ConfirmCustomerAgreement where
  toPath = Prelude.const "/"

instance Core.ToQuery ConfirmCustomerAgreement where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newConfirmCustomerAgreementResponse' smart constructor.
data ConfirmCustomerAgreementResponse = ConfirmCustomerAgreementResponse'
  { -- | The status of the customer agreement when the connection was created.
    -- This will be either @signed@ or @unsigned@.
    status :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConfirmCustomerAgreementResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'confirmCustomerAgreementResponse_status' - The status of the customer agreement when the connection was created.
-- This will be either @signed@ or @unsigned@.
--
-- 'httpStatus', 'confirmCustomerAgreementResponse_httpStatus' - The response's http status code.
newConfirmCustomerAgreementResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ConfirmCustomerAgreementResponse
newConfirmCustomerAgreementResponse pHttpStatus_ =
  ConfirmCustomerAgreementResponse'
    { status =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The status of the customer agreement when the connection was created.
-- This will be either @signed@ or @unsigned@.
confirmCustomerAgreementResponse_status :: Lens.Lens' ConfirmCustomerAgreementResponse (Prelude.Maybe Prelude.Text)
confirmCustomerAgreementResponse_status = Lens.lens (\ConfirmCustomerAgreementResponse' {status} -> status) (\s@ConfirmCustomerAgreementResponse' {} a -> s {status = a} :: ConfirmCustomerAgreementResponse)

-- | The response's http status code.
confirmCustomerAgreementResponse_httpStatus :: Lens.Lens' ConfirmCustomerAgreementResponse Prelude.Int
confirmCustomerAgreementResponse_httpStatus = Lens.lens (\ConfirmCustomerAgreementResponse' {httpStatus} -> httpStatus) (\s@ConfirmCustomerAgreementResponse' {} a -> s {httpStatus = a} :: ConfirmCustomerAgreementResponse)

instance
  Prelude.NFData
    ConfirmCustomerAgreementResponse
