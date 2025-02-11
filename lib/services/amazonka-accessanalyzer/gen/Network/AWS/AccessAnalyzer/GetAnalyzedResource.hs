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
-- Module      : Network.AWS.AccessAnalyzer.GetAnalyzedResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a resource that was analyzed.
module Network.AWS.AccessAnalyzer.GetAnalyzedResource
  ( -- * Creating a Request
    GetAnalyzedResource (..),
    newGetAnalyzedResource,

    -- * Request Lenses
    getAnalyzedResource_analyzerArn,
    getAnalyzedResource_resourceArn,

    -- * Destructuring the Response
    GetAnalyzedResourceResponse (..),
    newGetAnalyzedResourceResponse,

    -- * Response Lenses
    getAnalyzedResourceResponse_resource,
    getAnalyzedResourceResponse_httpStatus,
  )
where

import Network.AWS.AccessAnalyzer.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Retrieves an analyzed resource.
--
-- /See:/ 'newGetAnalyzedResource' smart constructor.
data GetAnalyzedResource = GetAnalyzedResource'
  { -- | The
    -- <https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources ARN of the analyzer>
    -- to retrieve information from.
    analyzerArn :: Prelude.Text,
    -- | The ARN of the resource to retrieve information about.
    resourceArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAnalyzedResource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'analyzerArn', 'getAnalyzedResource_analyzerArn' - The
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources ARN of the analyzer>
-- to retrieve information from.
--
-- 'resourceArn', 'getAnalyzedResource_resourceArn' - The ARN of the resource to retrieve information about.
newGetAnalyzedResource ::
  -- | 'analyzerArn'
  Prelude.Text ->
  -- | 'resourceArn'
  Prelude.Text ->
  GetAnalyzedResource
newGetAnalyzedResource pAnalyzerArn_ pResourceArn_ =
  GetAnalyzedResource'
    { analyzerArn = pAnalyzerArn_,
      resourceArn = pResourceArn_
    }

-- | The
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources ARN of the analyzer>
-- to retrieve information from.
getAnalyzedResource_analyzerArn :: Lens.Lens' GetAnalyzedResource Prelude.Text
getAnalyzedResource_analyzerArn = Lens.lens (\GetAnalyzedResource' {analyzerArn} -> analyzerArn) (\s@GetAnalyzedResource' {} a -> s {analyzerArn = a} :: GetAnalyzedResource)

-- | The ARN of the resource to retrieve information about.
getAnalyzedResource_resourceArn :: Lens.Lens' GetAnalyzedResource Prelude.Text
getAnalyzedResource_resourceArn = Lens.lens (\GetAnalyzedResource' {resourceArn} -> resourceArn) (\s@GetAnalyzedResource' {} a -> s {resourceArn = a} :: GetAnalyzedResource)

instance Core.AWSRequest GetAnalyzedResource where
  type
    AWSResponse GetAnalyzedResource =
      GetAnalyzedResourceResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetAnalyzedResourceResponse'
            Prelude.<$> (x Core..?> "resource")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetAnalyzedResource

instance Prelude.NFData GetAnalyzedResource

instance Core.ToHeaders GetAnalyzedResource where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetAnalyzedResource where
  toPath = Prelude.const "/analyzed-resource"

instance Core.ToQuery GetAnalyzedResource where
  toQuery GetAnalyzedResource' {..} =
    Prelude.mconcat
      [ "analyzerArn" Core.=: analyzerArn,
        "resourceArn" Core.=: resourceArn
      ]

-- | The response to the request.
--
-- /See:/ 'newGetAnalyzedResourceResponse' smart constructor.
data GetAnalyzedResourceResponse = GetAnalyzedResourceResponse'
  { -- | An @AnalyzedResource@ object that contains information that IAM Access
    -- Analyzer found when it analyzed the resource.
    resource :: Prelude.Maybe AnalyzedResource,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAnalyzedResourceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resource', 'getAnalyzedResourceResponse_resource' - An @AnalyzedResource@ object that contains information that IAM Access
-- Analyzer found when it analyzed the resource.
--
-- 'httpStatus', 'getAnalyzedResourceResponse_httpStatus' - The response's http status code.
newGetAnalyzedResourceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetAnalyzedResourceResponse
newGetAnalyzedResourceResponse pHttpStatus_ =
  GetAnalyzedResourceResponse'
    { resource =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An @AnalyzedResource@ object that contains information that IAM Access
-- Analyzer found when it analyzed the resource.
getAnalyzedResourceResponse_resource :: Lens.Lens' GetAnalyzedResourceResponse (Prelude.Maybe AnalyzedResource)
getAnalyzedResourceResponse_resource = Lens.lens (\GetAnalyzedResourceResponse' {resource} -> resource) (\s@GetAnalyzedResourceResponse' {} a -> s {resource = a} :: GetAnalyzedResourceResponse)

-- | The response's http status code.
getAnalyzedResourceResponse_httpStatus :: Lens.Lens' GetAnalyzedResourceResponse Prelude.Int
getAnalyzedResourceResponse_httpStatus = Lens.lens (\GetAnalyzedResourceResponse' {httpStatus} -> httpStatus) (\s@GetAnalyzedResourceResponse' {} a -> s {httpStatus = a} :: GetAnalyzedResourceResponse)

instance Prelude.NFData GetAnalyzedResourceResponse
