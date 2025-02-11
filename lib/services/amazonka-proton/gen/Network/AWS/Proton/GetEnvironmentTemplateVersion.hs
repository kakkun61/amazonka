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
-- Module      : Network.AWS.Proton.GetEnvironmentTemplateVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- View detail data for a major or minor version of an environment
-- template.
module Network.AWS.Proton.GetEnvironmentTemplateVersion
  ( -- * Creating a Request
    GetEnvironmentTemplateVersion (..),
    newGetEnvironmentTemplateVersion,

    -- * Request Lenses
    getEnvironmentTemplateVersion_majorVersion,
    getEnvironmentTemplateVersion_minorVersion,
    getEnvironmentTemplateVersion_templateName,

    -- * Destructuring the Response
    GetEnvironmentTemplateVersionResponse (..),
    newGetEnvironmentTemplateVersionResponse,

    -- * Response Lenses
    getEnvironmentTemplateVersionResponse_httpStatus,
    getEnvironmentTemplateVersionResponse_environmentTemplateVersion,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Proton.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetEnvironmentTemplateVersion' smart constructor.
data GetEnvironmentTemplateVersion = GetEnvironmentTemplateVersion'
  { -- | To view environment template major version detail data, include
    -- @majorVersion@.
    majorVersion :: Prelude.Text,
    -- | To view environment template minor version detail data, include
    -- @minorVersion@.
    minorVersion :: Prelude.Text,
    -- | The name of the environment template.
    templateName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetEnvironmentTemplateVersion' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'majorVersion', 'getEnvironmentTemplateVersion_majorVersion' - To view environment template major version detail data, include
-- @majorVersion@.
--
-- 'minorVersion', 'getEnvironmentTemplateVersion_minorVersion' - To view environment template minor version detail data, include
-- @minorVersion@.
--
-- 'templateName', 'getEnvironmentTemplateVersion_templateName' - The name of the environment template.
newGetEnvironmentTemplateVersion ::
  -- | 'majorVersion'
  Prelude.Text ->
  -- | 'minorVersion'
  Prelude.Text ->
  -- | 'templateName'
  Prelude.Text ->
  GetEnvironmentTemplateVersion
newGetEnvironmentTemplateVersion
  pMajorVersion_
  pMinorVersion_
  pTemplateName_ =
    GetEnvironmentTemplateVersion'
      { majorVersion =
          pMajorVersion_,
        minorVersion = pMinorVersion_,
        templateName = pTemplateName_
      }

-- | To view environment template major version detail data, include
-- @majorVersion@.
getEnvironmentTemplateVersion_majorVersion :: Lens.Lens' GetEnvironmentTemplateVersion Prelude.Text
getEnvironmentTemplateVersion_majorVersion = Lens.lens (\GetEnvironmentTemplateVersion' {majorVersion} -> majorVersion) (\s@GetEnvironmentTemplateVersion' {} a -> s {majorVersion = a} :: GetEnvironmentTemplateVersion)

-- | To view environment template minor version detail data, include
-- @minorVersion@.
getEnvironmentTemplateVersion_minorVersion :: Lens.Lens' GetEnvironmentTemplateVersion Prelude.Text
getEnvironmentTemplateVersion_minorVersion = Lens.lens (\GetEnvironmentTemplateVersion' {minorVersion} -> minorVersion) (\s@GetEnvironmentTemplateVersion' {} a -> s {minorVersion = a} :: GetEnvironmentTemplateVersion)

-- | The name of the environment template.
getEnvironmentTemplateVersion_templateName :: Lens.Lens' GetEnvironmentTemplateVersion Prelude.Text
getEnvironmentTemplateVersion_templateName = Lens.lens (\GetEnvironmentTemplateVersion' {templateName} -> templateName) (\s@GetEnvironmentTemplateVersion' {} a -> s {templateName = a} :: GetEnvironmentTemplateVersion)

instance
  Core.AWSRequest
    GetEnvironmentTemplateVersion
  where
  type
    AWSResponse GetEnvironmentTemplateVersion =
      GetEnvironmentTemplateVersionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetEnvironmentTemplateVersionResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "environmentTemplateVersion")
      )

instance
  Prelude.Hashable
    GetEnvironmentTemplateVersion

instance Prelude.NFData GetEnvironmentTemplateVersion

instance Core.ToHeaders GetEnvironmentTemplateVersion where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AwsProton20200720.GetEnvironmentTemplateVersion" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetEnvironmentTemplateVersion where
  toJSON GetEnvironmentTemplateVersion' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("majorVersion" Core..= majorVersion),
            Prelude.Just ("minorVersion" Core..= minorVersion),
            Prelude.Just ("templateName" Core..= templateName)
          ]
      )

instance Core.ToPath GetEnvironmentTemplateVersion where
  toPath = Prelude.const "/"

instance Core.ToQuery GetEnvironmentTemplateVersion where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetEnvironmentTemplateVersionResponse' smart constructor.
data GetEnvironmentTemplateVersionResponse = GetEnvironmentTemplateVersionResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The environment template version detail data that\'s returned by AWS
    -- Proton.
    environmentTemplateVersion :: EnvironmentTemplateVersion
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetEnvironmentTemplateVersionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'getEnvironmentTemplateVersionResponse_httpStatus' - The response's http status code.
--
-- 'environmentTemplateVersion', 'getEnvironmentTemplateVersionResponse_environmentTemplateVersion' - The environment template version detail data that\'s returned by AWS
-- Proton.
newGetEnvironmentTemplateVersionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'environmentTemplateVersion'
  EnvironmentTemplateVersion ->
  GetEnvironmentTemplateVersionResponse
newGetEnvironmentTemplateVersionResponse
  pHttpStatus_
  pEnvironmentTemplateVersion_ =
    GetEnvironmentTemplateVersionResponse'
      { httpStatus =
          pHttpStatus_,
        environmentTemplateVersion =
          pEnvironmentTemplateVersion_
      }

-- | The response's http status code.
getEnvironmentTemplateVersionResponse_httpStatus :: Lens.Lens' GetEnvironmentTemplateVersionResponse Prelude.Int
getEnvironmentTemplateVersionResponse_httpStatus = Lens.lens (\GetEnvironmentTemplateVersionResponse' {httpStatus} -> httpStatus) (\s@GetEnvironmentTemplateVersionResponse' {} a -> s {httpStatus = a} :: GetEnvironmentTemplateVersionResponse)

-- | The environment template version detail data that\'s returned by AWS
-- Proton.
getEnvironmentTemplateVersionResponse_environmentTemplateVersion :: Lens.Lens' GetEnvironmentTemplateVersionResponse EnvironmentTemplateVersion
getEnvironmentTemplateVersionResponse_environmentTemplateVersion = Lens.lens (\GetEnvironmentTemplateVersionResponse' {environmentTemplateVersion} -> environmentTemplateVersion) (\s@GetEnvironmentTemplateVersionResponse' {} a -> s {environmentTemplateVersion = a} :: GetEnvironmentTemplateVersionResponse)

instance
  Prelude.NFData
    GetEnvironmentTemplateVersionResponse
