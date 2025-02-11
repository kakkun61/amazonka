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
-- Module      : Network.AWS.WorkDocs.InitiateDocumentVersionUpload
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new document object and version object.
--
-- The client specifies the parent folder ID and name of the document to
-- upload. The ID is optionally specified when creating a new version of an
-- existing document. This is the first step to upload a document. Next,
-- upload the document to the URL returned from the call, and then call
-- UpdateDocumentVersion.
--
-- To cancel the document upload, call AbortDocumentVersionUpload.
module Network.AWS.WorkDocs.InitiateDocumentVersionUpload
  ( -- * Creating a Request
    InitiateDocumentVersionUpload (..),
    newInitiateDocumentVersionUpload,

    -- * Request Lenses
    initiateDocumentVersionUpload_documentSizeInBytes,
    initiateDocumentVersionUpload_contentCreatedTimestamp,
    initiateDocumentVersionUpload_authenticationToken,
    initiateDocumentVersionUpload_name,
    initiateDocumentVersionUpload_id,
    initiateDocumentVersionUpload_contentModifiedTimestamp,
    initiateDocumentVersionUpload_contentType,
    initiateDocumentVersionUpload_parentFolderId,

    -- * Destructuring the Response
    InitiateDocumentVersionUploadResponse (..),
    newInitiateDocumentVersionUploadResponse,

    -- * Response Lenses
    initiateDocumentVersionUploadResponse_metadata,
    initiateDocumentVersionUploadResponse_uploadMetadata,
    initiateDocumentVersionUploadResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.WorkDocs.Types

-- | /See:/ 'newInitiateDocumentVersionUpload' smart constructor.
data InitiateDocumentVersionUpload = InitiateDocumentVersionUpload'
  { -- | The size of the document, in bytes.
    documentSizeInBytes :: Prelude.Maybe Prelude.Integer,
    -- | The timestamp when the content of the document was originally created.
    contentCreatedTimestamp :: Prelude.Maybe Core.POSIX,
    -- | Amazon WorkDocs authentication token. Not required when using AWS
    -- administrator credentials to access the API.
    authenticationToken :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The name of the document.
    name :: Prelude.Maybe Prelude.Text,
    -- | The ID of the document.
    id :: Prelude.Maybe Prelude.Text,
    -- | The timestamp when the content of the document was modified.
    contentModifiedTimestamp :: Prelude.Maybe Core.POSIX,
    -- | The content type of the document.
    contentType :: Prelude.Maybe Prelude.Text,
    -- | The ID of the parent folder.
    parentFolderId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InitiateDocumentVersionUpload' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'documentSizeInBytes', 'initiateDocumentVersionUpload_documentSizeInBytes' - The size of the document, in bytes.
--
-- 'contentCreatedTimestamp', 'initiateDocumentVersionUpload_contentCreatedTimestamp' - The timestamp when the content of the document was originally created.
--
-- 'authenticationToken', 'initiateDocumentVersionUpload_authenticationToken' - Amazon WorkDocs authentication token. Not required when using AWS
-- administrator credentials to access the API.
--
-- 'name', 'initiateDocumentVersionUpload_name' - The name of the document.
--
-- 'id', 'initiateDocumentVersionUpload_id' - The ID of the document.
--
-- 'contentModifiedTimestamp', 'initiateDocumentVersionUpload_contentModifiedTimestamp' - The timestamp when the content of the document was modified.
--
-- 'contentType', 'initiateDocumentVersionUpload_contentType' - The content type of the document.
--
-- 'parentFolderId', 'initiateDocumentVersionUpload_parentFolderId' - The ID of the parent folder.
newInitiateDocumentVersionUpload ::
  -- | 'parentFolderId'
  Prelude.Text ->
  InitiateDocumentVersionUpload
newInitiateDocumentVersionUpload pParentFolderId_ =
  InitiateDocumentVersionUpload'
    { documentSizeInBytes =
        Prelude.Nothing,
      contentCreatedTimestamp = Prelude.Nothing,
      authenticationToken = Prelude.Nothing,
      name = Prelude.Nothing,
      id = Prelude.Nothing,
      contentModifiedTimestamp = Prelude.Nothing,
      contentType = Prelude.Nothing,
      parentFolderId = pParentFolderId_
    }

-- | The size of the document, in bytes.
initiateDocumentVersionUpload_documentSizeInBytes :: Lens.Lens' InitiateDocumentVersionUpload (Prelude.Maybe Prelude.Integer)
initiateDocumentVersionUpload_documentSizeInBytes = Lens.lens (\InitiateDocumentVersionUpload' {documentSizeInBytes} -> documentSizeInBytes) (\s@InitiateDocumentVersionUpload' {} a -> s {documentSizeInBytes = a} :: InitiateDocumentVersionUpload)

-- | The timestamp when the content of the document was originally created.
initiateDocumentVersionUpload_contentCreatedTimestamp :: Lens.Lens' InitiateDocumentVersionUpload (Prelude.Maybe Prelude.UTCTime)
initiateDocumentVersionUpload_contentCreatedTimestamp = Lens.lens (\InitiateDocumentVersionUpload' {contentCreatedTimestamp} -> contentCreatedTimestamp) (\s@InitiateDocumentVersionUpload' {} a -> s {contentCreatedTimestamp = a} :: InitiateDocumentVersionUpload) Prelude.. Lens.mapping Core._Time

-- | Amazon WorkDocs authentication token. Not required when using AWS
-- administrator credentials to access the API.
initiateDocumentVersionUpload_authenticationToken :: Lens.Lens' InitiateDocumentVersionUpload (Prelude.Maybe Prelude.Text)
initiateDocumentVersionUpload_authenticationToken = Lens.lens (\InitiateDocumentVersionUpload' {authenticationToken} -> authenticationToken) (\s@InitiateDocumentVersionUpload' {} a -> s {authenticationToken = a} :: InitiateDocumentVersionUpload) Prelude.. Lens.mapping Core._Sensitive

-- | The name of the document.
initiateDocumentVersionUpload_name :: Lens.Lens' InitiateDocumentVersionUpload (Prelude.Maybe Prelude.Text)
initiateDocumentVersionUpload_name = Lens.lens (\InitiateDocumentVersionUpload' {name} -> name) (\s@InitiateDocumentVersionUpload' {} a -> s {name = a} :: InitiateDocumentVersionUpload)

-- | The ID of the document.
initiateDocumentVersionUpload_id :: Lens.Lens' InitiateDocumentVersionUpload (Prelude.Maybe Prelude.Text)
initiateDocumentVersionUpload_id = Lens.lens (\InitiateDocumentVersionUpload' {id} -> id) (\s@InitiateDocumentVersionUpload' {} a -> s {id = a} :: InitiateDocumentVersionUpload)

-- | The timestamp when the content of the document was modified.
initiateDocumentVersionUpload_contentModifiedTimestamp :: Lens.Lens' InitiateDocumentVersionUpload (Prelude.Maybe Prelude.UTCTime)
initiateDocumentVersionUpload_contentModifiedTimestamp = Lens.lens (\InitiateDocumentVersionUpload' {contentModifiedTimestamp} -> contentModifiedTimestamp) (\s@InitiateDocumentVersionUpload' {} a -> s {contentModifiedTimestamp = a} :: InitiateDocumentVersionUpload) Prelude.. Lens.mapping Core._Time

-- | The content type of the document.
initiateDocumentVersionUpload_contentType :: Lens.Lens' InitiateDocumentVersionUpload (Prelude.Maybe Prelude.Text)
initiateDocumentVersionUpload_contentType = Lens.lens (\InitiateDocumentVersionUpload' {contentType} -> contentType) (\s@InitiateDocumentVersionUpload' {} a -> s {contentType = a} :: InitiateDocumentVersionUpload)

-- | The ID of the parent folder.
initiateDocumentVersionUpload_parentFolderId :: Lens.Lens' InitiateDocumentVersionUpload Prelude.Text
initiateDocumentVersionUpload_parentFolderId = Lens.lens (\InitiateDocumentVersionUpload' {parentFolderId} -> parentFolderId) (\s@InitiateDocumentVersionUpload' {} a -> s {parentFolderId = a} :: InitiateDocumentVersionUpload)

instance
  Core.AWSRequest
    InitiateDocumentVersionUpload
  where
  type
    AWSResponse InitiateDocumentVersionUpload =
      InitiateDocumentVersionUploadResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          InitiateDocumentVersionUploadResponse'
            Prelude.<$> (x Core..?> "Metadata")
            Prelude.<*> (x Core..?> "UploadMetadata")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    InitiateDocumentVersionUpload

instance Prelude.NFData InitiateDocumentVersionUpload

instance Core.ToHeaders InitiateDocumentVersionUpload where
  toHeaders InitiateDocumentVersionUpload' {..} =
    Prelude.mconcat
      [ "Authentication" Core.=# authenticationToken,
        "Content-Type"
          Core.=# ("application/x-amz-json-1.1" :: Prelude.ByteString)
      ]

instance Core.ToJSON InitiateDocumentVersionUpload where
  toJSON InitiateDocumentVersionUpload' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("DocumentSizeInBytes" Core..=)
              Prelude.<$> documentSizeInBytes,
            ("ContentCreatedTimestamp" Core..=)
              Prelude.<$> contentCreatedTimestamp,
            ("Name" Core..=) Prelude.<$> name,
            ("Id" Core..=) Prelude.<$> id,
            ("ContentModifiedTimestamp" Core..=)
              Prelude.<$> contentModifiedTimestamp,
            ("ContentType" Core..=) Prelude.<$> contentType,
            Prelude.Just
              ("ParentFolderId" Core..= parentFolderId)
          ]
      )

