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
-- Module      : Network.AWS.GreengrassV2.GetComponentVersionArtifact
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the pre-signed URL to download a public component artifact. Core
-- devices call this operation to identify the URL that they can use to
-- download an artifact to install.
module Network.AWS.GreengrassV2.GetComponentVersionArtifact
  ( -- * Creating a Request
    GetComponentVersionArtifact (..),
    newGetComponentVersionArtifact,

    -- * Request Lenses
    getComponentVersionArtifact_arn,
    getComponentVersionArtifact_artifactName,

    -- * Destructuring the Response
    GetComponentVersionArtifactResponse (..),
    newGetComponentVersionArtifactResponse,

    -- * Response Lenses
    getComponentVersionArtifactResponse_httpStatus,
    getComponentVersionArtifactResponse_preSignedUrl,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.GreengrassV2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetComponentVersionArtifact' smart constructor.
data GetComponentVersionArtifact = GetComponentVersionArtifact'
  { -- | The
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
    -- of the component version. Specify the ARN of a public component version.
    arn :: Prelude.Text,
    -- | The name of the artifact.
    --
    -- You can use the
    -- <https://docs.aws.amazon.com/greengrass/v2/APIReference/API_GetComponent.html GetComponent>
    -- operation to download the component recipe, which includes the URI of
    -- the artifact. The artifact name is the section of the URI after the
    -- scheme. For example, in the artifact URI @greengrass:SomeArtifact.zip@,
    -- the artifact name is @SomeArtifact.zip@.
    artifactName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetComponentVersionArtifact' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'getComponentVersionArtifact_arn' - The
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
-- of the component version. Specify the ARN of a public component version.
--
-- 'artifactName', 'getComponentVersionArtifact_artifactName' - The name of the artifact.
--
-- You can use the
-- <https://docs.aws.amazon.com/greengrass/v2/APIReference/API_GetComponent.html GetComponent>
-- operation to download the component recipe, which includes the URI of
-- the artifact. The artifact name is the section of the URI after the
-- scheme. For example, in the artifact URI @greengrass:SomeArtifact.zip@,
-- the artifact name is @SomeArtifact.zip@.
newGetComponentVersionArtifact ::
  -- | 'arn'
  Prelude.Text ->
  -- | 'artifactName'
  Prelude.Text ->
  GetComponentVersionArtifact
newGetComponentVersionArtifact pArn_ pArtifactName_ =
  GetComponentVersionArtifact'
    { arn = pArn_,
      artifactName = pArtifactName_
    }

-- | The
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
-- of the component version. Specify the ARN of a public component version.
getComponentVersionArtifact_arn :: Lens.Lens' GetComponentVersionArtifact Prelude.Text
getComponentVersionArtifact_arn = Lens.lens (\GetComponentVersionArtifact' {arn} -> arn) (\s@GetComponentVersionArtifact' {} a -> s {arn = a} :: GetComponentVersionArtifact)

-- | The name of the artifact.
--
-- You can use the
-- <https://docs.aws.amazon.com/greengrass/v2/APIReference/API_GetComponent.html GetComponent>
-- operation to download the component recipe, which includes the URI of
-- the artifact. The artifact name is the section of the URI after the
-- scheme. For example, in the artifact URI @greengrass:SomeArtifact.zip@,
-- the artifact name is @SomeArtifact.zip@.
getComponentVersionArtifact_artifactName :: Lens.Lens' GetComponentVersionArtifact Prelude.Text
getComponentVersionArtifact_artifactName = Lens.lens (\GetComponentVersionArtifact' {artifactName} -> artifactName) (\s@GetComponentVersionArtifact' {} a -> s {artifactName = a} :: GetComponentVersionArtifact)

instance Core.AWSRequest GetComponentVersionArtifact where
  type
    AWSResponse GetComponentVersionArtifact =
      GetComponentVersionArtifactResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetComponentVersionArtifactResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "preSignedUrl")
      )

instance Prelude.Hashable GetComponentVersionArtifact

instance Prelude.NFData GetComponentVersionArtifact

instance Core.ToHeaders GetComponentVersionArtifact where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetComponentVersionArtifact where
  toPath GetComponentVersionArtifact' {..} =
    Prelude.mconcat
      [ "/greengrass/v2/components/",
        Core.toBS arn,
        "/artifacts/",
        Core.toBS artifactName
      ]

instance Core.ToQuery GetComponentVersionArtifact where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetComponentVersionArtifactResponse' smart constructor.
data GetComponentVersionArtifactResponse = GetComponentVersionArtifactResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The URL of the artifact.
    preSignedUrl :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetComponentVersionArtifactResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'getComponentVersionArtifactResponse_httpStatus' - The response's http status code.
--
-- 'preSignedUrl', 'getComponentVersionArtifactResponse_preSignedUrl' - The URL of the artifact.
newGetComponentVersionArtifactResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'preSignedUrl'
  Prelude.Text ->
  GetComponentVersionArtifactResponse
newGetComponentVersionArtifactResponse
  pHttpStatus_
  pPreSignedUrl_ =
    GetComponentVersionArtifactResponse'
      { httpStatus =
          pHttpStatus_,
        preSignedUrl = pPreSignedUrl_
      }

-- | The response's http status code.
getComponentVersionArtifactResponse_httpStatus :: Lens.Lens' GetComponentVersionArtifactResponse Prelude.Int
getComponentVersionArtifactResponse_httpStatus = Lens.lens (\GetComponentVersionArtifactResponse' {httpStatus} -> httpStatus) (\s@GetComponentVersionArtifactResponse' {} a -> s {httpStatus = a} :: GetComponentVersionArtifactResponse)

-- | The URL of the artifact.
getComponentVersionArtifactResponse_preSignedUrl :: Lens.Lens' GetComponentVersionArtifactResponse Prelude.Text
getComponentVersionArtifactResponse_preSignedUrl = Lens.lens (\GetComponentVersionArtifactResponse' {preSignedUrl} -> preSignedUrl) (\s@GetComponentVersionArtifactResponse' {} a -> s {preSignedUrl = a} :: GetComponentVersionArtifactResponse)

instance
  Prelude.NFData
    GetComponentVersionArtifactResponse
