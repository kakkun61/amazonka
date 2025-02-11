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
-- Module      : Network.AWS.Amplify.GetArtifactUrl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the artifact info that corresponds to an artifact id.
module Network.AWS.Amplify.GetArtifactUrl
  ( -- * Creating a Request
    GetArtifactUrl (..),
    newGetArtifactUrl,

    -- * Request Lenses
    getArtifactUrl_artifactId,

    -- * Destructuring the Response
    GetArtifactUrlResponse (..),
    newGetArtifactUrlResponse,

    -- * Response Lenses
    getArtifactUrlResponse_httpStatus,
    getArtifactUrlResponse_artifactId,
    getArtifactUrlResponse_artifactUrl,
  )
where

import Network.AWS.Amplify.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Returns the request structure for the get artifact request.
--
-- /See:/ 'newGetArtifactUrl' smart constructor.
data GetArtifactUrl = GetArtifactUrl'
  { -- | The unique ID for an artifact.
    artifactId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetArtifactUrl' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'artifactId', 'getArtifactUrl_artifactId' - The unique ID for an artifact.
newGetArtifactUrl ::
  -- | 'artifactId'
  Prelude.Text ->
  GetArtifactUrl
newGetArtifactUrl pArtifactId_ =
  GetArtifactUrl' {artifactId = pArtifactId_}

-- | The unique ID for an artifact.
getArtifactUrl_artifactId :: Lens.Lens' GetArtifactUrl Prelude.Text
getArtifactUrl_artifactId = Lens.lens (\GetArtifactUrl' {artifactId} -> artifactId) (\s@GetArtifactUrl' {} a -> s {artifactId = a} :: GetArtifactUrl)

instance Core.AWSRequest GetArtifactUrl where
  type
    AWSResponse GetArtifactUrl =
      GetArtifactUrlResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetArtifactUrlResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "artifactId")
            Prelude.<*> (x Core..:> "artifactUrl")
      )

instance Prelude.Hashable GetArtifactUrl

instance Prelude.NFData GetArtifactUrl

instance Core.ToHeaders GetArtifactUrl where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetArtifactUrl where
  toPath GetArtifactUrl' {..} =
    Prelude.mconcat
      ["/artifacts/", Core.toBS artifactId]

instance Core.ToQuery GetArtifactUrl where
  toQuery = Prelude.const Prelude.mempty

-- | Returns the result structure for the get artifact request.
--
-- /See:/ 'newGetArtifactUrlResponse' smart constructor.
data GetArtifactUrlResponse = GetArtifactUrlResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The unique ID for an artifact.
    artifactId :: Prelude.Text,
    -- | The presigned URL for the artifact.
    artifactUrl :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetArtifactUrlResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'getArtifactUrlResponse_httpStatus' - The response's http status code.
--
-- 'artifactId', 'getArtifactUrlResponse_artifactId' - The unique ID for an artifact.
--
-- 'artifactUrl', 'getArtifactUrlResponse_artifactUrl' - The presigned URL for the artifact.
newGetArtifactUrlResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'artifactId'
  Prelude.Text ->
  -- | 'artifactUrl'
  Prelude.Text ->
  GetArtifactUrlResponse
newGetArtifactUrlResponse
  pHttpStatus_
  pArtifactId_
  pArtifactUrl_ =
    GetArtifactUrlResponse'
      { httpStatus = pHttpStatus_,
        artifactId = pArtifactId_,
        artifactUrl = pArtifactUrl_
      }

-- | The response's http status code.
getArtifactUrlResponse_httpStatus :: Lens.Lens' GetArtifactUrlResponse Prelude.Int
getArtifactUrlResponse_httpStatus = Lens.lens (\GetArtifactUrlResponse' {httpStatus} -> httpStatus) (\s@GetArtifactUrlResponse' {} a -> s {httpStatus = a} :: GetArtifactUrlResponse)

-- | The unique ID for an artifact.
getArtifactUrlResponse_artifactId :: Lens.Lens' GetArtifactUrlResponse Prelude.Text
getArtifactUrlResponse_artifactId = Lens.lens (\GetArtifactUrlResponse' {artifactId} -> artifactId) (\s@GetArtifactUrlResponse' {} a -> s {artifactId = a} :: GetArtifactUrlResponse)

-- | The presigned URL for the artifact.
getArtifactUrlResponse_artifactUrl :: Lens.Lens' GetArtifactUrlResponse Prelude.Text
getArtifactUrlResponse_artifactUrl = Lens.lens (\GetArtifactUrlResponse' {artifactUrl} -> artifactUrl) (\s@GetArtifactUrlResponse' {} a -> s {artifactUrl = a} :: GetArtifactUrlResponse)

instance Prelude.NFData GetArtifactUrlResponse
