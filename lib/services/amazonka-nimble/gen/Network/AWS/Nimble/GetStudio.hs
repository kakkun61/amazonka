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
-- Module      : Network.AWS.Nimble.GetStudio
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a Studio resource.
module Network.AWS.Nimble.GetStudio
  ( -- * Creating a Request
    GetStudio (..),
    newGetStudio,

    -- * Request Lenses
    getStudio_studioId,

    -- * Destructuring the Response
    GetStudioResponse (..),
    newGetStudioResponse,

    -- * Response Lenses
    getStudioResponse_studio,
    getStudioResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Nimble.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetStudio' smart constructor.
data GetStudio = GetStudio'
  { -- | The studio ID.
    studioId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetStudio' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'studioId', 'getStudio_studioId' - The studio ID.
newGetStudio ::
  -- | 'studioId'
  Prelude.Text ->
  GetStudio
newGetStudio pStudioId_ =
  GetStudio' {studioId = pStudioId_}

-- | The studio ID.
getStudio_studioId :: Lens.Lens' GetStudio Prelude.Text
getStudio_studioId = Lens.lens (\GetStudio' {studioId} -> studioId) (\s@GetStudio' {} a -> s {studioId = a} :: GetStudio)

instance Core.AWSRequest GetStudio where
  type AWSResponse GetStudio = GetStudioResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetStudioResponse'
            Prelude.<$> (x Core..?> "studio")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetStudio

instance Prelude.NFData GetStudio

instance Core.ToHeaders GetStudio where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetStudio where
  toPath GetStudio' {..} =
    Prelude.mconcat
      ["/2020-08-01/studios/", Core.toBS studioId]

instance Core.ToQuery GetStudio where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetStudioResponse' smart constructor.
data GetStudioResponse = GetStudioResponse'
  { -- | Information about a studio.
    studio :: Prelude.Maybe Studio,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetStudioResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'studio', 'getStudioResponse_studio' - Information about a studio.
--
-- 'httpStatus', 'getStudioResponse_httpStatus' - The response's http status code.
newGetStudioResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetStudioResponse
newGetStudioResponse pHttpStatus_ =
  GetStudioResponse'
    { studio = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about a studio.
getStudioResponse_studio :: Lens.Lens' GetStudioResponse (Prelude.Maybe Studio)
getStudioResponse_studio = Lens.lens (\GetStudioResponse' {studio} -> studio) (\s@GetStudioResponse' {} a -> s {studio = a} :: GetStudioResponse)

-- | The response's http status code.
getStudioResponse_httpStatus :: Lens.Lens' GetStudioResponse Prelude.Int
getStudioResponse_httpStatus = Lens.lens (\GetStudioResponse' {httpStatus} -> httpStatus) (\s@GetStudioResponse' {} a -> s {httpStatus = a} :: GetStudioResponse)

instance Prelude.NFData GetStudioResponse
