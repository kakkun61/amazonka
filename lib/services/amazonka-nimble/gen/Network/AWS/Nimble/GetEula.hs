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
-- Module      : Network.AWS.Nimble.GetEula
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get Eula.
module Network.AWS.Nimble.GetEula
  ( -- * Creating a Request
    GetEula (..),
    newGetEula,

    -- * Request Lenses
    getEula_eulaId,

    -- * Destructuring the Response
    GetEulaResponse (..),
    newGetEulaResponse,

    -- * Response Lenses
    getEulaResponse_eula,
    getEulaResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Nimble.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetEula' smart constructor.
data GetEula = GetEula'
  { -- | The EULA ID.
    eulaId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetEula' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eulaId', 'getEula_eulaId' - The EULA ID.
newGetEula ::
  -- | 'eulaId'
  Prelude.Text ->
  GetEula
newGetEula pEulaId_ = GetEula' {eulaId = pEulaId_}

-- | The EULA ID.
getEula_eulaId :: Lens.Lens' GetEula Prelude.Text
getEula_eulaId = Lens.lens (\GetEula' {eulaId} -> eulaId) (\s@GetEula' {} a -> s {eulaId = a} :: GetEula)

instance Core.AWSRequest GetEula where
  type AWSResponse GetEula = GetEulaResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetEulaResponse'
            Prelude.<$> (x Core..?> "eula")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetEula

instance Prelude.NFData GetEula

instance Core.ToHeaders GetEula where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetEula where
  toPath GetEula' {..} =
    Prelude.mconcat
      ["/2020-08-01/eulas/", Core.toBS eulaId]

instance Core.ToQuery GetEula where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetEulaResponse' smart constructor.
data GetEulaResponse = GetEulaResponse'
  { -- | The EULA.
    eula :: Prelude.Maybe Eula,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetEulaResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eula', 'getEulaResponse_eula' - The EULA.
--
-- 'httpStatus', 'getEulaResponse_httpStatus' - The response's http status code.
newGetEulaResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetEulaResponse
newGetEulaResponse pHttpStatus_ =
  GetEulaResponse'
    { eula = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The EULA.
getEulaResponse_eula :: Lens.Lens' GetEulaResponse (Prelude.Maybe Eula)
getEulaResponse_eula = Lens.lens (\GetEulaResponse' {eula} -> eula) (\s@GetEulaResponse' {} a -> s {eula = a} :: GetEulaResponse)

-- | The response's http status code.
getEulaResponse_httpStatus :: Lens.Lens' GetEulaResponse Prelude.Int
getEulaResponse_httpStatus = Lens.lens (\GetEulaResponse' {httpStatus} -> httpStatus) (\s@GetEulaResponse' {} a -> s {httpStatus = a} :: GetEulaResponse)

instance Prelude.NFData GetEulaResponse