instance Core.ToPath InitiateDocumentVersionUpload where
  toPath = Prelude.const "/api/v1/documents"

instance Core.ToQuery InitiateDocumentVersionUpload where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newInitiateDocumentVersionUploadResponse' smart constructor.
data InitiateDocumentVersionUploadResponse = InitiateDocumentVersionUploadResponse'
  { -- | The document metadata.
    metadata :: Prelude.Maybe DocumentMetadata,
    -- | The upload metadata.
    uploadMetadata :: Prelude.Maybe UploadMetadata,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InitiateDocumentVersionUploadResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'metadata', 'initiateDocumentVersionUploadResponse_metadata' - The document metadata.
--
-- 'uploadMetadata', 'initiateDocumentVersionUploadResponse_uploadMetadata' - The upload metadata.
--
-- 'httpStatus', 'initiateDocumentVersionUploadResponse_httpStatus' - The response's http status code.
newInitiateDocumentVersionUploadResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  InitiateDocumentVersionUploadResponse
newInitiateDocumentVersionUploadResponse pHttpStatus_ =
  InitiateDocumentVersionUploadResponse'
    { metadata =
        Prelude.Nothing,
      uploadMetadata = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The document metadata.
initiateDocumentVersionUploadResponse_metadata :: Lens.Lens' InitiateDocumentVersionUploadResponse (Prelude.Maybe DocumentMetadata)
initiateDocumentVersionUploadResponse_metadata = Lens.lens (\InitiateDocumentVersionUploadResponse' {metadata} -> metadata) (\s@InitiateDocumentVersionUploadResponse' {} a -> s {metadata = a} :: InitiateDocumentVersionUploadResponse)

-- | The upload metadata.
initiateDocumentVersionUploadResponse_uploadMetadata :: Lens.Lens' InitiateDocumentVersionUploadResponse (Prelude.Maybe UploadMetadata)
initiateDocumentVersionUploadResponse_uploadMetadata = Lens.lens (\InitiateDocumentVersionUploadResponse' {uploadMetadata} -> uploadMetadata) (\s@InitiateDocumentVersionUploadResponse' {} a -> s {uploadMetadata = a} :: InitiateDocumentVersionUploadResponse)

-- | The response's http status code.
initiateDocumentVersionUploadResponse_httpStatus :: Lens.Lens' InitiateDocumentVersionUploadResponse Prelude.Int
initiateDocumentVersionUploadResponse_httpStatus = Lens.lens (\InitiateDocumentVersionUploadResponse' {httpStatus} -> httpStatus) (\s@InitiateDocumentVersionUploadResponse' {} a -> s {httpStatus = a} :: InitiateDocumentVersionUploadResponse)

instance
  Prelude.NFData
    InitiateDocumentVersionUploadResponse
