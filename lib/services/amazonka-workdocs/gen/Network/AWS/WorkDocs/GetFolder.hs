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
-- Module      : Network.AWS.WorkDocs.GetFolder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the metadata of the specified folder.
module Network.AWS.WorkDocs.GetFolder
  ( -- * Creating a Request
    GetFolder (..),
    newGetFolder,

    -- * Request Lenses
    getFolder_authenticationToken,
    getFolder_includeCustomMetadata,
    getFolder_folderId,

    -- * Destructuring the Response
    GetFolderResponse (..),
    newGetFolderResponse,

    -- * Response Lenses
    getFolderResponse_customMetadata,
    getFolderResponse_metadata,
    getFolderResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.WorkDocs.Types

-- | /See:/ 'newGetFolder' smart constructor.
data GetFolder = GetFolder'
  { -- | Amazon WorkDocs authentication token. Not required when using AWS
    -- administrator credentials to access the API.
    authenticationToken :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | Set to TRUE to include custom metadata in the response.
    includeCustomMetadata :: Prelude.Maybe Prelude.Bool,
    -- | The ID of the folder.
    folderId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetFolder' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'authenticationToken', 'getFolder_authenticationToken' - Amazon WorkDocs authentication token. Not required when using AWS
-- administrator credentials to access the API.
--
-- 'includeCustomMetadata', 'getFolder_includeCustomMetadata' - Set to TRUE to include custom metadata in the response.
--
-- 'folderId', 'getFolder_folderId' - The ID of the folder.
newGetFolder ::
  -- | 'folderId'
  Prelude.Text ->
  GetFolder
newGetFolder pFolderId_ =
  GetFolder'
    { authenticationToken = Prelude.Nothing,
      includeCustomMetadata = Prelude.Nothing,
      folderId = pFolderId_
    }

-- | Amazon WorkDocs authentication token. Not required when using AWS
-- administrator credentials to access the API.
getFolder_authenticationToken :: Lens.Lens' GetFolder (Prelude.Maybe Prelude.Text)
getFolder_authenticationToken = Lens.lens (\GetFolder' {authenticationToken} -> authenticationToken) (\s@GetFolder' {} a -> s {authenticationToken = a} :: GetFolder) Prelude.. Lens.mapping Core._Sensitive

-- | Set to TRUE to include custom metadata in the response.
getFolder_includeCustomMetadata :: Lens.Lens' GetFolder (Prelude.Maybe Prelude.Bool)
getFolder_includeCustomMetadata = Lens.lens (\GetFolder' {includeCustomMetadata} -> includeCustomMetadata) (\s@GetFolder' {} a -> s {includeCustomMetadata = a} :: GetFolder)

-- | The ID of the folder.
getFolder_folderId :: Lens.Lens' GetFolder Prelude.Text
getFolder_folderId = Lens.lens (\GetFolder' {folderId} -> folderId) (\s@GetFolder' {} a -> s {folderId = a} :: GetFolder)

instance Core.AWSRequest GetFolder where
  type AWSResponse GetFolder = GetFolderResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetFolderResponse'
            Prelude.<$> (x Core..?> "CustomMetadata" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "Metadata")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetFolder

instance Prelude.NFData GetFolder

instance Core.ToHeaders GetFolder where
  toHeaders GetFolder' {..} =
    Prelude.mconcat
      [ "Authentication" Core.=# authenticationToken,
        "Content-Type"
          Core.=# ("application/x-amz-json-1.1" :: Prelude.ByteString)
      ]

instance Core.ToPath GetFolder where
  toPath GetFolder' {..} =
    Prelude.mconcat
      ["/api/v1/folders/", Core.toBS folderId]

instance Core.ToQuery GetFolder where
  toQuery GetFolder' {..} =
    Prelude.mconcat
      [ "includeCustomMetadata"
          Core.=: includeCustomMetadata
      ]

-- | /See:/ 'newGetFolderResponse' smart constructor.
data GetFolderResponse = GetFolderResponse'
  { -- | The custom metadata on the folder.
    customMetadata :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The metadata of the folder.
    metadata :: Prelude.Maybe FolderMetadata,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetFolderResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'customMetadata', 'getFolderResponse_customMetadata' - The custom metadata on the folder.
--
-- 'metadata', 'getFolderResponse_metadata' - The metadata of the folder.
--
-- 'httpStatus', 'getFolderResponse_httpStatus' - The response's http status code.
newGetFolderResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetFolderResponse
newGetFolderResponse pHttpStatus_ =
  GetFolderResponse'
    { customMetadata =
        Prelude.Nothing,
      metadata = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The custom metadata on the folder.
getFolderResponse_customMetadata :: Lens.Lens' GetFolderResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
getFolderResponse_customMetadata = Lens.lens (\GetFolderResponse' {customMetadata} -> customMetadata) (\s@GetFolderResponse' {} a -> s {customMetadata = a} :: GetFolderResponse) Prelude.. Lens.mapping Lens.coerced

-- | The metadata of the folder.
getFolderResponse_metadata :: Lens.Lens' GetFolderResponse (Prelude.Maybe FolderMetadata)
getFolderResponse_metadata = Lens.lens (\GetFolderResponse' {metadata} -> metadata) (\s@GetFolderResponse' {} a -> s {metadata = a} :: GetFolderResponse)

-- | The response's http status code.
getFolderResponse_httpStatus :: Lens.Lens' GetFolderResponse Prelude.Int
getFolderResponse_httpStatus = Lens.lens (\GetFolderResponse' {httpStatus} -> httpStatus) (\s@GetFolderResponse' {} a -> s {httpStatus = a} :: GetFolderResponse)

instance Prelude.NFData GetFolderResponse
