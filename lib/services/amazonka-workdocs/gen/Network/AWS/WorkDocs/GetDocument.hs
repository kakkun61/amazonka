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
-- Module      : Network.AWS.WorkDocs.GetDocument
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details of a document.
module Network.AWS.WorkDocs.GetDocument
  ( -- * Creating a Request
    GetDocument (..),
    newGetDocument,

    -- * Request Lenses
    getDocument_authenticationToken,
    getDocument_includeCustomMetadata,
    getDocument_documentId,

    -- * Destructuring the Response
    GetDocumentResponse (..),
    newGetDocumentResponse,

    -- * Response Lenses
    getDocumentResponse_customMetadata,
    getDocumentResponse_metadata,
    getDocumentResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.WorkDocs.Types

-- | /See:/ 'newGetDocument' smart constructor.
data GetDocument = GetDocument'
  { -- | Amazon WorkDocs authentication token. Not required when using AWS
    -- administrator credentials to access the API.
    authenticationToken :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | Set this to @TRUE@ to include custom metadata in the response.
    includeCustomMetadata :: Prelude.Maybe Prelude.Bool,
    -- | The ID of the document.
    documentId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetDocument' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'authenticationToken', 'getDocument_authenticationToken' - Amazon WorkDocs authentication token. Not required when using AWS
-- administrator credentials to access the API.
--
-- 'includeCustomMetadata', 'getDocument_includeCustomMetadata' - Set this to @TRUE@ to include custom metadata in the response.
--
-- 'documentId', 'getDocument_documentId' - The ID of the document.
newGetDocument ::
  -- | 'documentId'
  Prelude.Text ->
  GetDocument
newGetDocument pDocumentId_ =
  GetDocument'
    { authenticationToken = Prelude.Nothing,
      includeCustomMetadata = Prelude.Nothing,
      documentId = pDocumentId_
    }

-- | Amazon WorkDocs authentication token. Not required when using AWS
-- administrator credentials to access the API.
getDocument_authenticationToken :: Lens.Lens' GetDocument (Prelude.Maybe Prelude.Text)
getDocument_authenticationToken = Lens.lens (\GetDocument' {authenticationToken} -> authenticationToken) (\s@GetDocument' {} a -> s {authenticationToken = a} :: GetDocument) Prelude.. Lens.mapping Core._Sensitive

-- | Set this to @TRUE@ to include custom metadata in the response.
getDocument_includeCustomMetadata :: Lens.Lens' GetDocument (Prelude.Maybe Prelude.Bool)
getDocument_includeCustomMetadata = Lens.lens (\GetDocument' {includeCustomMetadata} -> includeCustomMetadata) (\s@GetDocument' {} a -> s {includeCustomMetadata = a} :: GetDocument)

-- | The ID of the document.
getDocument_documentId :: Lens.Lens' GetDocument Prelude.Text
getDocument_documentId = Lens.lens (\GetDocument' {documentId} -> documentId) (\s@GetDocument' {} a -> s {documentId = a} :: GetDocument)

instance Core.AWSRequest GetDocument where
  type AWSResponse GetDocument = GetDocumentResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetDocumentResponse'
            Prelude.<$> (x Core..?> "CustomMetadata" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "Metadata")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetDocument

instance Prelude.NFData GetDocument

instance Core.ToHeaders GetDocument where
  toHeaders GetDocument' {..} =
    Prelude.mconcat
      [ "Authentication" Core.=# authenticationToken,
        "Content-Type"
          Core.=# ("application/x-amz-json-1.1" :: Prelude.ByteString)
      ]

instance Core.ToPath GetDocument where
  toPath GetDocument' {..} =
    Prelude.mconcat
      ["/api/v1/documents/", Core.toBS documentId]

instance Core.ToQuery GetDocument where
  toQuery GetDocument' {..} =
    Prelude.mconcat
      [ "includeCustomMetadata"
          Core.=: includeCustomMetadata
      ]

-- | /See:/ 'newGetDocumentResponse' smart constructor.
data GetDocumentResponse = GetDocumentResponse'
  { -- | The custom metadata on the document.
    customMetadata :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The metadata details of the document.
    metadata :: Prelude.Maybe DocumentMetadata,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetDocumentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'customMetadata', 'getDocumentResponse_customMetadata' - The custom metadata on the document.
--
-- 'metadata', 'getDocumentResponse_metadata' - The metadata details of the document.
--
-- 'httpStatus', 'getDocumentResponse_httpStatus' - The response's http status code.
newGetDocumentResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetDocumentResponse
newGetDocumentResponse pHttpStatus_ =
  GetDocumentResponse'
    { customMetadata =
        Prelude.Nothing,
      metadata = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The custom metadata on the document.
getDocumentResponse_customMetadata :: Lens.Lens' GetDocumentResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
getDocumentResponse_customMetadata = Lens.lens (\GetDocumentResponse' {customMetadata} -> customMetadata) (\s@GetDocumentResponse' {} a -> s {customMetadata = a} :: GetDocumentResponse) Prelude.. Lens.mapping Lens.coerced

-- | The metadata details of the document.
getDocumentResponse_metadata :: Lens.Lens' GetDocumentResponse (Prelude.Maybe DocumentMetadata)
getDocumentResponse_metadata = Lens.lens (\GetDocumentResponse' {metadata} -> metadata) (\s@GetDocumentResponse' {} a -> s {metadata = a} :: GetDocumentResponse)

-- | The response's http status code.
getDocumentResponse_httpStatus :: Lens.Lens' GetDocumentResponse Prelude.Int
getDocumentResponse_httpStatus = Lens.lens (\GetDocumentResponse' {httpStatus} -> httpStatus) (\s@GetDocumentResponse' {} a -> s {httpStatus = a} :: GetDocumentResponse)

instance Prelude.NFData GetDocumentResponse
