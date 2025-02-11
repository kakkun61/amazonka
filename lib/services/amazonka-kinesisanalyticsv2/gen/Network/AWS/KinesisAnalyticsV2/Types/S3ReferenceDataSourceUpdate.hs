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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.S3ReferenceDataSourceUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.S3ReferenceDataSourceUpdate where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | For a SQL-based Kinesis Data Analytics application, describes the Amazon
-- S3 bucket name and object key name for an in-application reference
-- table.
--
-- /See:/ 'newS3ReferenceDataSourceUpdate' smart constructor.
data S3ReferenceDataSourceUpdate = S3ReferenceDataSourceUpdate'
  { -- | The Amazon Resource Name (ARN) of the S3 bucket.
    bucketARNUpdate :: Prelude.Maybe Prelude.Text,
    -- | The object key name.
    fileKeyUpdate :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'S3ReferenceDataSourceUpdate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'bucketARNUpdate', 's3ReferenceDataSourceUpdate_bucketARNUpdate' - The Amazon Resource Name (ARN) of the S3 bucket.
--
-- 'fileKeyUpdate', 's3ReferenceDataSourceUpdate_fileKeyUpdate' - The object key name.
newS3ReferenceDataSourceUpdate ::
  S3ReferenceDataSourceUpdate
newS3ReferenceDataSourceUpdate =
  S3ReferenceDataSourceUpdate'
    { bucketARNUpdate =
        Prelude.Nothing,
      fileKeyUpdate = Prelude.Nothing
    }

-- | The Amazon Resource Name (ARN) of the S3 bucket.
s3ReferenceDataSourceUpdate_bucketARNUpdate :: Lens.Lens' S3ReferenceDataSourceUpdate (Prelude.Maybe Prelude.Text)
s3ReferenceDataSourceUpdate_bucketARNUpdate = Lens.lens (\S3ReferenceDataSourceUpdate' {bucketARNUpdate} -> bucketARNUpdate) (\s@S3ReferenceDataSourceUpdate' {} a -> s {bucketARNUpdate = a} :: S3ReferenceDataSourceUpdate)

-- | The object key name.
s3ReferenceDataSourceUpdate_fileKeyUpdate :: Lens.Lens' S3ReferenceDataSourceUpdate (Prelude.Maybe Prelude.Text)
s3ReferenceDataSourceUpdate_fileKeyUpdate = Lens.lens (\S3ReferenceDataSourceUpdate' {fileKeyUpdate} -> fileKeyUpdate) (\s@S3ReferenceDataSourceUpdate' {} a -> s {fileKeyUpdate = a} :: S3ReferenceDataSourceUpdate)

instance Prelude.Hashable S3ReferenceDataSourceUpdate

instance Prelude.NFData S3ReferenceDataSourceUpdate

instance Core.ToJSON S3ReferenceDataSourceUpdate where
  toJSON S3ReferenceDataSourceUpdate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("BucketARNUpdate" Core..=)
              Prelude.<$> bucketARNUpdate,
            ("FileKeyUpdate" Core..=) Prelude.<$> fileKeyUpdate
          ]
      )
