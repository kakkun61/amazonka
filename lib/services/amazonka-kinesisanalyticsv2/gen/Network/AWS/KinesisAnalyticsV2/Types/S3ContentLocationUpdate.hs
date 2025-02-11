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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.S3ContentLocationUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.S3ContentLocationUpdate where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes an update for the Amazon S3 code content location for an
-- application.
--
-- /See:/ 'newS3ContentLocationUpdate' smart constructor.
data S3ContentLocationUpdate = S3ContentLocationUpdate'
  { -- | The new Amazon Resource Name (ARN) for the S3 bucket containing the
    -- application code.
    bucketARNUpdate :: Prelude.Maybe Prelude.Text,
    -- | The new file key for the object containing the application code.
    fileKeyUpdate :: Prelude.Maybe Prelude.Text,
    -- | The new version of the object containing the application code.
    objectVersionUpdate :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'S3ContentLocationUpdate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'bucketARNUpdate', 's3ContentLocationUpdate_bucketARNUpdate' - The new Amazon Resource Name (ARN) for the S3 bucket containing the
-- application code.
--
-- 'fileKeyUpdate', 's3ContentLocationUpdate_fileKeyUpdate' - The new file key for the object containing the application code.
--
-- 'objectVersionUpdate', 's3ContentLocationUpdate_objectVersionUpdate' - The new version of the object containing the application code.
newS3ContentLocationUpdate ::
  S3ContentLocationUpdate
newS3ContentLocationUpdate =
  S3ContentLocationUpdate'
    { bucketARNUpdate =
        Prelude.Nothing,
      fileKeyUpdate = Prelude.Nothing,
      objectVersionUpdate = Prelude.Nothing
    }

-- | The new Amazon Resource Name (ARN) for the S3 bucket containing the
-- application code.
s3ContentLocationUpdate_bucketARNUpdate :: Lens.Lens' S3ContentLocationUpdate (Prelude.Maybe Prelude.Text)
s3ContentLocationUpdate_bucketARNUpdate = Lens.lens (\S3ContentLocationUpdate' {bucketARNUpdate} -> bucketARNUpdate) (\s@S3ContentLocationUpdate' {} a -> s {bucketARNUpdate = a} :: S3ContentLocationUpdate)

-- | The new file key for the object containing the application code.
s3ContentLocationUpdate_fileKeyUpdate :: Lens.Lens' S3ContentLocationUpdate (Prelude.Maybe Prelude.Text)
s3ContentLocationUpdate_fileKeyUpdate = Lens.lens (\S3ContentLocationUpdate' {fileKeyUpdate} -> fileKeyUpdate) (\s@S3ContentLocationUpdate' {} a -> s {fileKeyUpdate = a} :: S3ContentLocationUpdate)

-- | The new version of the object containing the application code.
s3ContentLocationUpdate_objectVersionUpdate :: Lens.Lens' S3ContentLocationUpdate (Prelude.Maybe Prelude.Text)
s3ContentLocationUpdate_objectVersionUpdate = Lens.lens (\S3ContentLocationUpdate' {objectVersionUpdate} -> objectVersionUpdate) (\s@S3ContentLocationUpdate' {} a -> s {objectVersionUpdate = a} :: S3ContentLocationUpdate)

instance Prelude.Hashable S3ContentLocationUpdate

instance Prelude.NFData S3ContentLocationUpdate

instance Core.ToJSON S3ContentLocationUpdate where
  toJSON S3ContentLocationUpdate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("BucketARNUpdate" Core..=)
              Prelude.<$> bucketARNUpdate,
            ("FileKeyUpdate" Core..=) Prelude.<$> fileKeyUpdate,
            ("ObjectVersionUpdate" Core..=)
              Prelude.<$> objectVersionUpdate
          ]
      )
