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
-- Module      : Network.AWS.FinSpace.GetEnvironment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the FinSpace environment object.
module Network.AWS.FinSpace.GetEnvironment
  ( -- * Creating a Request
    GetEnvironment (..),
    newGetEnvironment,

    -- * Request Lenses
    getEnvironment_environmentId,

    -- * Destructuring the Response
    GetEnvironmentResponse (..),
    newGetEnvironmentResponse,

    -- * Response Lenses
    getEnvironmentResponse_environment,
    getEnvironmentResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.FinSpace.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetEnvironment' smart constructor.
data GetEnvironment = GetEnvironment'
  { -- | The identifier of the FinSpace environment.
    environmentId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetEnvironment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'environmentId', 'getEnvironment_environmentId' - The identifier of the FinSpace environment.
newGetEnvironment ::
  -- | 'environmentId'
  Prelude.Text ->
  GetEnvironment
newGetEnvironment pEnvironmentId_ =
  GetEnvironment' {environmentId = pEnvironmentId_}

-- | The identifier of the FinSpace environment.
getEnvironment_environmentId :: Lens.Lens' GetEnvironment Prelude.Text
getEnvironment_environmentId = Lens.lens (\GetEnvironment' {environmentId} -> environmentId) (\s@GetEnvironment' {} a -> s {environmentId = a} :: GetEnvironment)

instance Core.AWSRequest GetEnvironment where
  type
    AWSResponse GetEnvironment =
      GetEnvironmentResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetEnvironmentResponse'
            Prelude.<$> (x Core..?> "environment")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetEnvironment

instance Prelude.NFData GetEnvironment

instance Core.ToHeaders GetEnvironment where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetEnvironment where
  toPath GetEnvironment' {..} =
    Prelude.mconcat
      ["/environment/", Core.toBS environmentId]

instance Core.ToQuery GetEnvironment where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetEnvironmentResponse' smart constructor.
data GetEnvironmentResponse = GetEnvironmentResponse'
  { -- | The name of the FinSpace environment.
    environment :: Prelude.Maybe Environment,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetEnvironmentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'environment', 'getEnvironmentResponse_environment' - The name of the FinSpace environment.
--
-- 'httpStatus', 'getEnvironmentResponse_httpStatus' - The response's http status code.
newGetEnvironmentResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetEnvironmentResponse
newGetEnvironmentResponse pHttpStatus_ =
  GetEnvironmentResponse'
    { environment =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the FinSpace environment.
getEnvironmentResponse_environment :: Lens.Lens' GetEnvironmentResponse (Prelude.Maybe Environment)
getEnvironmentResponse_environment = Lens.lens (\GetEnvironmentResponse' {environment} -> environment) (\s@GetEnvironmentResponse' {} a -> s {environment = a} :: GetEnvironmentResponse)

-- | The response's http status code.
getEnvironmentResponse_httpStatus :: Lens.Lens' GetEnvironmentResponse Prelude.Int
getEnvironmentResponse_httpStatus = Lens.lens (\GetEnvironmentResponse' {httpStatus} -> httpStatus) (\s@GetEnvironmentResponse' {} a -> s {httpStatus = a} :: GetEnvironmentResponse)

instance Prelude.NFData GetEnvironmentResponse
