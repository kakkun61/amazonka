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
-- Module      : Network.AWS.Chime.UpdateSipMediaApplication
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the details of the specified SIP media application.
module Network.AWS.Chime.UpdateSipMediaApplication
  ( -- * Creating a Request
    UpdateSipMediaApplication (..),
    newUpdateSipMediaApplication,

    -- * Request Lenses
    updateSipMediaApplication_name,
    updateSipMediaApplication_endpoints,
    updateSipMediaApplication_sipMediaApplicationId,

    -- * Destructuring the Response
    UpdateSipMediaApplicationResponse (..),
    newUpdateSipMediaApplicationResponse,

    -- * Response Lenses
    updateSipMediaApplicationResponse_sipMediaApplication,
    updateSipMediaApplicationResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateSipMediaApplication' smart constructor.
data UpdateSipMediaApplication = UpdateSipMediaApplication'
  { -- | The new name for the specified SIP media application.
    name :: Prelude.Maybe Prelude.Text,
    -- | The new set of endpoints for the specified SIP media application.
    endpoints :: Prelude.Maybe (Prelude.NonEmpty SipMediaApplicationEndpoint),
    -- | The SIP media application ID.
    sipMediaApplicationId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateSipMediaApplication' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'updateSipMediaApplication_name' - The new name for the specified SIP media application.
--
-- 'endpoints', 'updateSipMediaApplication_endpoints' - The new set of endpoints for the specified SIP media application.
--
-- 'sipMediaApplicationId', 'updateSipMediaApplication_sipMediaApplicationId' - The SIP media application ID.
newUpdateSipMediaApplication ::
  -- | 'sipMediaApplicationId'
  Prelude.Text ->
  UpdateSipMediaApplication
newUpdateSipMediaApplication pSipMediaApplicationId_ =
  UpdateSipMediaApplication'
    { name = Prelude.Nothing,
      endpoints = Prelude.Nothing,
      sipMediaApplicationId = pSipMediaApplicationId_
    }

-- | The new name for the specified SIP media application.
updateSipMediaApplication_name :: Lens.Lens' UpdateSipMediaApplication (Prelude.Maybe Prelude.Text)
updateSipMediaApplication_name = Lens.lens (\UpdateSipMediaApplication' {name} -> name) (\s@UpdateSipMediaApplication' {} a -> s {name = a} :: UpdateSipMediaApplication)

-- | The new set of endpoints for the specified SIP media application.
updateSipMediaApplication_endpoints :: Lens.Lens' UpdateSipMediaApplication (Prelude.Maybe (Prelude.NonEmpty SipMediaApplicationEndpoint))
updateSipMediaApplication_endpoints = Lens.lens (\UpdateSipMediaApplication' {endpoints} -> endpoints) (\s@UpdateSipMediaApplication' {} a -> s {endpoints = a} :: UpdateSipMediaApplication) Prelude.. Lens.mapping Lens.coerced

-- | The SIP media application ID.
updateSipMediaApplication_sipMediaApplicationId :: Lens.Lens' UpdateSipMediaApplication Prelude.Text
updateSipMediaApplication_sipMediaApplicationId = Lens.lens (\UpdateSipMediaApplication' {sipMediaApplicationId} -> sipMediaApplicationId) (\s@UpdateSipMediaApplication' {} a -> s {sipMediaApplicationId = a} :: UpdateSipMediaApplication)

instance Core.AWSRequest UpdateSipMediaApplication where
  type
    AWSResponse UpdateSipMediaApplication =
      UpdateSipMediaApplicationResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateSipMediaApplicationResponse'
            Prelude.<$> (x Core..?> "SipMediaApplication")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateSipMediaApplication

instance Prelude.NFData UpdateSipMediaApplication

instance Core.ToHeaders UpdateSipMediaApplication where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON UpdateSipMediaApplication where
  toJSON UpdateSipMediaApplication' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Name" Core..=) Prelude.<$> name,
            ("Endpoints" Core..=) Prelude.<$> endpoints
          ]
      )

instance Core.ToPath UpdateSipMediaApplication where
  toPath UpdateSipMediaApplication' {..} =
    Prelude.mconcat
      [ "/sip-media-applications/",
        Core.toBS sipMediaApplicationId
      ]

instance Core.ToQuery UpdateSipMediaApplication where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateSipMediaApplicationResponse' smart constructor.
data UpdateSipMediaApplicationResponse = UpdateSipMediaApplicationResponse'
  { -- | The updated SIP media application details.
    sipMediaApplication :: Prelude.Maybe SipMediaApplication,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateSipMediaApplicationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sipMediaApplication', 'updateSipMediaApplicationResponse_sipMediaApplication' - The updated SIP media application details.
--
-- 'httpStatus', 'updateSipMediaApplicationResponse_httpStatus' - The response's http status code.
newUpdateSipMediaApplicationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateSipMediaApplicationResponse
newUpdateSipMediaApplicationResponse pHttpStatus_ =
  UpdateSipMediaApplicationResponse'
    { sipMediaApplication =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The updated SIP media application details.
updateSipMediaApplicationResponse_sipMediaApplication :: Lens.Lens' UpdateSipMediaApplicationResponse (Prelude.Maybe SipMediaApplication)
updateSipMediaApplicationResponse_sipMediaApplication = Lens.lens (\UpdateSipMediaApplicationResponse' {sipMediaApplication} -> sipMediaApplication) (\s@UpdateSipMediaApplicationResponse' {} a -> s {sipMediaApplication = a} :: UpdateSipMediaApplicationResponse)

-- | The response's http status code.
updateSipMediaApplicationResponse_httpStatus :: Lens.Lens' UpdateSipMediaApplicationResponse Prelude.Int
updateSipMediaApplicationResponse_httpStatus = Lens.lens (\UpdateSipMediaApplicationResponse' {httpStatus} -> httpStatus) (\s@UpdateSipMediaApplicationResponse' {} a -> s {httpStatus = a} :: UpdateSipMediaApplicationResponse)

instance
  Prelude.NFData
    UpdateSipMediaApplicationResponse
