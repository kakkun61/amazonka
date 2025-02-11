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
-- Module      : Network.AWS.Route53RecoveryReadiness.CreateCrossAccountAuthorization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new cross account readiness authorization.
module Network.AWS.Route53RecoveryReadiness.CreateCrossAccountAuthorization
  ( -- * Creating a Request
    CreateCrossAccountAuthorization (..),
    newCreateCrossAccountAuthorization,

    -- * Request Lenses
    createCrossAccountAuthorization_crossAccountAuthorization,

    -- * Destructuring the Response
    CreateCrossAccountAuthorizationResponse (..),
    newCreateCrossAccountAuthorizationResponse,

    -- * Response Lenses
    createCrossAccountAuthorizationResponse_crossAccountAuthorization,
    createCrossAccountAuthorizationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Route53RecoveryReadiness.Types

-- | The cross account authorization
--
-- /See:/ 'newCreateCrossAccountAuthorization' smart constructor.
data CreateCrossAccountAuthorization = CreateCrossAccountAuthorization'
  { -- | The cross account authorization
    crossAccountAuthorization :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateCrossAccountAuthorization' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'crossAccountAuthorization', 'createCrossAccountAuthorization_crossAccountAuthorization' - The cross account authorization
newCreateCrossAccountAuthorization ::
  -- | 'crossAccountAuthorization'
  Prelude.Text ->
  CreateCrossAccountAuthorization
newCreateCrossAccountAuthorization
  pCrossAccountAuthorization_ =
    CreateCrossAccountAuthorization'
      { crossAccountAuthorization =
          pCrossAccountAuthorization_
      }

-- | The cross account authorization
createCrossAccountAuthorization_crossAccountAuthorization :: Lens.Lens' CreateCrossAccountAuthorization Prelude.Text
createCrossAccountAuthorization_crossAccountAuthorization = Lens.lens (\CreateCrossAccountAuthorization' {crossAccountAuthorization} -> crossAccountAuthorization) (\s@CreateCrossAccountAuthorization' {} a -> s {crossAccountAuthorization = a} :: CreateCrossAccountAuthorization)

instance
  Core.AWSRequest
    CreateCrossAccountAuthorization
  where
  type
    AWSResponse CreateCrossAccountAuthorization =
      CreateCrossAccountAuthorizationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateCrossAccountAuthorizationResponse'
            Prelude.<$> (x Core..?> "crossAccountAuthorization")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    CreateCrossAccountAuthorization

instance
  Prelude.NFData
    CreateCrossAccountAuthorization

instance
  Core.ToHeaders
    CreateCrossAccountAuthorization
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateCrossAccountAuthorization where
  toJSON CreateCrossAccountAuthorization' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "crossAccountAuthorization"
                  Core..= crossAccountAuthorization
              )
          ]
      )

instance Core.ToPath CreateCrossAccountAuthorization where
  toPath = Prelude.const "/crossaccountauthorizations"

instance Core.ToQuery CreateCrossAccountAuthorization where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateCrossAccountAuthorizationResponse' smart constructor.
data CreateCrossAccountAuthorizationResponse = CreateCrossAccountAuthorizationResponse'
  { -- | The cross account authorization
    crossAccountAuthorization :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateCrossAccountAuthorizationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'crossAccountAuthorization', 'createCrossAccountAuthorizationResponse_crossAccountAuthorization' - The cross account authorization
--
-- 'httpStatus', 'createCrossAccountAuthorizationResponse_httpStatus' - The response's http status code.
newCreateCrossAccountAuthorizationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateCrossAccountAuthorizationResponse
newCreateCrossAccountAuthorizationResponse
  pHttpStatus_ =
    CreateCrossAccountAuthorizationResponse'
      { crossAccountAuthorization =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The cross account authorization
createCrossAccountAuthorizationResponse_crossAccountAuthorization :: Lens.Lens' CreateCrossAccountAuthorizationResponse (Prelude.Maybe Prelude.Text)
createCrossAccountAuthorizationResponse_crossAccountAuthorization = Lens.lens (\CreateCrossAccountAuthorizationResponse' {crossAccountAuthorization} -> crossAccountAuthorization) (\s@CreateCrossAccountAuthorizationResponse' {} a -> s {crossAccountAuthorization = a} :: CreateCrossAccountAuthorizationResponse)

-- | The response's http status code.
createCrossAccountAuthorizationResponse_httpStatus :: Lens.Lens' CreateCrossAccountAuthorizationResponse Prelude.Int
createCrossAccountAuthorizationResponse_httpStatus = Lens.lens (\CreateCrossAccountAuthorizationResponse' {httpStatus} -> httpStatus) (\s@CreateCrossAccountAuthorizationResponse' {} a -> s {httpStatus = a} :: CreateCrossAccountAuthorizationResponse)

instance
  Prelude.NFData
    CreateCrossAccountAuthorizationResponse
