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
-- Module      : Network.AWS.AuditManager.GetAssessmentFramework
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a framework from Audit Manager.
module Network.AWS.AuditManager.GetAssessmentFramework
  ( -- * Creating a Request
    GetAssessmentFramework (..),
    newGetAssessmentFramework,

    -- * Request Lenses
    getAssessmentFramework_frameworkId,

    -- * Destructuring the Response
    GetAssessmentFrameworkResponse (..),
    newGetAssessmentFrameworkResponse,

    -- * Response Lenses
    getAssessmentFrameworkResponse_framework,
    getAssessmentFrameworkResponse_httpStatus,
  )
where

import Network.AWS.AuditManager.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetAssessmentFramework' smart constructor.
data GetAssessmentFramework = GetAssessmentFramework'
  { -- | The identifier for the specified framework.
    frameworkId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAssessmentFramework' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'frameworkId', 'getAssessmentFramework_frameworkId' - The identifier for the specified framework.
newGetAssessmentFramework ::
  -- | 'frameworkId'
  Prelude.Text ->
  GetAssessmentFramework
newGetAssessmentFramework pFrameworkId_ =
  GetAssessmentFramework'
    { frameworkId =
        pFrameworkId_
    }

-- | The identifier for the specified framework.
getAssessmentFramework_frameworkId :: Lens.Lens' GetAssessmentFramework Prelude.Text
getAssessmentFramework_frameworkId = Lens.lens (\GetAssessmentFramework' {frameworkId} -> frameworkId) (\s@GetAssessmentFramework' {} a -> s {frameworkId = a} :: GetAssessmentFramework)

instance Core.AWSRequest GetAssessmentFramework where
  type
    AWSResponse GetAssessmentFramework =
      GetAssessmentFrameworkResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetAssessmentFrameworkResponse'
            Prelude.<$> (x Core..?> "framework")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetAssessmentFramework

instance Prelude.NFData GetAssessmentFramework

instance Core.ToHeaders GetAssessmentFramework where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetAssessmentFramework where
  toPath GetAssessmentFramework' {..} =
    Prelude.mconcat
      ["/assessmentFrameworks/", Core.toBS frameworkId]

instance Core.ToQuery GetAssessmentFramework where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetAssessmentFrameworkResponse' smart constructor.
data GetAssessmentFrameworkResponse = GetAssessmentFrameworkResponse'
  { -- | The framework returned by the @GetAssessmentFramework@ API.
    framework :: Prelude.Maybe Framework,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAssessmentFrameworkResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'framework', 'getAssessmentFrameworkResponse_framework' - The framework returned by the @GetAssessmentFramework@ API.
--
-- 'httpStatus', 'getAssessmentFrameworkResponse_httpStatus' - The response's http status code.
newGetAssessmentFrameworkResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetAssessmentFrameworkResponse
newGetAssessmentFrameworkResponse pHttpStatus_ =
  GetAssessmentFrameworkResponse'
    { framework =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The framework returned by the @GetAssessmentFramework@ API.
getAssessmentFrameworkResponse_framework :: Lens.Lens' GetAssessmentFrameworkResponse (Prelude.Maybe Framework)
getAssessmentFrameworkResponse_framework = Lens.lens (\GetAssessmentFrameworkResponse' {framework} -> framework) (\s@GetAssessmentFrameworkResponse' {} a -> s {framework = a} :: GetAssessmentFrameworkResponse)

-- | The response's http status code.
getAssessmentFrameworkResponse_httpStatus :: Lens.Lens' GetAssessmentFrameworkResponse Prelude.Int
getAssessmentFrameworkResponse_httpStatus = Lens.lens (\GetAssessmentFrameworkResponse' {httpStatus} -> httpStatus) (\s@GetAssessmentFrameworkResponse' {} a -> s {httpStatus = a} :: GetAssessmentFrameworkResponse)

instance
  Prelude.NFData
    GetAssessmentFrameworkResponse
