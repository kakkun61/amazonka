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
-- Module      : Network.AWS.AccessAnalyzer.GetAccessPreview
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about an access preview for the specified
-- analyzer.
module Network.AWS.AccessAnalyzer.GetAccessPreview
  ( -- * Creating a Request
    GetAccessPreview (..),
    newGetAccessPreview,

    -- * Request Lenses
    getAccessPreview_accessPreviewId,
    getAccessPreview_analyzerArn,

    -- * Destructuring the Response
    GetAccessPreviewResponse (..),
    newGetAccessPreviewResponse,

    -- * Response Lenses
    getAccessPreviewResponse_httpStatus,
    getAccessPreviewResponse_accessPreview,
  )
where

import Network.AWS.AccessAnalyzer.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetAccessPreview' smart constructor.
data GetAccessPreview = GetAccessPreview'
  { -- | The unique ID for the access preview.
    accessPreviewId :: Prelude.Text,
    -- | The
    -- <https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources ARN of the analyzer>
    -- used to generate the access preview.
    analyzerArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAccessPreview' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accessPreviewId', 'getAccessPreview_accessPreviewId' - The unique ID for the access preview.
--
-- 'analyzerArn', 'getAccessPreview_analyzerArn' - The
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources ARN of the analyzer>
-- used to generate the access preview.
newGetAccessPreview ::
  -- | 'accessPreviewId'
  Prelude.Text ->
  -- | 'analyzerArn'
  Prelude.Text ->
  GetAccessPreview
newGetAccessPreview pAccessPreviewId_ pAnalyzerArn_ =
  GetAccessPreview'
    { accessPreviewId =
        pAccessPreviewId_,
      analyzerArn = pAnalyzerArn_
    }

-- | The unique ID for the access preview.
getAccessPreview_accessPreviewId :: Lens.Lens' GetAccessPreview Prelude.Text
getAccessPreview_accessPreviewId = Lens.lens (\GetAccessPreview' {accessPreviewId} -> accessPreviewId) (\s@GetAccessPreview' {} a -> s {accessPreviewId = a} :: GetAccessPreview)

-- | The
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources ARN of the analyzer>
-- used to generate the access preview.
getAccessPreview_analyzerArn :: Lens.Lens' GetAccessPreview Prelude.Text
getAccessPreview_analyzerArn = Lens.lens (\GetAccessPreview' {analyzerArn} -> analyzerArn) (\s@GetAccessPreview' {} a -> s {analyzerArn = a} :: GetAccessPreview)

instance Core.AWSRequest GetAccessPreview where
  type
    AWSResponse GetAccessPreview =
      GetAccessPreviewResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetAccessPreviewResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "accessPreview")
      )

instance Prelude.Hashable GetAccessPreview

instance Prelude.NFData GetAccessPreview

instance Core.ToHeaders GetAccessPreview where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetAccessPreview where
  toPath GetAccessPreview' {..} =
    Prelude.mconcat
      ["/access-preview/", Core.toBS accessPreviewId]

instance Core.ToQuery GetAccessPreview where
  toQuery GetAccessPreview' {..} =
    Prelude.mconcat ["analyzerArn" Core.=: analyzerArn]

-- | /See:/ 'newGetAccessPreviewResponse' smart constructor.
data GetAccessPreviewResponse = GetAccessPreviewResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | An object that contains information about the access preview.
    accessPreview :: AccessPreview
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAccessPreviewResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'getAccessPreviewResponse_httpStatus' - The response's http status code.
--
-- 'accessPreview', 'getAccessPreviewResponse_accessPreview' - An object that contains information about the access preview.
newGetAccessPreviewResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'accessPreview'
  AccessPreview ->
  GetAccessPreviewResponse
newGetAccessPreviewResponse
  pHttpStatus_
  pAccessPreview_ =
    GetAccessPreviewResponse'
      { httpStatus =
          pHttpStatus_,
        accessPreview = pAccessPreview_
      }

-- | The response's http status code.
getAccessPreviewResponse_httpStatus :: Lens.Lens' GetAccessPreviewResponse Prelude.Int
getAccessPreviewResponse_httpStatus = Lens.lens (\GetAccessPreviewResponse' {httpStatus} -> httpStatus) (\s@GetAccessPreviewResponse' {} a -> s {httpStatus = a} :: GetAccessPreviewResponse)

-- | An object that contains information about the access preview.
getAccessPreviewResponse_accessPreview :: Lens.Lens' GetAccessPreviewResponse AccessPreview
getAccessPreviewResponse_accessPreview = Lens.lens (\GetAccessPreviewResponse' {accessPreview} -> accessPreview) (\s@GetAccessPreviewResponse' {} a -> s {accessPreview = a} :: GetAccessPreviewResponse)

instance Prelude.NFData GetAccessPreviewResponse
