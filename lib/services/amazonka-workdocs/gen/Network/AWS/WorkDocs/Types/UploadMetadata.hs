{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkDocs.Types.UploadMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.UploadMetadata where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes the upload.
--
-- /See:/ 'newUploadMetadata' smart constructor.
data UploadMetadata = UploadMetadata'
  { -- | The URL of the upload.
    uploadUrl :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The signed headers.
    signedHeaders :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UploadMetadata' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'uploadUrl', 'uploadMetadata_uploadUrl' - The URL of the upload.
--
-- 'signedHeaders', 'uploadMetadata_signedHeaders' - The signed headers.
newUploadMetadata ::
  UploadMetadata
newUploadMetadata =
  UploadMetadata'
    { uploadUrl = Prelude.Nothing,
      signedHeaders = Prelude.Nothing
    }

-- | The URL of the upload.
uploadMetadata_uploadUrl :: Lens.Lens' UploadMetadata (Prelude.Maybe Prelude.Text)
uploadMetadata_uploadUrl = Lens.lens (\UploadMetadata' {uploadUrl} -> uploadUrl) (\s@UploadMetadata' {} a -> s {uploadUrl = a} :: UploadMetadata) Prelude.. Lens.mapping Core._Sensitive

-- | The signed headers.
uploadMetadata_signedHeaders :: Lens.Lens' UploadMetadata (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
uploadMetadata_signedHeaders = Lens.lens (\UploadMetadata' {signedHeaders} -> signedHeaders) (\s@UploadMetadata' {} a -> s {signedHeaders = a} :: UploadMetadata) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON UploadMetadata where
  parseJSON =
    Core.withObject
      "UploadMetadata"
      ( \x ->
          UploadMetadata'
            Prelude.<$> (x Core..:? "UploadUrl")
            Prelude.<*> (x Core..:? "SignedHeaders" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable UploadMetadata

instance Prelude.NFData UploadMetadata
